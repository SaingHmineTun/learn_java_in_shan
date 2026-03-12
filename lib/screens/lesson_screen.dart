import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:learn_java_in_shan/utils/utils.dart';
import 'package:learn_java_in_shan/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class LessonScreen extends StatelessWidget {
  final String language;
  final Lesson lesson;
  late final int startIndex;
  late final int endIndex;
  late final int currentIndex;
  late final Map<int, String> moduleLessons;
  late final Map<int, Lesson> lessonList;

  LessonScreen({super.key, required this.language, required this.lesson}) {
    // if (language == "java") {
    //   moduleLessons = javaModules[lesson.moduleId] ?? {};
    //   lessonList = javaLessons;
    // } else if (language == "python") {
    //   moduleLessons = pythonModules[lesson.moduleId] ?? {};
    //   lessonList = pythonLessons;
    // }
    moduleLessons = modules[language]![lesson.moduleId] ?? {};
    lessonList = lessons[language] ?? {};
    startIndex = moduleLessons.keys.first;
    endIndex = moduleLessons.keys.last;
    currentIndex = lesson.id;
    print("Lesson: ${lesson.toString()}");
    print("Module Lessons: ${moduleLessons.toString()}");
    print("Start: $startIndex\nEnd: $endIndex\nCurrent: $currentIndex");
  }

  Future<String> loadMarkdownData() async {
    return await rootBundle.loadString(
      'assets/lessons/$language/lesson${lesson.id}.md',
    );
  }

  void _launchExternalUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Lesson ${lesson.id}"),
        backgroundColor: kJavaMocha,
        foregroundColor: Colors.white,
      ),
      // --- NAV BUTTONS AT THE BOTTOM ---
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Previous Button
            currentIndex > startIndex
                ? TextButton.icon(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => LessonScreen(
                            language: language,
                            lesson: lessonList[currentIndex - 1]!,
                          ),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: kJavaMocha,
                    ),
                    label: const Text(
                      "ဢွၼ်ၼႃႈ",
                      style: TextStyle(
                        color: kJavaMocha,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : const SizedBox(width: 100), // Placeholder to keep spacing
            // Next Button
            currentIndex < endIndex
                ? TextButton.icon(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => LessonScreen(
                            language: language,
                            lesson: lessonList[currentIndex + 1]!,
                          ),
                        ),
                      );
                    },
                    icon: const Text(
                      "တၢင်းၼႃႈ",
                      style: TextStyle(
                        color: kJavaMocha,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    label: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: kJavaMocha,
                    ),
                  )
                : const SizedBox(width: 100),
          ],
        ),
      ),
      body: FutureBuilder<String>(
        future: loadMarkdownData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              physics: const BouncingScrollPhysics(),
              selectable: true,
              data: snapshot.data!,
              onTapLink: (text, href, title) {
                if (href != null) _launchExternalUrl(href);
              },
              styleSheet: MarkdownStyleSheet(
                p: const TextStyle(
                  fontSize: 17,
                  height: 1.6,
                  color: kJavaEspresso,
                ),
                h1: const TextStyle(
                  color: kJavaMocha,
                  fontWeight: FontWeight.bold,
                  fontFamily: "AJ03",
                ),
                h2: const TextStyle(
                  color: kJavaMocha,
                  fontWeight: FontWeight.bold,
                  fontFamily: "AJ03",
                ),
                h3: const TextStyle(
                  color: kJavaMocha,
                  fontWeight: FontWeight.bold,
                  fontFamily: "AJ03",
                ),
                h4: const TextStyle(
                  color: kJavaMocha,
                  fontWeight: FontWeight.bold,
                  fontFamily: "AJ03",
                ),
                h5: const TextStyle(
                  color: kJavaMocha,
                  fontWeight: FontWeight.bold,
                  fontFamily: "AJ03",
                ),
                h6: const TextStyle(
                  color: kJavaMocha,
                  fontWeight: FontWeight.bold,
                  fontFamily: "AJ03",
                ),
                codeblockPadding: const EdgeInsets.all(16),
                codeblockDecoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: kJavaGold.withOpacity(0.3),
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                code: const TextStyle(
                  fontFamily: 'AJ06',
                  fontSize: 17,
                  letterSpacing: 1.0,
                  color: Color(0xFFEAB7A2),
                  height: 2,
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text("Error loading lesson."));
          } else {
            return const Center(
              child: CircularProgressIndicator(color: kJavaMocha),
            );
          }
        },
      ),
    );
  }
}
