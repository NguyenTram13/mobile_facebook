// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ChartWithCrosshair extends StatefulWidget {
  const ChartWithCrosshair({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;
  @override
  _ChartWithCrosshairState createState() => _ChartWithCrosshairState();
}

class _ChartWithCrosshairState extends State<ChartWithCrosshair> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coin Price Chart'),
      ),
      body: Center(
        child: Container(
          height: 400,
          child: SfCartesianChart(
            primaryXAxis: DateTimeAxis(),
            crosshairBehavior: CrosshairBehavior(
              enable: true,
              activationMode: ActivationMode.singleTap,
            ),
            series: <CandleSeries<ChartData, DateTime>>[
              CandleSeries<ChartData, DateTime>(
                dataSource: getChartData(),
                xValueMapper: (ChartData data, _) => data.date,
                lowValueMapper: (ChartData data, _) => data.low,
                highValueMapper: (ChartData data, _) => data.high,
                openValueMapper: (ChartData data, _) => data.open,
                closeValueMapper: (ChartData data, _) => data.close,
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<ChartData> getChartData() {
    // Replace this with your actual data
    return [
      ChartData(DateTime(2023, 8, 1), 100, 120, 110, 115),
      ChartData(DateTime(2023, 8, 2), 110, 130, 115, 125),
      ChartData(DateTime(2023, 8, 3), 105, 125, 110, 120),
      // ... Add more data points
    ];
  }
}

class ChartData {
  ChartData(this.date, this.low, this.high, this.open, this.close);
  final DateTime date;
  final double low;
  final double high;
  final double open;
  final double close;
}
