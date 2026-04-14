import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:htmltopdfwidgets/htmltopdfwidgets.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import 'language.dart';

class PdfExporter {
  static const PdfColor kBrandGold = PdfColor.fromInt(0xFFFFD700);
  static const PdfColor kBrandOrange = PdfColor.fromInt(0xFFFF8C00);
  static const PdfColor kBrandBlue = PdfColor.fromInt(0xFF00FFFF);
  static const PdfColor kBrandDark = PdfColor.fromInt(0xFF0D0D0E);

  static String _prepareMd(String text) {
    return text
        .replaceAll('\r\n', '\n')
        .replaceAll('\r', '\n')
        .replaceAll('\uFE0F', '')
        .replaceAll(RegExp(r'[^\u0000-\uFFFF]'), '');
  }

  // 1. Add this helper function at the bottom of your PdfExporter class
  static String _splitLongCodeBlocks(String md) {
    final lines = md.split('\n');
    final result = <String>[];
    bool inCodeBlock = false;
    int codeLineCount = 0;
    String? language;

    for (var line in lines) {
      if (line.startsWith('```')) {
        if (!inCodeBlock) {
          inCodeBlock = true;
          codeLineCount = 0;
          language = line.substring(3).trim();
          result.add(line);
        } else {
          inCodeBlock = false;
          result.add(line);
        }
      } else if (inCodeBlock) {
        codeLineCount++;
        // IF THE CODE BLOCK EXCEEDS 40 LINES, WE FORCE A SPLIT
        if (codeLineCount > 40) {
          result.add('```'); // Close current block
          result.add('\n*(Code continued on next page)*\n');
          result.add('```$language'); // Re-open new block
          codeLineCount = 0;
        }
        result.add(line);
      } else {
        result.add(line);
      }
    }
    return result.join('\n');
  }

