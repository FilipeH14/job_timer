import 'package:flutter/material.dart';
import 'package:job_timer/app/modules/project/detail/widgets/project_detail_appbar.dart';
import 'package:job_timer/app/modules/project/detail/widgets/project_pie_chart.dart';
import 'package:job_timer/app/modules/project/detail/widgets/project_task_tile.dart';

class ProjectDetailPage extends StatelessWidget {
  const ProjectDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ProjectDetailAppbar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 50),
                  child: ProjectPieChart(),
                ),
                const ProjectTaskTile(),
                const ProjectTaskTile(),
                const ProjectTaskTile(),
                const ProjectTaskTile(),
                const ProjectTaskTile(),
                const ProjectTaskTile(),
                const ProjectTaskTile(),
                const ProjectTaskTile(),
                const ProjectTaskTile(),
                const ProjectTaskTile(),
                const ProjectTaskTile(),
                const ProjectTaskTile(),
                const ProjectTaskTile(),
                const ProjectTaskTile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
