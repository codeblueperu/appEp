import 'package:appep/utils/global.colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarreraRunScreen extends StatefulWidget {
  const CarreraRunScreen({super.key});

  @override
  State<CarreraRunScreen> createState() => _CarreraRunScreenState();
}

class _CarreraRunScreenState extends State<CarreraRunScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalColors.darkcolor,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: GlobalColors.warningColor,
          title: Text(
            'Rutina de Carrera',
            style: GoogleFonts.poppins(color: GlobalColors.darkcolor),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding:
                const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 25),
            child: SafeArea(
              child: Center(
                child: Column(
                  children: [],
                ),
              ),
            ),
          ),
        ));
  }
}