  static Future<void> generateLessonsPdf(
    String language,
    List<int> lessonIds, {
    required Function(double progress, String status) onProgress,
  }) async {
    try {
      onProgress(0.05, "Loading TMK Fonts & Branding...");

      final fontData = await rootBundle.load("assets/fonts/aj05.ttf");
      final ttfFont = pw.Font.ttf(fontData);

      final italicFontData = await rootBundle.load(
        "assets/fonts/aj05_bold.ttf",
      );
      final ttfItalicFont = pw.Font.ttf(italicFontData);

      final boldFontData = await rootBundle.load("assets/fonts/aj03.ttf");
      final ttfBoldFont = pw.Font.ttf(boldFontData);

      final monoFont = pw.Font.courier();

      final emojiData = await rootBundle.load("assets/fonts/noto_emoji.ttf");
      final ttfEmojiFont = pw.Font.ttf(emojiData);

      final logoData = await rootBundle.load("assets/images/tmklogo_black.png");
      final logoImage = pw.MemoryImage(logoData.buffer.asUint8List());

      final coverData = await rootBundle.load(
        "assets/images/app_icon_transparent.png",
      );
      final coverImage = pw.MemoryImage(coverData.buffer.asUint8List());

      final myTagStyle = HtmlTagStyle(
        h1Style: pw.TextStyle(
          font: ttfBoldFont,
          fontSize: 22,
          color: kBrandOrange,
          fontWeight: pw.FontWeight.bold,
        ),
        h2Style: pw.TextStyle(
          font: ttfBoldFont,
          fontSize: 20,
          color: kBrandOrange,
          fontWeight: pw.FontWeight.bold,
        ),
        paragraphStyle: pw.TextStyle(
          font: ttfFont,
          fontSize: 13,
          lineSpacing: 2,
        ),
        codeBlockBackgroundColor: PdfColor.fromHex("#d3d6e6"),
        codeStyle: pw.TextStyle(
          font: monoFont,
          fontSize: 10,
          color: kBrandDark,
        ),
        quoteBarColor: kBrandGold,
      );

      final pdf = pw.Document();
      final converter = HTMLToPdf();

      // --- 1. COVER PAGE ---
      onProgress(0.08, "Creating Cover Page...");
      pdf.addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (context) => pw.Container(
            width: double.infinity,
            height: double.infinity,
            decoration: pw.BoxDecoration(
              border: pw.Border.all(color: kBrandOrange, width: 5),
            ),
            child: pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.center,
              children: [
                pw.Spacer(flex: 2),
                pw.Image(logoImage, width: 200),
                pw.Text(
                  fullName[language] ?? language.toUpperCase(),
                  textAlign: pw.TextAlign.center,
                  style: pw.TextStyle(
                    font: ttfBoldFont,
                    fontSize: 40,
                    color: kBrandOrange,
                  ),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 40,
                  ),
                  child: pw.Image(coverImage, height: 200),
                ),
                pw.Text(
                  "TMK ACADEMY",
                  style: pw.TextStyle(
                    font: ttfBoldFont,
                    fontSize: 18,
                    color: kBrandOrange,
                    letterSpacing: 2,
                  ),
                ),
                pw.SizedBox(height: 10),
                pw.Text(
                  "ၸၢႆးမၢဝ်း (ထုင်ႉမၢဝ်းၶမ်း)",
                  style: pw.TextStyle(
                    font: ttfBoldFont,
                    fontSize: 14,
                    color: PdfColors.grey700,
                  ),
                ),
                pw.Spacer(flex: 3),
                pw.Text(
                  "www.tmkacademy.com",
                  style: const pw.TextStyle(
                    fontSize: 10,
                    color: PdfColors.grey,
                  ),
                ),
                pw.SizedBox(height: 20),
              ],
            ),
          ),
        ),
      );

      // --- 2. INTRODUCTION ---
      onProgress(0.1, "Formatting Introduction...");
      final String introMd = await rootBundle.loadString(
        'assets/lessons/introduction.md',
      );
      List<pw.Widget> introWidgets = await converter.convertMarkdown(
        _prepareMd(introMd),
        tagStyle: myTagStyle,
        fontFallback: [monoFont, ttfEmojiFont],
      );

      pdf.addPage(
        pw.MultiPage(
          pageFormat: PdfPageFormat.a4,
          maxPages: 100,
          theme: pw.ThemeData.withFont(
            base: ttfFont,
            bold: ttfBoldFont,
            italic: ttfItalicFont,
          ),
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

      // --- 3. LESSONS LOOP ---
      for (int i = 0; i < lessonIds.length; i++) {
        int id = lessonIds[i];
        double progressVal = 0.1 + ((i + 1) / lessonIds.length) * 0.8;
        onProgress(progressVal, "Adding Lesson $id...");
        print("Adding Lesson $id...");

        try {
          String lessonMd = await rootBundle.loadString(
            'assets/lessons/$language/lesson$id.md',
          );

          lessonMd = _splitLongCodeBlocks(lessonMd);

          List<pw.Widget> lessonWidgets = await converter.convertMarkdown(
            _prepareMd(lessonMd),
            tagStyle: myTagStyle,
            fontFallback: [monoFont, ttfEmojiFont],
          );

          pdf.addPage(
            pw.MultiPage(
              pageFormat: PdfPageFormat.a4,
              // Emergency Brake: Prevents infinite loops on server
              maxPages: 40,
              theme: pw.ThemeData.withFont(
                base: ttfFont,
                bold: ttfBoldFont,
                italic: ttfItalicFont,
              ),
              header: (context) => pw.Container(
                alignment: pw.Alignment.center,
                decoration: const pw.BoxDecoration(
                  border: pw.Border(
                    bottom: pw.BorderSide(color: PdfColors.grey300, width: 0.5),
                  ),
                ),
                margin: const pw.EdgeInsets.only(bottom: 10),
                padding: const pw.EdgeInsets.only(bottom: 5),
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text(
                      "${fullName[language]}",
                      style: pw.TextStyle(
                        font: ttfBoldFont,
                        fontSize: 8,
                        color: kBrandOrange,
                      ),
                    ),
                    pw.Text(
                      "Lesson $id | TMK Academy",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        color: PdfColors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              footer: (context) => pw.Container(
                margin: const pw.EdgeInsets.only(top: 10),
                decoration: const pw.BoxDecoration(
                  border: pw.Border(
                    top: pw.BorderSide(color: PdfColors.grey300, width: 0.5),
                  ),
                ),
                padding: const pw.EdgeInsets.only(top: 5),
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text(
                      "ၸၢႆးမၢဝ်း (ထုင်ႉမၢဝ်းၶမ်း)",
                      style: pw.TextStyle(
                        font: ttfBoldFont,
                        fontSize: 8,
                        color: PdfColors.grey700,
                      ),
                    ),
                    pw.Text(
                      "${context.pageNumber} / ${context.pagesCount}",
                      style: pw.TextStyle(
                        font: ttfFont,
                        fontSize: 8,
                        color: PdfColors.grey700,
                      ),
                    ),
                  ],
                ),
              ),
              // Spreading widgets directly allows the MultiPage engine to split content
              build: (context) => lessonWidgets,
            ),
          );
        } catch (e) {
          debugPrint("Skipped lesson $id: $e");
          onProgress(progressVal, "Note: Lesson $id split across pages...");
        }
      }

      onProgress(0.95, "Generating PDF file...");
      await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdf.save(),
        name: 'TMK_Lessons_${language.toUpperCase()}.pdf',
      );

      onProgress(1.0, "Download Complete!");
    } catch (e) {
      onProgress(0, "Error: ${e.toString()}");
    }
  }
}
