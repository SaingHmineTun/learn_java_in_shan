import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:htmltopdfwidgets/htmltopdfwidgets.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PdfExporter {
  // Brand Colors
  static const PdfColor kBrandGold = PdfColor.fromInt(0xFFFFD700);
  static const PdfColor kBrandOrange = PdfColor.fromInt(0xFFFF8C00);
  static const PdfColor kBrandBlue = PdfColor.fromInt(0xFF00FFFF);
  static const PdfColor kBrandDark = PdfColor.fromInt(0xFF0D0D0E);

  // Sanitize Markdown string for PDF compatibility
  static String _prepareMd(String text) {
    return text
        .replaceAll('\r\n', '\n')
        .replaceAll('\r', '\n')
        .replaceAll('\uFE0F', '')
        .replaceAll(RegExp(r'[^\u0000-\uFFFF]'), '');
  }

  static Future<void> generateLessonsPdf(
    String language,
    List<int> lessonIds, {
    required Function(double progress, String status) onProgress,
  }) async {
    try {
      // 1. Initial Assets Loading
      onProgress(0.05, "Loading TMK Fonts & Branding...");

      final fontData = await rootBundle.load("assets/fonts/aj05.ttf");
      final ttfFont = pw.Font.ttf(fontData);

      final boldFontData = await rootBundle.load("assets/fonts/aj03.ttf");
      final boldTtfFont = pw.Font.ttf(boldFontData);

      final monoFont = pw.Font.courier();

      final logoData = await rootBundle.load("assets/images/tmklogo.png");
      final logoImage = pw.MemoryImage(logoData.buffer.asUint8List());

      // 2. Define the Custom Style
      final myTagStyle = HtmlTagStyle(
        h1Style: pw.TextStyle(
          font: boldTtfFont,
          fontSize: 22,
          color: kBrandGold,
          fontWeight: pw.FontWeight.bold,
        ),
        h2Style: pw.TextStyle(
          font: boldTtfFont,
          fontSize: 20,
          color: kBrandGold,
          fontWeight: pw.FontWeight.bold,
        ),
        paragraphStyle: pw.TextStyle(
          font: ttfFont,
          fontSize: 13,
          lineSpacing: 2,
        ),

        // IDE-style Code Block Rendering
        codeBlockBackgroundColor: kBrandDark,
        codeDecoration: pw.BoxDecoration(
          color: kBrandDark,
          borderRadius: const pw.BorderRadius.all(pw.Radius.circular(8)),
          border: pw.Border.all(color: PdfColors.cyan900, width: 1.5),
        ),
        codeStyle: pw.TextStyle(
          font: monoFont, // Forced Courier for syntax symbols
          fontSize: 10,
          color: kBrandBlue,
        ),
        quoteBarColor: kBrandGold,
      );

      final pdf = pw.Document();
      final converter = HTMLToPdf();

      // 3. Process Introduction
      onProgress(0.1, "Formatting Introduction...");
      final String introMd = await rootBundle.loadString(
        'assets/lessons/introduction.md',
      );

      List<pw.Widget> introWidgets = await converter.convertMarkdown(
        _prepareMd(introMd),
        tagStyle: myTagStyle,
        fontFallback: [monoFont],
      );

      pdf.addPage(
        pw.MultiPage(
          pageFormat: PdfPageFormat.a4,
          theme: pw.ThemeData.withFont(base: ttfFont, bold: boldTtfFont),
          build: (context) => [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Image(logoImage, width: 60),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Text(
                      "TMK ACADEMY",
                      style: pw.TextStyle(
                        fontSize: 16,
                        fontWeight: pw.FontWeight.bold,
                        color: kBrandOrange,
                      ),
                    ),
                    pw.Text(
                      "www.tmkacademy.com",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        color: PdfColors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            pw.SizedBox(height: 20),
            ...introWidgets,
          ],
        ),
      );

      // 4. Loop through Lessons with Progress Updates
      for (int i = 0; i < lessonIds.length; i++) {
        int id = lessonIds[i];

        // Update progress UI
        double progressVal = 0.1 + ((i + 1) / lessonIds.length) * 0.8;
        onProgress(progressVal, "Adding Lesson $id of ${lessonIds.length}...");

        try {
          final String lessonMd = await rootBundle.loadString(
            'assets/lessons/$language/lesson$id.md',
          );

          List<pw.Widget> lessonWidgets = await converter.convertMarkdown(
            _prepareMd(lessonMd),
            tagStyle: myTagStyle,
            fontFallback: [monoFont],
          );

          pdf.addPage(
            pw.MultiPage(
              pageFormat: PdfPageFormat.a4,
              theme: pw.ThemeData.withFont(base: ttfFont, bold: boldTtfFont),
              header: (context) => pw.Align(
                alignment: pw.Alignment.centerRight,
                child: pw.Text(
                  "Lesson $id | TMK Academy",
                  style: const pw.TextStyle(fontSize: 8, color: PdfColors.grey),
                ),
              ),
              build: (context) => lessonWidgets,
            ),
          );
        } catch (e) {
          debugPrint("Skipping lesson $id: $e");
        }
      }

      // 5. Save and Download
      onProgress(0.95, "Generating PDF file...");
      await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdf.save(),
        name: 'TMK_Lessons_${language.toUpperCase()}.pdf',
      );

      onProgress(1.0, "Download Complete!");
    } catch (e) {
      onProgress(0, "Error: ${e.toString()}");
      debugPrint("Final PDF Error: $e");
    }
  }
}
