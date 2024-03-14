import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/provider_controller/task_screen_controller.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskScreenController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const TasksScreen(),
      ),
    );
  }
}

