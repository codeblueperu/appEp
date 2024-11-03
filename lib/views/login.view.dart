import 'package:appep/data/usuarios.dart';
import 'package:appep/utils/global.colors.dart';
import 'package:appep/views/dashboard.view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isChecked = false;
  bool isVisbled = false;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final List<Usuario> dtLista = [
    Usuario(username: '120356800', password: '120804700'),
    Usuario(username: '120804700', password: '120804700'),
    Usuario(username: '335983200', password: '335983200'),
  ];

  @override
  void initState() {
    super.initState();
    _clearSharedPreferences(); 
  }

  Future<void> _clearSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  Usuario? _getUsuario(String username, String password) {
    return dtLista.firstWhere((usuario) =>
        usuario.username == username && usuario.password == password);
  }

  Future<void> _login() async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    bool isValid = dtLista.any((usuario) =>
        usuario.username == username && usuario.password == password);

    if (username == "" || password == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Ingrese un usuario y contraseña')),
      );
    } else if (username != "" && password != "" && isValid) {
      Usuario? dbuser = _getUsuario(username,password);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', dbuser!.password);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                DashboardView()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('El usuario y/ó contraseña son incorrectos')),
      );
    }
  }

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
                  controller: _usernameController,
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
                  controller: _passwordController,
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
                    prefixIcon: const Icon(Icons.password),
                    prefixIconColor: GlobalColors.succesColor,
                    suffixIcon: Icon(
                      Icons.visibility,
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
                  const SizedBox(
                    width: 19,
                  ),
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                    activeColor: GlobalColors
                        .succesColor, // Cambia el color si lo deseas
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
                onPressed: _login,
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
