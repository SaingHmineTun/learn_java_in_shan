import 'package:tmkacademy/utils/utils.dart';

const Map<int, String> haskellTopics = {
  1: "The Functional Mindset",
  2: "Lists and Pattern Matching",
  3: "The Art of Recursion",
  4: "Type Systems and Data Modeling",
  5: "Higher-Order Functional Power",
  6: "Typeclasses and Polymorphism",
  7: "The Functor and Applicative Bridge",
  8: "The Monad Deep Dive",
  9: "Input/Output and Side Effects",
  10: "Building Real-World Projects",
};

const Map<int, Map<int, String>> haskellModules = {
  1: {
    1: "What is Functional Programming? (Concepts vs. Instructions)",
    2: "Setting Up the Environment (GHC, GHCi, and VS Code)",
    3: "The GHCi Playground (REPL Basics and Commands)",
    4: "Numbers and Math (Int, Integer, and Floating Point)",
    5: "Booleans and Logic (True, False, and Comparisons)",
    6: "Strings and Characters (Haskell's List of Chars)",
    7: "Defining Your First Constants (Truths that Never Change)",
    8: "Anatomy of a Function (Parameters and Space Syntax)",
    9: "Function Application (How Functions Execute)",
    10: "The if-then-else Expression (Mandatory Logic)",
    11: "Scoping with let and where (Local Definitions)",
    12: "Module 1 Review: The TMK Personal Assistant Project",
  },
};

final Map<int, Lesson> haskellLessons = {
  1: Lesson(1, 1),
  2: Lesson(1, 2),
  3: Lesson(1, 3),
  4: Lesson(1, 4),
  5: Lesson(1, 5),
  6: Lesson(1, 6),
  7: Lesson(1, 7),
  8: Lesson(1, 8),
  9: Lesson(1, 9),
  10: Lesson(1, 10),
  11: Lesson(1, 11),
  12: Lesson(1, 12),
};
