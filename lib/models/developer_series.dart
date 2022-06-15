import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DeveloperSeries {
  final String year;
  final int developers;
  final charts.Color barColor;

  DeveloperSeries({
    required this.year,
    required this.developers,
    required this.barColor,
  });

  static final List<DeveloperSeries> data = [
    DeveloperSeries(
      year: "2017",
      developers: 80000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    DeveloperSeries(
      year: "2018",
      developers: 50000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    DeveloperSeries(
      year: "2019",
      developers: 40000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    DeveloperSeries(
      year: "2020",
      developers: 35000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    DeveloperSeries(
      year: "2021",
      developers: 45000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    DeveloperSeries(
      year: "2022",
      developers: 75000,
      barColor: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
  ];
}
