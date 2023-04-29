import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer/app/core/database/database.dart';

import 'package:job_timer/app/entities/project.dart';
import 'package:job_timer/app/entities/project_status.dart';
import 'package:job_timer/app/modules/home/widgets/header_projects_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: SafeArea(
          child: ListTile(
            title: Text('Sair'),
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text('Projetos'),
              expandedHeight: 100,
              toolbarHeight: 100,
              centerTitle: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
              ),
            ),
            SliverPersistentHeader(delegate: HeaderProjectsMenu(), pinned: true),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(height: 2000, color: Colors.blue),
                Container(height: 2000, color: Colors.blue),
                Container(height: 2000, color: Colors.blue),
                Container(height: 2000, color: Colors.blue),
                Container(
                  height: 2000,
                  color: Colors.blue,
                  child: const Text('chegou no fim'),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
