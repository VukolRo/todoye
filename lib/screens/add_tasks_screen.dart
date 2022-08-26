import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_date.dart';

class AddTasksScreen extends StatelessWidget {
  late String newTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
          ),
        ),
        child: Consumer<TaskDate>(builder: (context, taskList, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Add task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  newTask = value;
                },
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                color: Colors.lightBlueAccent,
                child: TextButton(
                  onPressed: () {
                    taskList.addTask(newTask);
                    Navigator.pop(context);
                  },
                  child: Text(
                    'ADD',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
