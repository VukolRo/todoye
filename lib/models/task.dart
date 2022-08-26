import 'package:flutter/material.dart';

class Task extends ChangeNotifier {
  String? name;
  bool isDone;

  Task({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
