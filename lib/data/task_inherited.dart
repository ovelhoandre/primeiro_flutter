import 'package:flutter/material.dart';
import 'package:primeiro_flutter/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  List<Task> taskList = [
    Task('Fazer Exercícios', 'assets/images/exercicios.jpg', 5),
    Task('Aprender Inglês', 'assets/images/ingles.jpg', 4),
    Task('Aprender Flutter', 'assets/images/flutter.webp', 3)
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant TaskInherited old) {
    return old.taskList.length != taskList.length;
  }
}
