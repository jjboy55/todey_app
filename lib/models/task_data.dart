import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:todey_app/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy Food'),
    Task(name: 'Buy Water'),
    Task(name: 'Buy Tea'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
  TextEditingController textController = TextEditingController();
  void onPressed() {
    _tasks.add(Task(name: textController.text));
    notifyListeners();
  }

  void toggleCheckBoxState(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  int get taskListLength => _tasks.length;

  void removeItem(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
