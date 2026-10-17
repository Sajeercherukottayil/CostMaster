import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../theme.dart';

/// A flat card: white with a hairline border, or a pastel [color].
class Panel extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final Color? color;
  final Color? borderColor;
  final double radius;

  const Panel({
    super.key,
    required this.child,
    this.onTap,
    this.padding = const EdgeInsets.all(16),
    this.color,
    this.borderColor,
    this.radius = 18,
  });

  @override
  Widget build(BuildContext context) {
    final shape = BorderRadius.circular(radius);
    return Material(
      color: color ?? AppColors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: shape,
        side: BorderSide(
          color:
              borderColor ??
              (color == null ? AppColors.border : Colors.transparent),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(padding: padding, child: child),
      ),
    );
  }
}

/// A small heading between groups of content.
class SectionHeader extends StatelessWidget {
  final String title;
  final Widget? trailing;
  final EdgeInsetsGeometry padding;

  const SectionHeader(
    this.title, {
    super.key,
    this.trailing,
    this.padding = const EdgeInsets.fromLTRB(4, 28, 4, 12),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
          ),
          ?trailing,
        ],
      ),
    );
  }
}

/// A solid coloured circle with a white icon or label. [light] gives a
/// pale circle with a coloured symbol instead, for secondary use.
class IconBadge extends StatelessWidget {
  final Tint tint;
  final IconData? icon;
  final String? label;
  final double size;
  final bool light;

  const IconBadge({
    super.key,
    required this.tint,
    this.icon,
    this.label,
    this.size = 48,
    this.light = false,
  });

  @override
  Widget build(BuildContext context) {
    final fg = light ? tint.strong : Colors.white;
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: light ? tint.soft : tint.strong,
        shape: BoxShape.circle,
        boxShadow: light
            ? null
            : [
                BoxShadow(
                  color: tint.strong.withValues(alpha: 0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
      ),
      child: icon != null
          ? Icon(icon, color: fg, size: size * 0.52)
          : Text(
              label ?? '',
              style: TextStyle(
                color: fg,
                fontWeight: FontWeight.w800,
                fontSize: size * 0.32,
              ),
            ),
    );
  }
}

/// The blue block under the app bar that holds a screen's summary.
class HeaderPanel extends StatelessWidget {
  final Widget child;
  final Color color;
  final EdgeInsetsGeometry padding;

  const HeaderPanel({
    super.key,
    required this.child,
    this.color = AppColors.brand,
    this.padding = const EdgeInsets.fromLTRB(20, 4, 20, 24),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(26)),
      ),
      child: child,
    );
  }
}

/// A white-on-blue figure for a [HeaderPanel], e.g. "59%  Average".
class HeaderStat extends StatelessWidget {
  final String value;
  final String label;

