import 'package:flutter/material.dart';
import 'package:tmkacademy/screens/home_screen.dart';
import 'package:tmkacademy/utils/colors.dart'; // Brand Palette

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TMK Programming Academy",

      // --- THEMED DATA: THE GLOBAL LOOK ---
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark, // Switches default widgets to dark mode
        scaffoldBackgroundColor: kBrandDark,
        fontFamily: 'AJ05', // Default body font

        // AppBar Styling
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: kBrandWhite,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontFamily: "AJ03", // Title specific font
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: kBrandGold,
          ),
        ),

        // Color Scheme for auto-styling (Buttons, Toggles, etc.)
        colorScheme: ColorScheme.fromSeed(
          seedColor: kBrandOrange,
          primary: kBrandOrange,
          secondary: kBrandBlue,
          surface: kBrandSurface,
          onSurface: kBrandWhite,
          brightness: Brightness.dark,
        ),

        // Global Text Styling
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: kBrandGold, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(color: kBrandWhite),
          bodyMedium: TextStyle(color: kBrandWhite),
        ),

        // Global Button Styling
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kBrandOrange,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),

      home: const HomeScreen(),
    );
  }
}