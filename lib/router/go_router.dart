import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_training/model/home_model.dart';
import 'package:gorouter_training/screen/bottom_navigation_bar.dart';
import 'package:gorouter_training/screen/detail_book.dart';
import 'package:gorouter_training/screen/detail_fav_screen.dart';
import 'package:gorouter_training/screen/detail_home_page.dart';
import 'package:gorouter_training/screen/detail_oorder.dart';
import 'package:gorouter_training/screen/home.dart';
import 'package:gorouter_training/screen/order_screen.dart';
import 'package:gorouter_training/screen/book_screen.dart';

import '../screen/fav_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return BottomNavigationbar(
          child: child,
        );
      },
      routes: [
        // This screen is displayed on the ShellRoute's Navigator.
        //! Normal Push
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/',
          builder: (context, state) {
            return const HomePage();
          },
          routes: <RouteBase>[
            // This screen is displayed on the ShellRoute's Navigator.
            //! Push with Param
            GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              path: 'detail-homepage',
              name: "DetailHomePage",
              builder: (BuildContext context, GoRouterState state) {
                //Assign object
                final list = state.extra as List<HomeModel>; //Assign list
                return DetailHomePage(
                  listHome: list,
                );
              },
            ),
          ],
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/favorite',
          name: 'Favorite',
          builder: (BuildContext context, GoRouterState state) {
            return const FavoriteScreen();
          },
          routes: [
            GoRoute(
              path: 'detail-fav',
              name: "DetailFav",
              builder: (BuildContext context, GoRouterState state) {
                return const DetailFavoriteScreen();
              },
            ),
          ],
        ),
        // Displayed ShellRoute's Navigator.
        //! QueryParam
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/order',
          builder: (BuildContext context, GoRouterState state) {
            return const OrderScreen();
          },
          routes: [
            GoRoute(
              path: 'detail-order',
              name: "DetailOrder",
              builder: (BuildContext context, GoRouterState state) {
                return DetailOrder(
                  id: int.tryParse(state.queryParams['id'] ?? ''),
                );
              },
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/books',
      builder: (BuildContext context, GoRouterState state) {
        return const BookScreen();
      },
      routes: [
        //! Push with Parameter
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: ':id',
          builder: (BuildContext context, GoRouterState state) {
            return DetailBook(
              id: int.tryParse(state.params['id'] ?? ''),
            );
          },
        ),
      ],
    ),
  ],
);
