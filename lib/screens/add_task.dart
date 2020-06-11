import 'package:asd/models/task_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

String newTask;

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(
                30.0,
              ),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 40,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
              onChanged: (value) {
                newTask = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context).addNewTask(newTask);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
