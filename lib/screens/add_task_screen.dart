// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                  focusColor: Colors.lightBlueAccent,
                  border: UnderlineInputBorder()),
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    padding: EdgeInsets.all(13)),
                onPressed: () {},
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ))
          ]),
        ),
      ),
    );
  }
}
