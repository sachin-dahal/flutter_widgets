import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/bar_charts/single_chart_page.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SimpleTimeSeriesChart extends StatefulWidget {
  @override
  _SimpleTimeSeriesChartState createState() => _SimpleTimeSeriesChartState();
}

class _SimpleTimeSeriesChartState extends State<SimpleTimeSeriesChart> {
  List<Sales> _salesData;

  List<charts.Series<TimeSeriesSales, DateTime>> _chartData;

  void makeData() {
    _salesData = [];
    _chartData = [];

    final data = [
      TimeSeriesSales(DateTime(2020, 5, 18), 0),
      TimeSeriesSales(DateTime(2020, 5, 19), 5),
      TimeSeriesSales(DateTime(2020, 6, 26), 50),
      TimeSeriesSales(DateTime(2020, 7, 3), 25 ),
      TimeSeriesSales(DateTime(2020, 7, 10), 60),
      TimeSeriesSales(DateTime(2020, 8, 3), 45),
      TimeSeriesSales(DateTime(2020, 8, 10), 55),
    ];

    _chartData.add(
      charts.Series(
        id: "sales",
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        displayName: "Sales",
        data: data,
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
              child: charts.TimeSeriesChart(
                _chartData,
                dateTimeFactory: charts.LocalDateTimeFactory(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
