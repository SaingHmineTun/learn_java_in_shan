// TOPIC SECTION (Module 1 - Introduction)
import 'package:tmkacademy/languages/lang_c.dart';
import 'package:tmkacademy/languages/lang_haskell.dart';
import 'package:tmkacademy/languages/lang_ts.dart';

import '../languages/lang_basic.dart';
import '../languages/lang_css.dart';
import '../languages/lang_dart.dart';
import '../languages/lang_html.dart';
import '../languages/lang_java.dart';
import '../languages/lang_js.dart';
import '../languages/lang_kotlin.dart';
import '../languages/lang_python.dart';

const Map<String, Map<int, String>> topics = {
  "java": javaTopics,
  "python": pythonTopics,
  "basic": basicTopics,
  "html": htmlTopics,
  "dart": dartTopics,
  "css": cssTopics,
  "js": jsTopics,
  "kotlin": kotlinTopics,
  "c": cTopics,
  "haskell": haskellTopics,
  "ts": tsTopics
};

const Map<String, Map<int, Map<int, String>>> modules = {
  "java": javaModules,
  "python": pythonModules,
  "basic": basicModules,
  "dart": dartModules,
  "html": htmlModules,
  "css": cssModules,
  "js": jsModules,
  "kotlin": kotlinModules,
  "c": cModules,
  "haskell": haskellModules,
  "ts": tsModules
};

final Map<String, Map<int, Lesson>> lessons = {
  "python": pythonLessons,
  "java": javaLessons,
  "basic": basicLessons,
  "dart": dartLessons,
  "html": htmlLessons,
  "css": cssLessons,
  "js": jsLessons,
  "kotlin": kotlinLessons,
  "c": cLessons,
  "haskell": haskellLessons,
  "ts": tsLessons
};

class Lesson {
  final int moduleId;
  final int id;

  Lesson(this.moduleId, this.id);

  @override
  String toString() {
    return 'Lesson{moduleId: $moduleId, id: $id}';
  }
}
