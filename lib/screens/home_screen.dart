import 'package:flutter/material.dart';
import 'package:learn_java_in_shan/screens/language_screen.dart';
import 'package:learn_java_in_shan/utils/language.dart';
import '../utils/colors.dart'; // Import your new color palette
import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _buildLanguageCard(BuildContext context, String lang) {
    final bool isJava = lang.toLowerCase() == 'java';

    // Using the school's brand colors
    final Color accentColor = isJava ? kBrandOrange : kBrandBlue;

    return Card(
      elevation: 8,
      shadowColor: Colors.black54,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      color: kBrandSurface, // Dark card surface
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (ctx) => LanguageScreen(language: lang)),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: accentColor.withOpacity(0.3), width: 1),
            gradient: LinearGradient(
              colors: [accentColor.withOpacity(0.15), Colors.transparent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Themed Icon instead of Emojis
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: accentColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isJava ? Icons.coffee_rounded : Icons.code_rounded,
                  size: 45,
                  color: accentColor,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                lang.toUpperCase(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kBrandWhite,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: accentColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "တႄႇသွၼ်", // Start Lesson
                  style: TextStyle(
                    color: kBrandWhite,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandDark, // Deep charcoal background
      appBar: AppBar(
        // Replaced image with styled text
        title: const Text(
          "Learn Programming in Shan",
          style: TextStyle(
            fontFamily: "AJ03", // Using your bold Shan-compatible font
            fontWeight: FontWeight.bold,
            color: kBrandGold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => const AboutScreen()),
              );
            },
            icon: const Icon(Icons.info_outline, color: kBrandGold),
            tooltip: "လွင်ႈၽူႈၶူင်ႊသၢင်ႈ",
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // School Name / Welcome Header
          const Text(
            "ထုင်ႉ မၢဝ်း ၶမ်း",
            style: TextStyle(
              color: kBrandGold,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 10,),
          const Text(
            "Programming Academy",
            style: TextStyle(
              color: kBrandBlue,
              fontSize: 14,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: languages.map((lang) => SizedBox(
                    width: 170,
                    child: AspectRatio(
                      aspectRatio: 0.85,
                      child: _buildLanguageCard(context, lang),
                    ),
                  )).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}