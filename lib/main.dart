// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors,
import 'package:flutter/material.dart';
import 'package:todey_app/models/task_data.dart';
import 'package:todey_app/screens/tasksapp.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
