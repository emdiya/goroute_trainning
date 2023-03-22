import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_training/data/book_data.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("OrderScreen"),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(books[index].title!),
          subtitle: Text(books[index].author!),
          onTap: () {
            final location = GoRouterState.of(context).location;
            context.push("$location/detail-order?id=${books[index].id}");
          },
        ),
      ),
    );
  }
}
