import 'package:tmkacademy/utils/utils.dart';

const Map<int, String> tsTopics = {
  1: "The Environment & Compiler",
  2: "Variables & Data Types",
  3: "Operators & Control Flow (If/Switch/Loops)",
  4: "Functions & Arrow Syntax",
  5: "Objects, Interfaces & Type Aliases",
  6: "Arrays, Tuples & Enums",
  7: "Union Types & Type Guarding",
  8: "Error Handling (Try/Catch) & Debugging",
  9: "Generics & Utility Types",
  10: "Asynchronous TS (Promises & Async/Await)",
  11: "OOP: Classes & Access Modifiers",
  12: "Modules & Real-World Project",
};

const Map<int, Map<int, String>> tsModules = {
  1: {
    1: "The Anatomy of TypeScript (Compiler vs. Runtime)",
    2: "The Toolkit: Node.js & Global TSC Installation",
    3: "The Workspace: Installing & Setting up VS Code",
    4: "First Script: Manual Compilation & Type Erasure",
    5: "The Project Brain: Deep Dive into tsconfig.json",
    6: "Professional Workflow: Watch Mode & Directory Structure",
  },
  2: {
    7: "Primitive Types: string, number, and boolean",
    8: "Type Inference: Letting TypeScript do the work",
    9: "The Danger Zone: any, unknown, and void",
    10: "Union Types: Allowing multiple possibilities",
    11: "Literal Types: Creating strict constants",
    12: "Type Aliases: Customizing your data types",
  },
  3: {
    13: "Basic Operators: Arithmetic & Assignment",
    14: "Comparison & Logical Operators: Making Decisions",
    15: "Conditionals: The power of If, Else If, and Else",
    16: "Switch Statements: Handling multiple conditions",
    17: "Ternary Operator: The shorthand for If-Else",
    18: "Loops: Iterating with For, While, and Do-While"
  },
  4: {
    19: "Function Declarations: Parameters & Return Types",
    20: "Optional & Default Parameters",
    21: "Arrow Functions: The Modern Syntax",
    22: "Function Types: Defining function signatures",
    23: "Rest Parameters: Handling multiple arguments",
    24: "Function Overloading: One name, multiple ways"
  },
};

final Map<int, Lesson> tsLessons = {
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
  13: Lesson(3, 13),
  14: Lesson(3, 14),
  15: Lesson(3, 15),
  16: Lesson(3, 16),
  17: Lesson(3, 17),
  18: Lesson(3, 18),
  19: Lesson(4, 19),
  20: Lesson(4, 20),
  21: Lesson(4, 21),
  22: Lesson(4, 22),
  23: Lesson(4, 23),
  24: Lesson(4, 24),
};
