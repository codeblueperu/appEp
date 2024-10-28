import 'package:appep/utils/global.colors.dart';
import 'package:appep/views/dashboard.view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isChecked = false;
  bool isVisbled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.whiteColor,
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 25),
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MONITOREO  DE LA CAPACIDAD FÍSICA DEL  PERSONAL MILITAR DEL EJÉRCITO DEL PERÚ',
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    color: GlobalColors.backgroundColor,
                    wordSpacing: 2,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              const Image(
                image: AssetImage('assets/images/banner.png'),
                width: 300,
                height: 250,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Login',
                style: GoogleFonts.quicksand(
                    color: GlobalColors.backgroundColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 320,
                height: 55,
                padding: const EdgeInsets.only(top: 3, left: 15),
                decoration: BoxDecoration(
                    color: GlobalColors.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: GlobalColors.succesColor),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1), blurRadius: 7)
                    ]),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: GlobalColors.succesColor,
                  style: GoogleFonts.quicksand(
                      color: GlobalColors.backgroundColor),
                  decoration: InputDecoration(
                      labelStyle: GoogleFonts.quicksand(
                          color: GlobalColors.backgroundColor,
                          fontWeight: FontWeight.bold),
                      prefixIcon: const Icon(Icons.person),
                      prefixIconColor: GlobalColors.succesColor,
                      fillColor: GlobalColors.succesColor,
                      labelText: "Usuario",
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(10),
                      hintStyle: TextStyle(
                          height: 5, color: GlobalColors.succesColor)),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 320,
                height: 55,
                padding: const EdgeInsets.only(top: 3, left: 15),
                decoration: BoxDecoration(
                    color: GlobalColors.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: GlobalColors.succesColor),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1), blurRadius: 7)
                    ]),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  cursorColor: GlobalColors.succesColor,
                  style: GoogleFonts.quicksand(
                    color: GlobalColors.backgroundColor,
                  ),
                  decoration: InputDecoration(
                    labelStyle: GoogleFonts.quicksand(
                      color: GlobalColors.backgroundColor,
                      fontWeight: FontWeight.bold,
                    ),
                    labelText: "Contraseña",
                    // Icono a la izquierda
                    prefixIcon: const Icon(Icons.password),
                    prefixIconColor: GlobalColors.succesColor,
                    // Icono a la derecha
                    suffixIcon: Icon(                      
                      Icons
                          .visibility, // Puedes cambiar el icono según prefieras
                      color: GlobalColors.succesColor,
                    ),
                    fillColor: GlobalColors.succesColor,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(10),
                    hintStyle: TextStyle(
                      height: 5,
                      color: GlobalColors.succesColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(width: 19,),
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                    activeColor: GlobalColors.succesColor, // Cambia el color si lo deseas
                  ),
                  Text("Recordar credenciales",
                      style: GoogleFonts.quicksand(
                          color: GlobalColors.backgroundColor)),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              MaterialButton(
                onPressed: () {
                  Get.to(const DashboardView());
                },
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15), // Bordes redondeados de 15px
                ),
                minWidth: 200,
                height: 50,
                color: GlobalColors.darkcolor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.login,
                      color: GlobalColors.whiteColor,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Ingresar",
                      style: GoogleFonts.quicksand(
                        color: GlobalColors.whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15)
            ],
          ),
        )),
      ),
    );
  }
}
