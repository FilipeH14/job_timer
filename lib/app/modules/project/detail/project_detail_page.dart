import 'package:flutter/material.dart';
import 'package:job_timer/app/modules/project/detail/widgets/project_detail_appbar.dart';

class ProjectDetailPage extends StatelessWidget {
  const ProjectDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ProjectDetailAppbar(),
        ],
      ),
    );
  }
}
