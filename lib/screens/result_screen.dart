import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/quiz.dart';
import 'quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  final int moduleNumber;
  final List<Quiz> sessionQuizzes;
  final List<String> userResults;

  const ResultScreen({
    super.key,
    required this.moduleNumber,
    required this.sessionQuizzes,
    required this.userResults,
  });

  @override
  Widget build(BuildContext context) {
    int score = 0;
    for (int i = 0; i < sessionQuizzes.length; i++) {
      if (sessionQuizzes[i].options[0] == userResults[i]) score ++;
    }

    return Scaffold(
      backgroundColor: kJavaLatte,
      appBar: AppBar(
        title: const Text("Order Summary ☕", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: kJavaEspresso,
        automaticallyImplyLeading: false, // Prevents going back to the last quiz question
      ),
      body: Column(
        children: [
          // --- Score Header ---
          Container(
            padding: const EdgeInsets.all(32),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kJavaMocha,
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(32)),
            ),
            child: Column(
              children: [
                const Text("Your Brew Score", style: TextStyle(color: kJavaGold, fontSize: 18)),
                Text("$score / ${userResults.length}",
                    style: const TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold)),
                Text(score >= 7 ? "Perfect Roast! 🌟" : "Needs more Caffeine ☕",
                    style: const TextStyle(color: kJavaLatte, fontSize: 16)),
              ],
            ),
          ),

          // --- Detailed List ---
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: sessionQuizzes.length,
              itemBuilder: (context, index) {
                bool isCorrect = sessionQuizzes[index].options[0] == userResults[index];
                return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: isCorrect ? Colors.green : Colors.red,
                      child: Icon(isCorrect ? Icons.check : Icons.close, color: Colors.white),
                    ),
                    title: Text(
                      sessionQuizzes[index].question,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: kJavaEspresso, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your answer: ${userResults[index]}",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        Text(
                          "Correct answer: ${sessionQuizzes[index].options[0]}",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    )
                  ),
                );
              },
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
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () => Navigator.pop(context), // Go back to Module screen
                    child: const Text("Quit 🚪", style: TextStyle(color: kJavaMocha, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kJavaMocha,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => QuizScreen(moduleNumber: moduleNumber)),
                      );
                    },
                    child: const Text("Restart 🔄", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}