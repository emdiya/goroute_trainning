import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_training/model/home_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final homeModel =
    //     HomeModel(id: '100', name: "Theara", position: "developer");
    // const int id = 11;
    // const String name = "Theara";

    final List<HomeModel> list = [
      HomeModel(id: '11', name: 'aaaa', position: 'AAAAA'),
      HomeModel(id: '22', name: 'bbbbb', position: 'BBBBB')
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go To Detail List"),
          onPressed: () {
            context.go('/detail-homepage', extra: list); //push list
          },
        ),
      ),
    );
  }
}
