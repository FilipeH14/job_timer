import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProjectPieChart extends StatelessWidget {
  final int projectEstimate;
  final int totalTasks;

  const ProjectPieChart({
    required this.projectEstimate,
    required this.totalTasks,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final residual = (projectEstimate - totalTasks);

    return SizedBox(
      height: 200,
      width: 200,
      child: Stack(
        fit: StackFit.loose,
        children: [
          PieChart(PieChartData(
            sections: [
              PieChartSectionData(
                value: totalTasks.toDouble(),
                color: theme.primaryColor,
                showTitle: true,
                title: '${totalTasks}h',
                titleStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              PieChartSectionData(
                value: residual.toDouble(),
                color: theme.primaryColorLight,
                showTitle: true,
                title: '${residual}h',
                titleStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
          Align(
            alignment: Alignment.center,
            child: Text(
              '${projectEstimate}h',
              style: TextStyle(
                fontSize: 25,
                color: theme.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
