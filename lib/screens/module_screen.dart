import 'package:flutter/material.dart';
import 'package:tmkacademy/screens/lesson_screen.dart';
import 'package:tmkacademy/screens/quiz_screen.dart';
import 'package:tmkacademy/utils/colors.dart'; // Brand Colors
import '../utils/utils.dart';

class ModuleScreen extends StatelessWidget {
  final int moduleId;
  final String language;
  late final String title;
  late final Map<int, String> moduleLessons;

  ModuleScreen({super.key, required this.language, required this.moduleId}) {
    moduleLessons = modules[language]![moduleId] ?? {};
    title = topics[language]![moduleId] ?? "";
  }

  void _gotoLesson(BuildContext context, Lesson lesson) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => LessonScreen(language: language, lesson: lesson),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandDark, // Deep charcoal background
      appBar: AppBar(
        title: Text("Module $moduleId"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: kBrandWhite,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- THEMED HEADER SECTION ---
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            decoration: BoxDecoration(
              color: kBrandSurface, // Slightly lighter than background
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              border: Border(
                bottom: BorderSide(color: kBrandOrange.withOpacity(0.3), width: 1),
              ),
            ),
            child: Column(
              children: [
                const Icon(Icons.auto_stories_rounded, color: kBrandGold, size: 30),
                const SizedBox(height: 12),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: kBrandWhite,
                    letterSpacing: 1.1,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // --- LESSONS LIST/GRID ---
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                int crossAxisCount = 1;
                if (constraints.maxWidth > 900) {
                  crossAxisCount = 3;
                } else if (constraints.maxWidth > 600) {
                  crossAxisCount = 2;
                }

                return GridView.builder(
                  padding: const EdgeInsets.all(20),
                  itemCount: moduleLessons.length + 1,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    mainAxisExtent: 90,
                  ),
                  itemBuilder: (context, index) {
                    if (index < moduleLessons.length) {
                      int lessonId = moduleLessons.keys.elementAt(index);
                      return _lessonCard(context, lessons[language]![lessonId]);
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

  // --- STUNNING QUIZ CARD ---
  Widget _quizCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [kBrandOrange, Color(0xFFBF360C)], // Rich Burnt Orange
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: kBrandOrange.withOpacity(0.4),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => QuizScreen(language: language, moduleNumber: moduleId),
              ),
            );
          },
          child: Center(
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.bolt_rounded, color: Colors.white, size: 24),
              ),
              title: Text(
                "Module $moduleId Quiz",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: const Text(
                "လွင်ႈၸၢမ်းတူၺ်း",
                style: TextStyle(fontSize: 12, color: Colors.white70),
              ),
              trailing: const Icon(Icons.play_arrow_rounded, color: Colors.white, size: 30),
            ),
          ),
        ),
      ),
    );
  }

  // --- MODERN LESSON CARD ---
  Widget _lessonCard(BuildContext context, Lesson? lesson) {
    if (lesson == null) return const SizedBox.shrink();

    final lessonName = moduleLessons[lesson.id] ?? "";

    return Container(
      decoration: BoxDecoration(
        color: kBrandSurface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: kBrandBlue.withOpacity(0.15), width: 1),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => _gotoLesson(context, lesson),
          child: Center(
            child: ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: kBrandBlue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text(
                  "${lesson.id}",
                  style: const TextStyle(
                    color: kBrandBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              title: Text(
                lessonName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: kBrandWhite,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: kBrandGold, size: 16),
            ),
          ),
        ),
      ),
    );
  }
}