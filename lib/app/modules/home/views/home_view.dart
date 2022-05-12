import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text("Surah"),
            subtitle: Text("Total Ayat"),
            trailing: Text("Mulai Baca"),
          );
        }),
      ),
    );
  }
}
