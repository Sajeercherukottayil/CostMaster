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
import 'services/premium_service.dart';
import 'state/app_state.dart';
import 'theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Full screen: hide the status and navigation bars. A swipe from the edge
  // shows them briefly, then they hide again.
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['Manrope'], license);
  });
  // Release builds otherwise draw a failed widget as a blank box.
  ErrorWidget.builder = (details) => ColoredBox(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Something went wrong:\n${details.exceptionAsString()}',
              textDirection: TextDirection.ltr,
              style: const TextStyle(color: AppColors.danger, fontSize: 13),
            ),
          ),
        ),
      );
  // Draw something straight away; Firebase and saved data load behind the
  // splash, so a slow or failed start never leaves a black screen.
  runApp(const _Startup());
}

/// Shows the splash while Firebase and saved data load, then the app, or
/// the error if loading failed.
class _Startup extends StatefulWidget {
  const _Startup();

  @override
  State<_Startup> createState() => _StartupState();
}

class _StartupState extends State<_Startup> {
  Widget? _app;
  Object? _error;

  @override
  void initState() {
    super.initState();
    _start();
  }

  Future<void> _start() async {
    setState(() => _error = null);
    try {
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ).timeout(const Duration(seconds: 20));
      }
      final state = await AppState.load();
      if (!mounted) return;
      setState(() {
        _app = CostMasterApp(
          state: state,
          auth: FirebaseAuthService(),
          premium: FirebasePremiumService(),
        );
      });
    } catch (e) {
      if (mounted) setState(() => _error = e);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_app != null) return _app!;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      home: _error == null
          ? const _Splash()
          : _StartupFailed(error: _error!, onRetry: _start),
    );
  }
}

class CostMasterApp extends StatefulWidget {
  final AppState state;
  final AuthService auth;
  final PremiumService premium;

  const CostMasterApp({
    super.key,
    required this.state,
    required this.auth,
    required this.premium,
  });

  @override
  State<CostMasterApp> createState() => _CostMasterAppState();
}

class _CostMasterAppState extends State<CostMasterApp> {
  late final _premium = PremiumState(widget.premium);

  @override
  void dispose() {
    _premium.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScope(
      auth: widget.auth,
      child: AppScope(
        state: widget.state,
        child: PremiumScope(
          state: _premium,
          child: MaterialApp(
            title: 'CostMaster',
            debugShowCheckedModeBanner: false,
            theme: buildTheme(),
            home: _Gate(
              auth: widget.auth,
              state: widget.state,
              premium: _premium,
            ),
          ),
        ),
      ),
    );
  }
}

/// Shows login, then onboarding until the student has created a profile.
class _Gate extends StatefulWidget {
  final AuthService auth;
  final AppState state;
  final PremiumState premium;

  const _Gate({
    required this.auth,
    required this.state,
    required this.premium,
  });

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
    widget.premium.bind(_user?.uid);
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
    widget.premium.bind(user?.uid);
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

/// Shown when Firebase or the saved data could not be loaded.
class _StartupFailed extends StatelessWidget {
  final Object error;
  final VoidCallback onRetry;

  const _StartupFailed({required this.error, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.cloud_off_rounded,
                  size: 56, color: AppColors.brand),
              const SizedBox(height: 16),
              const Text(
                'CostMaster could not start',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 8),
              const Text(
                'Check your internet connection and try again.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                error is TimeoutException
                    ? 'Connecting to the server took too long.'
                    : '$error',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12, color: AppColors.muted),
              ),
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh_rounded),
                label: const Text('Try again'),
              ),
            ],
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
