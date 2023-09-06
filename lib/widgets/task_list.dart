// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'list_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          TasksListTile(
            todo: 'Buy detergent',
            value: true,
          ),
          TasksListTile(
            todo: 'Buy detergent',
            value: true,
          ),
        ],
      )
    ]);
  }
}
