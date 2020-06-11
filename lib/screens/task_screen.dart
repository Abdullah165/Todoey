import 'package:asd/models/task_data.dart';
import 'package:asd/widgets/task_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_task.dart';

class TaskScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(),
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 60,
                  left: 30,
                  right: 30,
                  bottom: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.list,
                        color: Colors.lightBlueAccent,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Todoey',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${Provider.of<TaskData>(context).taskLength> 1 ? '${Provider.of<TaskData>(context).taskLength} tasks' : '${Provider.of<TaskData>(context).taskLength} task'} ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: TaskList(),   
              ),
            ),
          ],
        ));
  }
}
