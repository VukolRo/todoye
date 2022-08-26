// import 'package:flutter/material.dart';
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskDate extends ChangeNotifier {
  final List<Task> _tasks = [];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newValue) {
    _tasks.add(Task(name: newValue));
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void clearTasksList() {
    _tasks.clear();
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
