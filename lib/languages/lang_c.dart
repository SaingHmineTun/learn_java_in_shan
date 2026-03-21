import 'package:tmkacademy/utils/utils.dart';

const Map<int, String> cTopics = {
  1: "Introduction to C",
  2: "Variables & Data Types",
  3: "Operators & Expressions",
  4: "Control Flow & Logic Gates",
  5: "Data Architecture (Arrays & Structs)",
  6: "The Pointer Path",
  7: "Dynamic Power & Functions",
  8: "System Interfacing",
};

const Map<int, Map<int, String>> cModules = {
  1: {
    1: "The World of C: History & Philosophy",
    2: "Setting Up Your Forge: Compilers & IDEs",
    3: "Anatomy of a C Program: Structure & Syntax",
    4: "The Compilation Pipeline: From Code to Binary",
    5: "Errors & Debugging: Finding the Bugs",
    6: "Coding Standards: Writing Clean & Readable Code", // New
  },
  2: {
    7: "Memory Architecture: How Variables Work",
    8: "Primitive Data Types: The Java vs. C Gap",
    9: "Modifiers: Signed, Unsigned, Short & Long",
    10: "Constants & Literals: Fixed Data in Memory", // New
    11: "The Unicode Challenge: Storing Shan Script",
    12: "Interacting with the User: I/O & Buffers",
    13: "Advanced Formatting: Professional CLI Output", // New
  },
  3: {
    14: "Arithmetic & Assignment: The Basics",
    15: "Relational & Logical: Making Decisions",
    16: "Bitwise Operators: Thinking in Binary",
    17: "Bit Manipulation: Flags & Masks", // New
    18: "Operator Precedence: The Order of Power",
    19: "Type Casting & Promotion: Mixing Data Types",
    20: "The Ternary Operator: Short-hand Logic", // New
  },
  4: {
    21: "The if-else Empire: Decision Making",
    22: "Switch Case: The Multi-way Branch",
    23: "while & do-while: Condition-first Loops",
    24: "for Loops: The Powerhouse",
    25: "Break & Continue: The Flow Controllers",
    26: "Nested Loops: Pattern Printing",
    27: "The goto Statement: Proceed with Caution",
  }
};

final Map<int, Lesson> cLessons = {
  1: Lesson(1, 1),
  2: Lesson(1, 2),
  3: Lesson(1, 3),
  4: Lesson(1, 4),
  5: Lesson(1, 5),
  6: Lesson(1, 6),
  7: Lesson(2, 7),
  8: Lesson(2, 8),
  9: Lesson(2, 9),
  10: Lesson(2, 10),
  11: Lesson(2, 11),
  12: Lesson(2, 12),
  13: Lesson(2, 13),
  14: Lesson(3, 14),
  15: Lesson(3, 15),
  16: Lesson(3, 16),
  17: Lesson(3, 17),
  18: Lesson(3, 18),
  19: Lesson(3, 19),
  20: Lesson(3, 20),
  21: Lesson(4, 21),
  22: Lesson(4, 22),
  23: Lesson(4, 23),
  24: Lesson(4, 24),
  25: Lesson(4, 25),
  26: Lesson(4, 26),
  27: Lesson(4, 27),
};
