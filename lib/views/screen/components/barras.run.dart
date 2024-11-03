import 'package:appep/utils/global.colors.dart';
import 'package:appep/views/screen/components/card.run.line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:async';

class BarrasRunScreen extends StatefulWidget {
  const BarrasRunScreen({super.key});

  @override
  State<BarrasRunScreen> createState() => _BarrasRunScreenState();
}

class _BarrasRunScreenState extends State<BarrasRunScreen> {
  double _progress = 0.0;
  int _contador = 60;
  Timer? _timer;
  Timer? _secondTimer;

  static const int totalDuration = 60;
  static const int updateInterval = 100;

  void _startProgress() {
    _timer?.cancel();
    _secondTimer?.cancel();

    setState(() {
      _progress = 0.0;
      _contador = totalDuration;
    });

    double increment = 1.0 / (totalDuration * 1000 / updateInterval);
    _timer = Timer.periodic(Duration(milliseconds: updateInterval), (timer) {
      setState(() {
        _progress += increment;
        if (_progress >= 1.0) {
          _progress = 1.0;
          timer.cancel();
        }
      });
    });
    _secondTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _contador--;
        if (_contador <= 0) {
          _contador = 0;
          timer.cancel();
        }
      });
    });
  }

  void _resetProgress() {
    setState(() {
      _progress = 0.0;
      _contador = 60;
    });
    _timer?.cancel();
    _secondTimer?.cancel();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _secondTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalColors.darkcolor,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: GlobalColors.warningColor,
          title: Text(
            'Rutina de Barras',
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
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: _progress,
                          center: _progress > 0
                              ? new Text(
                                  _contador.toString(),
                                  style: GoogleFonts.poppins(
                                      color: GlobalColors.warningColor,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                )
                              : new Icon(
                                  Icons.bolt,
                                  size: 50.0,
                                  color: GlobalColors.warningColor,
                                ),
                          backgroundColor: Colors.grey,
                          progressColor: GlobalColors.warningColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _progress > 0
                            ? MaterialButton(
                                minWidth: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                color: GlobalColors.orangecolor,
                                onPressed: _resetProgress,
                                child: Icon(
                                  Icons.refresh,
                                  color: GlobalColors.whiteColor,
                                ),
                              )
                            : MaterialButton(
                                minWidth: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                color: GlobalColors.succesColor,
                                onPressed: _startProgress,
                                child: Icon(
                                  Icons.play_arrow,
                                  color: GlobalColors.whiteColor,
                                ),
                              )
                      ],
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CardRunLineInfoView(
                          srmImage: "assets/apps/barras.gif",
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CardRunLineInfoView(
                          srmImage: "assets/apps/barras_2.gif",
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
