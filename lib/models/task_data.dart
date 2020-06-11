import 'package:asd/models/tasks.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskLength{
    return _tasks.length;
  }

  void addNewTask(String newTask){
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}