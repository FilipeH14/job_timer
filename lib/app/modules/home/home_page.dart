import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer/app/core/database/database.dart';

import 'package:job_timer/app/entities/project.dart';
import 'package:job_timer/app/entities/project_status.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('page')),
      body: Column(
        children: [
          Container(),
          ElevatedButton(
            child: const Text('Cadastrar'),
            onPressed: () async {
              final db = Modular.get<Database>();
              final connection = await db.openConnection();

              await connection.writeTxn(() => connection.clear());

              connection.writeTxn(() {
                var project = Project();
                project.name = 'Projeto teste';
                project.status = ProjectStatus.emAndamento;

                return connection.projects.put(project);
              });
            },
          ),
        ],
      ),
    );
  }
}
