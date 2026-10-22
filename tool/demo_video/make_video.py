"""Builds demo/costmaster-demo.mp4: the app walkthrough with a voiceover.

Needs `pip install edge-tts imageio-ffmpeg` (edge-tts sends the narration
text to Microsoft's online text-to-speech). Run from the project root:

    python tool/demo_video/make_video.py
"""
import asyncio
import json
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

import edge_tts
import imageio_ffmpeg

VOICE = "en-IN-NeerjaNeural"
ROOT = Path(__file__).resolve().parents[2]
WORK = ROOT / "build" / "demo_video"
OUT = ROOT / "demo" / "costmaster-demo.mp4"
FFMPEG = imageio_ffmpeg.get_ffmpeg_exe()

# Where the phone screen sits in the 1920x1080 video; matches _screen in
# demo_video_test.dart.
SCREEN_X, SCREEN_Y, SCREEN_W, SCREEN_H = 1180, 64, 440, 953


def duration(path):
    err = subprocess.run([FFMPEG, "-i", str(path)], capture_output=True, text=True).stderr
    h, m, s = re.search(r"Duration: (\d+):(\d+):([\d.]+)", err).groups()
    return int(h) * 3600 + int(m) * 60 + float(s)


async def voiceover(narration):
    (WORK / "audio").mkdir(parents=True, exist_ok=True)
    durations = {}
    for name, text in narration.items():
        path = WORK / "audio" / f"{name}.mp3"
        await edge_tts.Communicate(text, VOICE, rate="+4%").save(str(path))
        durations[name] = duration(path)
    return durations


def main():
    shutil.rmtree(WORK, ignore_errors=True)
    WORK.mkdir(parents=True)
    narration = json.loads((Path(__file__).parent / "narration.json").read_text("utf8"))
    (WORK / "narration.json").write_text(json.dumps(narration), "utf8")

    print("Recording voiceover...")
    durations = asyncio.run(voiceover(narration))
    (WORK / "durations.json").write_text(json.dumps(durations), "utf8")

    print("Recording the app...")
    flutter = shutil.which("flutter") or shutil.which("flutter.bat")
    subprocess.run(
        [flutter, "test", "tool/demo_video/demo_video_test.dart"],
        cwd=ROOT, check=True, env={**os.environ, "DEMO_DIR": str(WORK)},
    )

    scenes = json.loads((WORK / "scenes.json").read_text("utf8"))
    total = scenes[-1]["end"]
    with open(WORK / "backgrounds.txt", "w") as f:
        for s in scenes:
            f.write(f"file 'bg_{s['name']}.png'\nduration {s['end'] - s['start']:.4f}\n")
        f.write(f"file 'bg_{scenes[-1]['name']}.png'\n")

    print("Joining video and voiceover...")
    inputs = [
        "-f", "concat", "-safe", "0", "-i", "frames.txt",
        "-f", "concat", "-safe", "0", "-i", "backgrounds.txt",
        "-loop", "1", "-i", "bezel.png",
    ]
    audio = []
    for i, s in enumerate(scenes):
        inputs += ["-i", f"audio/{s['name']}.mp3"]
        delay = int((s["start"] + 0.3) * 1000)
        audio.append(f"[{i + 3}:a]adelay={delay}|{delay}[a{i}]")
    mix = "".join(f"[a{i}]" for i in range(len(scenes)))
    graph = ";".join([
        "[1:v]fps=30,format=rgba[bg]",
        f"[0:v]fps=30,scale={SCREEN_W}:{SCREEN_H}:flags=lanczos[phone]",
        f"[bg][phone]overlay={SCREEN_X}:{SCREEN_Y}:format=rgb[v1]",
        "[v1][2:v]overlay=0:0:format=rgb,format=yuv420p[v]",
        *audio,
        f"{mix}amix=inputs={len(scenes)}:normalize=0[a]",
    ])
    OUT.parent.mkdir(exist_ok=True)
    subprocess.run(
        [FFMPEG, "-y", "-loglevel", "error", *inputs,
         "-filter_complex", graph, "-map", "[v]", "-map", "[a]",
         "-t", f"{total:.3f}", "-r", "30",
         "-c:v", "libx264", "-preset", "slow", "-crf", "20", "-tune", "animation",
         "-c:a", "aac", "-b:a", "160k", "-movflags", "+faststart",
         str(OUT)],
        cwd=WORK, check=True,
    )
    print(f"Done: {OUT} ({total:.1f}s)")


if __name__ == "__main__":
    sys.exit(main())
