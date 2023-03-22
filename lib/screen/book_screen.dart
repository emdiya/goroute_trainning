import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_training/data/book_data.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue.shade900,
        title: const Text('Book Screen'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(books[index].title!),
                subtitle: Text(books[index].author!),
                onTap: () {
                  final location = GoRouterState.of(context).location;
                  context.push("$location/${books[index].id}");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
