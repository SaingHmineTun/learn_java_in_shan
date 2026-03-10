import 'package:flutter/material.dart';
import 'package:learn_java_in_shan/screens/lesson_screen.dart';
import 'package:learn_java_in_shan/screens/quiz_screen.dart';
import 'package:learn_java_in_shan/utils/colors.dart';
import '../utils/utils.dart';

class ModuleScreen extends StatelessWidget {
  final int moduleId;
  final Map<int, String> moduleLessons;

  ModuleScreen({super.key, required this.moduleId})
    : moduleLessons = modules[moduleId] ?? {};

  void _gotoLesson(BuildContext context, Lesson lesson) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (ctx) => LessonScreen(lesson: lesson)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFCFB), // Soft paper background
      appBar: AppBar(
        title: Text("Module $moduleId"),
        backgroundColor: kJavaMocha,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: const BoxDecoration(
              color: kJavaMocha,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: Text(
              topics[moduleId] ?? "",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kJavaLatte,
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Responsive Grid Section
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Determine crossAxisCount based on screen width
                int crossAxisCount = 1;
                if (constraints.maxWidth > 900) {
                  crossAxisCount = 3; // Desktop
                } else if (constraints.maxWidth > 600) {
                  crossAxisCount = 2; // Tablet / Small Laptop
                }

                return GridView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: moduleLessons.length + 1,
                  // extra item for the Quiz
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    mainAxisExtent: 85, // Fixed height for lesson items
                  ),
                  itemBuilder: (context, index) {
                    if (index < moduleLessons.length) {
                      int lessonId = moduleLessons.keys.elementAt(index);
                      return _lessonCard(context, lessons[lessonId]);
                    } else {
                      return _quizCard(context);
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _quizCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kJavaGold, // Gold to stand out
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: kJavaMocha.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => QuizScreen(moduleNumber: moduleId),
              ),
            );
          },
          child: Center(
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: kJavaMocha.withOpacity(0.15),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.extension_rounded, // Puzzle/Quiz icon
                  color: kJavaMocha,
                  size: 24,
                ),
              ),
              title: Text(
                "Module $moduleId Quiz",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: kJavaMocha,
                ),
              ),
              subtitle: const Text(
                "လွင်ႈၸၢမ်းတူၺ်း", // Shan text
                style: TextStyle(fontSize: 12, color: kJavaEspresso),
              ),
              trailing: const Icon(Icons.play_circle_fill, color: kJavaMocha),
            ),
          ),
        ),
      ),
    );
  }

  Widget _lessonCard(BuildContext context, Lesson? lesson) {
    if (lesson == null) return const SizedBox.shrink();

    final lessonName = moduleLessons[lesson.id] ?? "";

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: kJavaLatte),
        boxShadow: [
          BoxShadow(
            color: kJavaMocha.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => _gotoLesson(context, lesson),
          child: Center(
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
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: kJavaEspresso,
                ),
              ),
              trailing: const Icon(Icons.chevron_right, color: kJavaGold),
            ),
          ),
        ),
      ),
    );
  }
}
