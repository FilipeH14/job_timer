import 'package:flutter/material.dart';
import 'package:job_timer/app/modules/project/task/controller/task_controller.dart';
import 'package:validatorless/validatorless.dart';

class TaskPage extends StatefulWidget {
  final TaskController controller;

  const TaskPage({required this.controller, super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final _formKey = GlobalKey<FormState>();

  final _nameEc = TextEditingController();
  final _durationEc = TextEditingController();

  @override
  void dispose() {
    _nameEc.dispose();
    _durationEc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Criar nova task',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                controller: _nameEc,
                validator: Validatorless.required('Nome obrigatório'),
                decoration: const InputDecoration(
                  label: Text('Nome da task'),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _durationEc,
                validator: Validatorless.multiple([
                  Validatorless.required('Duração obrigatória'),
                  Validatorless.number('Permitido somente números'),
                ]),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Duração da task'),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 49,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  child: const Text('Salvar'),
                  onPressed: () {
                    final formValid =
                        _formKey.currentState?.validate() ?? false;

                    if (formValid) {}
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
