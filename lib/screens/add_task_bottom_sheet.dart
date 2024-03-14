import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/provider_controller/task_screen_controller.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    String? taskText;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xff757575),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Add Task",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30, fontWeight: FontWeight.bold),
                ),
                 TextField(
                  autofocus: true,
                  cursorColor: Colors.lightBlueAccent,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Colors.lightBlueAccent),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Colors.lightBlueAccent),
                    ),
                  ),
                  onChanged: (newValue){
                    taskText = newValue;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: (){
                      Provider.of<TaskScreenController>(context, listen: false).addTask(taskText!);
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent),
                    child: const Text(
                      "Add Task",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
