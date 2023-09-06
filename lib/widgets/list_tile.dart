import 'package:flutter/material.dart';

class TasksListTile extends StatelessWidget {
  final String todo;
  final bool? value;
  final TextDecoration? taskDone;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  TasksListTile({required this.todo, required this.value, this.taskDone});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        todo,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          decoration: taskDone,
        ),
      ),
      trailing: Checkbox(
        value: value,
        onChanged: (bool? newValue) {},
      ),
    );
  }
}
