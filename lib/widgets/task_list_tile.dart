import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
   const TaskListTile({super.key,
    required this.taskTitle, required this.isChecked, required this.onPressed, this.onLongPress
  });
final String taskTitle;
 final bool isChecked;
 final void Function(bool?)? onPressed;
 final Function()? onLongPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
            fontSize: 18),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        side: BorderSide(color: Colors.grey.shade800, width: 1.8),
        onChanged: onPressed,
      ),
    );
  }
}
