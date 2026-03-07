import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:learn_java_in_shan/utils/utils.dart';
import 'package:learn_java_in_shan/utils/colors.dart'; // Import your coffee palette
import 'package:url_launcher/url_launcher.dart';

class LessonScreen extends StatelessWidget {
  final Lesson lesson;

  const LessonScreen({super.key, required this.lesson});

  Future<String> loadMarkdownData() async {
    return await rootBundle.loadString('assets/lessons/lesson${lesson.id}.md');
  }

  void _launchVideo(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  void _launchExternalUrl(String url) async {
    final Uri uri = Uri.parse(url);
    // LaunchMode.externalApplication opens the browser (Chrome/Safari)
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _launchVideo(lesson.youtubeLink),
        label: const Text(
          "တူၺ်းဝီႇတီႇဢူဝ်ႇ",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        icon: const Icon(Icons.video_library),
        backgroundColor: kJavaGold, // Using your coffee gold
        foregroundColor: kJavaEspresso, // Dark text on gold button
      ),
      body: FutureBuilder<String>(
        future: loadMarkdownData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              physics: const BouncingScrollPhysics(),
              selectable: true,
              data: snapshot.data!,
              // --- ADD THIS SECTION ---
              onTapLink: (text, href, title) {
                if (href != null) {
                  _launchExternalUrl(href);
                }
              },
              styleSheet: MarkdownStyleSheet(
                // AJ05 inherited automatically from Theme
                p: const TextStyle(fontSize: 17, height: 1.6, color: kJavaEspresso),
                h1: const TextStyle(color: kJavaMocha, fontWeight: FontWeight.bold, fontFamily: "AJ03"),
                h2: const TextStyle(color: kJavaMocha, fontWeight: FontWeight.bold, fontFamily: "AJ03"),
                h3: const TextStyle(color: kJavaMocha, fontWeight: FontWeight.bold, fontFamily: "AJ03"),
                h4: const TextStyle(color: kJavaMocha, fontWeight: FontWeight.bold, fontFamily: "AJ03"),
                h5: const TextStyle(color: kJavaMocha, fontWeight: FontWeight.bold, fontFamily: "AJ03"),
                h6: const TextStyle(color: kJavaMocha, fontWeight: FontWeight.bold, fontFamily: "AJ03"),

                codeblockPadding: const EdgeInsets.all(16),
                codeblockDecoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E), // Professional VS Code Dark gray
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: kJavaGold.withOpacity(0.3), width: 1), // Subtle gold border
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
                  color: Color(0xFFEAB7A2), // Warm Java-string-like color
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