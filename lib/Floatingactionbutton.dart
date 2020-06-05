//todo onpressed create another task feild

import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {

  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 =false;

  void _value2Changed(bool value) => setState(() => _value2 = value);
  void _value3Changed(bool value) => setState(() => _value3 = value);
  void _value4Changed(bool value) => setState(() => _value4 = value);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.purple.shade50,
      child: CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        value: _value2,
        onChanged: _value2Changed,
        title: Text(
          'Meditation',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w300,color: Colors.purple),
        ),
        activeColor: Colors.purple,
      ),
    );
  }
}
