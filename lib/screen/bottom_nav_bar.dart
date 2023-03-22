import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  /// Constructs an [ScaffoldWithNavBar].
  const ScaffoldWithNavBar({
    required this.child,
    Key? key,
  }) : super(key: key);

  /// The widget to display in the body of the Scaffold.
  /// In this sample, it is a Navigator.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.blue.shade900,
            ),
            icon: const Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.favorite,
              color: Colors.blue.shade900,
            ),
            icon: const Icon(Icons.favorite),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              color: Colors.blue.shade900,
            ),
            icon: const Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(idx, context),
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).location;
    if (location.startsWith('/')) {
      return 0;
    }
    if (location.startsWith('/wishlist')) {
      return 1;
    }
    if (location.startsWith('/profile')) {
      return 2;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/');
        break;
      case 1:
        GoRouter.of(context).go('/wishlist');
        break;
      case 2:
        GoRouter.of(context).go('/profile');
        break;
    }
  }
}
