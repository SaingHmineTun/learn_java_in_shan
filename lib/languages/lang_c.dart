import 'package:tmkacademy/utils/utils.dart';

const Map<int, String> cTopics = {
  1: "Introduction to C",
  2: "Variables & Data Types",
  3: "Operators & Expressions",
  4: "Control Flow & Logic Gates",
  5: "Data Architecture (Arrays & Structs)",
  6: "Memory & Pointers: Under the Hood",
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
  },
  5: {
    28: "Introduction to Arrays: Homogeneous Collections",
    29: "Multidimensional Arrays: Matrices & Grids",
    30: "Strings in C: Character Arrays & The Null Terminator",
    31: "String Handling Functions: <string.h> Deep Dive",
    32: "Introduction to Structs: Heterogeneous Data",
    33: "Nested Structs & Arrays of Structs: Database Basics",
    34: "Typedef & Enums: Creating Custom Data Types", // New
  },
  6: {
    35: "Memory Addresses: The & Operator",
    36: "Pointer Basics: The * Operator",
    37: "Pointer Arithmetic: Moving in Memory",
    38: "Pointers & Arrays: The Secret Relationship",
    39: "Call by Value vs. Call by Reference",
    40: "Dynamic Memory Allocation: malloc, calloc & free",
    41: "Void Pointers & Pointers to Pointers",
    42: "Dangling Pointers & Memory Leaks: The Dark Side", // New
    43: "Pointers to Structs: The -> Arrow Operator",     // New
    44: "Function Pointers: Code as Data",               // New
    45: "The Stack vs. The Heap: Memory Layout",         // New
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
  28: Lesson(5, 28),
  29: Lesson(5, 29),
  30: Lesson(5, 30),
  31: Lesson(5, 31),
  32: Lesson(5, 32),
  33: Lesson(5, 33),
  34: Lesson(5, 34),
};
