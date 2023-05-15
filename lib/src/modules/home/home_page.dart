import 'package:flutter/material.dart';

import '../../core/ui/helpers/loader.dart';
import '../../core/ui/helpers/messages.dart';
import '../template/base_layout.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, this.title = 'Home'});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: const InputDecoration(label: Text('Login')),
            ),
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Botão'),
            ),
          ),
        ],
      ),
    );
  }
}
