import 'package:flutter/material.dart';
import 'package:gorouter_training/model/home_model.dart';

class DetailHomePage extends StatelessWidget {
  final List<HomeModel>? listHome;

  const DetailHomePage({Key? key, this.listHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: Column(
          children: listHome!
              .map((e) => Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text(
                              'ID: ${e.id} ,',
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Name: ${e.name}',
                            )
                          ],
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
