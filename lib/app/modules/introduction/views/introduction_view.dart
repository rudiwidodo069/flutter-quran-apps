import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:lottie/lottie.dart';
import 'package:quran_apps/app/routes/app_pages.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Aplikasi Quran",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "mari belajar al-quran bersama kami",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 25),
          Lottie.asset(
            "assets/lottie/introduction-lottie.json",
            height: 280,
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              Get.offAllNamed(Routes.HOME);
            },
            child: Text("Mulai Sekarang"),
            style: ButtonStyle(),
          ),
        ]),
      ),
    );
  }
}
