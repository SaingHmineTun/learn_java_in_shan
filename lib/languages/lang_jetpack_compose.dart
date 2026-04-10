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
  },
  2: {
    11: "Understanding State (Remember & MutableState)",
    12: "Designing the Grid Layout",
    13: "Reusable Components (The Calculator Button)",
    14: "Handling Click Events (Callbacks)",
    15: "String Manipulation (Shan to English)",
    16: "Math Logic Implementation",
    17: "Adaptive UI (Landscape vs Portrait)",
    18: "Customizing Themes (Calculator Skins)",
    19: "Module 2 Final Assembly"
  },
  3: {
    20: "Java-Kotlin Interoperability",
    21: "Designing the Dual-Editor UI",
    22: "Advanced TextField (State & Events)",
    23: "Real-time Conversion Logic",
    24: "Two-Way Conversion (Switcher)",
    25: "Copy to Clipboard & Haptic Feedback",
    26: "Sharing with Android Intents",
    27: "Module 3 Final Assembly & Refinement"
  },
  4: {
    28: "The \"Lazy\" Architecture",
    29: "Building the Idiom Card (UI Design)",
    30: "LazyColumn Implementation",
    31: "Click-to-Expand Logic (Local State)",
    32: "Smooth UX with Animations",
    33: "Intro to Jetpack Navigation",
    34: "Navigation with Arguments (Data Passing)",
    35: "Module 4 Final Assembly & Search Feature"


  }
};

final Map<int, Lesson> jetpackComposeLessons = {
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
};