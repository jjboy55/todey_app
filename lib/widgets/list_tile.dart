// ignore_for_file: prefer_const_constructors,prefer_const_constructors_in_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class TasksListTile extends StatelessWidget {
  final bool? isChecked;
  late final String taskTitle;
  late final void Function(bool?)? toggleCheckBoxState;

  TasksListTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            decoration: isChecked != null && isChecked == true
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: toggleCheckBoxState,
        ));
  }
}
