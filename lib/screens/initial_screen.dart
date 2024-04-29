import 'package:flutter/material.dart';
import 'package:primeiro_flutter/data/task_inherited.dart';
import 'package:primeiro_flutter/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: ListView(
        children: TaskInherited.of(context).taskList,
        padding: const EdgeInsets.only(top: 8, bottom: 70),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (contextNew) => FormScreen(context)));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
