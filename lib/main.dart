import 'package:exam_scheduler/screens/exam_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Распоред за испити',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ExamListScreen(),
    );
  }
}
