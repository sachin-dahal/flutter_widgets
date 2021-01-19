import 'dart:math';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

//-----------------------------
// SINGLE CHART WITH ROUNDED CORNERS
//-----------------------------

class RoundedChartPage extends StatefulWidget {
  @override
  _RoundedChartPageState createState() => _RoundedChartPageState();
}

class _RoundedChartPageState extends State<RoundedChartPage> {
  List<Sales> _salesData;

  List<charts.Series<Sales, String>> _chartData;

  void makeData() {
    _salesData = [];
    _chartData = [];

    Random rand = Random();

    for (int i = 2010; i < 2021; i++) {
      _salesData.add(
        Sales(
          i.toString(),
          rand.nextInt(100),
        ),
      );
    }

    _chartData.add(
      charts.Series(
        id: "sales",
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        data: _salesData,
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.sales,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        displayName: "Sales",
      ),
    );
  }

  @override
  initState() {
    super.initState();
    makeData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Sales Report"),
            Expanded(
              child: charts.BarChart(
                _chartData,
                defaultRenderer: charts.BarRendererConfig(
                  cornerStrategy: charts.ConstCornerStrategy(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Sales {
  final String year;
  final int sales;

  Sales(this.year, this.sales);
}
