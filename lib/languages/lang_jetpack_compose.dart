import '../utils/utils.dart';

const Map<int, String> jetpackComposeTopics = {
  1: "Proverb of the Day",
  2: "Shan Numeral Calculator",
  3: "Shan ↔ Dai Dehong Converter",
  4: "Shan Custom Keyboard",
  5: "Cultural Media Player",
  6: "Shan History Quiz",
  7: "Global News Live",
  8: "Shan Diary Vault",
  9: "Shan Calendar",
  10: "The App Gallery"
};

const Map<int, Map<int, String>> jetpackComposeModules = {
  1: {
    1: "Setting Up the Laboratory (Android Studio)",
    2: "Creating Your First Project",
    3: "Understanding the Project Anatomy",
    4: "The Declarative Mindset",
    5: "Core Layouts (Column, Row, Box)",
    6: "Modifiers – The \"Style Brush\"",
    7: "Shan Typography & Fonts",
    8: "The Power of Preview",
    9: "Scaffolding (The App Frame)",
    10: "Final Assembly"
  }
};

final Map<int, Lesson> jetpackComposeLessons = {
  1: Lesson(
      1, 1
  ),
  2: Lesson(1, 2),
  3: Lesson(1, 3),
  4: Lesson(1, 4),
  5: Lesson(1, 5),
  6: Lesson(1, 6),
  7: Lesson(1, 7),
  8: Lesson(1, 8),
  9: Lesson(1, 9),
  10: Lesson(1, 10),
};