import 'package:flutter/material.dart';
import 'package:learn_java_in_shan/screens/home_screen.dart';
import 'package:learn_java_in_shan/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'AJ05', // Everything now uses AJ05 by default
        appBarTheme: AppBarTheme(
          backgroundColor: kJavaMocha,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 4,
          titleTextStyle: TextStyle(
            fontFamily: "AJ13",
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3E2723), // Java Mocha
          primary: const Color(0xFF3E2723),
        ),
      ),
      title: "Learn Programming in Shan",
      home: HomeScreen(),
    );
  }
}
