import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../models/developer_series.dart';

class DeveloperBarChart extends StatelessWidget {
  final List<DeveloperSeries> data;

  DeveloperBarChart({required this.data});
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

    return SizedBox(
      height: 600,
      child: charts.PieChart<String>(
        series,
        animate: true,
        defaultRenderer: charts.ArcRendererConfig(
          arcRendererDecorators: [
            charts.ArcLabelDecorator(),
          ],
        ),
      ),
    );
  }
}
