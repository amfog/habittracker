import 'package:flutter/material.dart';
class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  TextField text = TextField();
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(
        'Reading',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w300,color: Colors.yellow.shade700),
      ),
      activeColor: Colors.yellow,
    );
  }
}
