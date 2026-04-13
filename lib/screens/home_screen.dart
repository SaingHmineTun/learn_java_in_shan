import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:tmkacademy/screens/language_screen.dart';
import 'package:tmkacademy/utils/language.dart';
import '../utils/colors.dart';
import '../utils/utils.dart';
import 'about_screen.dart';
import 'donation_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Map<String, dynamic> _getLanguageStyle(String lang) {
    switch (lang.toLowerCase()) {
      case 'javafx':
      case 'java':
        return {
          'color': const Color(0xFFE76F00), // Java Orange
          'icon': DevIcons.javaPlain,
        };
      case 'java_springboot':
        return {
          'color': const Color(0xFF09F018), // Java Orange
          'icon': DevIcons.javaPlain,
        };
      case "jetpack_compose":
        return {
          'color': const Color(0xFF09F018), // Java Orange
          'icon': DevIcons.androidPlain,
        };
      case 'python_tkinter': // Adding Tkinter here or as a separate case
      case 'python':
        return {
          'color': const Color(0xFF3776AB), // Python Blue
          'icon': DevIcons.pythonPlain,
        };
      case 'mysql':
        return {
          'color': const Color(0xFF4479A1), // MySQL Blue
          'icon': DevIcons.mysqlPlain,
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
          'icon': Icons.terminal_rounded,
          // DevIcons ဢမ်ႇမီး Basic၊ ၸႂ်ႉ Terminal ဝႆႉမိူၼ်ၵဝ်ႇၶႃႈ
        };
      case 'kotlin':
        return {'color': const Color(0xFF7F52FF), 'icon': DevIcons.kotlinPlain};
      case 'dart':
        return {'color': const Color(0xFF00B0FF), 'icon': DevIcons.dartPlain};
      case 'html':
        return {'color': const Color(0xFFE44D26), 'icon': DevIcons.html5Plain};
      case 'css':
        return {'color': const Color(0xFF1572B6), 'icon': DevIcons.css3Plain};
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
        return {'color': const Color(0xFFA8B9CC), 'icon': DevIcons.cPlain};
      case 'cpp':
        return {
          'color': const Color(0xFF4E9A06), // C++ Green
          'icon': DevIcons.cplusplusPlain,
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

    // Get counts from your utility maps
    final int moduleCount = topics[lang]?.length ?? 0;
    final int lessonCount = lessons[lang]?.length ?? 0;

    return Card(
      elevation: 8,
      shadowColor: Colors.black54,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: kBrandSurface,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => LanguageScreen(language: lang.toLowerCase()),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: accentColor.withOpacity(0.2), width: 1),
            gradient: LinearGradient(
              colors: [accentColor.withOpacity(0.05), Colors.transparent],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Row(
            children: [
              // Left Side: Icon
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: accentColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(langIcon, size: 32, color: accentColor),
              ),
              const SizedBox(width: 15),

              // Right Side: Info
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      fullName[lang] ?? lang,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: kBrandWhite,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        _buildStatChip(
                          Icons.grid_view_rounded,
                          "$moduleCount Modules",
                        ),
                        const SizedBox(width: 8),
                        _buildStatChip(
                          Icons.book_rounded,
                          "$lessonCount Lessons",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                color: kBrandWhite.withOpacity(0.3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper for the small info chips
  Widget _buildStatChip(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 10, color: kBrandGold),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(fontSize: 10, color: kBrandWhite.withOpacity(0.6)),
        ),
      ],
    );
  }

  // --- Helper for Responsive AppBar Buttons ---
  Widget _buildResponsiveAction(
    BuildContext context, {
    required String label,
    required IconData icon,
    required Color color,
    required VoidCallback onPressed,
  }) {
    // Check if screen is wider than 700px (Desktop/Web)
    bool isWide = MediaQuery.of(context).size.width > 700;

    return isWide
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
            child: TextButton.icon(
              onPressed: onPressed,
              icon: Icon(icon, color: color, size: 20),
              label: Text(
                label,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: color.withOpacity(0.05), // Subtle hover area
              ),
            ),
          )
        : IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: color),
            tooltip: label,
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
          // --- Responsive Support Button ---
          _buildResponsiveAction(
            context,
            label: "Support",
            icon: Icons.favorite_outline_rounded,
            color: kBrandOrange,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => const DonationScreen()),
              );
            },
          ),

          // --- Responsive About Button ---
          _buildResponsiveAction(
            context,
            label: "About",
            icon: Icons.info_outline,
            color: kBrandGold,
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (ctx) => const AboutScreen()));
            },
          ),
          const SizedBox(width: 12),
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
                  children: languages
                      .map(
                        (lang) => SizedBox(
                          width: 320,
                          child: AspectRatio(
                            aspectRatio: 2.8,
                            child: _buildLanguageCard(context, lang),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
