import 'package:flutter/material.dart';
import 'package:job_timer/app/core/ui/job_timer_icons.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('splash page')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              decoration: const InputDecoration(label: Text('input xxx')),
            ),
          ),
          ElevatedButton(
            child: const Text('Botão'),
            onPressed: () {},
          ),
          const Icon(JobTimerIcons.ok_circled2, size: 50),
          const Icon(JobTimerIcons.angle_double_right, size: 50),
        ],
      ),
    );
  }
}
