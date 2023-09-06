// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:todey_app/screens/add_task_screen.dart';
import '../widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Show bottom Sheet
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 30,
              top: 100,
              right: 30,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
                SizedBox(height: 10),
                Text(
                  '12 Tasks',
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
