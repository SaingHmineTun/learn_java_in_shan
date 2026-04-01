import 'package:flutter/material.dart';
import 'package:tmkacademy/screens/result_screen.dart';
import 'package:tmkacademy/utils/quiz.dart';
import '../utils/colors.dart'; // Brand Palette

class QuizScreen extends StatefulWidget {
  final int moduleNumber;
  final String language;

  const QuizScreen({
    super.key,
    required this.language,
    required this.moduleNumber,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int totalQuizNumber = 10;
  int currentQuizIndex = 0;
  late List<Quiz> sessionQuizzes;

  bool isAnswered = false;
  int? selectedIndex;
  late List<String> currentOptions;
  late String correctText;
  late List<String?> userResults;

  @override
  void initState() {
    super.initState();
    List<Quiz> sourceList;
    if (widget.moduleNumber == 0) {
      sourceList = quizzes[widget.language]!
          .expand((module) => module)
          .toList();
      totalQuizNumber = 20;
    } else {
      sourceList = quizzes[widget.language]![widget.moduleNumber - 1];
      totalQuizNumber = 10;
    }

    userResults = List.filled(totalQuizNumber, null);
    sessionQuizzes = (List<Quiz>.from(sourceList)..shuffle()).take(totalQuizNumber).toList();
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
      backgroundColor: kBrandDark,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${widget.language.toUpperCase()} ${widget.moduleNumber == 0 ? "Final" : "Module ${widget.moduleNumber}"}",
          style: const TextStyle(fontWeight: FontWeight.bold, color: kBrandGold),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: kBrandWhite),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // --- TMK Progress Section ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Question ${currentQuizIndex + 1} of $totalQuizNumber",
                    style: const TextStyle(color: kBrandBlue, fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.psychology_rounded, color: kBrandGold, size: 24),
                ],
              ),
              const SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: (currentQuizIndex + 1) / totalQuizNumber,
                  backgroundColor: kBrandSurface,
                  valueColor: const AlwaysStoppedAnimation<Color>(kBrandOrange),
                  minHeight: 10,
                ),
              ),
              const SizedBox(height: 40),

              // --- Question Section ---
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        currentQuiz.question,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: kBrandWhite,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      if (currentQuiz.engQuestion.isNotEmpty) ...[
                        const SizedBox(height: 10),
                        Text(
                          currentQuiz.engQuestion,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            // Using a subtle grey/white to make it look like a subtitle
                            color: kBrandWhite.withOpacity(0.6),
                            height: 1.4,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                      const SizedBox(height: 40),

                      // --- Options List ---
                      ...List.generate(currentOptions.length, (index) {
                        String optionText = currentOptions[index];
                        bool isCorrect = optionText == correctText;

                        // Color Logic for brand alignment
                        Color cardColor = kBrandSurface;
                        Color borderColor = kBrandBlue.withOpacity(0.2);

                        if (isAnswered) {
                          if (isCorrect) {
                            cardColor = Colors.green.withOpacity(0.2);
                            borderColor = Colors.green;
                          } else if (selectedIndex == index) {
                            cardColor = Colors.red.withOpacity(0.2);
                            borderColor = Colors.red;
                          }
                        }

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: InkWell(
                            onTap: () => checkAnswer(index),
                            borderRadius: BorderRadius.circular(16),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: cardColor,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: borderColor, width: 2),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: isAnswered && isCorrect ? Colors.green : kBrandDark,
                                    radius: 16,
                                    child: Text(
                                      "${index + 1}",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: isAnswered && isCorrect ? Colors.white : kBrandGold
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: Text(
                                      optionText,
                                      style: const TextStyle(fontSize: 17, color: kBrandWhite),
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

              // --- Action Button ---
              if (isAnswered)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kBrandOrange,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      elevation: 8,
                      shadowColor: kBrandOrange.withOpacity(0.4),
                    ),
                    onPressed: () {
                      if (currentQuizIndex < totalQuizNumber - 1) {
                        setState(() {
                          currentQuizIndex++;
                          isAnswered = false;
                          selectedIndex = null;
                          _prepareQuestion();
                        });
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultScreen(
                              language: widget.language,
                              moduleNumber: widget.moduleNumber,
                              sessionQuizzes: sessionQuizzes,
                              userResults: userResults.cast<String>(),
                            ),
                          ),
                        );
                      }
                    },
                    child: Text(
                      currentQuizIndex < totalQuizNumber - 1 ? "Next Question" : "View Final Results",
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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