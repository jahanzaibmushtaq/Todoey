import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task_model.dart';

class TaskScreenController extends ChangeNotifier{
  final List<TaskModel> _tasks = [
    TaskModel(name: "Buy Milk at 5 AM"),
    TaskModel(name: "Go to the gym at 6 PM")
  ];

  UnmodifiableListView<TaskModel> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }

   void addTask(String newTaskTitle){
    final task = TaskModel(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
   }

   void updateTask(TaskModel task){
    task.toggleDone();
    notifyListeners();
   }
   
   void deleteTask(TaskModel task){
    _tasks.remove(task);
    notifyListeners();
   }
}