import 'package:tmkacademy/languages/lang_c.dart';
import 'package:tmkacademy/languages/lang_css.dart';
import 'package:tmkacademy/languages/lang_dart.dart';
import 'package:tmkacademy/languages/lang_html.dart';
import 'package:tmkacademy/languages/lang_js.dart';
import 'package:tmkacademy/languages/lang_ts.dart';

import '../languages/lang_basic.dart';
import '../languages/lang_java.dart';
import '../languages/lang_kotlin.dart';
import '../languages/lang_python.dart';

class Quiz {
  int id;
  String question;
  List<String> options;

  Quiz(
    this.id,
    this.question,
    this.options,
  ); // 1st index will always be the correct answer
}

final Map<String, List<List<Quiz>>> quizzes = {
  "python": pythonQuizzes,
  "java": javaQuizzes,
  "basic": basicQuizzes,
  "kotlin": kotlinQuizzes,
  "html": htmlQuizzes,
  "dart": dartQuizzes,
  "css": cssQuizzes,
  "js": jsQuizzes,
  "ts": tsQuizzes,
  "c": cQuizzes
};
