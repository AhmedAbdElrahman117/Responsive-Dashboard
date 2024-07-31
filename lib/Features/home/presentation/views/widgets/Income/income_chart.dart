import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int active = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: SizedBox(
        child: PieChart(
          swapAnimationDuration: const Duration(milliseconds: 150),
          swapAnimationCurve: Curves.linear,
          PieChartData(
            centerSpaceRadius: double.infinity,
            sectionsSpace: 0,
            pieTouchData: PieTouchData(
              enabled: true,
              touchCallback: (p0, pieTouchResponses) {
                active =
                    pieTouchResponses?.touchedSection?.touchedSectionIndex ??
                        -1;
                setState(() {});
              },
            ),
            sections: [
              PieChartSectionData(
                value: 22,
                color: const Color(0xFFE2DECD),
                showTitle: false,
                radius: active == 0 ? 40 : 30,
              ),
              PieChartSectionData(
                value: 20,
                color: const Color(0xFF064061),
                showTitle: false,
                radius: active == 1 ? 40 : 30,
              ),
              PieChartSectionData(
                value: 25,
                color: const Color(0xFF4EB7F2),
                showTitle: false,
                radius: active == 2 ? 40 : 30,
              ),
              PieChartSectionData(
                value: 40,
                color: const Color(0xFF208CC8),
                showTitle: false,
                radius: active == 3 ? 40 : 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
