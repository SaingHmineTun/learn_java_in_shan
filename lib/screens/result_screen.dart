import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../utils/colors.dart'; // Brand Palette
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

  // --- Brand Themed Name Dialog ---
  Future<void> _showNameDialog(BuildContext context, int score) async {
    final TextEditingController nameController = TextEditingController();

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: kBrandSurface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text(
          "Enter Your Full Name",
          style: TextStyle(color: kBrandGold, fontWeight: FontWeight.bold),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "This name will appear on your official certificate.",
              style: TextStyle(color: kBrandWhite, fontSize: 13),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: nameController,
              style: const TextStyle(color: kBrandWhite),
              decoration: const InputDecoration(
                hintText: "e.g. SAI MAO",
                hintStyle: TextStyle(color: Colors.white30),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: kBrandBlue)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kBrandOrange)),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel", style: TextStyle(color: kBrandWhite)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: kBrandOrange),
            onPressed: () {
              Navigator.pop(context);
              _printCertificate(
                nameController.text.isEmpty ? "STUDENT" : nameController.text,
                score,
                "Learn ${language.toUpperCase()} in Shan",
              );
            },
            child: const Text("Generate PDF", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  // --- Professional Certificate Logic (Landscape A4) ---
  Future<void> _printCertificate(String name, int score, String courseName) async {
    final pdf = pw.Document();
    final date = DateTime.now().toString().split(' ')[0];

    final shanFont = await fontFromAssetBundle('assets/fonts/aj03.ttf');
    final defaultFont = await fontFromAssetBundle('assets/fonts/aj06.ttf');

    // Make sure path matches your pubspec.yaml
    final imageBytes = await rootBundle.load('assets/images/tmklogo.png');
    final logoImage = pw.MemoryImage(imageBytes.buffer.asUint8List());

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4.landscape,
        margin: const pw.EdgeInsets.all(0),
        build: (pw.Context context) {
          return pw.Container(
            color: PdfColor.fromInt(0xFF1A1A1B), // kBrandDark
            child: pw.Stack(
              children: [
                // Corner Decoration
                pw.Positioned(
                  top: 0, left: 0,
                  child: pw.Container(
                    width: 180, height: 180,
                    decoration: pw.BoxDecoration(
                      color: PdfColors.orange900,
                      borderRadius: const pw.BorderRadius.only(bottomRight: pw.Radius.circular(180)),
                    ),
                  ),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(30),
                  child: pw.Container(
                    decoration: pw.BoxDecoration(border: pw.Border.all(color: PdfColors.orange300, width: 2)),
                    padding: const pw.EdgeInsets.all(40),
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      children: [
                        pw.Center(child: pw.Image(logoImage, width: 160)),
                        pw.SizedBox(height: 20),
                        pw.Text("CERTIFICATE OF ACHIEVEMENT",
                            style: pw.TextStyle(fontSize: 32, font: defaultFont, fontWeight: pw.FontWeight.bold, color: PdfColors.white, letterSpacing: 2)),
                        pw.SizedBox(height: 10),
                        pw.Text("THIS IS TO CERTIFY THAT",
                            style: pw.TextStyle(fontSize: 12, font: defaultFont, color: PdfColors.orange200, letterSpacing: 2)),
                        pw.SizedBox(height: 15),
                        pw.Text(name.toUpperCase(),
                            style: pw.TextStyle(font: defaultFont, fontSize: 45, fontWeight: pw.FontWeight.bold, color: PdfColors.yellow400)),
                        pw.Padding(padding: const pw.EdgeInsets.symmetric(horizontal: 150), child: pw.Divider(color: PdfColors.orange300)),
                        pw.SizedBox(height: 15),
                        pw.Text("successfully completed the curriculum for",
                            style: pw.TextStyle(fontSize: 14, font: defaultFont, color: PdfColors.white)),
                        pw.Text(courseName,
                            style: pw.TextStyle(font: defaultFont, fontSize: 24, fontWeight: pw.FontWeight.bold, color: PdfColors.lightBlue300)),
                        pw.SizedBox(height: 5),
                        pw.Text("Score: $score / ${userResults.length}",
                            style: pw.TextStyle(font: defaultFont, fontSize: 12, color: PdfColors.grey400)),
                        pw.Spacer(),
                        pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            _buildSignSection(date, "DATE ISSUED", defaultFont),
                            _buildSignSection("ၸၢႆးမၢဝ်း (ထုင်ႉမၢဝ်းၶမ်း)", "COURSE INSTRUCTOR", defaultFont, shanFont: shanFont),
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

  pw.Widget _buildSignSection(String topText, String bottomText, pw.Font defFont, {pw.Font? shanFont}) {
    return pw.Column(
      children: [
        pw.Text(topText, style: pw.TextStyle(font: shanFont ?? defFont, fontSize: 16, color: PdfColors.white)),
        pw.Container(width: 160, height: 1, color: PdfColors.orange300, margin: const pw.EdgeInsets.symmetric(vertical: 5)),
        pw.Text(bottomText, style: pw.TextStyle(font: defFont, fontSize: 10, color: PdfColors.orange200)),
      ],
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
      backgroundColor: kBrandDark,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Performance Review", style: TextStyle(color: kBrandGold, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
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
                  color: kBrandSurface,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(32)),
                ),
                child: Column(
                  children: [
                    const Text("Final Score", style: TextStyle(color: kBrandBlue, fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("$score / ${userResults.length}",
                        style: const TextStyle(color: kBrandWhite, fontSize: 52, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Text(isPassed ? "Course Requirement Met ✅" : "Requirement Not Met ❌",
                        style: TextStyle(color: isPassed ? Colors.greenAccent : kBrandOrange, fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),

              // --- Detailed Review List ---
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(20),
                  itemCount: sessionQuizzes.length,
                  itemBuilder: (context, index) {
                    bool isCorrect = sessionQuizzes[index].options[0] == userResults[index];
                    return Card(
                      color: kBrandSurface,
                      elevation: 0,
                      margin: const EdgeInsets.only(bottom: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: BorderSide(color: isCorrect ? Colors.green.withOpacity(0.3) : kBrandOrange.withOpacity(0.3))),
                      child: ListTile(
                        leading: Icon(isCorrect ? Icons.check_circle_rounded : Icons.cancel_rounded, color: isCorrect ? Colors.greenAccent : kBrandOrange),
                        title: Text(sessionQuizzes[index].question, style: const TextStyle(color: kBrandWhite, fontWeight: FontWeight.bold, fontSize: 15)),
                        subtitle: Text("Answer: ${userResults[index]}", style: TextStyle(color: isCorrect ? kBrandBlue : Colors.redAccent)),
                      ),
                    );
                  },
                ),
              ),

              // --- Certificate Button ---
              if (moduleNumber == 0 && isPassed)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ElevatedButton.icon(
                    onPressed: () => _showNameDialog(context, score),
                    icon: const Icon(Icons.workspace_premium_rounded, color: kBrandGold),
                    label: const Text("CLAIM YOUR CERTIFICATE", style: TextStyle(fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kBrandOrange,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                ),

              // --- Navigation Actions ---
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: kBrandBlue),
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Home", style: TextStyle(color: kBrandBlue, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kBrandSurface,
                          foregroundColor: kBrandGold,
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => QuizScreen(language: language, moduleNumber: moduleNumber)));
                        },
                        child: const Text("Retake Quiz", style: TextStyle(fontWeight: FontWeight.bold)),
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