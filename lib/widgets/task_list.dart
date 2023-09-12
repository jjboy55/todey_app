// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:todey_app/models/task.dart';
import 'list_tile.dart';

class TaskList extends StatefulWidget {
  late final List<Task> tasks;
  TaskList({required this.tasks});
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TasksListTile(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            toggleCheckBoxState: (newValue) => setState(() {
                  widget.tasks[index].toggleDone();
                }));
      },
      itemCount: widget.tasks.length,
    );
  }
}
