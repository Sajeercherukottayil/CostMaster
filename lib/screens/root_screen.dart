import 'package:flutter/material.dart';

import '../theme.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'progress_screen.dart';

/// The three main tabs: Home, Results and Profile.
class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return RootTabs(
      select: (i) => setState(() => _index = i),
      child: Scaffold(
        body: IndexedStack(
          index: _index,
          children: const [HomeScreen(), ProgressScreen(), ProfileScreen()],
        ),
        bottomNavigationBar: DecoratedBox(
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: AppColors.border)),
          ),
          child: NavigationBar(
            selectedIndex: _index,
            onDestinationSelected: (i) => setState(() => _index = i),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.bar_chart_outlined),
                selectedIcon: Icon(Icons.bar_chart_rounded),
                label: 'Results',
              ),
              NavigationDestination(
                icon: Icon(Icons.person_outline_rounded),
                selectedIcon: Icon(Icons.person_rounded),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Lets a tab switch to another tab, e.g. Home's "View all" to Results.
class RootTabs extends InheritedWidget {
  static const home = 0, results = 1, profile = 2;

  final ValueChanged<int> select;

  const RootTabs({super.key, required this.select, required super.child});

  static RootTabs? maybeOf(BuildContext context) =>
      context.getInheritedWidgetOfExactType<RootTabs>();

  @override
  bool updateShouldNotify(RootTabs old) => false;
}
