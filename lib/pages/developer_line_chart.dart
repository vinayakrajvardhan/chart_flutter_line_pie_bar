import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../models/developer_series.dart';

class DeveloperLineChart extends StatelessWidget {
  final List<DeveloperSeries> data;

  DeveloperLineChart({required this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<DeveloperSeries, String>> series = [
      charts.Series(
          id: "developers",
          data: data,
          domainFn: (DeveloperSeries series, _) => series.year,
          measureFn: (DeveloperSeries series, _) => series.developers,
          colorFn: (DeveloperSeries series, _) => series.barColor)
    ];

    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(25),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            children: [
              Text("Yearly Growth in the Flutter Community",
                  style: TextStyle(fontSize: 24)),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: charts.BarChart(series, animate: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
