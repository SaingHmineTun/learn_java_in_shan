import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../utils/colors.dart';
import '../utils/quiz.dart';
import 'quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  final String language;
  final int moduleNumber;
  final List<Quiz> sessionQuizzes;
  final List<String> userResults;

  const ResultScreen({
    super.key,
    required this.language,
    required this.moduleNumber,
    required this.sessionQuizzes,
    required this.userResults,
  });

  // --- Certificate Generation Logic ---
  Future<void> _showNameDialog(BuildContext context, int score) async {
    final TextEditingController nameController = TextEditingController();

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: kJavaLatte,
        title: const Text(
          "Enter Your Name",
          style: TextStyle(color: kJavaEspresso, fontWeight: FontWeight.bold),
        ),
        content: TextField(
          controller: nameController,
          decoration: const InputDecoration(
            hintText: "e.g. Sai Mao",
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kJavaGold),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel", style: TextStyle(color: kJavaMocha)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: kJavaMocha),
            onPressed: () {
              Navigator.pop(context);
              _printCertificate(
                nameController.text.isEmpty
                    ? "Java Learner"
                    : nameController.text,
                score,
                "Learn ${language.toUpperCase()} in Shan",
              );
            },
            child: const Text(
              "Generate",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }


  Future<void> _printCertificate(
      String name,
      int score,
      String courseName,
      ) async {
    final pdf = pw.Document();
    final date = DateTime.now().toString().split(' ')[0];

    final shanFont = await fontFromAssetBundle('assets/fonts/aj03.ttf');
    final defaultFont = await fontFromAssetBundle('assets/fonts/aj06.ttf');

    final imageBytes = await rootBundle.load('assets/images/tmklogo.png');
    final logoImage = pw.MemoryImage(imageBytes.buffer.asUint8List());

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4.landscape,
        margin: const pw.EdgeInsets.all(0), // Full bleed design
        build: (pw.Context context) {
          return pw.Container(
            width: double.infinity,
            height: double.infinity,
            decoration: pw.BoxDecoration(
              // Deep Navy/Charcoal background for a premium feel
              color: PdfColor.fromInt(0xFF1A1A1B),
            ),
            child: pw.Stack(
              children: [
                // Decorative Corner Accent (Top Left)
                pw.Positioned(
                  top: 0,
                  left: 0,
                  child: pw.Container(
                    width: 150,
                    height: 150,
                    decoration: pw.BoxDecoration(
                      color: PdfColors.orange800,
                      borderRadius: const pw.BorderRadius.only(
                        bottomRight: pw.Radius.circular(150),
                      ),
                    ),
                  ),
                ),

                // Main Inner Border
                pw.Padding(
                  padding: const pw.EdgeInsets.all(20),
                  child: pw.Container(
                    decoration: pw.BoxDecoration(
                      border: pw.Border.all(
                        color: PdfColors.orange300,
                        width: 2,
                      ),
                    ),
                    padding: const pw.EdgeInsets.all(30),
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      children: [
                        // 1. Large School Logo (Centered & Prominent)
                        pw.Center(child: pw.Image(logoImage, width: 180)),

                        pw.SizedBox(height: 20),

                        // 2. Certificate Header
                        pw.Text(
                          "CERTIFICATE OF ACHIEVEMENT",
                          style: pw.TextStyle(
                            fontSize: 34,
                            font: defaultFont,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors.white,
                            letterSpacing: 3,
                          ),
                        ),

                        pw.SizedBox(height: 10),
                        pw.Text(
                          "THIS CERTIFICATE IS PROUDLY AWARDED TO",
                          style: pw.TextStyle(
                            fontSize: 12,
                            font: defaultFont,
                            color: PdfColors.orange200,
                            letterSpacing: 2,
                          ),
                        ),

                        // 3. Recipient Name in High Contrast
                        pw.SizedBox(height: 15),
                        pw.Text(
                          name.toUpperCase(),
                          style: pw.TextStyle(
                            font: defaultFont,
                            fontSize: 48,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors.yellow400, // Matches logo text
                          ),
                        ),

                        pw.Padding(
                          padding: const pw.EdgeInsets.symmetric(
                            horizontal: 140,
                          ),
                          child: pw.Divider(
                            color: PdfColors.orange300,
                            thickness: 1,
                          ),
                        ),

                        pw.SizedBox(height: 15),

                        // 4. Course Details
                        pw.Text(
                          "in recognition of their successful completion of",
                          style: pw.TextStyle(
                            fontSize: 14,
                            font: defaultFont,
                            color: PdfColors.white,
                          ),
                        ),
                        pw.SizedBox(height: 5),
                        pw.Text(
                          courseName,
                          style: pw.TextStyle(
                            font: defaultFont,
                            fontSize: 24,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors
                                .lightBlue300, // Matches logo river color
                          ),
                        ),

                        pw.SizedBox(height: 5),
                        pw.Text(
                          "Final Assessment Score: $score / ${userResults.length}",
                          style: pw.TextStyle(
                            font: defaultFont,
                            fontSize: 13,
                            color: PdfColors.grey300,
                          ),
                        ),

                        pw.Spacer(),

                        // 5. Signatures and Date
                        pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: pw.CrossAxisAlignment.end,
                          children: [
                            // Date
                            pw.Column(
                              children: [
                                pw.Text(
                                  date,
                                  style: pw.TextStyle(
                                    font: defaultFont,
                                    fontSize: 18,
                                    color: PdfColors.white,
                                  ),
                                ),
                                pw.SizedBox(height: 5),
                                pw.Container(
                                  width: 140,
                                  decoration: const pw.BoxDecoration(
                                    border: pw.Border(
                                      top: pw.BorderSide(
                                        color: PdfColors.orange300,
                                      ),
                                    ),
                                  ),
                                ),
                                pw.SizedBox(height: 10),
                                pw.Text(
                                  "DATE ISSUED",
                                  style: pw.TextStyle(
                                    font: defaultFont,
                                    fontSize: 14,
                                    color: PdfColors.orange200,
                                  ),
                                ),
                              ],
                            ),

                            // Signature
                            pw.Column(
                              children: [
                                pw.Text(
                                  "ၸၢႆးမၢဝ်း (ထုင်ႉမၢဝ်းၶမ်း)",
                                  style: pw.TextStyle(
                                    font: shanFont,
                                    fontSize: 18,
                                    color: PdfColors.yellow400,
                                  ),
                                ),
                                pw.SizedBox(height: 5),
                                pw.Container(
                                  width: 200,
                                  decoration: const pw.BoxDecoration(
                                    border: pw.Border(
                                      top: pw.BorderSide(
                                        color: PdfColors.orange300,
                                      ),
                                    ),
                                  ),
                                ),
                                pw.SizedBox(height: 10),
                                pw.Text(
                                  "CHIEF INSTRUCTOR",
                                  style: pw.TextStyle(
                                    font: defaultFont,
                                    fontSize: 14,
                                    color: PdfColors.orange200,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );

    await Printing.layoutPdf(onLayout: (format) async => pdf.save());
  }


  @override
  Widget build(BuildContext context) {
    int score = 0;
    for (int i = 0; i < sessionQuizzes.length; i++) {
      if (sessionQuizzes[i].options[0] == userResults[i]) score++;
    }

    final bool isPassed = score >= (userResults.length * 0.7).toInt();

    return Scaffold(
      backgroundColor: kJavaLatte,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Result Summary ☕",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: kJavaEspresso,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            children: [
              // --- Score Header ---
              Container(
                padding: const EdgeInsets.all(32),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: kJavaMocha,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(32),
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Your Brew Score",
                      style: TextStyle(color: kJavaGold, fontSize: 18),
                    ),
                    Text(
                      "$score / ${userResults.length}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      isPassed ? "Perfect Roast! 🌟" : "Needs more Caffeine ☕",
                      style: const TextStyle(color: kJavaLatte, fontSize: 16),
                    ),
                  ],
                ),
              ),

              // --- Detailed List ---
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: sessionQuizzes.length,
                  itemBuilder: (context, index) {
                    bool isCorrect =
                        sessionQuizzes[index].options[0] == userResults[index];
                    return Card(
                      color: Colors.white,
                      elevation: 2,
                      margin: const EdgeInsets.only(bottom: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(12),
                        leading: CircleAvatar(
                          backgroundColor: isCorrect
                              ? Colors.green
                              : Colors.red,
                          child: Icon(
                            isCorrect ? Icons.check : Icons.close,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          sessionQuizzes[index].question,
                          style: const TextStyle(
                            color: kJavaEspresso,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your answer: ${userResults[index]}",
                                style: TextStyle(
                                  color: isCorrect ? Colors.green : Colors.red,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              if (!isCorrect)
                                Text(
                                  "Correct answer: ${sessionQuizzes[index].options[0]}",
                                  style: TextStyle(
                                    color: Colors.green.shade700,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              // --- Final Test Certificate Button ---
              if (moduleNumber == 0 && isPassed)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 8.0,
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () => _showNameDialog(context, score),
                    icon: const Icon(Icons.workspace_premium, color: kJavaGold),
                    label: const Text(
                      "CLAIM CERTIFICATE 🎓",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kJavaEspresso,
                      minimumSize: const Size(double.infinity, 56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),

              // --- Action Buttons ---
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: kJavaMocha, width: 2),
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          "Quit 🚪",
                          style: TextStyle(
                            color: kJavaMocha,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kJavaMocha,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuizScreen(
                                language: language,
                                moduleNumber: moduleNumber,
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          "Restart 🔄",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
