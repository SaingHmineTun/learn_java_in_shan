// TOPIC SECTION (Module 1 - Introduction)
import '../languages/lang_basic.dart';
import '../languages/lang_html.dart';
import '../languages/lang_java.dart';
import '../languages/lang_kotlin.dart';
import '../languages/lang_python.dart';

const Map<int, String> dartTopics = {
  1: "Introduction to Dart & Development Environment Setup",
  2: "Variables, Built-in Data Types, and Type Inference",
  3: "Operators, Expressions, and String Interpolation",
  4: "Control Flow: If-Else, Switch, and Loops (For, While)",
  5: "Functions: Parameters, Return Types, and Lexical Scope",
  6: "Collections: Lists, Sets, and Maps with Generics",
  7: "OOP I: Classes, Objects, and Constructors",
  8: "OOP II: Encapsulation, Getters, and Setters",
  9: "OOP III: Inheritance, Abstract Classes, and Interfaces",
  10: "OOP IV: Mixins, Extensions, and Enum Classes",
  11: "Sound Null Safety: Nullable Types and Null-aware Operators",
  12: "Error Handling: Exceptions, Try-Catch, and Custom Errors",
  13: "Asynchronous Programming: Futures, Async, and Await",
  14: "Reactive Programming: Streams and Sinks",
};
const Map<int, String> cssTopics = {
  1: "Foundations of Style",
  2: "The Box Model",
  3: "Shan Typography & Color",
  4: "Positioning & Flexbox",
  5: "Grid Master",
  6: "Responsive Design",
  7: "Animations & Effects",
};
const Map<int, String> jsTopics = {
  1: "The Foundations (Variables, Data Types & Operators)",
  2: "Logic and Control Flow (Decision Making & Short-circuiting)",
  3: "Functions and Scope (Machines & Memory Rules)",
  4: "Data Structures (Arrays, Objects & Modern Collections)",
  5: "Iteration & Functional Programming (Loops & Array Methods)",
  6: "OOP & Advanced JS (Classes, Inheritance & Prototypes)",
  7: "Asynchronous JavaScript (Event Loop, Promises & Fetch)",
  8: "The DOM & Browser Events (Web Interaction)",
  9: "Modern Tooling & Deployment (Vite, NPM & Final Project)",
};
const Map<String, Map<int, String>> topics = {
  "java": javaTopics,
  "python": pythonTopics,
  "basic": basicTopics,
  "html": htmlTopics,
  "dart": dartTopics,
  "css": cssTopics,
  "js": jsTopics,
  "kotlin": kotlinTopics,
};

