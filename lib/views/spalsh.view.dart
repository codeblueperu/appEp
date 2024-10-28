import 'dart:async';
import 'package:get/get.dart';
import 'package:appep/utils/global.colors.dart';
import 'package:appep/views/login.view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(const LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.backgroundColor,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/images/escudo.png'),width: 100,),
          const SizedBox(width: 15),
          Text('Ejército del Perú',
              style: GoogleFonts.racingSansOne(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: GlobalColors.whiteColor)),
        ],
      )),
    );
  }
}
