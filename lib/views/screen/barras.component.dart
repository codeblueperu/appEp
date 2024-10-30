import 'package:appep/utils/global.colors.dart';
import 'package:appep/views/card.line.info.view.dart';
import 'package:appep/views/dashboard.view.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';

class BarrasViewComponent extends StatelessWidget {
  const BarrasViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    List<_SalesData> data = [
      _SalesData('Trim I', 11),
      _SalesData('Trim II', 4),
      _SalesData('Trim III', 7)
    ];
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
                          padding: const EdgeInsets.all(15),
                          color: GlobalColors.warningColor,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.to(const DashboardView());
                                    },
                                    child: Icon(
                                      Icons.arrow_circle_left_outlined,
                                      size: 30,
                                      color: GlobalColors.backgroundColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 17,
                                  ),
                                  Text(
                                    "Barras",
                                    style: GoogleFonts.quicksand(
                                        color: HexColor("#333C48"),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "60",
                                        style: GoogleFonts.quicksand(
                                            color: HexColor("#333C48"),
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "minutos",
                                        style: GoogleFonts.quicksand(
                                            color: HexColor("#333C48"),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "III",
                                        style: GoogleFonts.quicksand(
                                            color: HexColor("#333C48"),
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "trimestre",
                                        style: GoogleFonts.quicksand(
                                            color: HexColor("#333C48"),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "15",
                                        style: GoogleFonts.quicksand(
                                            color: HexColor("#333C48"),
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "nota",
                                        style: GoogleFonts.quicksand(
                                            color: HexColor("#333C48"),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 9,
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width,
                            color: GlobalColors.whiteColor,
                            child: Column(
                              children: [
                                SfCartesianChart(
                                    primaryXAxis: const CategoryAxis(),
                                    title: ChartTitle(
                                        text: 'Mi progreso',
                                        textStyle: GoogleFonts.quicksand()),
                                    legend: const Legend(isVisible: true),
                                    tooltipBehavior:
                                        TooltipBehavior(enable: true),
                                    series: <CartesianSeries<_SalesData,
                                        String>>[
                                      ColumnSeries<_SalesData, String>(
                                          dataSource: data,
                                          xValueMapper: (_SalesData sales, _) =>
                                              sales.year,
                                          yValueMapper: (_SalesData sales, _) =>
                                              sales.sales,
                                          name: '2024',
                                          color: GlobalColors.warningColor,
                                          dataLabelSettings:
                                              const DataLabelSettings(
                                                  isVisible: true))
                                    ]),
                                const SizedBox(height: 25),
                                CardLineInfoView(
                                    iconColor: GlobalColors.succesColor,
                                    titulo: '7',
                                    subtitulo: 'Trimestre III',
                                    iconItem: Icons.data_exploration),
                                const SizedBox(height: 15),
                                CardLineInfoView(
                                    iconColor: GlobalColors.orangecolor,
                                    titulo: '4',
                                    subtitulo: 'Trimestre II',
                                    iconItem: Icons.close),
                                const SizedBox(height: 15),
                                CardLineInfoView(
                                    iconColor: GlobalColors.warningColor,
                                    titulo: '11',
                                    subtitulo: 'Trimestre I',
                                    iconItem: Icons.check)
                              ],
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        )));
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}