// TOPIC SECTION (Module 1 - Introduction)
import 'package:tmkacademy/languages/lang_android_xml_kotlin.dart';
import 'package:tmkacademy/languages/lang_c.dart';
import 'package:tmkacademy/languages/lang_cpp.dart';
import 'package:tmkacademy/languages/lang_csharp.dart';
import 'package:tmkacademy/languages/lang_git.dart';
import 'package:tmkacademy/languages/lang_haskell.dart';
import 'package:tmkacademy/languages/lang_ios_keyboard.dart';
import 'package:tmkacademy/languages/lang_java_springboot.dart';
import 'package:tmkacademy/languages/lang_javafx.dart';
import 'package:tmkacademy/languages/lang_swift.dart';
import 'package:tmkacademy/languages/lang_swift_ui.dart';
import 'package:tmkacademy/languages/lang_ts.dart';

import '../languages/lang_android_keyboard.dart';
import '../languages/lang_basic.dart';
import '../languages/lang_css.dart';
import '../languages/lang_dart.dart';
import '../languages/lang_html.dart';
import '../languages/lang_java.dart';
import '../languages/lang_jetpack_compose.dart';
import '../languages/lang_js.dart';
import '../languages/lang_kotlin.dart';
import '../languages/lang_mysql.dart';
import '../languages/lang_python.dart';
import '../languages/lang_python_tkinter.dart';

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
  "ts": tsTopics,
  "csharp": csharpTopics,
  "javafx": javafxTopics,
  "python_tkinter": pythonTkinterTopics,
  "git": gitTopics,
  "cpp": cppTopics,
  "mysql": mysqlTopics,
  "android_xml_kotlin": axKotlinTopics,
  "swift": swiftTopics,
  "swift_ui": swiftUiTopics,
  "java_springboot": javaSpringbootTopics,
  "jetpack_compose": jetpackComposeTopics,
  "android_keyboard": akTopics,
  "ios_keyboard": iosKeyboardTopics,
};

const Map<String, Map<int, Map<int, String>>> modules = {
  "java": javaModules,
  "python": pythonModules,
  "basic": basicModules,
  "dart": dartModules,
  "html": htmlModules,
  "android_xml_kotlin": axKotlinModules,
  "css": cssModules,
  "js": jsModules,
  "kotlin": kotlinModules,
  "c": cModules,
  "swift": swiftModules,
  "swift_ui": swiftUiModules,
  "haskell": haskellModules,
  "ts": tsModules,
  "csharp": csharpModules,
  "python_tkinter": pythonTkinterModules,
  "javafx": javafxModules,
  "git": gitModules,
  "cpp": cppModules,
  "mysql": mysqlModules,
  "java_springboot": javaSpringbootModules,
  "jetpack_compose": jetpackComposeModules,
  "android_keyboard": akModules,
  "ios_keyboard": iosKeyboardModules,
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
  "ts": tsLessons,
  "csharp": csharpLessons,
  "python_tkinter": pythonTkinterLessons,
  "javafx": javafxLessons,
  "git": gitLessons,
  "cpp": cppLessons,
  "mysql": mysqlLessons,
  "swift": swiftLessons,
  "swift_ui": swiftUiLessons,
  "java_springboot": javaSpringbootLessons,
  "jetpack_compose": jetpackComposeLessons,
  "android_xml_kotlin": axKotlinLessons,
  "android_keyboard": akLessons,
  "ios_keyboard": iosKeyboardLessons,
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