const Map<int, Map<int, String>> dartModules = {
  1: {
    // Intro & Setup
    1: "What is Dart? (JIT vs AOT)",
    2: "The Dart SDK & Runtime Environment",
    3: "Setting up the IDE (VS Code / Android Studio)",
    4: "Creating your first Console App",
    5: "The main() function & Basic Syntax",
    6: "Comments and Documentation Best Practices",
  },
  2: {
    // Variables & Types
    7: "Variable Declaration: Type vs Name",
    8: "Numbers: int and double",
    9: "Strings and Booleans",
    10: "Type Inference with 'var'",
    11: "The 'dynamic' type: When to use it",
    12: "Constants: final vs const",
    13: "Type Conversion (Parsing & Casting)",
  },
  3: {
    // Operators & Expressions
    14: "Arithmetic and Assignment Operators",
    15: "Equality and Relational Operators",
    16: "Logical Operators (&&, ||, !)",
    17: "Type Test Operators (is, as)",
    18: "String Interpolation & Multi-line Strings",
    19: "Operator Precedence and Expressions",
  },
  4: {
    // Control Flow
    20: "The If-Else Statement",
    21: "Conditional Expressions (Ternary ? :)",
    22: "Switch Statements & Patterns (Dart 3.0)",
    23: "Standard For Loops",
    24: "While and Do-While Loops",
    25: "For-in and forEach Basics",
    26: "Break and Continue",
  },
  5: {
    // Functions
    27: "Defining and Calling Functions",
    28: "Return Types and the void keyword",
    29: "Positional Parameters (Required vs Optional)",
    30: "Named Parameters and {required}",
    31: "Default Parameter Values",
    32: "Arrow Syntax (=>)",
    33: "Lexical Scope and Variable Lifetime",
    34: "Introduction to Anonymous Functions",
    35: "Higher-Order Functions",
  },
  6: {
    // Collections
    36: "Lists: Indexing and Growable Lists",
    37: "Essential List Methods (add, remove, sort)",
    38: "Sets: Unique Values and Set Math",
    39: "Maps: Key-Value Pairs",
    40: "Generics <T> for Type Safety",
    41: "Spread Operators (...) and Collection If",
    42: "Transforming Collections (map, where, toList)",
  },
  7: {
    // OOP I: Classes & Constructors
    43: "Classes: Blueprints for Objects",
    44: "Instance Variables and Fields",
    45: "Methods and 'this' keyword",
    46: "The Default Constructor",
    47: "Parameterized and Named Constructors",
    48: "Initializer Lists",
    49: "Constant Constructors (Flutter Optimization)",
    50: "Factory Constructors",
  },
  8: {
    // OOP II: Encapsulation
    51: "Privacy with the Underscore (_)",
    52: "Creating Getters for Controlled Reading",
    53: "Creating Setters for Validation",
    54: "Computed Properties",
    55: "The 'late' keyword in Classes",
    56: "Final vs Private Fields",
  },
  9: {
    // OOP III: Inheritance & Abstracts
    57: "Inheritance: The 'extends' keyword",
    58: "The 'super' keyword",
    59: "Method Overriding and @override",
    60: "Abstract Classes: Rules and Usage",
    61: "Abstract Methods",
    62: "Implementing Interfaces",
    63: "Polymorphism in Action",
  },
  10: {
    // OOP IV: Mixins & Enums
    64: "Mixins: Code Reuse with 'with'",
    65: "Extension Methods on Existing Types",
    66: "Basic Enums for State",
    67: "Enhanced Enums with Fields (Dart 3.0)",
    68: "Comparing Mixins vs Inheritance",
  },
  11: {
    // Null Safety
    69: "The Principle of Null Safety",
    70: "Nullable Types (?)",
    71: "The Null-aware Operator (?.)",
    72: "The If-Null Operator (??)",
    73: "Null-aware Assignment (??=)",
    74: "The Bang (!) Operator: When to avoid it",
  },
  12: {
    // Error Handling
    75: "Exceptions vs Errors",
    76: "Try-Catch Blocks",
    77: "Catching Specific Exceptions with 'on'",
    78: "The Finally Clause",
    79: "Throwing Exceptions Manually",
    80: "Creating Custom Exception Classes",
  },
  13: {
    81: "Event Loop and Single-Threaded Execution",
    82: "Future States: Uncompleted vs Completed",
    83: "The .then() Callback vs async/await",
    84: "The await Mechanism and Function Suspension",
    85: "Declaring Future-Returning Functions",
    86: "Future.wait() and Iterable Futures",
    87: "Handling Future Errors and Timeouts",
  },
  14: {
    88: "Stream Theory: The Continuous Data Pipe",
    89: "The StreamController: Managing the Flow",
    90: "Listening to Streams: Subscription and Cancellation",
    91: "Single vs Broadcast: One Listener vs Many",
    92: "Stream Transformations: map, where, and expand",
    93: "Async Generators: Using the 'yield' keyword",
  },
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
const Map<int, Map<int, String>> jsModules = {
  1: {
    1: "How JS Runs & V8 Engine",
    2: "Environment Setup (VS Code, Node & Browser)",
    3: "Variables: let, const & var",
    4: "Internal Hoisting & TDZ",
    5: "Primitive Data Types (Deep Dive)",
    6: "Template Literals & String Interpolation",
    7: "Essential String Methods",
    8: "Arithmetic & Assignment Operators",
    9: "Type Coercion vs. Explicit Conversion",
  },
  2: {
    10: "Comparison Operators & Strict Equality",
    11: "If/Else & Nested Decision Making",
    12: "Logical Operators (&&, ||, !)",
    13: "Truthy vs. Falsy Values",
    14: "Switch Statements",
    15: "Ternary Operator (Conditional Operator)",
    16: "Short-circuiting Basics (&&, ||)",
    17: "Nullish Coalescing (??)",
    18: "Logic Practice: Building a Simple Game Brain",
  },
  3: {
    19: "Function Declarations vs. Expressions",
    20: "Arrow Functions: Syntax & Lexical 'this'",
    21: "Parameters & Default Arguments",
    22: "The Return Keyword & Execution Flow",
    23: "Global vs. Local Scope",
    24: "Scope Chain & Lexical Environment",
    25: "Immediately Invoked Functions (IIFE)",
    26: "Introduction to Closures",
    27: "Higher-Order Functions Introduction",
  },
  4: {
    28: "Array Basics & Storing Data",
    29: "Adding/Removing: push, pop, shift, unshift",
    30: "Modifying: splice, slice, and concat",
    31: "Searching: indexOf, includes, findIndex",
    32: "Object Literals & Property Access",
    33: "Object Methods & 'this' keyword",
    34: "Array & Object Destructuring",
    35: "Spread & Rest Operators (...)",
    36: "Sets & Maps (Modern Collections)",
  },
  5: {
    37: "For Loops: Traditional Iteration",
    38: "While & Do-While Loops",
    39: "Looping through Arrays (for-of)",
    40: "Looping through Objects (for-in)",
    41: "Higher-Order Functions & Callbacks",
    42: "The Map Method (Data Transformation)",
    43: "The Filter Method (Data Selection)",
    44: "The Reduce Method (Accumulation)",
    45: "Find, Some, Every & Method Chaining",
  },
  6: {
    46: "Object Prototypes & Inheritance",
    47: "Classes & Constructors (ES6)",
    48: "Getters, Setters & Property Validation",
    49: "Inheritance: Extends & Super",
    50: "Static Methods & Properties",
    51: "Private Fields (#) & Encapsulation",
    52: "Optional Chaining (?.)",
    53: "Polymorphism & OOP Review",
  },
  7: {
    54: "The Call Stack & Microtask Queue",
    55: "The Event Loop in Depth",
    56: "Callbacks & The Pyramid of Doom",
    57: "Promises: Resolve, Reject & States",
    58: "Chaining Promises (.then, .catch, .finally)",
    59: "Async/Await Syntax",
    60: "Handling Errors with Try/Catch",
    61: "Promise.all, Race, AllSettled & Any",
    62: "Fetching Real API Data",
  },
  8: {
    63: "DOM Tree Architecture & Node Types",
    64: "Selecting Elements (querySelector, getElementById)",
    65: "Modifying Content & Attributes",
    66: "Changing CSS via JavaScript",
    67: "Event Listeners & Event Objects",
    68: "Event Bubbling & Capturing",
    69: "Event Delegation Patterns",
    70: "DOM Traversal (Parent/Child/Sibling)",
    71: "Forms & Input Validation Logic",
  },
  9: {
    72: "LocalStorage & SessionStorage",
    73: "Web Security Basics (XSS & CSRF Prevention)",
    74: "ES Modules (Import/Export)",
    75: "Package Managers: NPM & Yarn",
    76: "Modern Build Tools: Vite Introduction",
    77: "Environment Variables (.env)",
    78: "Debugging with Browser DevTools",
    79: "Performance Profiling Basics",
  },
};

const Map<String, Map<int, Map<int, String>>> modules = {
  "java": javaModules,
  "python": pythonModules,
  "basic": basicModules,
  "dart": dartModules,
  "html": htmlModules,
  "css": cssModules,
  "js": jsModules,
  "kotlin": kotlinModules,
};

final Map<int, Lesson> dartLessons = {
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
  20: Lesson(4, 20),
  21: Lesson(4, 21),
  22: Lesson(4, 22),
  23: Lesson(4, 23),
  24: Lesson(4, 24),
  25: Lesson(4, 25),
  26: Lesson(4, 26),
  27: Lesson(5, 27),
  28: Lesson(5, 28),
  29: Lesson(5, 29),
  30: Lesson(5, 30),
  31: Lesson(5, 31),
  32: Lesson(5, 32),
  33: Lesson(5, 33),
  34: Lesson(5, 34),
  35: Lesson(5, 35),
  36: Lesson(6, 36),
  37: Lesson(6, 37),
  38: Lesson(6, 38),
  39: Lesson(6, 39),
  40: Lesson(6, 40),
  41: Lesson(6, 41),
  42: Lesson(6, 42),
  43: Lesson(7, 43),
  44: Lesson(7, 44),
  45: Lesson(7, 45),
  46: Lesson(7, 46),
  47: Lesson(7, 47),
  48: Lesson(7, 48),
  49: Lesson(7, 49),
  50: Lesson(7, 50),
  51: Lesson(8, 51),
  52: Lesson(8, 52),
  53: Lesson(8, 53),
  54: Lesson(8, 54),
  55: Lesson(8, 55),
  56: Lesson(8, 56),
  57: Lesson(9, 57),
  58: Lesson(9, 58),
  59: Lesson(9, 59),
  60: Lesson(9, 60),
  61: Lesson(9, 61),
  62: Lesson(9, 62),
  63: Lesson(9, 63),
  64: Lesson(10, 64),
  65: Lesson(10, 65),
  66: Lesson(10, 66),
  67: Lesson(10, 67),
  68: Lesson(10, 68),
  69: Lesson(11, 69),
  70: Lesson(11, 70),
  71: Lesson(11, 71),
  72: Lesson(11, 72),
  73: Lesson(11, 73),
  74: Lesson(11, 74),
  75: Lesson(12, 75),
  76: Lesson(12, 76),
  77: Lesson(12, 77),
  78: Lesson(12, 78),
  79: Lesson(12, 79),
  80: Lesson(12, 80),
  81: Lesson(13, 81),
  82: Lesson(13, 82),
  83: Lesson(13, 83),
  84: Lesson(13, 84),
  85: Lesson(13, 85),
  86: Lesson(13, 86),
  87: Lesson(13, 87),
  88: Lesson(14, 88),
  89: Lesson(14, 89),
  90: Lesson(14, 90),
  91: Lesson(14, 91),
  92: Lesson(14, 92),
  93: Lesson(14, 93),
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
final Map<int, Lesson> jsLessons = {
  1: Lesson(1, 1),
  2: Lesson(1, 2),
  3: Lesson(1, 3),
  4: Lesson(1, 4),
  5: Lesson(1, 5),
  6: Lesson(1, 6),
  7: Lesson(1, 7),
  8: Lesson(1, 8),
  9: Lesson(1, 9),
  10: Lesson(2, 10),
  11: Lesson(2, 11),
  12: Lesson(2, 12),
  13: Lesson(2, 13),
  14: Lesson(2, 14),
  15: Lesson(2, 15),
  16: Lesson(2, 16),
  17: Lesson(2, 17),
  18: Lesson(2, 18),
  19: Lesson(3, 19),
  20: Lesson(3, 20),
  21: Lesson(3, 21),
  22: Lesson(3, 22),
  23: Lesson(3, 23),
  24: Lesson(3, 24),
  25: Lesson(3, 25),
  26: Lesson(3, 26),
  27: Lesson(3, 27),
  28: Lesson(4, 28),
  29: Lesson(4, 29),
  30: Lesson(4, 30),
  31: Lesson(4, 31),
  32: Lesson(4, 32),
  33: Lesson(4, 33),
  34: Lesson(4, 34),
  35: Lesson(4, 35),
  36: Lesson(4, 36),
  37: Lesson(5, 37),
  38: Lesson(5, 38),
  39: Lesson(5, 39),
  40: Lesson(5, 40),
  41: Lesson(5, 41),
  42: Lesson(5, 42),
  43: Lesson(5, 43),
  44: Lesson(5, 44),
  45: Lesson(5, 45),
  46: Lesson(6, 46),
  47: Lesson(6, 47),
  48: Lesson(6, 48),
  49: Lesson(6, 49),
  50: Lesson(6, 50),
  51: Lesson(6, 51),
  52: Lesson(6, 52),
  53: Lesson(6, 53),
  54: Lesson(7, 54),
  55: Lesson(7, 55),
  56: Lesson(7, 56),
  57: Lesson(7, 57),
  58: Lesson(7, 58),
  59: Lesson(7, 59),
  60: Lesson(7, 60),
  61: Lesson(7, 61),
  62: Lesson(7, 62),
  63: Lesson(8, 63),
  64: Lesson(8, 64),
  65: Lesson(8, 65),
  66: Lesson(8, 66),
  67: Lesson(8, 67),
  68: Lesson(8, 68),
  69: Lesson(8, 69),
  70: Lesson(8, 70),
  71: Lesson(8, 71),
  72: Lesson(9, 72),
  73: Lesson(9, 73),
  74: Lesson(9, 74),
  75: Lesson(9, 75),
  76: Lesson(9, 76),
  77: Lesson(9, 77),
  78: Lesson(9, 78),
  79: Lesson(9, 79),
};

final Map<String, Map<int, Lesson>> lessons = {
  "python": pythonLessons,
  "java": javaLessons,
  "basic": basicLessons,
  "dart": dartLessons,
  "html": htmlLessons,
  "css": cssLessons,
  "js": jsLessons,
  "kotlin": kotlinLessons,
};

class Lesson {
  final int moduleId;
  final int id;

  Lesson(this.moduleId, this.id);

  @override
  String toString() {
    return 'Lesson{moduleId: $moduleId, id: $id}';
  }
}
