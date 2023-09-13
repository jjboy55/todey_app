// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey_app/models/task_data.dart';
import 'list_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, value, Widget? child) => ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return TasksListTile(
              index: index,
              isChecked: value.tasks[index].isDone,
              taskTitle: value.tasks[index].name,
              toggleCheckBoxState: (newValue) {
                context.read<TaskData>().toggleCheckBoxState(index);
              });
        },
        itemCount: value.taskListLength,
      ),
    );
  }
}
