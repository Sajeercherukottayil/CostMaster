import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'firebase_options.dart';
import 'screens/auth_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/root_screen.dart';
import 'services/auth_service.dart';
import 'state/app_state.dart';
import 'theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['Manrope'], license);
  });
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    runApp(_FirebaseSetupNeeded(error: e));
    return;
  }
  final state = await AppState.load();
  runApp(CostMasterApp(state: state, auth: FirebaseAuthService()));
}

class CostMasterApp extends StatelessWidget {
  final AppState state;
  final AuthService auth;

  const CostMasterApp({super.key, required this.state, required this.auth});

  @override
  Widget build(BuildContext context) {
    return AuthScope(
      auth: auth,
      child: AppScope(
        state: state,
        child: MaterialApp(
          title: 'CostMaster',
          debugShowCheckedModeBanner: false,
          theme: buildTheme(),
          home: _Gate(auth: auth, state: state),
        ),
      ),
    );
  }
}

/// Shows login, then onboarding until the student has created a profile.
class _Gate extends StatefulWidget {
  final AuthService auth;
  final AppState state;

  const _Gate({required this.auth, required this.state});

  @override
  State<_Gate> createState() => _GateState();
}

class _GateState extends State<_Gate> {
  late final StreamSubscription<AuthUser?> _sub;
  AuthUser? _user;
  bool _ready = false;

  @override
  void initState() {
    super.initState();
    _user = widget.auth.currentUser;
    if (_user == null || widget.state.ownerUid == _user!.uid) {
      _ready = true;
    } else {
      // Claiming may clear data and notify listeners, so not during build.
      WidgetsBinding.instance.addPostFrameCallback((_) => _onUser(_user));
    }
    _sub = widget.auth.userChanges.listen(_onUser);
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  /// Bumped on every change so a slow claim can't overwrite a newer one.
  int _generation = 0;

  Future<void> _onUser(AuthUser? user) async {
    final generation = ++_generation;
    if (user != null) await widget.state.claimFor(user.uid);
    if (mounted && generation == _generation) {
      setState(() {
        _user = user;
        _ready = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_ready) {
      return const _Splash();
    }
    if (_user == null) return const AuthScreen();
    if (AppScope.of(context).profile == null) {
      return OnboardingScreen(suggestedName: _user!.displayName);
    }
    return const RootScreen();
  }
}

/// Shown when Firebase has not been connected yet (see firebase_options.dart).
class _FirebaseSetupNeeded extends StatelessWidget {
  final Object error;

  const _FirebaseSetupNeeded({required this.error});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.cloud_off, size: 48),
                const SizedBox(height: 16),
                const Text(
                  'Firebase is not set up yet',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Run "flutterfire configure" in the project folder, then '
                  'restart the app.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Text(
                  '$error',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Shown briefly while the signed-in account's data is loaded.
class _Splash extends StatelessWidget {
  const _Splash();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BrandMark(large: true),
            SizedBox(height: 32),
            SizedBox(
              width: 120,
              child: LinearProgressIndicator(minHeight: 3),
            ),
          ],
        ),
      ),
    );
  }
}
