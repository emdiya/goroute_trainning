import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wishlist"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("Go To Wishlist Detail"),
        onPressed: () {
          context.go('/wishlist/wishlist_detail');
        },
      )),
    );
  }
}
