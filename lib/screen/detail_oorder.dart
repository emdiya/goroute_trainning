// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gorouter_training/data/book_data.dart';
import 'package:gorouter_training/model/book_model.dart';

class DetailOrder extends StatelessWidget {
  final int? id;
  final String? productName;
  const DetailOrder({
    Key? key,
    this.id,
    this.productName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BookModel book = books.firstWhere((item) => item.id == id);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Detail Order'),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Using Query Parameter',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20),
                      child: Column(
                        children: [
                          Text("Index: ${book.id}"),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("Book Name: ${book.title}"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
