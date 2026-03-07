import 'package:flutter/material.dart';
import 'package:learn_java_in_shan/screens/lesson_screen.dart';
import 'package:learn_java_in_shan/utils/colors.dart'; // Using your colors.dart

import '../utils/utils.dart';

class ModuleScreen extends StatelessWidget {
  final int moduleId;
  late final Map<int, String> moduleLessons;

  ModuleScreen({super.key, required this.moduleId}) {
    // Ensuring we match the String keys in your modules map
    moduleLessons = modules[moduleId] ?? {};
  }

  void _gotoLesson(BuildContext context, Lesson lesson) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (ctx) => LessonScreen(lesson: lesson)));
  }

  Widget _lessonCard(BuildContext context, Lesson? lesson) {
    if (lesson != null) {
      final lessonName = moduleLessons[lesson.id] ?? "";
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
        child: InkWell(
          onTap: () => _gotoLesson(context, lesson),
          borderRadius: BorderRadius.circular(12),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: kJavaLatte),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: kJavaLatte,
                child: Text(
                  "${lesson.id}",
                  style: const TextStyle(
                    color: kJavaMocha,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                lessonName,
                style: const TextStyle(fontSize: 16, color: kJavaEspresso),
              ),
              trailing: const Icon(Icons.chevron_right, color: kJavaGold),
            ),
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Module $moduleId"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Topic Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: kJavaMocha,
            child: Text(
              topics[moduleId] ?? "",
              style: const TextStyle(fontSize: 18, color: kJavaLatte),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: moduleLessons.keys
                  .map((key) => _lessonCard(context, lessons[key]))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
