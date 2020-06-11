import 'package:asd/models/task_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget{
  final bool isChecked ;
  final String taskTitle;
  final Function checkboxCallback;
  final Function onLongPressedCallback;

 TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.onLongPressedCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressedCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough: TextDecoration.none,
          fontSize: 18,
        ),
      ),
       trailing: Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: checkboxCallback,
    ),
    );
  }
}


