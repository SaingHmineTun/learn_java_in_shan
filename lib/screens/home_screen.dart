import 'package:flutter/material.dart';
import 'package:learn_java_in_shan/screens/language_screen.dart';
import 'package:learn_java_in_shan/utils/language.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _buildLanguageCard(BuildContext context, String lang) {
    final bool isJava = lang.toLowerCase() == 'java';
    final Color themeColor = isJava
        ? Colors.orange.shade800
        : Colors.blue.shade700;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          // Pass the language as an argument to the lessons screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (ctx) => LanguageScreen(language: lang)),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [themeColor.withOpacity(0.8), themeColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Use a CircleAvatar to hold the emoji or icon
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white.withOpacity(0.2),
                child: isJava
                    ? const Text("☕", style: TextStyle(fontSize: 40))
                    : const Text("🐍", style: TextStyle(fontSize: 40)),
              ),
              const SizedBox(height: 15),
              Text(
                lang.substring(0, 1).toUpperCase() + lang.substring(1),
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "တႄႇသွၼ်",
                style: TextStyle(color: Colors.white70, fontSize: 14),
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
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Shan Programming Academy"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "လိူၵ်ႈပၢႆးလိၵ်ႈဢၼ်တေသွၼ်",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.85,
                ),
                itemCount: languages.length,
                itemBuilder: (context, index) =>
                    _buildLanguageCard(context, languages[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
