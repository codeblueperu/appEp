import 'package:appep/utils/global.colors.dart';
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
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  decoration: BoxDecoration(
                      color: GlobalColors.whiteColor,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0)),
                      boxShadow: [
                        BoxShadow(
                            color: GlobalColors.darkcolor.withOpacity(0.5),
                            blurRadius: 7,
                            offset: const Offset(0, 3))
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.run_circle_outlined),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Mis rutinas',
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
                              CircleAvatar(
                                backgroundColor: GlobalColors.darkcolor,
                                radius: 35,
                                child: Icon(
                                  Icons.directions_run,
                                  color: GlobalColors.warningColor,
                                  size: 35,
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
                              CircleAvatar(
                                backgroundColor: GlobalColors.darkcolor,
                                radius: 35,
                                child: Icon(
                                  Icons.fitness_center,
                                  color: GlobalColors.warningColor,
                                  size: 35,
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
                              CircleAvatar(
                                backgroundColor: GlobalColors.darkcolor,
                                radius: 35,
                                child: Icon(
                                  Icons.transfer_within_a_station,
                                  color: GlobalColors.warningColor,
                                  size: 35,
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
                              CircleAvatar(
                                backgroundColor: GlobalColors.darkcolor,
                                radius: 35,
                                child: Icon(
                                  Icons.sledding,
                                  color: GlobalColors.warningColor,
                                  size: 35,
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
                              CircleAvatar(
                                backgroundColor: GlobalColors.darkcolor,
                                radius: 35,
                                child: Icon(
                                  Icons.settings_accessibility,
                                  color: GlobalColors.warningColor,
                                  size: 35,
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
                              CircleAvatar(
                                backgroundColor: GlobalColors.darkcolor,
                                radius: 35,
                                child: Icon(
                                  Icons.pool,
                                  color: GlobalColors.warningColor,
                                  size: 35,
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
                      Card(
                          elevation: 1,
                          color: HexColor('#FFFFFF'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.bolt,
                                    color: HexColor('#EF700F'),
                                    size: 30,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '12km',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            color: GlobalColors.darkcolor),
                                      ),
                                      Text(
                                        '12 octubre de 2024',
                                        style: GoogleFonts.poppins(
                                            color: GlobalColors.darkcolor),
                                      )
                                    ],
                                  )
                                ],
                              ))),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                          elevation: 1,
                          color: HexColor('#FFFFFF'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.data_exploration,
                                    color: GlobalColors.succesColor,
                                    size: 30,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '9.6km',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            color: GlobalColors.darkcolor),
                                      ),
                                      Text(
                                        '29 agosto de 2024',
                                        style: GoogleFonts.poppins(
                                            color: GlobalColors.darkcolor),
                                      )
                                    ],
                                  )
                                ],
                              ))),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                          elevation: 1,
                          color: HexColor('#FFFFFF'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.donut_small,
                                    color: HexColor('3ED1FF'),
                                    size: 30,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '6.9km',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            color: GlobalColors.darkcolor),
                                      ),
                                      Text(
                                        '23 junio de 2024',
                                        style: GoogleFonts.poppins(
                                            color: GlobalColors.darkcolor),
                                      )
                                    ],
                                  )
                                ],
                              )))
                    ],
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: GlobalColors.darkcolor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: '',
          ),
        ],
      ),
    );
  }
}
