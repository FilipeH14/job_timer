import 'package:flutter/material.dart';
import 'package:job_timer/app/modules/project/task/controller/task_controller.dart';

class TaskPage extends StatelessWidget {
  final TaskController controller;

  const TaskPage({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Criar nova task')),
      body: Container(),
    );
  }
}
