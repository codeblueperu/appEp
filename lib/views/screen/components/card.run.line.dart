import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CardRunLineInfoView extends StatelessWidget {
 
  final String srmImage; 

  const CardRunLineInfoView({
    super.key,
    required this.srmImage, 
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1,
        color: HexColor('#FFFFFF'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        margin: const EdgeInsets.symmetric(vertical: 3),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage(srmImage),width: 200,height: 150,),
              ],
            )));
  }
}
