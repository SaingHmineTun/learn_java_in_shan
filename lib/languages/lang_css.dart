import '../utils/utils.dart';

const Map<int, String> cssTopics = {
  1: "Foundations of Style",
  2: "The Box Model",
  3: "Shan Typography & Color",
  4: "Positioning & Flexbox",
  5: "Grid Master",
  6: "Responsive Design",
  7: "Animations & Effects",
};
const Map<int, Map<int, String>> cssModules = {
  1: {
    1: "CSS Anatomy", // Selectors, Properties, and Values.
    2: "Linking Methods", // Inline, Internal, and External Stylesheets.
    3: "Selectors & ID/Class", // Targeting elements with precision.
    4: "The Cascade", // Specificity and Inheritance logic.
  },
  2: {
    5: "Box Model Core",
    // Content, Padding, Border, and Margin.
    6: "Box Sizing",
    // Content-box vs. Border-box (The "Broken" vs. "Fixed" box).
    7: "Display Property",
    // Block, Inline, and Inline-block behaviors.
    8: "Units of Measurement",
    // Fixed (px) vs. Relative (em, rem, %) sizing.
  },
  3: {
    9: "Web Fonts for Shan", // Importing Unicode fonts (NamKhone, PangLong).
    10: "Shan Text Styling", // Line-height, Letter-spacing, and Alignment.
    11: "Color Theory & Systems", // Hex, RGB, HSL and choosing "Shan" palettes.
    12: "Backgrounds & Gradients", // Solid colors vs. smooth transitions.
  },
  4: {
    13: "Static vs. Relative",
    // Staying in the flow vs. slight nudges.
    14: "Absolute & Fixed",
    // Breaking free from the flow and "sticky" elements.
    15: "Flexbox Basics",
    // The Parent (Flex Container) and its children.
    16: "Flex Alignment",
    // Centering everything perfectly (The Holy Grail).
  },
  5: {
    17: "Grid Fundamentals", // Defining the Grid (Rows & Columns).
    18: "Fractional Units (fr)", // The magic unit for flexible layouts.
    19: "Grid Areas", // Naming areas like 'header', 'sidebar', 'footer'.
    20: "Gap & Alignment", // Managing spacing and item placement.
  },
  6: {
    21: "The Viewport Meta Tag", // Telling the phone how to behave.
    22: "Media Query Syntax", // The "If" statement of CSS.
    23: "Mobile-First Design", // Building for the small screen first.
    24: "Breakpoints & Strategy", // Deciding when the layout should change.
  },
  7: {
    25: "CSS Transitions", // Smooth changes (hover effects).
    26: "Transforms (2D & 3D)", // Rotating, Scaling, and Moving.
    27: "Keyframe Animations", // Creating custom loops and movements.
    28: "Shadows & Glassmorphism", // Depth, blur, and modern visual flair.
  },
};
final Map<int, Lesson> cssLessons = {
  1: Lesson(1, 1),
  2: Lesson(1, 2),
  3: Lesson(1, 3),
  4: Lesson(1, 4),
  5: Lesson(2, 5),
  6: Lesson(2, 6),
  7: Lesson(2, 7),
  8: Lesson(2, 8),
  9: Lesson(3, 9),
  10: Lesson(3, 10),
  11: Lesson(3, 11),
  12: Lesson(3, 12),
  13: Lesson(4, 13),
  14: Lesson(4, 14),
  15: Lesson(4, 15),
  16: Lesson(4, 16),
  17: Lesson(5, 17),
  18: Lesson(5, 18),
  19: Lesson(5, 19),
  20: Lesson(5, 20),
  21: Lesson(6, 21),
  22: Lesson(6, 22),
  23: Lesson(6, 23),
  24: Lesson(6, 24),
  25: Lesson(7, 25),
  26: Lesson(7, 26),
  27: Lesson(7, 27),
  28: Lesson(7, 28),
};
