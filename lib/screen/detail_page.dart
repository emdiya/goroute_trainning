import 'package:flutter/material.dart';
import 'package:gorouter_training/model/home_model.dart';

class DetailPage extends StatelessWidget {
  // final HomeModel? homeModel;
  // final int? id;
  // final String? name;
  final List<HomeModel>? listHome;

  const DetailPage(
      {Key? key,
      // this.homeModel,
      // this.id, this.name
      this.listHome})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: Column(
            children: listHome!.map((e) => Text(e.id.toString())).toList()
            // [
            //   Text("Id $id"),
            //   Text("Name $name"),
            //   // Text("Id ${homeModel!.position}"),
            // ],
            ),
      ),
    );
  }
}
