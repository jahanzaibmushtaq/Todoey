import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/provider_controller/task_screen_controller.dart';
import 'package:todoey/widgets/task_list_tile.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskScreenController>(
        builder: (context, taskScreenController, child) {
      if (taskScreenController.taskCount == 0) {
        return const Center(
          child: Text(
            "No Tasks Added Yet",
            style: TextStyle(fontSize: 16,),
          ),
        );
      } else {
        return ListView.builder(
          itemCount: taskScreenController.taskCount,
          itemBuilder: (context, index) {
            return TaskListTile(
              taskTitle: taskScreenController.tasks[index].name!,
              isChecked: taskScreenController.tasks[index].isDone!,
              onPressed: (newValue) {
                taskScreenController
                    .updateTask(taskScreenController.tasks[index]);
              },
              onLongPress: () {
                taskScreenController
                    .deleteTask(taskScreenController.tasks[index]);
              },
            );
          },
        );
      }
    });
  }
}
