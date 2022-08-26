import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_list_tile.dart';
import 'package:todoey/models/task_date.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Consumer<TaskDate>(builder: (context, taskList, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskList.tasks[index];
          return TaskListTile(
            name: task.name,
            isChecked: task.isDone,
            onChangedCallback: (value) {
              taskList.updateTask(task);
            },
            longPressCallback: () {
              taskList.deleteTask(task);
            },
          );
        },
        itemCount: taskList.taskCount,
      );
    });
  }
}
