import 'package:flutter/material.dart';

class InsightGraph extends StatelessWidget {
  final List<double> dataPoints;
  final double barWidth;
  final double maxBarHeight;

  const InsightGraph({
    Key? key,
    required this.dataPoints,
    this.barWidth = 20.0,
    this.maxBarHeight = 100.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: dataPoints.map((data) {
        final barHeight = data * maxBarHeight;
        return Container(
          width: barWidth,
          height: barHeight,
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
        );
      }).toList(),
    );
  }
}
