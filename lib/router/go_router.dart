import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_training/model/home_model.dart';
import 'package:gorouter_training/screen/detail_page.dart';
import 'package:gorouter_training/screen/home.dart';
import 'package:gorouter_training/screen/profile.dart';

import '../screen/bottom_nav_bar.dart';
import '../screen/detail_wishlist.dart';
import '../screen/wishlist.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');
const _scaffoldKey = ValueKey<String>('App scaffold');
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithNavBar(
          child: child,
        );
      },
      routes: [
        // This screen is displayed on the ShellRoute's Navigator.
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/',
          builder: (context, state) {
            return const HomePage();
          },
          routes: <RouteBase>[
            // This screen is displayed on the ShellRoute's Navigator.
            GoRoute(
              path: 'detail',
              // path: 'detail/:id/:name', // path query params
              // path:':id' // path of 1 param
              name: "Detail",
              builder: (BuildContext context, GoRouterState state) {
                // final id = int.parse(state.params['id'].toString()); //Assign param

                // final id = int.parse(state.params['id'].toString());
                // final name = state.params['name'].toString();
                // final homeModel = state.extra as HomeModel; //Assign object
                final list = state.extra as List<HomeModel>; //Assign list
                return DetailPage(
                  listHome: list,
                  // id: id, name: name, //throw query param
                  // homeModel: state.extra! as HomeModel, //throw object or model
                );
              },
            ),
          ],
        ),
        GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: '/wishlist',
            builder: (BuildContext context, GoRouterState state) {
              return const WishlistPage();
            },
            routes: [
              GoRoute(
                path: 'wishlist_detail',
                name: "WishlistDetail",
                builder: (BuildContext context, GoRouterState state) {
                  return const DetailWishlist();
                },
              ),
            ]),
        // Displayed ShellRoute's Navigator.
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/profile',
          builder: (BuildContext context, GoRouterState state) {
            return const ProfilePage();
          },
        ),
      ],
    ),
  ],
);
