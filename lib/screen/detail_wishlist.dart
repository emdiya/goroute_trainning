import 'package:flutter/material.dart';

class DetailWishlist extends StatelessWidget {
  const DetailWishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Detail Wishlist"),
      ),
    );
  }
}
