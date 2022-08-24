import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final String? name;
  final bool? isChecked;
  final Function(bool?)? toggledCheckBox;
  const TaskListTile({this.name, this.isChecked, this.toggledCheckBox});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: Colors.lightBlueAccent,
      title: Text(
        name!,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration:
                isChecked! ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      value: isChecked,
      onChanged: toggledCheckBox,
    );
  }
}
