import 'package:flutter/material.dart';

class DetailFavoriteScreen extends StatelessWidget {
  const DetailFavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Detail Fav"),
      ),
      body: const Center(
        child: Text('No Data'),
      ),
    );
  }
}
