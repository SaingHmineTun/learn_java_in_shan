import 'package:flutter/material.dart';
import 'package:tmkacademy/screens/module_screen.dart';
import 'package:tmkacademy/screens/quiz_screen.dart';
import 'package:tmkacademy/utils/language.dart';
import 'package:tmkacademy/utils/utils.dart';
import '../utils/colors.dart';
import '../utils/pdf_exporter.dart';

class LanguageScreen extends StatelessWidget {
  final String language;
  final Map<int, String> currentTopics;

  LanguageScreen({super.key, required this.language})
    : currentTopics = topics[language] ?? {};

  void _startDownload(BuildContext context) {
    // Check if lessons exist for the language to avoid null errors
    if (lessons[language] == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("No lessons found for this language")),
      );
      return;
    }

    final List<int> lessonIds = lessons[language]!.keys.toList();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) =>
          DownloadProgressDialog(language: language, lessonIds: lessonIds),
    );
  }

  // --- Responsive Download Button ---
  Widget _buildDownloadButton(BuildContext context) {
    bool isWide = MediaQuery.of(context).size.width > 700;

    return isWide
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: TextButton.icon(
              onPressed: () => _startDownload(context),
              icon: const Icon(
                Icons.picture_as_pdf_rounded,
                color: kBrandOrange,
                size: 20,
              ),
              label: const Text(
                "PDF Download",
                style: TextStyle(
                  color: kBrandOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: kBrandOrange.withOpacity(0.05),
              ),
            ),
          )
        : IconButton(
            onPressed: () => _startDownload(context),
            icon: const Icon(Icons.picture_as_pdf_rounded, color: kBrandOrange),
            tooltip: "Download as PDF",
          );
  }

  // --- Final Test Card ---
  Widget _buildFinalTest(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => QuizScreen(language: language, moduleNumber: 0),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [kBrandOrange, kBrandDark],
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: kBrandOrange.withOpacity(0.3),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.emoji_events_rounded, color: kBrandGold, size: 42),
            const SizedBox(height: 8),
            const Text(
              "Final Test",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
                letterSpacing: 1.1,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "All Modules Mix",
              style: TextStyle(
                fontSize: 12,
                color: kBrandGold.withOpacity(0.9),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- Module Card ---
  Widget _buildModuleCard(BuildContext context, int id, String content) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => ModuleScreen(language: language, moduleId: id),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: kBrandSurface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: kBrandBlue.withOpacity(0.2), width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: kBrandBlue.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.menu_book_rounded,
                color: kBrandBlue,
                size: 30,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Module $id",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: kBrandGold,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                content,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 11,
                  color: kBrandWhite,
                  height: 1.3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandDark,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: kBrandWhite),
        title: Text(
          'Learn ${fullName[language]}',
          style: const TextStyle(
            color: kBrandGold,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          _buildDownloadButton(context), // Added Responsive PDF Button
          const SizedBox(width: 8),
        ],
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(width: 4, height: 24, color: kBrandOrange),
                    const SizedBox(width: 12),
                    const Text(
                      "လိူၵ်ႈၵၢၼ်ႁဵၼ်း / Modules",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: kBrandWhite,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                LayoutBuilder(
                  builder: (context, constraints) {
                    int crossAxisCount = constraints.maxWidth < 600 ? 2 : 4;
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: currentTopics.length + 1,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 0.9,
                      ),
                      itemBuilder: (context, index) {
                        if (index < currentTopics.length) {
                          int id = currentTopics.keys.elementAt(index);
                          return _buildModuleCard(
                            context,
                            id,
                            currentTopics[id]!,
                          );
                        } else {
                          return _buildFinalTest(context);
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DownloadProgressDialog extends StatefulWidget {
  final String language;
  final List<int> lessonIds;

  const DownloadProgressDialog({
    super.key,
    required this.language,
    required this.lessonIds,
  });

  @override
  State<DownloadProgressDialog> createState() => _DownloadProgressDialogState();
}

class _DownloadProgressDialogState extends State<DownloadProgressDialog> {
  double currentProgress = 0.0;
  String currentStatus = "Initializing...";

  @override
  void initState() {
    super.initState();
    _startExport();
  }

  void _startExport() {
    PdfExporter.generateLessonsPdf(
      widget.language,
      widget.lessonIds,
      onProgress: (progress, status) {
        if (!mounted) return;
        setState(() {
          currentProgress = progress;
          currentStatus = status;
        });

        // Close dialog automatically on completion
        if (progress >= 1.0) {
          Future.delayed(const Duration(milliseconds: 500), () {
            if (mounted) Navigator.pop(context);
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kBrandSurface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: const Text(
        "Generating PDF",
        style: TextStyle(color: kBrandGold, fontWeight: FontWeight.bold),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          LinearProgressIndicator(
            value: currentProgress,
            backgroundColor: kBrandBlue.withOpacity(0.1),
            valueColor: const AlwaysStoppedAnimation<Color>(kBrandOrange),
            minHeight: 10,
            borderRadius: BorderRadius.circular(5),
          ),
          const SizedBox(height: 20),
          Text(
            currentStatus,
            textAlign: TextAlign.center,
            style: const TextStyle(color: kBrandWhite, fontSize: 13),
          ),
          const SizedBox(height: 10),
          Text(
            "${(currentProgress * 100).toInt()}%",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: kBrandBlue,
            ),
          ),
        ],
      ),
    );
  }
}
