import 'package:exam_scheduler/models/exam.dart';
import 'package:exam_scheduler/screens/exam_detail_screen.dart';
import 'package:exam_scheduler/widgets/exam_card.dart';
import 'package:flutter/material.dart';

class ExamListScreen extends StatelessWidget {
  ExamListScreen({super.key});

  final List<Exam> exams = [
    Exam(
      subject: "Веб програмирање",
      dateTime: DateTime(2025, 12, 5, 10, 0),
      rooms: ["ЛАб 13"],
    ),
    Exam(
      subject: "Оперативни системи",
      dateTime: DateTime(2025, 12, 10, 9, 0),
      rooms: ["ЛАБ 3"],
    ),
    Exam(
      subject: "Бази на податоци",
      dateTime: DateTime(2025, 12, 12, 12, 0),
      rooms: ["ЛАБ 215"],
    ),
    Exam(
      subject: "Компјутерски Мрежи",
      dateTime: DateTime(2025, 12, 25, 11, 30),
      rooms: ["ЛАБ 200А"],
      isPassed: true,
    ),
    Exam(
      subject: "Вештачка интелигенција",
      dateTime: DateTime(2025, 12, 1, 8, 30),
      rooms: ["ЛАБ 138"],
    ),
    Exam(
      subject: "Интернет технологии",
      dateTime: DateTime(2025, 12, 15, 13, 0),
      rooms: ["ЛАБ 13"],
    ),
    Exam(
      subject: "Мобилни апликации",
      dateTime: DateTime(2025, 12, 5, 9, 0),
      rooms: ["ЛАБ 12"],
    ),
    Exam(
      subject: "Компјутерска графика",
      dateTime: DateTime(2025, 12, 25, 10, 0),
      rooms: ["ЛАБ 3"],
    ),
    Exam(
      subject: "Информациски системи",
      dateTime: DateTime(2025, 12, 10, 11, 0),
      rooms: ["ЛАБ 2"],
      isPassed: true,
    ),
    Exam(
      subject: "Дизајн на интерфејс",
      dateTime: DateTime(2025, 12, 20, 14, 0),
      rooms: ["ЛАБ 200Б"],
      isPassed: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Распоред за испити - 224018"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          final exam = exams[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ExamDetailScreen(exam: exam)),
            ),
            child: ExamCard(exam: exam),
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          "Вкупно испити: ${exams.length}",
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
