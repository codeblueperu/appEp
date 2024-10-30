import 'package:appep/utils/global.colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CardLineInfoView extends StatelessWidget {
  final Color iconColor;
  final String titulo;
  final String subtitulo;
  final IconData iconItem;

  const CardLineInfoView({
    super.key,
    required this.iconColor,
    required this.titulo,
    required this.subtitulo,
    required this.iconItem,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1,
        color: HexColor('#FFFFFF'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        margin: const EdgeInsets.symmetric(vertical: 3),
        child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Icon(
                  iconItem,
                  color: iconColor,
                  size: 30,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titulo,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: GlobalColors.darkcolor),
                    ),
                    Text(
                      subtitulo,
                      style: GoogleFonts.poppins(color: GlobalColors.darkcolor),
                    )
                  ],
                )
              ],
            )));
  }
}
