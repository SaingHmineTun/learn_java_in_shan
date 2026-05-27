import '../utils/utils.dart';

const akjcTopics = {
  1: "Foundations of Android Input Methods",
  2: "Designing the Keyboard Layout with Jetpack Compose",
  3: "State Management & Touch Interaction",
  4: "Core Intelligent Engine & Input Method Lifecycle",
};

const akjcModules = {
  1: {
    1: "Introduction to the Android Input Method Framework (IMF)",
    2: "Deep Dive into the InputMethodService Lifecycle",
    3: "Setting Up the Manifest and Security Configurations",
    4: "Defining Keyboard Properties with method.xml",
    5: "Integrating Jetpack Compose into a Traditional Service Context",
    6: "Building the Keyboard Window: Embedding ComposeView",
    7: "Handling Configuration Changes and Window Resizing"
  },
  2: {
    8: "Building the Reusable Key Component",
    9: "Managing Keyboard Rows and Grid Structures",
    10: "Architectural Layout of the English QWERTY",
    11: "Designing the Myanmar Unicode Layout",
    12: "Designing the Shan Unicode Layout",
    13: "Implementing the Handwriting Engine for Shan",
    14: "Implementing the Handwriting Engine for Myanmar",
    15: "Displaying Custom Shan/Myanmar Typography on Keys"
  },
  3: {
    16: "Fixing Android 15 Edge-to-Edge Overlaps using Window Insets",
    17: "Designing the Dynamic Theme Architecture Data Structure",
    18: "Creating the 10 Keyboard Themes ( E-Vowel Themes to Dark Modes)",
    19: "Managing Theme States via Shared Preferences",
    20: "Touch Feedback: Key Sound and Vibrate",
    21: "Advanced Touch Feedback: Key Previews and Popups",
    22: "App Setting (Select Theme, Enable Key Sound/Vibrate/Handwriting",
    23: "Implementing the Keyboard Onboarding Wizard Flow (Enable & Select Validation)"
  },
  4: {
    24: "Pure Jetpack Compose Emoji & Numeric Layout Engines",
    25: "The Master Controller Routing Framework (The State Machine)",
    26: "Cursor Motion & Selection Coordinates Tracker",
    27: "Hardware Keyboard Interoperability Integration",
    28: "EditorInfo Attributes Dynamic Routing (Smart InputTypes)",
    29: "Suggestion Bar & Predictive Word Candidate Row Component",
    30: "Speech-to-Text Speech Recognition Integration (Voice Input)",
    31: "Batch Edit Lifecycle Commit & Frame Rate Optimization"
  }
};

final akjcLessons = {
  1: Lesson(1, 1),
  2: Lesson(1, 2),
  3: Lesson(1, 3),
  4: Lesson(1, 4),
  5: Lesson(1, 5),
  6: Lesson(1, 6),
  7: Lesson(1, 7),
  8: Lesson(2, 8),
  9: Lesson(2, 9),
  10: Lesson(2, 10),
  11: Lesson(2, 11),
  12: Lesson(2, 12),
  13: Lesson(2, 13),
  14: Lesson(2, 14),
  15: Lesson(2, 15),
  16: Lesson(3, 16),
  17: Lesson(3, 17),
  18: Lesson(3, 18),
  19: Lesson(3, 19),
  20: Lesson(3, 20),
  21: Lesson(3, 21),
  22: Lesson(3, 22),
  23: Lesson(3, 23),
  24: Lesson(4, 24),
  25: Lesson(4, 25),
  26: Lesson(4, 26),
  27: Lesson(4, 27),
  28: Lesson(4, 28),
  29: Lesson(4, 29),
  30: Lesson(4, 30),
  31: Lesson(4, 31)
};