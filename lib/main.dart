import 'package:flutter/material.dart';
import 'package:flutter_widgets/time_series_charts/simple_time_series_chart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "About Flutter Widgets",
      debugShowCheckedModeBanner: false,
      home: SimpleTimeSeriesChart(),
    );
  }
}
