final Map<int, String> akTopics = {
  1: "InputMethodService & XML Infrastructure",
  2: "UI Design & Keyboard Resources",
  3: "Core Input & Event Handling",
  4: "Shan & Myanmar Language Intelligence",
  5: "Emoji, Symbols & Specialized Inputs",
  6: "Settings, Onboarding & Localization",
  7: "Polish, Performance & Publishing",
};

final Map<int, Map<int, String>> akModules = {
  1: {
    1: "Understanding InputMethodService in XML: Handling layouts",
    2: "Manifest Magic: System Registration, Permissions & Intent Filters",
    3: "method.xml Setup: Defining English, Myanmar and Shan Subtypes",
    4: "Building the Suggestion Bar: onCreateCandidatesView and XML layout",
    5: "Initializing the Input View: onCreateInputView and Inflater logic",
    6: "Keyboard Window & Insets: Managing Screen Heights & Overlay",
  },
  2: {
    7: "Designing the English QWERTY Layout with ConstraintLayout",
    8: "Designing the Myanmar Unicode and Unicode XML Layouts",
    9: "Designing the Shan XML Layout for TMK Keyboard Pro",
    10: "Advanced StateList Drawables: Creating Custom Pro Key Shapes",
    11: "Dynamic Theming Engine: Switching Blue and Gold Themes",
    12: "Responsive Design: Scaling Keys for Tablets and Foldables",
    13: "Fixing Navigation Bar Overlay (Android 15+)"
  },
  // 3: "Core Input & Event Handling",
  3: {
    14: "InputConnection Mastery: Committing Strings and Deleting Text",
    15: "Key Event Dispatcher: Mapping XML Button Clicks to Characters",
    16: "Long-Press Logic: Implementing Pop-up Character Windows",
    17: "Advanced Touch Logic for Popups",
    18: "Shift and Caps Lock State: Managing Capitalization Logic",
    19: "Advanced Shift Logic (Double-Tap for Caps Lock)",
    20: "Spacebar Swipe Logic: Implementing Cursor Control",
    21: "Haptic and Audio Feedback: Programming Vibration and Sounds",
  },
  4: {
    22: "The Reordering Engine: Logic for Leading Vowels",
    23: "Tone Mark Stacking Rules: Preventing Broken Shan Characters",
    24: "Multi-Script Toggle: Switching Between Languages in One Tap",
    25: "Unicode vs Zawgyi: Real-time Conversion Logic",
    26: "Zero-Width Space Insertion: Managing Line Breaks",
    27: "Dictionary Integration: Loading Assets for Suggestions",
  },
  5: {
    28: "Custom Emoji Keyboard: Building a Grid-based XML Picker",
    29: "Recent Emoji History: Persistent Storage with SharedPreferences",
    30: "Voice Input Bridge: Integrating Android Speech-to-Text",
    31: "Clipboard Manager: Saving and Pasting Multiple Snippets",
    32: "Special Symbols Layer: Designing the Symbols XML Layout",
    33: "Multi-Layer Symbols: Designing the Advanced Symbols Layout"
  },
  6: {
    34: "Settings UI: Material 3 Design for Theme and Language Selection",
    35: "Setup Wizard: Guiding Users to Enable and Select Keyboard",
    36: "Custom Font Downloader: Managing Fonts Within the App",
    37: "Keyboard Preview Tool: Real-time Testing inside Settings",
    38: "App Localization: Translating Settings UI into English, Shan and Myanmar",
    39: "User Analytics and Feedback: Safe Bug Reporting Systems",
  },
  7: {
    40: "Performance Tuning & View Recycling",
    41: "Battery & Resource Efficiency",
    42: "ProGuard & R8: Security & Size Optimization",
    43: "Final Beta Testing & Stability Fixes",
    44: "Play Console & Publishing"
  }
};
