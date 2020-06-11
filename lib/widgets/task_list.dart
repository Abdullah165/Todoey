import 'package:asd/models/task_data.dart';
import 'package:flutter/material.dart';
import 'package:asd/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(taskData.tasks[index]);
              },
              onLongPressedCallback:(){
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.taskLength,
        );
      },
    );
  }
}
