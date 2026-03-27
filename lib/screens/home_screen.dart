import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:tmkacademy/screens/language_screen.dart';
import 'package:tmkacademy/utils/language.dart';
import '../utils/colors.dart';
import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  Map<String, dynamic> _getLanguageStyle(String lang) {
    switch (lang.toLowerCase()) {
      case 'java':
        return {
          'color': const Color(0xFFE76F00), // Java Orange
          'icon': DevIcons.javaPlain,
        };
      case 'python_tkinter': // Adding Tkinter here or as a separate case
      case 'python':
        return {
          'color': const Color(0xFF3776AB), // Python Blue
          'icon': DevIcons.pythonPlain,
        };
      case 'git':
        return {
          'color': const Color(0xFFF05032), // Git Orange-Red
          'icon': DevIcons.gitPlain,
        };
      case 'haskell':
        return {
          'color': const Color(0xFF5E5086), // Haskell Purple
          'icon': DevIcons.haskellPlain,
        };
      case 'basic':
        return {
          'color': const Color(0xFFAA00FF),
          'icon': Icons.terminal_rounded, // DevIcons ဢမ်ႇမီး Basic၊ ၸႂ်ႉ Terminal ဝႆႉမိူၼ်ၵဝ်ႇၶႃႈ
        };
      case 'kotlin':
        return {
          'color': const Color(0xFF7F52FF),
          'icon': DevIcons.kotlinPlain,
        };
      case 'dart':
        return {
          'color': const Color(0xFF00B0FF),
          'icon': DevIcons.dartPlain,
        };
      case 'html':
        return {
          'color': const Color(0xFFE44D26),
          'icon': DevIcons.html5Plain,
        };
      case 'css':
        return {
          'color': const Color(0xFF1572B6),
          'icon': DevIcons.css3Plain,
        };
      case 'js':
      case 'javascript':
        return {
          'color': const Color(0xFFF7DF1E),
          'icon': DevIcons.javascriptPlain,
        };
      case 'ts':
      case 'typescript':
        return {
          'color': const Color(0xFF3178C6), // Official TypeScript Blue
          'icon': DevIcons.typescriptPlain,
        };
      case 'c':
        return {
          'color': const Color(0xFFA8B9CC),
          'icon': DevIcons.cPlain,
        };
      case 'csharp':
        return {
          'color': const Color(0xFF512BD4), // .NET / C# Purple
          'icon': DevIcons.csharpPlain,
        };
      default:
        return {
          'color': kBrandGold, // ၸႂ်ႉ Constant ၶေႃႈၸဝ်ႈၶူးမိူၼ်ၵဝ်ႇ
          'icon': Icons.code_rounded,
        };
    }
  }

  Widget _buildLanguageCard(BuildContext context, String lang) {
    final style = _getLanguageStyle(lang);
    final Color accentColor = style['color'];
    final IconData langIcon = style['icon'];

    return Card(
      elevation: 8,
      shadowColor: Colors.black54,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      color: kBrandSurface,
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (ctx) => LanguageScreen(language: lang.toLowerCase())),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: accentColor.withOpacity(0.3), width: 1),
            gradient: LinearGradient(
              colors: [accentColor.withOpacity(0.1), Colors.transparent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: accentColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  langIcon,
                  size: 45,
                  color: accentColor,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                fullName[lang] ?? lang,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kBrandWhite,
                  letterSpacing: 1.2,
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
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
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
      backgroundColor: kBrandDark,
      appBar: AppBar(
        title: const Text(
          "Learn Programming in Shan",
          style: TextStyle(
            fontFamily: "AJ03",
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
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            "ထုင်ႉ မၢဝ်း ၶမ်း",
            style: TextStyle(
              color: kBrandGold,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          const Text(
            "Programming Academy",
            style: TextStyle(
              color: kBrandBlue,
              fontSize: 14,
              letterSpacing: 2,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: languages.map((lang) => SizedBox(
                    width: 165,
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