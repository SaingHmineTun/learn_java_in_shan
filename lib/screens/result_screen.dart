import 'package:flutter/material.dart';
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

  Future<void> _printCertificate(String name, int score) async {
    final pdf = pw.Document();
    final date = DateTime.now().toString().split(' ')[0];

    // 1. Load the Shan font from assets
    final shanFont = await fontFromAssetBundle('assets/fonts/aj03.ttf');
    final defaultFont = await fontFromAssetBundle('assets/fonts/aj06.ttf');

    // 2. Load a Bold version if you want bold Shan text
    // final shanFontBold = await fontFromAssetBundle('assets/fonts/NamKhoneWeb-Bold.ttf');

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4.landscape,
        build: (pw.Context context) {
          return pw.FullPage(
            ignoreMargins: true,
            child: pw.Container(
              margin: const pw.EdgeInsets.all(20),
              decoration: pw.BoxDecoration(
                border: pw.Border.all(
                  color: PdfColor.fromInt(0xFF3E2723),
                  width: 10,
                ),
              ),
              child: pw.Container(
                margin: const pw.EdgeInsets.all(5),
                child: pw.Center(
                  child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.center,
                    children: [
                      pw.Text(
                        "CERTIFICATE OF COMPLETION",
                        style: pw.TextStyle(
                          fontSize: 34,
                          font: defaultFont,
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColor.fromInt(0xFF3C2A21),
                        ),
                      ),
                      pw.SizedBox(height: 20),
                      pw.Text(
                        "This is to certify that",
                        style: pw.TextStyle(fontSize: 18, font: defaultFont),
                      ),
                      pw.SizedBox(height: 15),
                      pw.Text(
                        name,
                        style: pw.TextStyle(
                          font: defaultFont,
                          fontSize: 50,
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColor.fromInt(0xFF634133),
                        ),
                      ),
                      pw.SizedBox(height: 15),
                      pw.Text(
                        "has successfully completed the Learn ${language[0].toUpperCase() + language.substring(1)} in Shan course",
                        style: pw.TextStyle(fontSize: 18, font: defaultFont),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Text(
                        "with a score of $score / ${userResults.length}",
                        style: pw.TextStyle(
                          font: defaultFont,
                          fontSize: 20,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.SizedBox(height: 30),
                      pw.Text(
                        "Date: $date",
                        style: pw.TextStyle(fontSize: 14, font: defaultFont),
                      ),
                      pw.SizedBox(height: 20),
                      pw.Text(
                        "ၽူႈပူင်သွၼ် - ၸၢႆးမၢဝ်း (ထုင်ႉမၢဝ်းၶမ်း)",
                        style: pw.TextStyle(
                          font: shanFont,
                          fontSize: 14,
                          color: PdfColors.brown,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
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
