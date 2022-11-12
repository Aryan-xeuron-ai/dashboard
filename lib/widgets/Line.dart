import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Line extends StatefulWidget {
  const Line({Key? key}) : super(key: key);

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: LineChart(
        swapAnimationDuration: const Duration(milliseconds: 250),
        LineChartData(
          lineTouchData: LineTouchData(
            handleBuiltInTouches: true,
            touchTooltipData: LineTouchTooltipData(
              tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
            ),
          ),
          backgroundColor: Colors.transparent,
          minY: 0,
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 32,
                interval: 1,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 32,
                interval: 3,
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            show: true,
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(1, 3),
                const FlSpot(2, 9),
                const FlSpot(3, 3),
                const FlSpot(4, 1),
                const FlSpot(5, 7),
                const FlSpot(6, 4),
              ],
              isStrokeCapRound: true,
              isStrokeJoinRound: true,
              show: true,
              color: Colors.black,
              barWidth: 5,
              dotData: FlDotData(
                show: false,
              ),
              curveSmoothness: 10,
            ),
          ],
          gridData: FlGridData(
            show: true,
            horizontalInterval: 1,
            verticalInterval: 1,
          ),
        ),
      ),
    );
  }
}
