import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_training/router/go_router.dart';

class BottomNavigationbar extends StatelessWidget {
  /// Constructs an [ScaffoldWithNavBar].
  const BottomNavigationbar({
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
            icon: const Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.favorite,
              color: Colors.blue.shade900,
            ),
            icon: const Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.book,
              color: Colors.blue.shade900,
            ),
            icon: const Icon(
              Icons.book,
              color: Colors.grey,
            ),
            label: 'ScanQR',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.payment,
              color: Colors.blue.shade900,
            ),
            icon: const Icon(
              Icons.payment,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
        unselectedLabelStyle: const TextStyle(
          color: Colors.black,
        ),
        selectedLabelStyle: const TextStyle(
          color: Colors.black,
        ),
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
    if (location.startsWith('/favorite')) {
      return 1;
    }
    if (location.startsWith('/scanqr')) {
      return 2;
    }
    if (location.startsWith('/order')) {
      return 3;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/');
        break;
      case 1:
        //! Navigator without context
        router.push('/favorite');
        // router.go('/favorite');
        // router.goNamed('Favorite');
        break;
      case 2:
        GoRouter.of(context).push('/books');
        break;
      case 3:
        GoRouter.of(context).go('/order');
        break;
    }
  }
}
