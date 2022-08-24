import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_list_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task>? tasks;
  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskListTile(
          name: widget.tasks![index].name,
          isChecked: widget.tasks![index].isDone,
          toggledCheckBox: (value) {
            setState(() {
              widget.tasks![index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks!.length,
    );
  }
}
