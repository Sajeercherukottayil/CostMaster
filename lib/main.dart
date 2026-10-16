import 'package:flutter/material.dart';

import 'screens/profile_form_screen.dart';
import 'screens/root_screen.dart';
import 'state/app_state.dart';
import 'theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final state = await AppState.load();
  runApp(CostMasterApp(state: state));
}

class CostMasterApp extends StatelessWidget {
  final AppState state;

  const CostMasterApp({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return AppScope(
      state: state,
      child: MaterialApp(
        title: 'CostMaster',
        debugShowCheckedModeBanner: false,
        theme: buildTheme(Brightness.light),
        darkTheme: buildTheme(Brightness.dark),
        home: const _Gate(),
      ),
    );
  }
}

/// Shows onboarding until the student has created a profile.
class _Gate extends StatelessWidget {
  const _Gate();

  @override
  Widget build(BuildContext context) {
    return AppScope.of(context).profile == null
        ? const ProfileFormScreen()
        : const RootScreen();
  }
}
