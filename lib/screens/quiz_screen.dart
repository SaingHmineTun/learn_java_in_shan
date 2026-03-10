import 'dart:math';
import 'package:flutter/material.dart';
import 'package:learn_java_in_shan/screens/result_screen.dart';
import 'package:learn_java_in_shan/utils/quiz.dart';
import '../utils/colors.dart';

class QuizScreen extends StatefulWidget {
  final int moduleNumber;
  final List<Quiz> quizzes;

  QuizScreen({super.key, required this.moduleNumber})
    : quizzes = allQuizzes[moduleNumber - 1];

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int totalQuizNumber = 10;
  int currentQuizIndex = 0;
  late List<Quiz> sessionQuizzes;

  // Logic Variables
  bool isAnswered = false;
  int? selectedIndex;
  late List<String> currentOptions;
  late String correctText;

  // for recording user selection
  List<String?> userResults = List.filled(10, null);

  @override
  void initState() {
    super.initState();
    // Pick 10 random quizzes and shuffle them once
    sessionQuizzes = (List<Quiz>.from(
      widget.quizzes,
    )..shuffle()).take(totalQuizNumber).toList();
    _prepareQuestion();
  }

  void _prepareQuestion() {
    Quiz q = sessionQuizzes[currentQuizIndex];
    correctText = q.options[0];
    currentOptions = List<String>.from(q.options)..shuffle();
  }

  void checkAnswer(int index) {
    if (isAnswered) return;
    setState(() {
      isAnswered = true;
      selectedIndex = index;
      userResults[currentQuizIndex] = (currentOptions[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    Quiz currentQuiz = sessionQuizzes[currentQuizIndex];

    return Scaffold(
      backgroundColor: kJavaLatte,
      appBar: AppBar(
        title: Text(
          "Java Module ${widget.moduleNumber}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: kJavaEspresso,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [kJavaEspresso.withOpacity(0.05), kJavaLatte],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // --- Progress Bar ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Brewing Question ${currentQuizIndex + 1}/$totalQuizNumber",
                    style: const TextStyle(
                      color: kJavaMocha,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(Icons.coffee, color: kJavaMocha, size: 20),
                ],
              ),
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: (currentQuizIndex + 1) / totalQuizNumber,
                  backgroundColor: Colors.white.withOpacity(0.5),
                  valueColor: const AlwaysStoppedAnimation<Color>(kJavaGold),
                  minHeight: 8,
                ),
              ),
              const SizedBox(height: 32),

              // --- Question Section ---
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        currentQuiz.question,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: kJavaEspresso,
                          height: 1.4,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 32),

                      // --- Options List ---
                      ...List.generate(currentOptions.length, (index) {
                        String optionText = currentOptions[index];
                        bool isCorrect = optionText == correctText;

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: InkWell(
                            onTap: () => checkAnswer(index),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              padding: const EdgeInsets.all(18),
                              decoration: BoxDecoration(
                                color: isAnswered
                                    ? (isCorrect
                                          ? Colors.green.shade100
                                          : (selectedIndex == index
                                                ? Colors.red.shade100
                                                : Colors.white))
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: isAnswered
                                      ? (isCorrect
                                            ? Colors.green
                                            : (selectedIndex == index
                                                  ? Colors.red
                                                  : Colors.transparent))
                                      : kJavaGold.withOpacity(0.5),
                                  width: 2,
                                ),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: isAnswered
                                        ? (isCorrect
                                              ? Colors.green
                                              : (selectedIndex == index
                                                    ? Colors.red
                                                    : kJavaLatte))
                                        : kJavaLatte,
                                    radius: 14,
                                    child: Text(
                                      "${index + 1}",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: kJavaMocha,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: Text(
                                      optionText,
                                      style: const TextStyle(
                                        fontSize: 17,
                                        color: kJavaMocha,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),

              // --- Next Button ---
              if (isAnswered)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kJavaMocha,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (currentQuizIndex < totalQuizNumber - 1) {
                        currentQuizIndex++;
                        isAnswered = false;
                        selectedIndex = null;
                        _prepareQuestion(); // Grinds new beans for the next question
                      } else {
                        // Inside the 'else' block of the Next Button's onPressed
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultScreen(
                              moduleNumber: widget.moduleNumber,
                              sessionQuizzes: sessionQuizzes,
                              userResults: userResults
                                  .cast<String>(), // Passing the T/F list
                            ),
                          ),
                        );
                      }
                    });
                  },
                  child: Text(
                    currentQuizIndex < totalQuizNumber - 1
                        ? "Refill Next Question ☕"
                        : "See your results ☕",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
