import 'package:flutter/material.dart';
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
      HomeModel(id: '1', name: 'aaaa', position: 'AAAAA'),
      HomeModel(id: '2', name: 'bbbbb', position: 'BBBBB')
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go To Detail"),
          onPressed: () {
            // GoRouter.of(context).go('/detail');
            // context.go("/home/detail", extra: homeModel); //push object
            // context.go('/wishlist/wishlist_detail');

            // context.go("/$id"); //push param

            // context.goNamed('detail', params: {
            //   'id': id.toString(),
            //   'name': name
            // }); //push query params

            // context.go('/detail', extra: list); //push list
          },
        ),
      ),
    );
  }
}
