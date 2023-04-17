import 'package:flutter/material.dart';

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
          )
        ],
      ),
    );
  }
}
