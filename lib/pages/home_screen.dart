import 'package:charts_learn/models/developer_series.dart';
import 'package:charts_learn/pages/developer_line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'developers_pie_chart.dart';
import 'line_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: LineChartPage(),
            // child: DeveloperBarChart(
            //   data: DeveloperSeries.data,
            // ),
          ),
        ),
      ),
    );
  }
}
