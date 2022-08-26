import 'package:flutter/material.dart';
import 'package:todoey/models/task_date.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'models/task_date.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskDate(),
      child: MaterialApp(
        home: SafeArea(
          child: TasksScreen(),
        ),
      ),
    );
  }
}
