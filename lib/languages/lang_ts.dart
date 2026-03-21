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
};