  const HeaderStat({super.key, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.8),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A large, clearly labelled action button, e.g. "Start Mock Test".
class BigActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? caption;
  final Color color;
  final VoidCallback onPressed;

  /// Shows a Premium lock in place of the arrow.
  final bool locked;

  const BigActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.caption,
    this.color = AppColors.cta,
    this.locked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(18),
      elevation: 4,
      shadowColor: color.withValues(alpha: 0.5),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: color, size: 28),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    if (caption != null)
                      Text(
                        caption!,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.9),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  ],
                ),
              ),
              if (locked)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.ink.withValues(alpha: 0.25),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.lock_rounded, color: Colors.white, size: 14),
                      SizedBox(width: 4),
                      Text(
                        'PREMIUM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                )
              else
                const Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.white,
                  size: 30,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// A small rounded label.
class Tag extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color background;
  final Color foreground;

  const Tag({
    super.key,
    required this.text,
    this.icon,
    this.background = AppColors.field,
    this.foreground = AppColors.ink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14, color: foreground),
            const SizedBox(width: 4),
          ],
          Text(
            text,
            style: TextStyle(
              color: foreground,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

/// A big number with a caption under it.
class StatBlock extends StatelessWidget {
  final String value;
  final String label;
  final Color? color;
  final CrossAxisAlignment alignment;

  const StatBlock({
    super.key,
    required this.value,
    required this.label,
    this.color,
    this.alignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: alignment,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(value, style: theme.textTheme.titleLarge?.copyWith(color: color)),
        const SizedBox(height: 2),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(color: AppColors.muted),
        ),
      ],
    );
  }
}

/// A circular progress ring with [child] in the middle.
class ScoreRing extends StatelessWidget {
  /// 0 to 1.
  final double value;
  final double size;
  final double stroke;
  final Color color;
  final Color trackColor;
  final Widget child;

  const ScoreRing({
    super.key,
    required this.value,
    required this.color,
    required this.child,
    this.trackColor = AppColors.field,
    this.size = 88,
    this.stroke = 8,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: value.clamp(0, 1)),
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeOutCubic,
      builder: (context, v, _) => CustomPaint(
        painter: _RingPainter(v, color, trackColor, stroke),
        child: SizedBox.square(
          dimension: size,
          child: Center(child: child),
        ),
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  final double value;
  final Color color;
  final Color track;
  final double stroke;

  _RingPainter(this.value, this.color, this.track, this.stroke);

  @override
  void paint(Canvas canvas, Size size) {
    final arc = (Offset.zero & size).deflate(stroke / 2);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(arc, 0, math.pi * 2, false, paint..color = track);
    if (value > 0) {
      canvas.drawArc(
        arc,
        -math.pi / 2,
        math.pi * 2 * value,
        false,
        paint..color = color,
      );
    }
  }

  @override
  bool shouldRepaint(_RingPainter old) =>
      old.value != value || old.color != color || old.track != track;
}

/// A rounded linear bar, 0 to 1.
class ProgressBar extends StatelessWidget {
  final double value;
  final Color color;
  final Color trackColor;
  final double height;

  const ProgressBar({
    super.key,
    required this.value,
    this.color = AppColors.brand,
    this.trackColor = AppColors.field,
    this.height = 6,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(height),
      child: LinearProgressIndicator(
        value: value.clamp(0, 1),
        minHeight: height,
        color: color,
        backgroundColor: trackColor,
      ),
    );
  }
}

/// A friendly placeholder for an empty list.
class EmptyState extends StatelessWidget {
  final IconData icon;
  final String title;
  final String message;

  const EmptyState({
    super.key,
    required this.icon,
    required this.title,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Panel(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
      child: Column(
        children: [
          IconBadge(
            tint: (soft: AppColors.accentSoft, strong: AppColors.brand),
            icon: icon,
            size: 56,
            light: true,
          ),
          const SizedBox(height: 12),
          Text(title, style: theme.textTheme.titleSmall),
          const SizedBox(height: 4),
          Text(
            message,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall?.copyWith(color: AppColors.muted),
          ),
        ],
      ),
    );
  }
}

/// A selectable option row with a radio mark. Disabled when [onTap] is null.
class ChoiceTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData? icon;
  final Tint? tint;
  final bool selected;
  final VoidCallback? onTap;

  const ChoiceTile({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    this.tint,
    required this.selected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Opacity(
        opacity: onTap == null ? 0.45 : 1,
        child: Panel(
          onTap: onTap,
          padding: const EdgeInsets.all(14),
          borderColor: selected ? AppColors.brand : null,
          child: Row(
            children: [
              if (icon != null) ...[
                IconBadge(
                  tint:
                      tint ??
                      (soft: AppColors.accentSoft, strong: AppColors.brand),
                  icon: icon,
                  size: 42,
                ),
                const SizedBox(width: 14),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (subtitle != null)
                      Text(
                        subtitle!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppColors.muted,
                        ),
                      ),
                  ],
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selected ? AppColors.brand : Colors.transparent,
                  border: Border.all(
                    color: selected ? AppColors.brand : AppColors.border,
                    width: 2,
                  ),
                ),
                child: selected
                    ? const Icon(
                        Icons.check_rounded,
                        size: 14,
                        color: Colors.white,
                      )
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
