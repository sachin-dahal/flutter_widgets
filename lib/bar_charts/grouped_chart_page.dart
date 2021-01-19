import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/bar_charts/single_chart_page.dart';
import 'package:charts_flutter/flutter.dart' as charts;

//-----------------------------
// CPMPARISON BETWEEN 3
//-----------------------------


class GroupedChartPage extends StatefulWidget {
  @override
  _GroupedChartPageState createState() => _GroupedChartPageState();
}

class _GroupedChartPageState extends State<GroupedChartPage> {
  List<Sales> _salesData;
  List<charts.Series<Sales, String>> _chartData;

  void makeData() {
    _salesData = [];
    _chartData = [];

    final rand = Random();

    for (var i = 2015; i < 2021; i++) {
      _salesData.add(
        Sales(i.toString(), rand.nextInt(100)),
      );
    }

    _chartData.add(
      charts.Series(
        id: "TV",
        data: _salesData,
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.sales,
        displayName: "Sales",
      ),
    );

    _chartData.add(
      charts.Series(
        id: "LAPTOP",
        data: _salesData,
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.sales + 10,
        displayName: "Sales",
      ),
    );

    _chartData.add(
      charts.Series(
        id: "PC",
        data: _salesData,
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.sales - 10,
        displayName: "Sales",
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    makeData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Sales Data"),
            Expanded(
              child: charts.BarChart(
                _chartData,
                barGroupingType: charts.BarGroupingType.grouped,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
