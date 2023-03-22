import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FavoritePage"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("Go To Favorite Detail"),
        onPressed: () {
          // GoRouter.of(context).go('/favorite/detail-fav');
          context.go('/favorite/detail-fav');
        },
      )),
    );
  }
}
