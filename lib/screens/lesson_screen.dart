import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:learn_java_in_shan/utils/utils.dart';
import 'package:learn_java_in_shan/utils/colors.dart'; // Brand Colors
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
    moduleLessons = modules[language]![lesson.moduleId] ?? {};
    lessonList = lessons[language] ?? {};
    startIndex = moduleLessons.keys.first;
    endIndex = moduleLessons.keys.last;
    currentIndex = lesson.id;
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
      backgroundColor: kBrandDark, // Dark background for focused reading
      appBar: AppBar(
        title: Text("Lesson ${lesson.id}"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: kBrandWhite,
        centerTitle: true,
      ),
      // --- THEMED NAV BUTTONS ---
      bottomNavigationBar: BottomAppBar(
        color: kBrandSurface,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
                icon: const Icon(Icons.arrow_back_ios_new, size: 16, color: kBrandOrange),
                label: const Text(
                  "ဢွၼ်ၼႃႈ",
                  style: TextStyle(color: kBrandWhite, fontWeight: FontWeight.bold),
                ),
              )
                  : const SizedBox(width: 100),

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
                label: const Text(
                  "တၢင်းၼႃႈ",
                  style: TextStyle(color: kBrandWhite, fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.arrow_forward_ios, size: 16, color: kBrandOrange),
              )
                  : const SizedBox(width: 100),
            ],
          ),
        ),
      ),
      body: FutureBuilder<String>(
        future: loadMarkdownData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              padding: const EdgeInsets.all(20),
              physics: const BouncingScrollPhysics(),
              selectable: true,
              data: snapshot.data!,
              onTapLink: (text, href, title) {
                if (href != null) _launchExternalUrl(href);
              },
              styleSheet: MarkdownStyleSheet(
                p: const TextStyle(
                  fontSize: 18,
                  height: 1.7,
                  color: kBrandWhite, // Light text on dark background
                ),
                h1: const TextStyle(color: kBrandGold, fontWeight: FontWeight.bold, fontFamily: "AJ03", fontSize: 24),
                h2: const TextStyle(color: kBrandGold, fontWeight: FontWeight.bold, fontFamily: "AJ03", fontSize: 22),
                h3: const TextStyle(color: kBrandOrange, fontWeight: FontWeight.bold, fontFamily: "AJ03", fontSize: 20),

                // Code Block Styling (IDE Look)
                codeblockPadding: const EdgeInsets.all(16),
                codeblockDecoration: BoxDecoration(
                  color: const Color(0xFF0D0D0E), // Pure dark for code
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: kBrandBlue.withOpacity(0.3), width: 1),
                ),
                code: const TextStyle(
                  fontFamily: 'AJ06',
                  fontSize: 16,
                  color: kBrandBlue, // Cyan/Blue for code text
                  backgroundColor: Colors.transparent,
                ),

                // Horizontal Rule
                horizontalRuleDecoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kBrandWhite.withOpacity(0.1), width: 1)),
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text("Error loading lesson.", style: TextStyle(color: kBrandWhite)));
          } else {
            return const Center(
              child: CircularProgressIndicator(color: kBrandOrange),
            );
          }
        },
      ),
    );
  }
}