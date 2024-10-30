import 'package:appep/utils/global.colors.dart';
import 'package:appep/views/card.line.info.view.dart';
import 'package:appep/views/navigator.bar.view.dart';
import 'package:appep/views/screen/abdominales..component.dart';
import 'package:appep/views/screen/barras.component.dart';
import 'package:appep/views/screen/carrera.component.dart';
import 'package:appep/views/screen/natacion.component.dart';
import 'package:appep/views/screen/pista.combate..component.dart';
import 'package:appep/views/screen/planchas.component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.warningColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
              child: Stack(
                children: [
                  Flex(
                    direction: Axis.vertical,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            color: GlobalColors.warningColor,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 17,
                                    ),
                                    const Icon(Icons.account_circle),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Bienvenido, Diego',
                                      style: GoogleFonts.quicksand(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          wordSpacing: 4,
                                          color: GlobalColors.darkcolor),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 9,
                          child: Container(
                            color: GlobalColors.whiteColor,
                          ))
                    ],
                  ),
                  Positioned(
                    top: 85,
                    left: 10,
                    right: 10,
                    child: Container(
                        padding:
                            const EdgeInsets.only(top: 20, left: 30, right: 30),
                        decoration: BoxDecoration(
                            color: GlobalColors.whiteColor,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0)),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      GlobalColors.darkcolor.withOpacity(0.5),
                                  blurRadius: 7,
                                  offset: const Offset(0, 3))
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.dataset),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Dashboard',
                                  style: GoogleFonts.poppins(
                                      color: GlobalColors.backgroundColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const CarreraViewComponent(),
                                          ),
                                        );
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: GlobalColors.darkcolor,
                                        radius: 35,
                                        child: Icon(
                                          Icons.directions_run,
                                          color: GlobalColors.warningColor,
                                          size: 35,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Carrera',
                                      style: GoogleFonts.poppins(
                                          color: GlobalColors.darkcolor,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const BarrasViewComponent(),
                                          ),
                                        );
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: GlobalColors.darkcolor,
                                        radius: 35,
                                        child: Icon(
                                          Icons.fitness_center,
                                          color: GlobalColors.warningColor,
                                          size: 35,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Barras',
                                      style: GoogleFonts.poppins(
                                          color: GlobalColors.darkcolor,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const PlanchasViewComponent(),
                                          ),
                                        );
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: GlobalColors.darkcolor,
                                        radius: 35,
                                        child: Icon(
                                          Icons.transfer_within_a_station,
                                          color: GlobalColors.warningColor,
                                          size: 35,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Planchas',
                                      style: GoogleFonts.poppins(
                                          color: GlobalColors.darkcolor,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const AbdominalesViewComponent(),
                                          ),
                                        );
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: GlobalColors.darkcolor,
                                        radius: 35,
                                        child: Icon(
                                          Icons.sledding,
                                          color: GlobalColors.warningColor,
                                          size: 35,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Abdominales',
                                      style: GoogleFonts.poppins(
                                          color: GlobalColors.darkcolor,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const PistaCombateViewComponent(),
                                          ),
                                        );
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: GlobalColors.darkcolor,
                                        radius: 35,
                                        child: Icon(
                                          Icons.settings_accessibility,
                                          color: GlobalColors.warningColor,
                                          size: 35,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Pista de',
                                      style: GoogleFonts.poppins(
                                          color: GlobalColors.darkcolor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      'combate',
                                      style: GoogleFonts.poppins(
                                          color: GlobalColors.darkcolor,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NatacionViewComponent(),
                                          ),
                                        );
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: GlobalColors.darkcolor,
                                        radius: 35,
                                        child: Icon(
                                          Icons.pool,
                                          color: GlobalColors.warningColor,
                                          size: 35,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Natación',
                                      style: GoogleFonts.poppins(
                                          color: GlobalColors.darkcolor,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.timeline),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Mejores tiempos',
                                  style: GoogleFonts.poppins(
                                      color: GlobalColors.backgroundColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CardLineInfoView(
                                iconColor: HexColor('#EF700F'),
                                titulo: '12km',
                                subtitulo: '12 octubre de 2024',
                                iconItem: Icons.bolt),
                            const SizedBox(
                              height: 10,
                            ),
                            CardLineInfoView(
                                iconColor: GlobalColors.succesColor,
                                titulo: '9.6km',
                                subtitulo: '29 agosto de 2024',
                                iconItem: Icons.data_exploration),
                            const SizedBox(
                              height: 10,
                            ),
                            CardLineInfoView(
                              iconColor: HexColor('#3ED1FF'),
                              titulo: '6.9km',
                              subtitulo: '23 junio de 2024',
                              iconItem: Icons.donut_small,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CardLineInfoView(
                              iconColor: GlobalColors.warningColor,
                              titulo: '3.7km',
                              subtitulo: '12 mayo de 2024',
                              iconItem: Icons.merge_sharp,
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const NavigatorBarView(),
    );
  }
}
