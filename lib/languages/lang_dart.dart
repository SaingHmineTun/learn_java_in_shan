import '../utils/quiz.dart';
import '../utils/utils.dart';

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

final List<Quiz> dartQuizM1 = [
  // --- Topic 1: What is Dart? (JIT vs AOT) ---
  Quiz(1, "What does JIT stand for in the context of Dart?", [
    "Just-In-Time",
    "Jump-In-Task",
    "Joint-Integrated-Tool",
    "Just-Internal-Testing",
  ]),
  Quiz(
    2,
    "Which compilation mode is responsible for Dart's 'Hot Reload' feature?",
    [
      "JIT (Just-In-Time)",
      "AOT (Ahead-Of-Time)",
      "Transpilation",
      "Interpretation",
    ],
  ),
  Quiz(
    3,
    "What is the primary benefit of AOT compilation for production apps?",
    [
      "Fast startup and predictable performance",
      "Ability to change code while running",
      "Reduced development time",
      "Easier debugging",
    ],
  ),
  Quiz(4, "Which company created the Dart programming language?", [
    "Google",
    "Microsoft",
    "Oracle",
    "Apple",
  ]),
  Quiz(5, "Dart is a 'Sound' language. What does this refer to?", [
    "Type safety and static checking",
    "Audio processing capabilities",
    "The speed of the compiler",
    "Backward compatibility",
  ]),

  // --- Topic 2: Dart SDK & Runtime ---
  Quiz(6, "What is the core purpose of the Dart SDK?", [
    "To provide tools and libraries for Dart development",
    "To host Dart apps on the web",
    "To act as a physical server",
    "To design the UI for Flutter",
  ]),
  Quiz(7, "Where does Dart code run during development on a computer?", [
    "The Dart VM",
    "The Android Emulator",
    "A Web Browser only",
    "The CPU directly without a VM",
  ]),
  Quiz(8, "Which command-line tool is used to manage Dart dependencies?", [
    "pub",
    "npm",
    "pip",
    "gem",
  ]),
  Quiz(9, "What is 'Tree Shaking' in Dart?", [
    "Removing unused code during compilation",
    "Reorganizing file folders",
    "A method for sorting lists",
    "A debugging technique",
  ]),
  Quiz(
    10,
    "Which tool helps format Dart code to match official style guides?",
    ["dart format", "dart fix", "dart clean", "dart style"],
  ),

  // --- Topic 3: Setting up the IDE ---
  Quiz(11, "Which VS Code extension is required for Dart development?", [
    "Dart",
    "Flutter Helper",
    "Java Extension Pack",
    "C++ Tools",
  ]),
  Quiz(
    12,
    "How do you open the Command Palette in VS Code to create a project?",
    ["Ctrl + Shift + P", "Ctrl + S", "Alt + F4", "Ctrl + N"],
  ),
  Quiz(13, "Which file in a Dart project manages metadata and dependencies?", [
    "pubspec.yaml",
    "analysis_options.yaml",
    "main.dart",
    "index.html",
  ]),
  Quiz(
    14,
    "Which folder typically contains the source code for your Dart app?",
    ["lib", "bin", "test", "assets"],
  ),
  Quiz(15, "Where are project linting rules configured in Dart?", [
    "analysis_options.yaml",
    "pubspec.yaml",
    "config.dart",
    "settings.json",
  ]),

  // --- Topic 4: Creating First Console App ---
  Quiz(16, "Which command is used to create a new console application?", [
    "dart create -t console-full",
    "dart new app",
    "dart start console",
    "dart init",
  ]),
  Quiz(17, "In a console project, what is the 'bin' folder used for?", [
    "The main executable scripts",
    "Storing temporary files",
    "Holding unit tests",
    "Project images and icons",
  ]),
  Quiz(
    18,
    "Which file is the entry point for a standard console application?",
    ["bin/main.dart", "lib/main.dart", "test/test.dart", "pubspec.yaml"],
  ),
  Quiz(19, "How do you run a Dart file named 'app.dart' from the terminal?", [
    "dart run app.dart",
    "dart start app.dart",
    "dart execute app.dart",
    "dart go app.dart",
  ]),
  Quiz(
    20,
    "Which platform allows you to test Dart code online without an IDE?",
    ["DartPad", "CodePen", "JSFiddle", "DartCloud"],
  ),

  // --- Topic 5: main() & Basic Syntax ---
  Quiz(21, "What is the required name for the entry point function in Dart?", [
    "main",
    "start",
    "init",
    "run",
  ]),
  Quiz(22, "What is the return type of the main function?", [
    "void",
    "int",
    "String",
    "bool",
  ]),
  Quiz(23, "Every statement in Dart must end with which character?", [
    "; (Semicolon)",
    ": (Colon)",
    ". (Period)",
    ", (Comma)",
  ]),
  Quiz(24, "Which function is used to output text to the console?", [
    "print()",
    "log()",
    "echo()",
    "write()",
  ]),
  Quiz(25, "How are command-line arguments passed to the main function?", [
    "main(List<String> args)",
    "main(String args)",
    "main(args)",
    "main(dynamic args)",
  ]),
  Quiz(26, "Which keyword is used to define a constant at compile-time?", [
    "const",
    "final",
    "static",
    "var",
  ]),
  Quiz(27, "What is the difference between final and const?", [
    "const is compile-time, final is run-time",
    "final is compile-time, const is run-time",
    "There is no difference",
    "final can only be used inside classes",
  ]),
  Quiz(28, "Which keyword allows Dart to infer the type of a variable?", [
    "var",
    "dynamic",
    "auto",
    "let",
  ]),
  Quiz(
    29,
    "How do you declare a variable that can change its type at runtime?",
    ["dynamic", "var", "Object", "String"],
  ),
  Quiz(30, "What is 'Sound Null Safety' in Dart?", [
    "A feature that prevents variables from being null by default",
    "A way to encrypt null values",
    "A method for clearing memory",
    "A way to delete variables",
  ]),

  // --- Topic 6: Comments & Documentation ---
  Quiz(31, "What is the syntax for a single-line comment?", [
    "//",
    "/*",
    "#",
    "--",
  ]),
  Quiz(32, "What is the syntax for a multi-line comment?", [
    "/* ... */",
    "// ... //",
    "",
    "## ... ##",
  ]),
  Quiz(33, "Which syntax is used for Documentation comments in Dart?", [
    "///",
    "/**",
    "//! ",
    "//?",
  ]),
  Quiz(34, "Documentation comments (///) are used to generate what?", [
    "HTML documentation for API references",
    "Compiled machine code",
    "Unit tests",
    "README files",
  ]),
  Quiz(35, "Can documentation comments include Markdown?", [
    "Yes",
    "No",
    "Only bold text",
    "Only links",
  ]),

  // --- General Module 1 Knowledge ---
  Quiz(36, "Dart is an Object-Oriented language. What does this imply?", [
    "Everything is an object, including numbers",
    "Functions cannot exist outside classes",
    "It does not support inheritance",
    "It only works with physical hardware",
  ]),
  Quiz(37, "Which command updates your Dart SDK?", [
    "dart sdk upgrade",
    "dart update",
    "dart get",
    "dart version",
  ]),
  Quiz(38, "What does the 'dart analyze' command do?", [
    "Checks the code for errors and warnings",
    "Runs the application",
    "Deletes unused files",
    "Measures performance",
  ]),
  Quiz(39, "Which file contains the list of all packages your project uses?", [
    "pubspec.lock",
    "pubspec.yaml",
    "main.dart",
    "packages.json",
  ]),
  Quiz(40, "What is the file extension for Dart files?", [
    ".dart",
    ".dr",
    ".dartlang",
    ".dt",
  ]),
  Quiz(41, "What is a 'Dart Isolate'?", [
    "An independent worker with its own memory",
    "A private variable",
    "A disconnected server",
    "A single-file project",
  ]),
  Quiz(42, "How do you add a package to your project via terminal?", [
    "dart pub add <package_name>",
    "dart install <package_name>",
    "dart get <package_name>",
    "dart include <package_name>",
  ]),
  Quiz(43, "Which keyword is used to include another library in your file?", [
    "import",
    "require",
    "include",
    "use",
  ]),
  Quiz(44, "Dart can be compiled to which language for web use?", [
    "JavaScript",
    "Python",
    "PHP",
    "Ruby",
  ]),
  Quiz(45, "What is the 'pub.dev' website used for?", [
    "Discovering and sharing Dart/Flutter packages",
    "Hosting your Dart app code",
    "A community chat for developers",
    "Google's official Dart blog",
  ]),
  Quiz(46, "What is a 'Linter' in Dart?", [
    "A tool that identifies style issues and potential bugs",
    "A tool that compresses the app",
    "A special type of function",
    "A database for console apps",
  ]),
  Quiz(47, "Which command is used to clear the build cache?", [
    "dart clean",
    "dart delete",
    "dart refresh",
    "dart wipe",
  ]),
  Quiz(48, "What is the purpose of the 'test/' folder?", [
    "To store automated unit tests",
    "To store experimental code",
    "To store user data",
    "To store third-party libraries",
  ]),
  Quiz(49, "Does Dart support multi-threading via shared memory?", [
    "No, it uses Isolates with message passing",
    "Yes, via the Thread class",
    "Yes, via the main function",
    "No, Dart is purely synchronous",
  ]),
  Quiz(50, "Why is 'Hot Reload' faster than restarting the app?", [
    "It only updates the changed code in the VM",
    "It ignores the changes and runs old code",
    "It recompiles the entire app to machine code",
    "It uses a separate computer to compile",
  ]),
];
final List<Quiz> dartQuizM2 = [
  // --- Topic 7: Variable Declaration: Type vs Name ---
  Quiz(51, "In the declaration 'int age = 25;', which part is the Type?", [
    "int",
    "age",
    "=",
    "25",
  ]),
  Quiz(
    52,
    "What is the correct way to declare a String variable named 'city'?",
    [
      "String city = 'London';",
      "city String = 'London';",
      "var String city = 'London';",
      "String: city = 'London';",
    ],
  ),
  Quiz(53, "Which of the following is a valid variable name in Dart?", [
    "user_name",
    "1stUser",
    "user-name",
    "class",
  ]),
  Quiz(54, "Which naming convention is standard for Dart variables?", [
    "lowerCamelCase",
    "UpperCamelCase",
    "snake_case",
    "kebab-case",
  ]),
  Quiz(
    55,
    "Can you declare a variable without assigning a value immediately?",
    [
      "Yes, but you must handle nullability or use 'late'",
      "No, Dart requires immediate initialization",
      "Yes, only for integers",
      "Only if you use the 'dynamic' keyword",
    ],
  ),

  // --- Topic 8: Numbers: int and double ---
  Quiz(56, "Which type is used for whole numbers like 10, -5, or 0?", [
    "int",
    "double",
    "num",
    "Integer",
  ]),
  Quiz(57, "Which type is used for decimal numbers like 3.14 or 0.5?", [
    "double",
    "int",
    "Decimal",
    "float",
  ]),
  Quiz(58, "Both 'int' and 'double' are subtypes of which class?", [
    "num",
    "number",
    "Object",
    "dynamic",
  ]),
  Quiz(59, "What is the result of 'double x = 5;' in Dart?", [
    "It converts 5 to 5.0 automatically",
    "It throws an error because 5 is an int",
    "It requires an explicit cast like (double)5",
    "It creates a variable with a value of 0.5",
  ]),
  Quiz(60, "How do you find the absolute value of an integer 'x'?", [
    "x.abs()",
    "abs(x)",
    "x.absolute",
    "Math.abs(x)",
  ]),
  Quiz(61, "Which property checks if a number is even?", [
    "isEven",
    "even()",
    "isNotOdd",
    "checkEven",
  ]),
  Quiz(62, "How do you round a double '3.7' to the nearest integer?", [
    "3.7.round()",
    "round(3.7)",
    "3.7.toInt()",
    "3.7.floor()",
  ]),
  Quiz(
    63,
    "Which method returns the largest integer not greater than the number?",
    ["floor()", "ceil()", "truncate()", "round()"],
  ),
  Quiz(
    64,
    "Which method returns the smallest integer not less than the number?",
    ["ceil()", "floor()", "round()", "toInt()"],
  ),
  Quiz(65, "What happens if you divide an integer by zero (e.g., 10 / 0)?", [
    "It returns Infinity (double)",
    "It throws a DivisionByZero error",
    "It returns 0",
    "It returns null",
  ]),

  // --- Topic 9: Strings and Booleans ---
  Quiz(66, "Which type is used for true or false values?", [
    "bool",
    "boolean",
    "bit",
    "logic",
  ]),
  Quiz(67, "How do you perform String Interpolation in Dart?", [
    "Using the \$ symbol",
    "Using the + symbol",
    "Using the % symbol",
    "Using curly braces only {}",
  ]),
  Quiz(
    68,
    "How do you include an expression in a String, like 'Value: \${2 + 2}'?",
    [
      "Using \${expression}",
      "Using \$expression",
      "Using #expression",
      "Using {{expression}}",
    ],
  ),
  Quiz(69, "Which property returns the number of characters in a String?", [
    "length",
    "size",
    "count",
    "chars",
  ]),
  Quiz(70, "How do you check if a String 's' is empty?", [
    "s.isEmpty",
    "s.length == 0",
    "s.checkEmpty()",
    "s == ''",
  ]),
  Quiz(71, "Which method changes a String to all capital letters?", [
    "toUpperCase()",
    "capitalize()",
    "toUpper()",
    "upper()",
  ]),
  Quiz(72, "What is the result of 'Hello' + ' ' + 'World'?", [
    "'Hello World'",
    "Error: Cannot add strings",
    "'HelloWorld'",
    "null",
  ]),
  Quiz(73, "How do you create a multi-line string in Dart?", [
    "Using triple quotes (''' or \"\"\")",
    "Using /n at the end of each line",
    "Using the 'multi' keyword",
    "Using brackets [ ]",
  ]),
  Quiz(74, "Which method checks if a String contains a specific substring?", [
    "contains()",
    "includes()",
    "has()",
    "search()",
  ]),
  Quiz(
    75,
    "What is the default value of a boolean in Dart (without null safety)?",
    ["null", "false", "true", "0"],
  ),

  // --- Topic 10: Type Inference with 'var' ---
  Quiz(76, "What does 'var' do in Dart?", [
    "Automatically infers the type based on the initial value",
    "Makes a variable dynamic forever",
    "Creates a constant variable",
    "Prevents the variable from being reassigned",
  ]),
  Quiz(77, "If you write 'var x = 10;', can you later do 'x = \"Hello\";'?", [
    "No, the type is fixed as 'int' after inference",
    "Yes, 'var' is the same as 'dynamic'",
    "Yes, but only if you use a cast",
    "No, you can only change it to a double",
  ]),
  Quiz(78, "When is the type of a 'var' variable determined?", [
    "At compile-time (when assigned)",
    "At runtime (when assigned)",
    "It is never determined",
    "Only when the app crashes",
  ]),
  Quiz(79, "Is 'var name = \"John\";' the same as 'String name = \"John\";'?", [
    "Yes, in terms of resulting type and performance",
    "No, 'var' is slower",
    "No, 'var' uses more memory",
    "Yes, but only in local functions",
  ]),
  Quiz(80, "Can you use 'var' without an immediate assignment?", [
    "Yes, but the type will become 'dynamic'",
    "No, 'var' must be initialized",
    "Yes, but you must specify the type later",
    "No, it results in a compile-time error",
  ]),

  // --- Topic 11: The 'dynamic' type ---
  Quiz(81, "What is the primary characteristic of the 'dynamic' type?", [
    "It disables static type checking for that variable",
    "It makes the code run faster",
    "It prevents the variable from being null",
    "It can only store numbers",
  ]),
  Quiz(82, "When should you use 'dynamic'?", [
    "When the type is truly unknown or comes from a flexible JSON",
    "For every variable to save time",
    "Only when working with integers",
    "Never, it is deprecated",
  ]),
  Quiz(
    83,
    "What happens if you call a non-existent method on a 'dynamic' variable?",
    [
      "It throws a runtime error (NoSuchMethodError)",
      "It throws a compile-time error",
      "It returns null",
      "It does nothing",
    ],
  ),
  Quiz(84, "Is 'dynamic x = 10;' more type-safe than 'int x = 10;'?", [
    "No, 'int' is more type-safe",
    "Yes, 'dynamic' is safer",
    "They are equally safe",
    "It depends on the compiler settings",
  ]),
  Quiz(
    85,
    "Does 'dynamic' allow you to change the type of value stored later?",
    [
      "Yes, you can change from int to String, etc.",
      "No, the first type assigned is fixed",
      "Only between int and double",
      "Only if the variable is final",
    ],
  ),

  // --- Topic 12: Constants: final vs const ---
  Quiz(86, "Which keyword is used for a compile-time constant?", [
    "const",
    "final",
    "static",
    "fixed",
  ]),
  Quiz(
    87,
    "Which keyword is used for a variable that can only be set once (run-time constant)?",
    ["final", "const", "var", "immutable"],
  ),
  Quiz(
    88,
    "Can you set a 'const' variable to the result of 'DateTime.now()'?",
    [
      "No, because DateTime.now() is determined at runtime",
      "Yes, as long as the variable is global",
      "No, 'const' can only be used for numbers",
      "Yes, always",
    ],
  ),
  Quiz(
    89,
    "Can you set a 'final' variable to the result of 'DateTime.now()'?",
    [
      "Yes, because 'final' is initialized at runtime",
      "No, 'final' must be a literal value",
      "Yes, but only once per app restart",
      "No, only 'var' can do that",
    ],
  ),
  Quiz(90, "Is every 'const' variable implicitly 'final'?", [
    "Yes",
    "No",
    "Only if it is a String",
    "Only if declared inside a class",
  ]),
  Quiz(91, "Can you declare a 'const' inside a class without 'static'?", [
    "No, instance variables cannot be 'const'",
    "Yes, always",
    "Only if the class is also const",
    "Only for integers",
  ]),
  Quiz(92, "What is 'canonicalization' in the context of const?", [
    "Identical const objects point to the same memory location",
    "Changing a final variable to const",
    "Removing null variables",
    "Formatting code automatically",
  ]),
  Quiz(
    93,
    "Which uses less memory at runtime, a list created with 'const' or 'final'?",
    [
      "const, because it is created once at compile-time",
      "final, because it is lazy",
      "They are identical",
      "final, because it is dynamic",
    ],
  ),
  Quiz(
    94,
    "Can you change the contents of a 'final' List (e.g., adding an item)?",
    [
      "Yes, the reference is fixed but the object is mutable",
      "No, 'final' makes the whole object immutable",
      "Only if you use the 'var' keyword instead",
      "Only if the list contains strings",
    ],
  ),
  Quiz(
    95,
    "Can you change the contents of a 'const' List (e.g., adding an item)?",
    [
      "No, 'const' objects are deeply immutable at runtime",
      "Yes, always",
      "Only if the list is empty",
      "Yes, using the .add() method",
    ],
  ),

  // --- Topic 13: Type Conversion (Parsing & Casting) ---
  Quiz(96, "How do you convert a String '123' to an int?", [
    "int.parse('123')",
    "('123') as int",
    "int.convert('123')",
    "'123'.toInt()",
  ]),
  Quiz(97, "How do you convert an int 10 to a String?", [
    "10.toString()",
    "(String)10",
    "int.toString(10)",
    "String.from(10)",
  ]),
  Quiz(98, "What does 'int.tryParse('abc')' return?", [
    "null",
    "0",
    "It throws an Exception",
    "Error code -1",
  ]),
  Quiz(99, "How do you convert a double 10.5 to an int?", [
    "10.5.toInt()",
    "int.parse(10.5)",
    "10.5 as int",
    "10.5.roundTo(int)",
  ]),
  Quiz(100, "Which keyword is used for Type Casting in Dart?", [
    "as",
    "is",
    "in",
    "to",
  ]),
  Quiz(101, "What does the 'is' keyword do in Dart?", [
    "Checks if an object is of a specific type",
    "Converts an object to a new type",
    "Assigns a type to a variable",
    "Creates a new instance of a type",
  ]),
  Quiz(102, "How do you convert a String '3.14' to a double?", [
    "double.parse('3.14')",
    "'3.14'.toDouble()",
    "double.from('3.14')",
    "('3.14') as double",
  ]),
  Quiz(103, "What is the result of '10.toStringAsFixed(2)'?", [
    "'10.00'",
    "10.0",
    "'10'",
    "Error",
  ]),
  Quiz(
    104,
    "Which method helps avoid crashes when parsing a String that might not be a number?",
    ["tryParse()", "parse()", "checkParse()", "safeConvert()"],
  ),
  Quiz(105, "What happens if you use 'as' to cast a String to an int?", [
    "It throws a Type Error at runtime",
    "It converts the String to a number",
    "It returns null",
    "It works perfectly",
  ]),

  // --- Mix and Review Module 2 ---
  Quiz(106, "What is the result of '5 ~/ 2' (Integer division)?", [
    "2",
    "2.5",
    "3",
    "0",
  ]),
  Quiz(
    107,
    "Which operator is used to check if an object is NOT a certain type?",
    ["is!", "as!", "!is", "not"],
  ),
  Quiz(108, "What type would Dart infer for 'var a = {1, 2, 3};'?", [
    "Set<int>",
    "List<int>",
    "Map<int, int>",
    "dynamic",
  ]),
  Quiz(109, "Which escape character is used for a newline in a String?", [
    "\\n",
    "\\t",
    "\\\\",
    "\\r",
  ]),
  Quiz(110, "Which property of String returns the UTF-16 code units?", [
    "codeUnits",
    "runes",
    "bytes",
    "units",
  ]),
  Quiz(111, "How do you get a substring from index 0 to 3?", [
    "s.substring(0, 3)",
    "s.slice(0, 3)",
    "s.getRange(0, 3)",
    "s.sub(3)",
  ]),
  Quiz(112, "In 'double.infinity', what is the type?", [
    "double",
    "int",
    "String",
    "null",
  ]),
  Quiz(113, "Which method checks if a number is Not-a-Number (NaN)?", [
    "isNaN",
    "isInfinite",
    "isFinite",
    "checkNaN",
  ]),
  Quiz(114, "What is a 'raw string' in Dart?", [
    "A string where backslashes are not escape characters (prefixed with r)",
    "A string without any quotes",
    "A string containing only binary",
    "An uninitialized string",
  ]),
  Quiz(115, "How do you create a raw string?", [
    "r'text'",
    "raw'text'",
    "'text'.raw()",
    "@'text'",
  ]),
  Quiz(116, "What is the result of 'true.toString()'?", [
    "'true'",
    "1",
    "Error",
    "null",
  ]),
  Quiz(117, "Can you declare an 'int' and later assign it a 'double'?", [
    "No, 'int' cannot hold decimal values",
    "Yes, always",
    "Yes, if you use 'var'",
    "Only if the double is .0",
  ]),
  Quiz(118, "Which of these is NOT a built-in type in Dart?", [
    "Character",
    "String",
    "num",
    "Runes",
  ]),
  Quiz(119, "What is the type of the value 'null'?", [
    "Null",
    "Object",
    "dynamic",
    "void",
  ]),
  Quiz(120, "What is the result of '7 % 3' (Remainder)?", [
    "1",
    "2",
    "0",
    "2.33",
  ]),
  Quiz(121, "Which keyword makes a variable's value truly immutable?", [
    "const",
    "final",
    "var",
    "fixed",
  ]),
  Quiz(
    122,
    "Can 'final' variables be used in top-level code (outside classes)?",
    ["Yes", "No", "Only if they are constant", "Only for strings"],
  ),
  Quiz(123, "What is the result of '\"Dart\".length'?", ["4", "3", "5", "0"]),
  Quiz(124, "Is Dart a case-sensitive language regarding variable names?", [
    "Yes (name and Name are different)",
    "No",
    "Only for keywords",
    "Only in classes",
  ]),
  Quiz(
    125,
    "Which character is used to escape special characters in strings?",
    ["\\ (Backslash)", "/ (Slash)", "^ (Caret)", "~ (Tilde)"],
  ),
  Quiz(126, "How do you check if a double is finite?", [
    "isFinite",
    "isNotInfinite",
    "checkFinite()",
    "isValid",
  ]),
  Quiz(
    127,
    "Which method removes leading and trailing whitespace from a String?",
    ["trim()", "clear()", "strip()", "clean()"],
  ),
  Quiz(128, "What does 's.startsWith('A')' return?", [
    "A boolean value",
    "The first character",
    "A new String",
    "The index of A",
  ]),
  Quiz(129, "Which method replaces parts of a string with another string?", [
    "replaceAll()",
    "swap()",
    "change()",
    "update()",
  ]),
  Quiz(130, "What is the purpose of the 'num' type?", [
    "To accept both int and double values",
    "To count the number of variables",
    "To represent only positive numbers",
    "To store binary data",
  ]),
  Quiz(
    131,
    "What happens if you use 'const' on a list but add an item later?",
    [
      "It throws a runtime error",
      "It works normally",
      "The item is not added but no error occurs",
      "The list becomes final",
    ],
  ),
  Quiz(
    132,
    "Which operator is used to assign a value only if the variable is null?",
    ["??=", "&&=", "||=", "??"],
  ),
  Quiz(133, "What is the result of 'null ?? \"Default\"'?", [
    "'Default'",
    "null",
    "Error",
    "\"\"",
  ]),
  Quiz(134, "Can a 'final' variable be declared without a type?", [
    "Yes (e.g., final x = 10;)",
    "No, type is always required with final",
    "Only inside a class",
    "Only for strings",
  ]),
  Quiz(135, "Can a 'const' variable be declared without a type?", [
    "Yes (e.g., const x = 10;)",
    "No, type is always required with const",
    "Only for numbers",
    "Only in main()",
  ]),
  Quiz(136, "Which class represents Unicode scalar values of a String?", [
    "Runes",
    "UTF8",
    "Symbols",
    "Chars",
  ]),
  Quiz(137, "What is the symbol for a private variable in Dart?", [
    "_ (Underscore)",
    "# (Hashtag)",
    "\$ (Dollar)",
    "- (Dash)",
  ]),
  Quiz(138, "Where can private variables be accessed?", [
    "Only within the same library/file",
    "Only within the same class",
    "Anywhere in the project",
    "Only in the main function",
  ]),
  Quiz(139, "How do you convert a String to a List of characters?", [
    "s.split('')",
    "s.toList()",
    "List.from(s)",
    "s.chars()",
  ]),
  Quiz(140, "What is the result of '\"123\".contains(\"2\")'?", [
    "true",
    "false",
    "2",
    "null",
  ]),
  Quiz(141, "Can you reassign a value to a 'final' variable?", [
    "No",
    "Yes",
    "Only if it is null",
    "Only inside a loop",
  ]),
  Quiz(142, "Can you reassign a value to a 'const' variable?", [
    "No",
    "Yes",
    "Only if it is a number",
    "Only if you use 'var' as well",
  ]),
  Quiz(143, "Which numeric method returns the remainder of a division?", [
    "remainder()",
    "mod()",
    "div()",
    "rest()",
  ]),
  Quiz(144, "What is the type of '3.0'?", ["double", "int", "num", "fixed"]),
  Quiz(145, "Is '3.0' the same as '3' in Dart's type system?", [
    "No, one is double and one is int",
    "Yes, they are both numbers",
    "Only if you use the 'num' type",
    "Only in Dart version 1",
  ]),
  Quiz(146, "What is the result of 'int.parse(\"10\", radix: 16)'?", [
    "16",
    "10",
    "1016",
    "Error",
  ]),
  Quiz(
    147,
    "Which method removes trailing zeros from a double when converting to string?",
    ["toStringAsFixed()", "toString()", "trim()", "truncate()"],
  ),
  Quiz(148, "What does 's.padLeft(5, '0')' do to the string '1'?", [
    "'00001'",
    "'10000'",
    "'01'",
    "Error",
  ]),
  Quiz(149, "Which type is a unique identifier used in APIs and reflecting?", [
    "Symbol",
    "String",
    "Runes",
    "Enum",
  ]),
  Quiz(
    150,
    "If a variable 'x' is declared as 'num x = 1;', what happens if you do 'x = 1.5;'?",
    [
      "It works perfectly because 'num' accepts both types",
      "It throws an error",
      "It rounds 1.5 to 1",
      "It rounds 1.5 to 2",
    ],
  ),
];
final List<Quiz> dartQuizM3 = [
  // --- Topic 14: Arithmetic and Assignment Operators ---
  Quiz(
    151,
    "Which operator is used for integer division, returning only the integer part?",
    ["~/", "/", "%", "div"],
  ),
  Quiz(152, "What is the result of '10 % 3' in Dart?", ["1", "3", "3.33", "0"]),
  Quiz(
    153,
    "Which operator is used to add and assign a value at the same time?",
    ["+=", "++", "=+", "+"],
  ),
  Quiz(154, "What is the result of '5 / 2' in Dart?", ["2.5", "2", "3", "2.0"]),
  Quiz(155, "Which operator increments a value by 1?", [
    "++",
    "+1",
    "+=",
    "add",
  ]),
  Quiz(156, "In 'int x = 5; int y = x++;', what is the value of y?", [
    "5",
    "6",
    "4",
    "null",
  ]),
  Quiz(157, "In 'int x = 5; int y = ++x;', what is the value of y?", [
    "6",
    "5",
    "4",
    "7",
  ]),
  Quiz(
    158,
    "Which operator is used for Euclidean modulo (always positive remainder)?",
    ["remainder()", "%", "~/", "mod"],
  ),
  Quiz(159, "What is the shorthand for 'x = x * 2'?", [
    "x *= 2",
    "x =* 2",
    "x ** 2",
    "x * 2 = x",
  ]),
  Quiz(
    160,
    "Which operator assigns a value only if the variable is currently null?",
    ["??=", "&&=", "||=", "?="],
  ),
  Quiz(161, "What happens to the variable 'a' in 'a ~/= 2'?", [
    "It is divided by 2 and truncated to an integer",
    "It is divided by 2 and results in a double",
    "It is multiplied by 2",
    "It throws an error",
  ]),
  Quiz(162, "Which arithmetic operator has the highest precedence?", [
    "Multiplication (*)",
    "Addition (+)",
    "Subtraction (-)",
    "Assignment (=)",
  ]),
  Quiz(163, "What is the result of '10 / (2 + 3)'?", [
    "2.0",
    "8.0",
    "5.0",
    "4.0",
  ]),
  Quiz(164, "Which operator is used for unary bitwise complement?", [
    "~",
    "!",
    "^",
    "&",
  ]),
  Quiz(165, "Which operator performs a bitwise AND?", ["&", "&&", "|", "^"]),

  // --- Topic 15: Equality and Relational Operators ---
  Quiz(166, "Which operator is used to check if two values are equal?", [
    "==",
    "=",
    "===",
    "!=",
  ]),
  Quiz(
    167,
    "Which operator checks if the left value is greater than or equal to the right?",
    [">=", "=>", ">", "!!"],
  ),
  Quiz(168, "What is the return type of a relational operator expression?", [
    "bool",
    "int",
    "dynamic",
    "num",
  ]),
  Quiz(169, "Which operator checks for inequality?", ["!=", "<>", "==", "!"]),
  Quiz(170, "What is the result of '10 >= 10'?", [
    "true",
    "false",
    "null",
    "1",
  ]),
  Quiz(
    171,
    "Can you use '==' to compare two different String objects with the same content?",
    [
      "Yes, it compares content value",
      "No, it compares memory address",
      "Only if you use '==='",
      "Only in Dart 1.0",
    ],
  ),
  Quiz(172, "What is the result of '5 < 2'?", ["false", "true", "null", "0"]),
  Quiz(
    173,
    "Which operator is used to check if the left value is strictly less than the right?",
    ["<", "<=", ">", "!"],
  ),
  Quiz(174, "How do you check if 'x' is between 1 and 10 (inclusive)?", [
    "x >= 1 && x <= 10",
    "1 <= x <= 10",
    "x >= 1 || x <= 10",
    "x in (1..10)",
  ]),
  Quiz(175, "What is the result of '\"a\" < \"b\"' in Dart?", [
    "Compile-time Error (Relational ops not for Strings)",
    "true",
    "false",
    "null",
  ]),

  // --- Topic 16: Logical Operators (&&, ||, !) ---
  Quiz(176, "Which operator represents the logical AND?", [
    "&&",
    "&",
    "AND",
    "||",
  ]),
  Quiz(177, "Which operator represents the logical OR?", [
    "||",
    "|",
    "OR",
    "&&",
  ]),
  Quiz(178, "Which operator negates a boolean value (NOT)?", [
    "!",
    "not",
    "~",
    "!!",
  ]),
  Quiz(179, "In 'A && B', if A is false, what happens to B?", [
    "B is not evaluated (Short-circuiting)",
    "B is evaluated and returns false",
    "B is evaluated and returns true",
    "The app crashes",
  ]),
  Quiz(180, "In 'A || B', if A is true, what happens to B?", [
    "B is not evaluated (Short-circuiting)",
    "B is evaluated anyway",
    "B must also be true",
    "Error",
  ]),
  Quiz(181, "What is the result of '!(true && false)'?", [
    "true",
    "false",
    "null",
    "Error",
  ]),
  Quiz(182, "What is the result of 'false || (5 > 2)'?", [
    "true",
    "false",
    "5",
    "null",
  ]),
  Quiz(183, "Which logical operator has the highest precedence?", [
    "! (Logical NOT)",
    "&& (Logical AND)",
    "|| (Logical OR)",
    "All have equal precedence",
  ]),
  Quiz(184, "What is the result of 'true || false && false'?", [
    "true",
    "false",
    "null",
    "Error",
  ]),
  Quiz(185, "How do you write 'If x is NOT null' using logical operators?", [
    "x != null",
    "x == !null",
    "!x",
    "x not null",
  ]),

  // --- Topic 17: Type Test Operators (is, as) ---
  Quiz(
    186,
    "Which operator is used to check if an object is of a specific type?",
    ["is", "as", "==", "typeOf"],
  ),
  Quiz(187, "Which operator is used to cast an object to a specific type?", [
    "as",
    "is",
    "to",
    "cast",
  ]),
  Quiz(188, "Which operator checks if an object is NOT a certain type?", [
    "is!",
    "!is",
    "as!",
    "not",
  ]),
  Quiz(
    189,
    "What happens if you use 'as' to cast a variable to the wrong type?",
    [
      "A runtime error is thrown",
      "It returns null",
      "It converts the value automatically",
      "The code does not compile",
    ],
  ),
  Quiz(190, "What is 'Smart Casting' in Dart?", [
    "If 'is' check passes, Dart treats the variable as that type automatically",
    "Automatically converting String to int",
    "Using 'var' for everything",
    "A feature in Android Studio only",
  ]),
  Quiz(191, "What is the result of '10 is int'?", [
    "true",
    "false",
    "null",
    "1",
  ]),
  Quiz(192, "What is the result of '\"Hello\" is! int'?", [
    "true",
    "false",
    "Error",
    "null",
  ]),
  Quiz(193, "In '(emp as Person).name', what is 'as' doing?", [
    "Telling the compiler to treat 'emp' as a 'Person'",
    "Checking if 'emp' is a 'Person'",
    "Creating a new 'Person' object",
    "Renaming the variable",
  ]),
  Quiz(194, "Which operator is safer to use before casting with 'as'?", [
    "is",
    "==",
    "??",
    "?",
  ]),
  Quiz(195, "Can 'is' be used with null values?", [
    "Yes, 'null is Null' returns true",
    "No, it results in an error",
    "Only for String types",
    "Only in non-null safe code",
  ]),

  // --- Topic 18: String Interpolation & Multi-line Strings ---
  Quiz(196, "Which symbol is used for basic String interpolation?", [
    "\$",
    "&",
    "%",
    "@",
  ]),
  Quiz(
    197,
    "How do you interpolate an expression (like addition) into a String?",
    ["\${expression}", "\$expression", "#{expression}", "{expression}"],
  ),
  Quiz(198, "Which character is used to create a multi-line string in Dart?", [
    "Triple quotes (''' or \"\"\")",
    "Double quotes with \\n",
    "Single quotes with /m",
    "Brackets [ ]",
  ]),
  Quiz(199, "What is the output of 'print(\"Value: \${1+1}\")'?", [
    "Value: 2",
    "Value: 1+1",
    "Value: \${1+1}",
    "Error",
  ]),
  Quiz(
    200,
    "How do you create a 'Raw String' where escape characters are ignored?",
    [
      "Prefix with r (e.g., r'\\n')",
      "Prefix with @ (e.g., @'\\n')",
      "Use double backslashes",
      "Prefix with raw",
    ],
  ),
  Quiz(201, "What is the result of 'print(r\"Hello\\nWorld\")'?", [
    "Hello\\nWorld (one line)",
    "Hello (newline) World",
    "Error",
    "HelloWorld",
  ]),
  Quiz(202, "Can you use both single and double quotes for Strings in Dart?", [
    "Yes, both are valid",
    "No, only double quotes",
    "No, only single quotes",
    "Only for multi-line strings",
  ]),
  Quiz(203, "What happens if you use '\$name' if name is a variable?", [
    "It inserts the value of name into the string",
    "It prints the text '\$name'",
    "It throws a compile error",
    "It deletes the variable",
  ]),
  Quiz(204, "How do you escape the '\$' symbol in a string?", [
    "\\\$",
    "\$\$",
    "/\$",
    "!\$",
  ]),
  Quiz(
    205,
    "Adjacent string literals (e.g., 'Part1' 'Part2') result in what?",
    [
      "One concatenated string 'Part1Part2'",
      "A list of two strings",
      "A compile-time error",
      "A space-separated string",
    ],
  ),

  // --- Topic 19: Operator Precedence and Expressions ---
  Quiz(206, "Which operator has the highest precedence overall?", [
    "Postfix operators (e.g., expr++, expr--)",
    "Multiplicative (*, /, ~/)",
    "Logical OR (||)",
    "Assignment (=)",
  ]),
  Quiz(207, "In '2 + 3 * 4', what is the result?", ["14", "20", "24", "9"]),
  Quiz(208, "How can you override operator precedence?", [
    "Using parentheses ()",
    "Using square brackets []",
    "Using curly braces {}",
    "Using the 'await' keyword",
  ]),
  Quiz(209, "Which operator is evaluated LAST in an expression?", [
    "Assignment (=, +=, etc.)",
    "Logical AND (&&)",
    "Relational (>=, <)",
    "Additive (+, -)",
  ]),
  Quiz(210, "What is the result of '10 > 5 && 3 < 2'?", [
    "false",
    "true",
    "null",
    "Error",
  ]),
  Quiz(211, "Which of these is a ternary operator in Dart?", [
    "condition ? expr1 : expr2",
    "expr1 ?? expr2",
    "expr1 || expr2",
    "if (cond) expr1",
  ]),
  Quiz(212, "The expression 'a ?? b' returns what if 'a' is NOT null?", [
    "a",
    "b",
    "null",
    "true",
  ]),
  Quiz(213, "What is the 'Cascade notation' operator?", [
    "..",
    "...",
    "??",
    "::",
  ]),
  Quiz(214, "What does the cascade operator (..) allow you to do?", [
    "Perform multiple operations on the same object",
    "Concatenate strings",
    "Access private variables",
    "Check for null values",
  ]),
  Quiz(215, "What is the 'Null-shorting cascade' operator?", [
    "?..",
    "..?",
    "?.?",
    "...",
  ]),

  // --- Mix and Advanced Review ---
  Quiz(216, "What is the result of '5 >> 1' (Bitwise right shift)?", [
    "2",
    "10",
    "5",
    "1",
  ]),
  Quiz(217, "What is the result of '1 << 2' (Bitwise left shift)?", [
    "4",
    "2",
    "1",
    "8",
  ]),
  Quiz(218, "Which operator is used for bitwise XOR?", ["^", "&", "|", "~"]),
  Quiz(219, "What does '10 ~/ 3' return?", ["3", "3.33", "4", "1"]),
  Quiz(220, "What is the result of 'true ^ false' (Bitwise XOR on booleans)?", [
    "true",
    "false",
    "Error",
    "null",
  ]),
  Quiz(221, "Which operator is used to spread a collection into another?", [
    "...",
    "..",
    "??",
    "||",
  ]),
  Quiz(222, "What is the 'Null-aware spread' operator?", [
    "...?",
    "?...",
    "?.?",
    "..?",
  ]),
  Quiz(223, "What is the result of 'null ?? null ?? 5'?", [
    "5",
    "null",
    "Error",
    "0",
  ]),
  Quiz(224, "What is the value of 'x' if: 'int x = 10; x >>= 1;'?", [
    "5",
    "20",
    "10",
    "2",
  ]),
  Quiz(
    225,
    "Which relational operator checks if a value is 'not greater than'?",
    ["<=", ">=", "!", "<>"],
  ),
  Quiz(226, "How many operands does a unary operator take?", [
    "1",
    "2",
    "3",
    "0",
  ]),
  Quiz(227, "How many operands does a binary operator take?", [
    "2",
    "1",
    "3",
    "4",
  ]),
  Quiz(228, "What is the result of '(10 > 5) ? \"Yes\" : \"No\"'?", [
    "\"Yes\"",
    "\"No\"",
    "true",
    "Error",
  ]),
  Quiz(
    229,
    "Which operator allows access to a property ONLY if the object is not null?",
    ["?.", ".", "??", "!!"],
  ),
  Quiz(230, "What is the result of 'null?.length'?", [
    "null",
    "0",
    "Error",
    "undefined",
  ]),
  Quiz(
    231,
    "Which operator is used to assert that an expression is non-null?",
    ["!", "?", "!!", "as"],
  ),
  Quiz(232, "What happens if 'x!' is used but x is null at runtime?", [
    "A runtime exception is thrown",
    "It returns null",
    "It returns a default value",
    "The code does not compile",
  ]),
  Quiz(233, "In Dart, is '1 == \"1\"' true?", [
    "No, they are different types",
    "Yes, Dart does auto-conversion",
    "Only if you use dynamic",
    "Only in the web version",
  ]),
  Quiz(234, "What is the result of 'identical(1, 1)'?", [
    "true",
    "false",
    "Error",
    "null",
  ]),
  Quiz(235, "What does 'identical(obj1, obj2)' check?", [
    "If both variables point to the same instance in memory",
    "If both variables have the same value",
    "If both variables have the same type",
    "If both variables are strings",
  ]),
  Quiz(236, "Which operator is used to call a function?", [
    "()",
    "[]",
    "{}",
    "->",
  ]),
  Quiz(237, "Which operator is used to access a list element by index?", [
    "[]",
    "()",
    "{}",
    "<>",
  ]),
  Quiz(238, "What is the result of '5 & 3' (Bitwise AND)?", [
    "1",
    "7",
    "5",
    "3",
  ]),
  Quiz(239, "What is the result of '5 | 3' (Bitwise OR)?", [
    "7",
    "1",
    "8",
    "5",
  ]),
  Quiz(240, "What is the result of '5 ^ 3' (Bitwise XOR)?", [
    "6",
    "8",
    "2",
    "1",
  ]),
  Quiz(241, "What is an 'Expression' in Dart?", [
    "Something that evaluates to a value",
    "Any line of code ending in a semicolon",
    "A comment explaining logic",
    "A folder in the project",
  ]),
  Quiz(242, "What is a 'Statement' in Dart?", [
    "A complete unit of execution (e.g., a loop or variable declaration)",
    "A single number",
    "The name of a variable",
    "An error message",
  ]),
  Quiz(243, "Which operator has the lowest precedence?", [
    "Assignment operators",
    "Relational operators",
    "Multiplicative operators",
    "Logical AND",
  ]),
  Quiz(244, "What is the result of '10 + 5 * 2'?", ["20", "30", "25", "15"]),
  Quiz(245, "What is the result of '(10 + 5) * 2'?", ["30", "20", "25", "15"]),
  Quiz(246, "How do you check if 'x' is an integer?", [
    "x is int",
    "x.type == int",
    "is(x, int)",
    "typeOf(x) == 'int'",
  ]),
  Quiz(247, "Which operator is used to perform a null-aware index access?", [
    "?[ ]",
    "?. [ ]",
    "?? [ ]",
    "![ ]",
  ]),
  Quiz(248, "What is the result of '5 % -2'?", ["1", "-1", "2", "0"]),
  Quiz(249, "What is the result of '-5 % 2'?", ["1", "-1", "0", "-2"]),
  Quiz(
    250,
    "If 'var list = [1, 2]; var list2 = [...list, 3];', what is list2?",
    ["[1, 2, 3]", "[[1, 2], 3]", "[3]", "Error"],
  ),
];
final List<Quiz> dartQuizM4 = [
  // --- Topic 20: The If-Else Statement ---
  Quiz(
    251,
    "Which statement is used to execute a block of code only if a condition is true?",
    ["if", "switch", "while", "for"],
  ),
  Quiz(
    252,
    "In an 'if' statement, the condition must evaluate to which type?",
    ["bool", "int", "dynamic", "String"],
  ),
  Quiz(
    253,
    "What happens if the 'if' condition is false and there is no 'else' block?",
    [
      "The code block is skipped and execution continues",
      "The program throws an error",
      "The program stops immediately",
      "The 'if' block executes anyway",
    ],
  ),
  Quiz(254, "How do you check for multiple exclusive conditions in a row?", [
    "if - else if - else",
    "if - if - if",
    "switch - else",
    "if - or if - else",
  ]),
  Quiz(
    255,
    "What is the output of 'if (5 > 2) { print('A'); } else { print('B'); }'?",
    ["A", "B", "AB", "Nothing"],
  ),

  // --- Topic 21: Conditional Expressions (Ternary ? :) ---
  Quiz(256, "Which operator is known as the 'ternary operator'?", [
    "condition ? expr1 : expr2",
    "??",
    "==",
    "&&",
  ]),
  Quiz(257, "What is the correct syntax for the ternary operator?", [
    "condition ? result_if_true : result_if_false",
    "condition : result_if_true ? result_if_false",
    "condition ? result_if_false : result_if_true",
    "if (condition) ? true : false",
  ]),
  Quiz(258, "What is the result of 'var x = (10 > 5) ? 1 : 0;'?", [
    "1",
    "0",
    "true",
    "false",
  ]),
  Quiz(259, "Can ternary operators be nested inside other ternary operators?", [
    "Yes, but it can make code harder to read",
    "No, it is a syntax error",
    "Only for integer results",
    "Only inside the main function",
  ]),
  Quiz(260, "The ternary operator is a shorthand for which structure?", [
    "if-else",
    "switch",
    "for-loop",
    "try-catch",
  ]),

  // --- Topic 22: Switch Statements & Patterns (Dart 3.0) ---
  Quiz(261, "As of Dart 3.0, what can switch statements now return directly?", [
    "A value (Switch Expression)",
    "A boolean only",
    "Nothing (void only)",
    "A new class",
  ]),
  Quiz(
    262,
    "Which keyword is used in a switch statement to handle cases that don't match any others?",
    ["default", "else", "otherwise", "case _"],
  ),
  Quiz(
    263,
    "In Dart 3.0, what symbol is used in a switch expression to represent the default case?",
    ["_", "default", "*", "?"],
  ),
  Quiz(
    264,
    "Do switch statements in Dart 3.0 require a 'break' for every case?",
    [
      "No, they no longer 'fall through' by default",
      "Yes, it is strictly required",
      "Only if the case is empty",
      "Only for integer cases",
    ],
  ),
  Quiz(265, "What is a 'Guard Clause' in a Dart 3 switch statement?", [
    "Using the 'when' keyword to add an extra condition to a case",
    "Using a try-catch inside a switch",
    "A switch that never ends",
    "The default case",
  ]),
  Quiz(
    266,
    "Which operator is used in Switch Expressions to map a pattern to a result?",
    ["=>", "->", ":", "="],
  ),
  Quiz(267, "Can you switch on types in Dart 3.0 (e.g., case int x)?", [
    "Yes, this is called pattern matching",
    "No, only on values like 1 or 'A'",
    "Only if the variable is dynamic",
    "Only in the web version of Dart",
  ]),

  // --- Topic 23: Standard For Loops ---
  Quiz(268, "What are the three parts of a standard 'for' loop header?", [
    "Initialization, Condition, Increment/Decrement",
    "Start, Middle, End",
    "Variable, List, Body",
    "If, Then, Else",
  ]),
  Quiz(
    269,
    "In 'for (int i = 0; i < 5; i++)', how many times does the loop run?",
    ["5", "4", "6", "0"],
  ),
  Quiz(
    270,
    "What happens if the condition in a 'for' loop is false from the start?",
    [
      "The loop body never executes",
      "The loop runs once",
      "The program crashes",
      "The increment happens once",
    ],
  ),
  Quiz(
    271,
    "Can you declare multiple variables in the initialization part of a for loop?",
    [
      "Yes, separated by commas (e.g., i=0, j=10)",
      "No, only one variable",
      "Only if they are the same value",
      "Only in Dart 1.0",
    ],
  ),
  Quiz(272, "Is the increment part of a for loop required?", [
    "No, but you must modify the variable inside the body to avoid infinite loops",
    "Yes, it is a syntax error to leave it out",
    "Only if the condition uses i",
    "No, Dart increments i automatically",
  ]),

  // --- Topic 24: While and Do-While Loops ---
  Quiz(273, "Which loop checks the condition BEFORE executing the body?", [
    "while",
    "do-while",
    "for-in",
    "forEach",
  ]),
  Quiz(
    274,
    "Which loop checks the condition AFTER executing the body at least once?",
    ["do-while", "while", "standard for", "if-else"],
  ),
  Quiz(275, "What is a common risk when using a 'while' loop?", [
    "Creating an infinite loop if the condition never becomes false",
    "The loop running too fast",
    "The variable becoming null",
    "Memory leaks from the SDK",
  ]),
  Quiz(276, "In a 'while(true)' loop, how do you stop the execution?", [
    "Use the 'break' keyword",
    "The loop stops automatically after 100 turns",
    "Use the 'stop' keyword",
    "It is impossible to stop",
  ]),
  Quiz(277, "When is a 'do-while' loop preferred over a 'while' loop?", [
    "When the code must run at least once regardless of the condition",
    "When the condition is always true",
    "When using strings instead of numbers",
    "When the performance is critical",
  ]),

  // --- Topic 25: For-in and forEach Basics ---
  Quiz(
    278,
    "Which loop is specifically designed to iterate over elements in a collection (like a List)?",
    ["for-in", "while", "do-while", "switch"],
  ),
  Quiz(
    279,
    "What is the syntax for a 'for-in' loop over a list named 'numbers'?",
    [
      "for (var n in numbers) { ... }",
      "for (numbers as n) { ... }",
      "for (var i; i < numbers) { ... }",
      "foreach (n in numbers) { ... }",
    ],
  ),
  Quiz(280, "The 'forEach' method is called on which type of objects?", [
    "Iterables (List, Set, etc.)",
    "Integers",
    "Booleans",
    "Strings only",
  ]),
  Quiz(281, "What does 'forEach' take as an argument?", [
    "An anonymous function (callback)",
    "A boolean condition",
    "An integer index",
    "A string label",
  ]),
  Quiz(282, "Can you use 'break' or 'continue' inside a 'forEach' loop?", [
    "No, you should use a standard for-in loop if you need those",
    "Yes, they work the same way",
    "Only 'break' works",
    "Only 'continue' works",
  ]),

  // --- Topic 26: Break and Continue ---
  Quiz(283, "Which keyword is used to exit a loop immediately?", [
    "break",
    "continue",
    "exit",
    "return",
  ]),
  Quiz(
    284,
    "Which keyword is used to skip the rest of the current iteration and move to the next one?",
    ["continue", "break", "skip", "next"],
  ),
  Quiz(285, "In nested loops, what does a 'break' statement exit?", [
    "Only the innermost loop",
    "All active loops",
    "The entire main function",
    "Only the outer loop",
  ]),
  Quiz(
    286,
    "How do you break out of an outer loop from an inner loop in Dart?",
    [
      "Using Labels (e.g., outerLoop: for...)",
      "Using 'break all'",
      "Using 'break 2'",
      "It is not possible",
    ],
  ),
  Quiz(
    287,
    "What is the output of 'for(int i=0; i<3; i++) { if(i==1) continue; print(i); }'?",
    ["0, 2", "0, 1, 2", "0", "1, 2"],
  ),

  // --- Logic & Patterns (50-100 Mix) ---
  Quiz(288, "What is 'Logical OR' in a Dart 3 case pattern?", [
    "Using the '|' symbol (e.g., case 1 | 2)",
    "Using the '||' keyword",
    "Using a comma",
    "Switching twice",
  ]),
  Quiz(
    289,
    "What happens if a switch expression is not exhaustive (doesn't cover all cases)?",
    [
      "The compiler throws an error",
      "It returns null",
      "The program crashes at runtime",
      "It skips the switch",
    ],
  ),
  Quiz(
    290,
    "Which control flow is best for checking if a variable is within a range in Dart 3?",
    [
      "switch (x) { case >= 1 && <= 10 => ... }",
      "while (x in range)",
      "forEach range",
      "if (x == range)",
    ],
  ),

  Quiz(291, "What is an 'Infinite Loop'?", [
    "A loop whose condition never evaluates to false",
    "A loop that contains another loop",
    "A loop that runs for exactly 1 hour",
    "A loop that uses the 'dynamic' keyword",
  ]),
  Quiz(
    292,
    "What is the output of 'int i=5; do { i++; } while (i<5); print(i);'?",
    ["6", "5", "0", "Infinite loop"],
  ),
  Quiz(
    293,
    "Which loop is most efficient for iterating when you don't know the exact number of steps?",
    ["while", "standard for", "for-in", "forEach"],
  ),
  Quiz(294, "In 'for (var i = 0; i < 10; i++)', what is 'i++'?", [
    "The update expression",
    "The initialization",
    "The guard clause",
    "The condition",
  ]),
  Quiz(295, "Can you use a String in a switch statement case?", [
    "Yes",
    "No",
    "Only if it is one character",
    "Only if it is converted to int",
  ]),
  Quiz(
    296,
    "What is 'Fall-through' in older programming languages' switch statements?",
    [
      "Executing the next case if 'break' is missing",
      "The app crashing on an error",
      "A loop that runs backwards",
      "The default case executing first",
    ],
  ),
  Quiz(
    297,
    "How do you achieve 'Fall-through' in Dart if a case body is NOT empty?",
    [
      "It is not allowed; you must use 'continue' with a label",
      "Just omit the break",
      "Use the 'fall' keyword",
      "Use an empty case",
    ],
  ),
  Quiz(298, "What is the result of 'false ? 1 : 2'?", [
    "2",
    "1",
    "false",
    "Error",
  ]),
  Quiz(
    299,
    "Which statement is used to return a value from a function and stop execution?",
    ["return", "break", "stop", "yield"],
  ),
  Quiz(
    300,
    "In 'if (a) { ... } else if (b) { ... }', if both a and b are true, which runs?",
    [
      "Only the 'if (a)' block",
      "Only the 'else if (b)' block",
      "Both blocks",
      "Neither block",
    ],
  ),

  Quiz(
    301,
    "What is the result of 'var x = [1, 2]; for(var i in x) { print(i); }'?",
    ["1 then 2", "1, 2", "x", "Error"],
  ),
  Quiz(302, "What does the 'continue' keyword do in a 'do-while' loop?", [
    "Jumps to the condition check at the bottom",
    "Exits the loop",
    "Restarts the entire loop from i=0",
    "Skips the condition check",
  ]),
  Quiz(303, "Can an 'if' statement exist without an 'else'?", [
    "Yes",
    "No",
    "Only inside a function",
    "Only if it's on one line",
  ]),
  Quiz(
    304,
    "Which loop is best when you need the index of the current element?",
    [
      "Standard for loop (for int i=0...)",
      "for-in loop",
      "forEach loop",
      "while loop",
    ],
  ),
  Quiz(305, "What is 'Exhaustiveness checking' in Dart 3 switch?", [
    "Ensuring every possible value of a type is handled",
    "Checking how long the switch takes to run",
    "Making sure the break keyword is present",
    "Testing if the variables are null",
  ]),
  Quiz(306, "Can you use a 'double' in a switch case in Dart?", [
    "Yes",
    "No",
    "Only in Dart 1.0",
    "Only if it's rounded",
  ]),
  Quiz(307, "What symbol is used for an 'object pattern' in a switch?", [
    "Class name and curly braces { }",
    "Class name and parentheses ( )",
    "Square brackets [ ]",
    "Angle brackets < >",
  ]),
  Quiz(
    308,
    "What is the output of 'int x=1; switch(x){case 1: print('one');}'?",
    ["one", "1", "Error", "Nothing"],
  ),
  Quiz(
    309,
    "Which operator is used to 'destructure' a list in a switch case?",
    [
      "Square brackets [ ]",
      "Parentheses ( )",
      "Curly braces { }",
      "The ... operator",
    ],
  ),
  Quiz(
    310,
    "In a for-in loop 'for (var x in list)', what is the type of 'x'?",
    [
      "The type of the elements inside the list",
      "Always dynamic",
      "Always int",
      "List",
    ],
  ),

  Quiz(311, "What happens if you use 'break' outside of a loop or switch?", [
    "Compile-time error",
    "Nothing happens",
    "The app crashes at runtime",
    "The function exits",
  ]),
  Quiz(312, "Is 'if (x = 5)' valid in Dart if x is an int?", [
    "No, '=' is assignment, you need '==' for comparison",
    "Yes, it sets x to 5 and returns true",
    "Yes, but only in local variables",
    "Only if x is dynamic",
  ]),
  Quiz(313, "What is the 'Condition' in 'while (count < 10)'?", [
    "count < 10",
    "while",
    "count",
    "10",
  ]),
  Quiz(
    314,
    "What is the result of 'var res = switch(5) { 5 => 'five', _ => 'other' };'?",
    ["'five'", "5", "other", "Error"],
  ),
  Quiz(
    315,
    "In a for loop, when is the update expression (e.g., i++) executed?",
    [
      "At the end of every iteration",
      "At the start of every iteration",
      "Only once at the very end",
      "Only if the condition is true",
    ],
  ),
  Quiz(
    316,
    "Which loop is functionally identical to 'for (int i=0; i<10; i++)'?",
    [
      "A while loop with external counter and manual increment",
      "A do-while loop",
      "A switch statement",
      "An if-else chain",
    ],
  ),
  Quiz(317, "What does 'break' do in a nested switch statement?", [
    "Exits only the inner switch",
    "Exits all switches",
    "Exits the containing loop",
    "Stops the program",
  ]),
  Quiz(
    318,
    "How do you check if a variable is NOT null using an if statement?",
    [
      "if (variable != null)",
      "if (variable ! null)",
      "if (variable is !Null)",
      "if (variable not null)",
    ],
  ),
  Quiz(319, "What is the output of 'for(var i=0; i<0; i++) { print(i); }'?", [
    "Nothing",
    "0",
    "Error",
    "Infinite loop",
  ]),
  Quiz(320, "Which control flow is best for a menu with 10 fixed options?", [
    "switch",
    "if-else",
    "while",
    "for",
  ]),
  Quiz(321, "What is 'Destructuring' in a switch statement?", [
    "Extracting values from an object or list into variables within a case",
    "Deleting an object after the switch",
    "Formatting the code",
    "Converting a switch to an if",
  ]),
  Quiz(322, "What is the result of '5 > 3 ? (2 > 1 ? 'A' : 'B') : 'C''?", [
    "A",
    "B",
    "C",
    "Error",
  ]),
  Quiz(
    323,
    "Can you use a 'bool' variable as a condition directly (e.g., if (isReady))?",
    [
      "Yes, because it is already a boolean",
      "No, you must use if (isReady == true)",
      "Only in Dart 1.0",
      "Only inside classes",
    ],
  ),
  Quiz(324, "What is the 'Entry-controlled' loop?", [
    "while and for",
    "do-while",
    "if-else",
    "switch",
  ]),
  Quiz(325, "What is the 'Exit-controlled' loop?", [
    "do-while",
    "while",
    "for",
    "forEach",
  ]),
  Quiz(326, "How do you define a label for a loop?", [
    "labelName: loop (e.g., myLoop: for...)",
    "label(name)",
    "@labelName",
    "#labelName",
  ]),
  Quiz(327, "In 'switch(x) { case 1: ... }', what is '1'?", [
    "The constant pattern",
    "The variable",
    "The jump target",
    "The condition",
  ]),
  Quiz(328, "What is the output of 'int i=0; while(i<3) { i++; } print(i);'?", [
    "3",
    "2",
    "0",
    "4",
  ]),
  Quiz(
    329,
    "Can a switch case have multiple values in Dart (e.g., case 1, 2:)?",
    [
      "Yes, using a comma or the logical OR pattern",
      "No, only one value per case",
      "Only if you use strings",
      "Only in the web version",
    ],
  ),
  Quiz(330, "What is the purpose of 'yield' in a loop?", [
    "To produce a value for a Stream or Iterable",
    "To stop the loop",
    "To skip an iteration",
    "To wait for a second",
  ]),
  Quiz(
    331,
    "Which collection method is a more 'functional' alternative to for-in?",
    ["map()", "add()", "sort()", "clear()"],
  ),
  Quiz(332, "In a switch expression, what follows the '=>' symbol?", [
    "The value to be returned",
    "A block of code { }",
    "Another switch",
    "A break statement",
  ]),
  Quiz(333, "Can you use 'continue' inside a switch statement in Dart?", [
    "Only if you are continuing to a label on a switch case",
    "Yes, it works like a loop",
    "No, it is impossible",
    "Yes, it skips to the default case",
  ]),
  Quiz(
    334,
    "What is the output of 'for(int i=0; i<5; i++) { if(i==2) break; } print(i);'?",
    ["Error (i is out of scope outside the loop)", "2", "5", "0"],
  ),
  Quiz(335, "How do you check if a list is NOT empty using 'if'?", [
    "if (myList.isNotEmpty)",
    "if (myList.length > 0)",
    "Both are correct",
    "Neither is correct",
  ]),
  Quiz(336, "What is a 'Logical AND' pattern in a switch case?", [
    "Using the '&&' operator (e.g., case >=1 && <=10)",
    "Using the 'and' keyword",
    "Using nested switches",
    "Switching on two variables",
  ]),
  Quiz(337, "In 'for (var x in {1, 2, 3})', what is being iterated?", [
    "A Set",
    "A List",
    "A Map",
    "A String",
  ]),
  Quiz(338, "Which loop is guaranteed to execute its body at least once?", [
    "do-while",
    "while",
    "for",
    "for-in",
  ]),
  Quiz(
    339,
    "What happens if you use 'continue' in the last iteration of a loop?",
    [
      "The loop ends normally",
      "The loop restarts",
      "The program crashes",
      "It waits for more data",
    ],
  ),
  Quiz(
    340,
    "What is the result of '1 > 2 ? \"A\" : (3 > 2 ? \"B\" : \"C\")'?",
    ["B", "A", "C", "Error"],
  ),
  Quiz(341, "Can you declare a 'final' variable inside a loop body?", [
    "Yes, it is recreated in every iteration",
    "No, it can only be set once",
    "Only in for loops",
    "Only in while loops",
  ]),
  Quiz(342, "What is the 'Default Case' in a switch?", [
    "The code that runs if no other case matches",
    "The first case in the list",
    "The case that runs if an error occurs",
    "The case that contains the break",
  ]),
  Quiz(343, "Which keyword is used to start a switch expression?", [
    "switch (variable) { ... }",
    "case (variable) => ...",
    "if switch (variable) ...",
    "match (variable) ...",
  ]),
  Quiz(344, "Can you use 'break' inside an 'if' statement?", [
    "Only if that 'if' is inside a loop or switch",
    "Yes, always",
    "No, never",
    "Only to exit the function",
  ]),
  Quiz(
    345,
    "What is the output of 'int x=10; while(x>0) { x-=3; } print(x);'?",
    ["-2", "1", "0", "7"],
  ),
  Quiz(
    346,
    "Which loop structure is safest for iterating over a Map's keys and values?",
    [
      "myMap.forEach((key, value) => ...)",
      "for (var i in myMap)",
      "while (myMap.next)",
      "do-while (myMap)",
    ],
  ),
  Quiz(347, "What is a 'Relational Pattern' in Dart 3 switch?", [
    "Using <, >, <=, or >= in a case (e.g., case > 10)",
    "Comparing two switches",
    "Using '==' in a switch",
    "Linking two cases with an arrow",
  ]),
  Quiz(348, "In 'for ( ; ; )', what kind of loop is created?", [
    "An infinite loop",
    "A loop that runs once",
    "A syntax error",
    "A loop that never runs",
  ]),
  Quiz(
    349,
    "Which control flow structure is known as a 'Selection' structure?",
    ["if-else and switch", "for and while", "break and continue", "try-catch"],
  ),
  Quiz(
    350,
    "What is the result of 'var x = 5; if (x > 0) { x = 10; } print(x);'?",
    ["10", "5", "0", "Error"],
  ),
];
final List<Quiz> dartQuizM5 = [
  // --- Topic 27: Defining and Calling Functions ---
  Quiz(351, "What is the basic syntax to define a function in Dart?", [
    "returnType functionName(parameters) { body }",
    "functionName(parameters) -> returnType { body }",
    "def functionName(parameters) { body }",
    "function returnType functionName() { body }",
  ]),
  Quiz(352, "How do you 'call' or execute a function named 'greet'?", [
    "greet();",
    "call greet;",
    "greet.execute();",
    "run greet();",
  ]),
  Quiz(353, "What are the values passed into a function call called?", [
    "Arguments",
    "Parameters",
    "Variables",
    "Inputs",
  ]),
  Quiz(
    354,
    "What are the variables defined in the function signature called?",
    ["Parameters", "Arguments", "Attributes", "Fields"],
  ),
  Quiz(355, "Can a function be defined inside another function in Dart?", [
    "Yes, these are called nested or local functions",
    "No, all functions must be top-level",
    "Only if the inner function is static",
    "Only in Dart 1.0",
  ]),

  // --- Topic 28: Return Types and the void keyword ---
  Quiz(
    356,
    "Which keyword is used when a function does not return any value?",
    ["void", "null", "empty", "static"],
  ),
  Quiz(
    357,
    "What happens if you omit the return type in a function definition?",
    [
      "It defaults to 'dynamic'",
      "The function will not run",
      "It defaults to 'void'",
      "It defaults to 'int'",
    ],
  ),
  Quiz(
    358,
    "Which keyword is used to send a value back to the caller of a function?",
    ["return", "send", "output", "yield"],
  ),
  Quiz(359, "Can a 'void' function contain a 'return' statement?", [
    "Yes, but only 'return;' without a value to exit early",
    "No, it will cause a compile error",
    "Yes, it can return null",
    "Only if the function is async",
  ]),
  Quiz(
    360,
    "What is the return type of a function that ends without a return statement and isn't void?",
    ["Null (at runtime)", "0", "False", "Error"],
  ),

  // --- Topic 29: Positional Parameters (Required vs Optional) ---
  Quiz(361, "How do you define optional positional parameters in Dart?", [
    "Wrap them in square brackets [ ]",
    "Wrap them in curly braces { }",
    "Add a question mark after the name",
    "Use the 'optional' keyword",
  ]),
  Quiz(362, "In 'void test(int a, [int? b])', which parameter is required?", [
    "a",
    "b",
    "Both are required",
    "Neither is required",
  ]),
  Quiz(
    363,
    "Where must optional positional parameters be placed in the parameter list?",
    [
      "At the end, after all required parameters",
      "At the beginning",
      "Anywhere in the list",
      "Only inside the main function",
    ],
  ),
  Quiz(
    364,
    "In 'test(int a, [int b = 1, int c = 2])', how do you skip 'b' but provide 'c'?",
    [
      "You cannot; positional parameters must be provided in order",
      "test(1, c: 3)",
      "test(1, , 3)",
      "test(1, null, 3)",
    ],
  ),
  Quiz(
    365,
    "What is the default value of an optional parameter if none is provided and no default is set?",
    ["null", "0", "undefined", "Error"],
  ),

  // --- Topic 30: Named Parameters and {required} ---
  Quiz(366, "How do you define named parameters in a function?", [
    "Wrap them in curly braces { }",
    "Wrap them in square brackets [ ]",
    "Prefix them with a colon :",
    "Use the 'name' keyword",
  ]),
  Quiz(367, "How do you pass an argument to a named parameter called 'age'?", [
    "functionName(age: 25);",
    "functionName(25);",
    "functionName('age' = 25);",
    "functionName(:age 25);",
  ]),
  Quiz(368, "Which keyword makes a named parameter mandatory to provide?", [
    "required",
    "must",
    "final",
    "static",
  ]),
  Quiz(369, "Can named parameters be passed in any order?", [
    "Yes, order does not matter for named arguments",
    "No, they must follow the definition order",
    "Only if they are not required",
    "Only in Flutter",
  ]),
  Quiz(370, "What is a major benefit of named parameters?", [
    "Improved code readability, especially with many parameters",
    "Faster execution speed",
    "Reduced memory usage",
    "They allow the function to return multiple values",
  ]),

  // --- Topic 31: Default Parameter Values ---
  Quiz(371, "How do you assign a default value to a parameter?", [
    "Using the = operator (e.g., {int age = 18})",
    "Using the : operator",
    "Using the 'default' keyword",
    "Using the ?? operator",
  ]),
  Quiz(372, "Default values must be what kind of values?", [
    "Compile-time constants",
    "Any variable",
    "Only integers",
    "Results of other functions",
  ]),
  Quiz(
    373,
    "In 'void sum({int a = 5, int b = 10})', what is the result of sum(a: 2)?",
    ["a is 2, b is 10", "a is 2, b is 5", "a is 2, b is null", "Error"],
  ),
  Quiz(374, "Can required parameters have default values?", [
    "No, it's redundant and results in a warning/error",
    "Yes, always",
    "Only if the type is String",
    "Only in older Dart versions",
  ]),
  Quiz(375, "Can you use a variable as a default value for a parameter?", [
    "No, only constant literals or const objects",
    "Yes, any global variable",
    "Yes, if the variable is final",
    "Only if it's an 'int'",
  ]),

  // --- Topic 32: Arrow Syntax (=>) ---
  Quiz(376, "What is the 'arrow syntax' (=>) used for?", [
    "A shorthand for functions that contain a single expression",
    "To define an asynchronous function",
    "To point to a class member",
    "To import a library",
  ]),
  Quiz(377, "Which code is equivalent to: 'int add(int a, int b) => a + b;'?", [
    "int add(int a, int b) { return a + b; }",
    "int add(int a, int b) { a + b; }",
    "int add(int a, int b) return a + b;",
    "int add => (a, b) { a + b }",
  ]),
  Quiz(
    378,
    "Can you use a 'statement' (like an if-block) inside an arrow function?",
    [
      "No, only a single expression is allowed",
      "Yes, if it's on one line",
      "Only if the return type is void",
      "Yes, always",
    ],
  ),
  Quiz(
    379,
    "Does the arrow syntax (=>) implicitly return the expression result?",
    [
      "Yes",
      "No, you still need the 'return' keyword",
      "Only for numbers",
      "Only in anonymous functions",
    ],
  ),
  Quiz(380, "When is arrow syntax NOT recommended?", [
    "When the function body is complex or multi-line",
    "When the function returns a String",
    "When the function is used as a variable",
    "When the function has no parameters",
  ]),

  // --- Topic 33: Lexical Scope and Variable Lifetime ---
  Quiz(381, "What is 'Lexical Scope' in Dart?", [
    "Variables are only accessible within the block they are defined",
    "Variables are accessible everywhere in the project",
    "Variables are deleted immediately after use",
    "The dictionary used for naming variables",
  ]),
  Quiz(382, "Can an inner function access variables from its outer function?", [
    "Yes, Dart supports lexical closures",
    "No, only local variables are accessible",
    "Only if the variables are marked 'global'",
    "Only if the outer function is static",
  ]),
  Quiz(
    383,
    "What happens to a local variable once the function execution ends?",
    [
      "It is cleared from memory (lifetime ends)",
      "It is saved to the disk",
      "It becomes a global variable",
      "It is renamed automatically",
    ],
  ),
  Quiz(
    384,
    "If a variable is defined at the top of a file, what is its scope?",
    [
      "Library scope (Global to that file)",
      "Function scope",
      "Block scope",
      "Class scope",
    ],
  ),
  Quiz(385, "What is a 'Closure' in Dart?", [
    "A function object that has access to variables in its lexical scope",
    "A function that is closed for modification",
    "The '}' bracket at the end of a function",
    "A variable that is null",
  ]),

  // --- Topic 34: Introduction to Anonymous Functions ---
  Quiz(386, "What is an 'Anonymous Function'?", [
    "A function without a name",
    "A function with a private name",
    "A function that cannot be called",
    "A function that returns nothing",
  ]),
  Quiz(387, "Which of the following is a valid anonymous function in Dart?", [
    "(a, b) { return a + b; }",
    "function(a, b) { a + b; }",
    "void (a, b) => a + b;",
    "anonymous { print('hi'); }",
  ]),
  Quiz(388, "Where are anonymous functions commonly used?", [
    "As arguments to other functions (callbacks)",
    "To define the main function",
    "To replace classes",
    "In the pubspec.yaml file",
  ]),
  Quiz(389, "Can anonymous functions use arrow syntax?", [
    "Yes, e.g., (item) => print(item)",
    "No, they must use curly braces",
    "Only if they have no parameters",
    "Only in Flutter widgets",
  ]),
  Quiz(390, "What is another common name for an anonymous function?", [
    "Lambda or Closure",
    "Method",
    "Structure",
    "Pointer",
  ]),

  // --- Topic 35: Higher-Order Functions ---
  Quiz(391, "What is a 'Higher-Order Function'?", [
    "A function that takes another function as a parameter or returns one",
    "A function with high performance",
    "A function defined at the top of a class",
    "A function that calls itself (recursion)",
  ]),
  Quiz(
    392,
    "Which built-in List method is a classic example of a higher-order function?",
    ["forEach()", "add()", "clear()", "toString()"],
  ),
  Quiz(
    393,
    "What is the parameter type for a function that accepts another function with no args and no return?",
    ["void Function()", "Function", "dynamic", "Null"],
  ),
  Quiz(394, "In 'list.map((e) => e * 2)', what is 'map' considered?", [
    "A higher-order function",
    "A variable",
    "A constructor",
    "A library",
  ]),
  Quiz(395, "Can a function return another function as its result?", [
    "Yes",
    "No",
    "Only if the return type is 'dynamic'",
    "Only in async functions",
  ]),

  // --- Mix, Parameters & Logic (396-450) ---
  Quiz(
    396,
    "What is the output of: 'void say(String msg, [String? from]) { print('\$msg from \$from'); }' called as 'say('Hi');'?",
    ["Hi from null", "Hi from", "Error", "Hi"],
  ),
  Quiz(
    397,
    "How do you make a named parameter 'String name' both required and non-nullable?",
    [
      "{required String name}",
      "{String? name}",
      "{String name}",
      "[String name]",
    ],
  ),
  Quiz(398, "In 'double calc(double x) => x * 2;', what is the return type?", [
    "double",
    "int",
    "dynamic",
    "void",
  ]),
  Quiz(399, "What is 'First-class objects' in Dart regarding functions?", [
    "Functions can be assigned to variables, passed as args, and returned",
    "Functions are only for the Pro version of Dart",
    "Functions are always executed first",
    "Functions cannot be modified",
  ]),
  Quiz(400, "Which of these correctly assigns a function to a variable?", [
    "var myFunc = (a) => print(a);",
    "var myFunc = void print(a);",
    "Function myFunc() => print(a);",
    "int myFunc = print('a');",
  ]),

  Quiz(401, "What does 'Function' (capital F) represent in Dart?", [
    "The base class for all function types",
    "A keyword to define a function",
    "The return value of a void function",
    "A built-in variable",
  ]),
  Quiz(
    402,
    "In 'void test(int a, {int b = 0})', how do you call it passing only b?",
    [
      "test(1, b: 10); (Error: 'a' is required positional)",
      "test(b: 10);",
      "test(null, b: 10);",
      "test(10);",
    ],
  ),
  Quiz(
    403,
    "Can you have both optional positional and optional named parameters in the same function?",
    [
      "No, you must choose one or the other",
      "Yes, always",
      "Only if they have the same type",
      "Only in local functions",
    ],
  ),
  Quiz(404, "What happens if a function signature is 'int multiply(a, b)'?", [
    "Parameters 'a' and 'b' default to type 'dynamic'",
    "The code fails to compile",
    "Parameters are assumed to be 'int'",
    "The function is considered private",
  ]),
  Quiz(
    405,
    "Is 'sum(1, 2)' a valid call for 'int sum(int a, int b, [int c = 0])'?",
    [
      "Yes, 'c' uses its default value",
      "No, 'c' is missing",
      "No, optional parameters must be named",
      "Only if 'c' is null",
    ],
  ),
  Quiz(
    406,
    "What symbol is used to indicate a parameter is optional but has no default?",
    ["Type? (Nullable type)", "Type!", "Type*", "Type\$"],
  ),
  Quiz(
    407,
    "Which is more descriptive for a UI widget: Positional or Named parameters?",
    [
      "Named parameters (e.g., width: 100, color: Red)",
      "Positional parameters",
      "Both are equal",
      "Neither",
    ],
  ),
  Quiz(
    408,
    "What is the scope of 'i' in 'for (var i = 0; i < 5; i++) { ... }'?",
    [
      "The loop block",
      "The entire function containing the loop",
      "The entire file",
      "Global",
    ],
  ),
  Quiz(409, "What is 'Shadowing' in variable scope?", [
    "A local variable having the same name as a variable in an outer scope",
    "Hiding a private function",
    "Using a variable before it is declared",
    "Deleting a variable",
  ]),
  Quiz(410, "In shadowing, which variable takes precedence?", [
    "The most local variable",
    "The global variable",
    "The variable defined first",
    "The variable with the longest name",
  ]),

  Quiz(
    411,
    "Which keyword is often used with higher-order functions to transform a list?",
    ["map", "if", "var", "while"],
  ),
  Quiz(412, "What is a 'Callback'?", [
    "A function passed as an argument to be executed later",
    "A recursive function",
    "A function that returns a boolean",
    "A way to rename a function",
  ]),
  Quiz(413, "What is the purpose of 'typedef' in Dart?", [
    "To create an alias for a function type signature",
    "To define a new class",
    "To change the type of a variable",
    "To import a specific library",
  ]),
  Quiz(414, "How do you define a typedef for a function that takes an int?", [
    "typedef IntFunction = void Function(int);",
    "typedef IntFunction(int);",
    "type IntFunction = int;",
    "Both A and B are valid (B is legacy)",
  ]),
  Quiz(415, "Is the 'main' function a higher-order function?", [
    "No, it usually takes a List<String> which is a collection",
    "Yes",
    "Only if it's async",
    "Only in Flutter",
  ]),
  Quiz(416, "What is 'Recursion'?", [
    "A function calling itself",
    "A function with no parameters",
    "A function that never ends",
    "A function that returns a list",
  ]),
  Quiz(417, "What is a 'Base Case' in recursion?", [
    "The condition that stops the recursive calls",
    "The first line of the function",
    "The return type",
    "The main function",
  ]),
  Quiz(418, "What is the result of 'void run(Function f) { f(); }'?", [
    "It executes the function passed into it",
    "It returns the function f",
    "It causes an error",
    "It clears f from memory",
  ]),
  Quiz(419, "Can a named parameter start with an underscore (e.g., {_name})?", [
    "Yes, but it makes it private to the library",
    "No, it's illegal",
    "Only if it's required",
    "Only in classes",
  ]),
  Quiz(
    420,
    "What is the output of '(int x) { return x * x; }(5)' (Immediately Invoked)?",
    ["25", "5", "Error", "null"],
  ),
  Quiz(
    421,
    "How do you specify a default value for a required named parameter?",
    [
      "You can't; 'required' and default values are mutually exclusive",
      "Using =",
      "Using :",
      "Using 'default'",
    ],
  ),
  Quiz(422, "What is the type of '() => 42'?", [
    "int Function()",
    "int",
    "Function(int)",
    "void",
  ]),
  Quiz(
    423,
    "What happens to variables inside a closure when the outer function finishes?",
    [
      "They are 'captured' and persist as long as the closure exists",
      "They are destroyed immediately",
      "They are moved to a global variable",
      "They are set to null",
    ],
  ),
  Quiz(
    424,
    "Can you pass a named function as an argument to another function?",
    [
      "Yes, by using its name without parentheses",
      "No, only anonymous functions can be passed",
      "Yes, but you must use the 'call' keyword",
      "Only if it is static",
    ],
  ),
  Quiz(
    425,
    "In 'list.sort((a, b) => a.compareTo(b))', what is (a, b) => ...?",
    [
      "An anonymous comparison function",
      "A sorting algorithm",
      "A class constructor",
      "A boolean variable",
    ],
  ),
  Quiz(426, "Which part of 'int add(int x, int y)' is the signature?", [
    "The name and parameter list",
    "The function body",
    "The return keyword",
    "The word 'int'",
  ]),
  Quiz(427, "Does 'void' return anything at all?", [
    "Technically it returns 'null' internally in Dart",
    "It returns 0",
    "It returns the string 'void'",
    "It returns a future",
  ]),
  Quiz(428, "Can a function have multiple return statements?", [
    "Yes, but only one will be executed",
    "No, only one is allowed at the end",
    "Yes, and they all execute",
    "Only in async functions",
  ]),
  Quiz(429, "What is the output of 'void f() { return 5; }'?", [
    "Compile-time error (Void function cannot return a value)",
    "5",
    "null",
    "Error at runtime",
  ]),
  Quiz(430, "What is a 'Pure Function'?", [
    "A function that returns a value based only on its arguments and has no side effects",
    "A function with no parameters",
    "A function that returns void",
    "A function that uses only integers",
  ]),
  Quiz(431, "What is a 'Side Effect' in a function?", [
    "Modifying a global variable or printing to console",
    "Returning a double instead of an int",
    "Having too many parameters",
    "Using the arrow syntax",
  ]),
  Quiz(
    432,
    "How do you indicate a parameter is optional in a function's type signature?",
    [
      "Using [ ] or { } in the Function type (e.g., void Function([int]))",
      "Using the 'optional' keyword",
      "Using a question mark ?",
      "You cannot",
    ],
  ),
  Quiz(
    433,
    "Which keyword helps prevent a function from being overridden in a subclass?",
    [
      "There isn't a direct 'final' for functions in Dart classes, but you can mark the class or use @nonVirtual",
      "sealed",
      "const",
      "static",
    ],
  ),
  Quiz(434, "Can a Dart function return 'nothing'?", [
    "Yes, by being 'void'",
    "No, it always returns something internally",
    "Only if it crashes",
    "Only in the main function",
  ]),
  Quiz(435, "What is the return type of: 'test() {}'?", [
    "dynamic",
    "void",
    "Null",
    "int",
  ]),
  Quiz(436, "In 'var f = print;', what is the type of f?", [
    "void Function(Object?)",
    "String",
    "dynamic",
    "void",
  ]),
  Quiz(437, "Can you use positional and named parameters together?", [
    "Yes, positional first, then named (e.g., f(int x, {int y}))",
    "Yes, any order",
    "No",
    "Only in constructors",
  ]),
  Quiz(
    438,
    "How many optional positional parameter blocks [ ] can a function have?",
    ["One", "Two", "Unlimited", "Zero"],
  ),
  Quiz(439, "How many named parameter blocks { } can a function have?", [
    "One",
    "Two",
    "One for each parameter",
    "Zero",
  ]),
  Quiz(
    440,
    "What happens if you provide an argument for a named parameter that doesn't exist?",
    [
      "Compile-time error",
      "It is ignored",
      "It is added to a hidden list",
      "Runtime crash",
    ],
  ),
  Quiz(441, "What is the result of '1 + 2' inside '{ print(1+2); }'?", [
    "It's a statement that prints 3",
    "It's an expression that returns 3",
    "Error",
    "Nothing",
  ]),
  Quiz(442, "What is 'Lexical' in Lexical Scope?", [
    "The scope is determined by the physical layout of the code (where it's written)",
    "The scope is determined by when the code runs",
    "The scope is alphabetical",
    "The scope is based on memory address",
  ]),
  Quiz(443, "Which is a valid way to call 'void f({int? x, int? y})'?", [
    "f(x: 1, y: 2);",
    "f(1, 2);",
    "f(:x 1, :y 2);",
    "f{1, 2};",
  ]),
  Quiz(
    444,
    "What is the output of 'void f([int x = 1]) { print(x); }' called as 'f(5);'?",
    ["5", "1", "null", "Error"],
  ),
  Quiz(445, "Is 'Function f = (int x) => x;' valid?", [
    "Yes",
    "No, you must specify the return type",
    "Only in Flutter",
    "Only if x is dynamic",
  ]),
  Quiz(446, "What is the benefit of arrow syntax for getters?", [
    "It makes them concise and readable (e.g., int get area => w * h;)",
    "It makes them run faster",
    "It protects the variables",
    "It allows them to take parameters",
  ]),
  Quiz(447, "Can you use 'required' inside [ ] (optional positional)?", [
    "No, 'required' only works with { } (named parameters)",
    "Yes",
    "Only for Strings",
    "Only in classes",
  ]),
  Quiz(448, "What is the purpose of 'return;'?", [
    "To exit a function immediately (usually in void functions)",
    "To return a null value",
    "To restart the function",
    "To break a loop",
  ]),
  Quiz(449, "Which is more 'Dart-idiomatic' for a single-line return?", [
    "Arrow syntax (=>)",
    "Block body with return",
    "Both are equal",
    "Neither",
  ]),
  Quiz(450, "What type is 'f' in 'var f = () {};'?", [
    "void Function()",
    "dynamic",
    "Null",
    "Function",
  ]),

  // --- Final 50: Advanced Higher-Order & Parameters (451-500) ---
  Quiz(451, "Which method executes a function for every element in a list?", [
    "forEach",
    "map",
    "where",
    "reduce",
  ]),
  Quiz(452, "What does 'map' return in Dart?", [
    "An Iterable (not a List)",
    "A new List",
    "Void",
    "A single value",
  ]),
  Quiz(
    453,
    "Which higher-order function is used to filter elements in a collection?",
    ["where", "map", "forEach", "any"],
  ),
  Quiz(
    454,
    "Which higher-order function checks if at least one element meets a condition?",
    ["any", "every", "where", "firstWhere"],
  ),
  Quiz(
    455,
    "Which higher-order function checks if ALL elements meet a condition?",
    ["every", "any", "contains", "where"],
  ),
  Quiz(456, "What does 'reduce' do in a collection?", [
    "Combines all elements into a single value using a function",
    "Shortens the length of the list",
    "Deletes elements",
    "Returns a smaller list",
  ]),
  Quiz(457, "What is the difference between 'fold' and 'reduce'?", [
    "'fold' allows an initial starting value; 'reduce' uses the first element",
    "'reduce' is for numbers only",
    "'fold' is for Strings only",
    "There is no difference",
  ]),
  Quiz(458, "What does 'firstWhere' return if no element is found?", [
    "It throws an error (unless orElse is provided)",
    "null",
    "0",
    "Empty String",
  ]),
  Quiz(459, "Is '(a, b) => a + b' a closure?", [
    "Yes, if it captures variables from its surrounding scope",
    "No, it's just a lambda",
    "Only if it's named",
    "Only in async",
  ]),
  Quiz(460, "Can a higher-order function be assigned to a variable?", [
    "Yes, like any other function",
    "No",
    "Only if it's top-level",
    "Only in Dart 3.0",
  ]),
  Quiz(461, "What is the signature of 'forEach' on a List<int>?", [
    "void forEach(void Function(int))",
    "int forEach(int)",
    "void forEach(int)",
    "List forEach(Function)",
  ]),
  Quiz(
    462,
    "Which higher-order function is used to convert a List<int> to List<String>?",
    ["map", "where", "fold", "cast"],
  ),
  Quiz(463, "What happens if you don't call 'toList()' after a 'map()'?", [
    "You stay with an Iterable (lazy evaluation)",
    "The code crashes",
    "The mapping never happens",
    "It automatically becomes a List",
  ]),
  Quiz(464, "What is 'Lazy Evaluation' in higher-order functions?", [
    "The function isn't executed until the result is actually used/iterated",
    "The function runs slowly",
    "The function uses less CPU",
    "The function is only for 'var' variables",
  ]),
  Quiz(465, "What is a 'Tear-off' in Dart?", [
    "Using a method name without parentheses as a function object",
    "Removing a function from a class",
    "Deleting code",
    "A bug in the compiler",
  ]),
  Quiz(466, "If 'void printItem(int i) => print(i);', which is a tear-off?", [
    "myList.forEach(printItem);",
    "myList.forEach((i) => printItem(i));",
    "myList.forEach(printItem());",
    "printItem;",
  ]),
  Quiz(467, "Is 'tear-off' more efficient than an anonymous wrapper?", [
    "Yes, it avoids creating an extra function object",
    "No, it's slower",
    "It is exactly the same",
    "It uses more memory",
  ]),
  Quiz(468, "Which function type is: 'int f(String s)'?", [
    "int Function(String)",
    "String Function(int)",
    "Function(String) -> int",
    "int(String)",
  ]),
  Quiz(469, "Can you use 'final' for parameters?", [
    "Yes, to prevent the parameter from being reassigned within the function",
    "No",
    "Only for named parameters",
    "Only for required parameters",
  ]),
  Quiz(
    470,
    "What is the output of 'int x = 1; void f() { x = 2; } f(); print(x);'?",
    ["2", "1", "Error", "null"],
  ),
  Quiz(471, "In Dart 3, can functions return multiple values using Records?", [
    "Yes, e.g., (int, int) swap(int a, int b) => (b, a);",
    "No, you still need a class or list",
    "Only using the 'yield' keyword",
    "Only in async functions",
  ]),
  Quiz(
    472,
    "What is the return type of a function that returns a Record like (1, 'A')?",
    ["(int, String)", "Record", "dynamic", "List"],
  ),
  Quiz(
    473,
    "Which keyword indicates a function is a 'generator' returning an Iterable?",
    ["sync*", "async*", "yield", "iterable"],
  ),
  Quiz(
    474,
    "Which keyword indicates a function is a 'generator' returning a Stream?",
    ["async*", "sync*", "await", "stream"],
  ),
  Quiz(475, "What does 'yield' do in a generator function?", [
    "It adds a value to the output sequence and continues",
    "It stops the function",
    "It returns a final value",
    "It waits for 1 second",
  ]),
  Quiz(476, "Can you define a function inside an 'if' block?", [
    "Yes (Local function scope)",
    "No",
    "Only if it's an arrow function",
    "Only if it's void",
  ]),
  Quiz(477, "In 'test([int x = 1, int y])', is this valid with null safety?", [
    "No, 'y' must be nullable (int?) or have a default value",
    "Yes",
    "Only if y is assigned inside",
    "Only for 'dynamic' types",
  ]),
  Quiz(478, "What is 'Scope'?", [
    "The region of code where a variable is defined and accessible",
    "The speed of the app",
    "A tool for debugging",
    "The name of the main file",
  ]),
  Quiz(479, "Which is a 'Top-level' function?", [
    "A function defined outside of any class",
    "The first function in a class",
    "The main function only",
    "A function that calls another",
  ]),
  Quiz(
    480,
    "What is 'Hoisting' (commonly discussed in JS)? Does Dart have it?",
    [
      "Dart does NOT have hoisting; variables must be declared before use",
      "Dart has hoisting for functions only",
      "Dart has hoisting for all variables",
      "Hoisting is a type of loop in Dart",
    ],
  ),
  Quiz(481, "What is 'Trailing Comma' in parameter lists?", [
    "A comma after the last parameter to help with auto-formatting",
    "A syntax error",
    "A way to indicate more parameters are coming",
    "A way to make parameters optional",
  ]),
  Quiz(
    482,
    "Which character is used to ignore a parameter in an anonymous function?",
    ["_ (Underscore)", "* (Asterisk)", "? (Question mark)", "! (Exclamation)"],
  ),
  Quiz(
    483,
    "How do you define a function that takes any number of arguments (Varargs)?",
    [
      "Dart doesn't have varargs; use a List instead",
      "Using ...",
      "Using *",
      "Using any[]",
    ],
  ),
  Quiz(484, "What is 'Functional Programming' style in Dart?", [
    "Using functions as values and higher-order functions like map/fold",
    "Writing code only in functions, no classes",
    "Using only global functions",
    "Making sure every function is void",
  ]),
  Quiz(485, "What is the signature of the 'main' function?", [
    "void main(List<String> args) or void main()",
    "int main()",
    "void main(String args)",
    "Main.run()",
  ]),
  Quiz(486, "Can you use 'async' with arrow syntax?", [
    "Yes, e.g., Future<int> f() async => 42;",
    "No",
    "Only if it returns void",
    "Only in classes",
  ]),
  Quiz(
    487,
    "What is the return type of an async function that returns an int?",
    ["Future<int>", "int", "void", "Stream<int>"],
  ),
  Quiz(488, "What is the return type of a 'sync*' generator returning ints?", [
    "Iterable<int>",
    "Stream<int>",
    "List<int>",
    "int",
  ]),
  Quiz(489, "In 'Function(int) f', what does this define?", [
    "A parameter 'f' that is a function taking an int",
    "A function 'f' that returns an int",
    "An integer 'f'",
    "A syntax error",
  ]),
  Quiz(490, "What is 'Lexical scope' also called?", [
    "Static scope",
    "Dynamic scope",
    "Global scope",
    "Block scope",
  ]),
  Quiz(491, "What is the result of '(() => \"Dart\")()'?", [
    "\"Dart\"",
    "null",
    "Error",
    "Function",
  ]),
  Quiz(492, "Can optional parameters have 'const' objects as defaults?", [
    "Yes, they must be constants",
    "No, only literals like 1 or 'A'",
    "Only if the parameter is final",
    "Only in constructors",
  ]),
  Quiz(493, "How do you document a function parameter?", [
    "Using [parameterName] inside the documentation comment (///)",
    "Using @param",
    "Using #parameter",
    "Using **parameter**",
  ]),
  Quiz(494, "What is the benefit of a 'local function'?", [
    "It encapsulates logic and prevents it from being used elsewhere in the file",
    "It makes the app run faster",
    "It allows the function to be private",
    "It reduces the lines of code",
  ]),
  Quiz(
    495,
    "Can you overload functions in Dart (same name, different params)?",
    [
      "No, use optional or named parameters instead",
      "Yes, always",
      "Only in classes",
      "Only with different return types",
    ],
  ),
  Quiz(496, "In 'void f(int x)', can you pass a 'double'?", [
    "No, int and double are distinct types",
    "Yes, it will be rounded",
    "Yes, it will be truncated",
    "Only if you use 'as int'",
  ]),
  Quiz(
    497,
    "What is the result of 'void f(int? x) { x ??= 10; print(x); }' called as 'f(null);'?",
    ["10", "null", "Error", "0"],
  ),
  Quiz(498, "Which is a valid function type?", [
    "int Function(int, {String name})",
    "int(int, String)",
    "Function int (int)",
    "void:f()",
  ]),
  Quiz(499, "How many parameters can a Dart function have?", [
    "Unlimited (theoretically, limited by memory)",
    "255",
    "1024",
    "64",
  ]),
  Quiz(
    500,
    "What is the result of 'int x = 5; void f(int x) { x = 10; } f(x); print(x);'?",
    [
      "5 (Primitives are passed by value/copied reference, original doesn't change)",
      "10",
      "null",
      "Error",
    ],
  ),
];
final List<Quiz> dartQuizM6 = [
  // --- Topic 36: Lists: Indexing and Growable Lists ---
  Quiz(501, "What is the starting index of a List in Dart?", [
    "0",
    "1",
    "-1",
    "Any number you choose",
  ]),
  Quiz(502, "How do you create a growable List of integers?", [
    "List<int> colors = [];",
    "List<int> colors = List.fixed(5);",
    "var colors = [1, 2, 3] (fixed: true);",
    "int[] colors = new int[10];",
  ]),
  Quiz(503, "What property returns the number of elements in a List?", [
    "length",
    "size",
    "count",
    "index",
  ]),
  Quiz(504, "How do you access the third element of a list named 'items'?", [
    "items[2]",
    "items[3]",
    "items.get(3)",
    "items{2}",
  ]),
  Quiz(
    505,
    "What happens if you try to access an index that is out of bounds?",
    [
      "A RangeError is thrown at runtime",
      "It returns null",
      "The list grows automatically",
      "It returns the last element",
    ],
  ),

  // --- Topic 37: Essential List Methods (add, remove, sort) ---
  Quiz(506, "Which method adds an element to the end of a List?", [
    "add()",
    "insert()",
    "push()",
    "append()",
  ]),
  Quiz(507, "Which method adds multiple elements to a List at once?", [
    "addAll()",
    "insertAll()",
    "appendAll()",
    "plus()",
  ]),
  Quiz(508, "How do you remove a specific object from a List?", [
    "remove(object)",
    "delete(object)",
    "removeAt(object)",
    "clear(object)",
  ]),
  Quiz(509, "How do you remove an element at index 5?", [
    "removeAt(5)",
    "remove(5)",
    "deleteIndex(5)",
    "pop(5)",
  ]),
  Quiz(510, "Which method reorders the elements in a List?", [
    "sort()",
    "order()",
    "arrange()",
    "shuffle()",
  ]),
  Quiz(511, "Which method removes all elements from a List?", [
    "clear()",
    "reset()",
    "empty()",
    "removeAll()",
  ]),
  Quiz(512, "How do you check if a List contains a specific value?", [
    "contains(value)",
    "has(value)",
    "exists(value)",
    "includes(value)",
  ]),
  Quiz(513, "Which property returns the first element of a List?", [
    "first",
    "head",
    "start",
    "top",
  ]),
  Quiz(514, "Which property returns the last element of a List?", [
    "last",
    "end",
    "tail",
    "bottom",
  ]),
  Quiz(515, "Which method inserts an element at a specific position?", [
    "insert(index, value)",
    "addAt(index, value)",
    "push(index, value)",
    "put(index, value)",
  ]),

  // --- Topic 38: Sets: Unique Values and Set Math ---
  Quiz(516, "What is the primary characteristic of a Set?", [
    "It contains only unique elements",
    "It is always ordered by index",
    "It allows duplicate values",
    "It can only store strings",
  ]),
  Quiz(517, "How do you declare a Set of Strings?", [
    "Set<String> names = {};",
    "List<String> names = {};",
    "var names = [];",
    "Map names = {};",
  ]),
  Quiz(518, "What happens if you add a duplicate value to a Set?", [
    "The Set remains unchanged (it is ignored)",
    "It throws a DuplicateError",
    "The Set overwrites the old value",
    "The program crashes",
  ]),
  Quiz(519, "Which method returns the common elements between two sets?", [
    "intersection()",
    "union()",
    "difference()",
    "lookup()",
  ]),
  Quiz(
    520,
    "Which method combines all elements of two sets, removing duplicates?",
    ["union()", "join()", "intersection()", "combine()"],
  ),
  Quiz(
    521,
    "Which method returns elements that are in the first set but NOT in the second?",
    ["difference()", "subtract()", "intersection()", "minus()"],
  ),
  Quiz(522, "Can you access a Set element by index like names[0]?", [
    "No, Sets are unordered collections",
    "Yes, always",
    "Only if you use the 'var' keyword",
    "Only in Dart 3.0",
  ]),
  Quiz(523, "How do you convert a Set to a List?", [
    "toList()",
    "asList()",
    "convert()",
    "setToList()",
  ]),
  Quiz(524, "What is the output of '{1, 2, 2, 3}.length'?", [
    "3",
    "4",
    "2",
    "Error",
  ]),
  Quiz(
    525,
    "Which collection is more efficient for checking if an item exists?",
    ["Set", "List", "Map", "Queue"],
  ),

  // --- Topic 39: Maps: Key-Value Pairs ---
  Quiz(526, "What is a Map in Dart?", [
    "A collection of key-value pairs",
    "A list of unique integers",
    "A way to find directions",
    "A type of function",
  ]),
  Quiz(527, "How do you declare a Map with String keys and int values?", [
    "Map<String, int> scores = {};",
    "Map<int, String> scores = {};",
    "List<String, int> scores = {};",
    "Set<String, int> scores = {};",
  ]),
  Quiz(528, "How do you access the value associated with the key 'name'?", [
    "user['name']",
    "user('name')",
    "user.name",
    "user{name}",
  ]),
  Quiz(529, "What happens if you access a key that does not exist in a Map?", [
    "It returns null",
    "It throws an error",
    "It returns an empty string",
    "It adds the key automatically",
  ]),
  Quiz(530, "What happens if you add a key that already exists in the Map?", [
    "The new value overwrites the old value",
    "An error is thrown",
    "The value is added as a duplicate",
    "Nothing happens",
  ]),
  Quiz(531, "Which property returns all the keys of a Map?", [
    "keys",
    "values",
    "entries",
    "names",
  ]),
  Quiz(532, "Which property returns all the values of a Map?", [
    "values",
    "keys",
    "data",
    "items",
  ]),
  Quiz(533, "How do you remove a key-value pair from a Map?", [
    "remove(key)",
    "delete(key)",
    "clear(key)",
    "removeValue(key)",
  ]),
  Quiz(534, "What is the type of the 'keys' property in a Map?", [
    "Iterable",
    "List",
    "Set",
    "String",
  ]),
  Quiz(535, "How do you check if a Map contains a specific key?", [
    "containsKey(key)",
    "hasKey(key)",
    "contains(key)",
    "exists(key)",
  ]),

  // --- Topic 40: Generics <T> for Type Safety ---
  Quiz(536, "What is the purpose of Generics in Dart?", [
    "To provide type safety and reduce code duplication",
    "To make the code run faster",
    "To allow variables to be dynamic",
    "To create global variables",
  ]),
  Quiz(537, "In 'List<T>', what does the 'T' usually represent?", [
    "Type",
    "Table",
    "Template",
    "Target",
  ]),
  Quiz(538, "Which is a type-safe way to define a list of numbers?", [
    "List<num> numbers = [];",
    "List numbers = [];",
    "var numbers = [];",
    "List<dynamic> numbers = [];",
  ]),
  Quiz(539, "Can you use Generics with your own custom classes?", [
    "Yes",
    "No",
    "Only for built-in collections",
    "Only in Flutter",
  ]),
  Quiz(540, "What is the result of 'List<String> list = [1, 2];'?", [
    "Compile-time error",
    "Runtime error",
    "The numbers are converted to Strings",
    "It works perfectly",
  ]),

  // --- Topic 41: Spread Operators (...) and Collection If ---
  Quiz(541, "What does the spread operator (...) do?", [
    "Inserts all elements of one collection into another",
    "Multiplies all values in a list",
    "Deletes all elements",
    "Checks for null values",
  ]),
  Quiz(542, "What is the 'null-aware' spread operator?", [
    "...?",
    "..?",
    "?.?",
    "??",
  ]),
  Quiz(543, "What is 'Collection If'?", [
    "Using an 'if' statement inside a collection literal to conditionally add items",
    "A special type of loop",
    "Checking if a collection is null",
    "Converting a list to a boolean",
  ]),
  Quiz(544, "What is 'Collection For'?", [
    "Using a 'for' loop inside a collection literal to generate items",
    "A loop that only works on Maps",
    "A way to search for items",
    "A built-in List method",
  ]),
  Quiz(545, "How do you combine list1 and list2 using the spread operator?", [
    "var combined = [...list1, ...list2];",
    "var combined = [list1, list2];",
    "var combined = list1 + list2;",
    "var combined = list1...list2;",
  ]),

  // --- Topic 42: Transforming Collections (map, where, toList) ---
  Quiz(546, "What does the 'map' method do?", [
    "Creates a new collection by applying a function to every element",
    "Finds the location of elements",
    "Sorts the collection",
    "Filters elements",
  ]),
  Quiz(547, "Which method is used to filter elements based on a condition?", [
    "where()",
    "filter()",
    "map()",
    "search()",
  ]),
  Quiz(548, "Why do we often use 'toList()' after 'map' or 'where'?", [
    "Because they return an Iterable, and we usually want a List",
    "To make the collection growable",
    "To sort the results",
    "To remove null values",
  ]),
  Quiz(549, "What is the result of '[1, 2, 3].map((e) => e * 2).toList()'?", [
    "[2, 4, 6]",
    "[1, 2, 3]",
    "6",
    "Error",
  ]),
  Quiz(550, "What does 'firstWhere' do?", [
    "Returns the first element that satisfies a condition",
    "Returns all elements that satisfy a condition",
    "Sorts the first element",
    "Deletes the first element",
  ]),

  // --- Mix and Review Module 6 ---
  Quiz(551, "Which collection type uses curly braces { } and has no keys?", [
    "Set",
    "Map",
    "List",
    "Record",
  ]),
  Quiz(552, "How do you check if a List is empty?", [
    "isEmpty",
    "length == 0",
    "Both are valid",
    "checkEmpty()",
  ]),
  Quiz(
    553,
    "Which method allows you to execute a function for each element without returning a new list?",
    ["forEach()", "map()", "where()", "reduce()"],
  ),
  Quiz(554, "How do you get a sublist of elements from index 1 to 3?", [
    "sublist(1, 3)",
    "getRange(1, 3)",
    "slice(1, 3)",
    "subset(1, 3)",
  ]),
  Quiz(555, "Which method transforms a Map into a list of MapEntry objects?", [
    "entries",
    "toList()",
    "values",
    "keys",
  ]),
  Quiz(556, "What is the output of '[1, 2, 3].reduce((a, b) => a + b)'?", [
    "6",
    "[1, 2, 3]",
    "0",
    "Error",
  ]),
  Quiz(557, "Which property tells you if a Set has no elements?", [
    "isEmpty",
    "isClear",
    "isZero",
    "hasNone",
  ]),
  Quiz(558, "What does 'any()' do on a collection?", [
    "Returns true if at least one element satisfies a condition",
    "Returns true if all elements satisfy a condition",
    "Returns any random element",
    "Finds the index of an element",
  ]),
  Quiz(559, "What does 'every()' do on a collection?", [
    "Returns true if every element satisfies a condition",
    "Returns true if at least one element satisfies a condition",
    "Runs a function for every element",
    "Counts the elements",
  ]),
  Quiz(560, "Can a Map have duplicate values?", [
    "Yes, but the keys must be unique",
    "No, everything must be unique",
    "Only if the values are strings",
    "Only in Dart 1.0",
  ]),

  Quiz(561, "How do you find the index of a specific element in a List?", [
    "indexOf(element)",
    "find(element)",
    "search(element)",
    "get(element)",
  ]),
  Quiz(562, "What does 'indexOf' return if the element is not found?", [
    "-1",
    "null",
    "0",
    "Error",
  ]),
  Quiz(563, "Which method adds a value to a Set?", [
    "add()",
    "put()",
    "insert()",
    "push()",
  ]),
  Quiz(564, "How do you create an empty growable list using a constructor?", [
    "List.empty(growable: true)",
    "List.growable()",
    "List.new()",
    "List.init()",
  ]),
  Quiz(565, "What is 'Iteration'?", [
    "The process of looping through elements in a collection",
    "The process of deleting a collection",
    "Creating a new collection",
    "Changing the type of a collection",
  ]),
  Quiz(566, "Which collection literal uses 'key: value' pairs?", [
    "Map",
    "Set",
    "List",
    "Record",
  ]),
  Quiz(567, "Can you nest collections (e.g., a List inside a Map)?", [
    "Yes",
    "No",
    "Only in classes",
    "Only for integers",
  ]),
  Quiz(568, "What is the result of '{...{1, 2}, ...{2, 3}}' in Dart?", [
    "{1, 2, 3}",
    "{1, 2, 2, 3}",
    "[1, 2, 3]",
    "Error",
  ]),
  Quiz(
    569,
    "Which method updates a Map value if the key exists, or adds it if not?",
    ["putIfAbsent()", "update()", "add()", "insert()"],
  ),
  Quiz(570, "What is an 'Iterable' in Dart?", [
    "A collection of elements that can be accessed sequentially",
    "A function that returns a list",
    "A type of Map",
    "A way to sort numbers",
  ]),
  Quiz(571, "Which method combines all elements into a single String?", [
    "join()",
    "toString()",
    "concatenate()",
    "combine()",
  ]),
  Quiz(572, "What does 'take(2)' do on a List?", [
    "Returns an Iterable of the first 2 elements",
    "Removes the first 2 elements",
    "Returns the element at index 2",
    "Returns the last 2 elements",
  ]),
  Quiz(573, "What does 'skip(2)' do on a List?", [
    "Returns an Iterable that ignores the first 2 elements",
    "Deletes the first 2 elements",
    "Jumps to index 2",
    "Only takes the first 2 elements",
  ]),
  Quiz(574, "Is 'var x = {};' a Map or a Set by default?", [
    "Map<dynamic, dynamic>",
    "Set<dynamic>",
    "List<dynamic>",
    "Error",
  ]),
  Quiz(575, "How do you make an empty Set literal explicitly?", [
    "<int>{ }",
    "{ }",
    "[ ]",
    "( )",
  ]),
  Quiz(576, "Which method returns the elements of a list in reverse order?", [
    "reversed",
    "reverse()",
    "flip()",
    "sort(desc)",
  ]),
  Quiz(577, "What is the return type of the 'reversed' property?", [
    "Iterable",
    "List",
    "Set",
    "void",
  ]),
  Quiz(
    578,
    "Which property returns the only element in a collection, or throws an error if there is not exactly one?",
    ["single", "first", "only", "one"],
  ),
  Quiz(579, "How do you find the maximum value in a List of numbers?", [
    "import 'dart:math'; then use values.reduce(max)",
    "values.max()",
    "max(values)",
    "values.sort().last",
  ]),
  Quiz(580, "Which method checks if all elements are of a specific type?", [
    "every((e) => e is Type)",
    "isAll(Type)",
    "checkType(Type)",
    "cast<Type>()",
  ]),

  Quiz(581, "What does 'expand()' do on a collection?", [
    "Flattens a collection of collections into a single collection",
    "Increases the memory size",
    "Adds null values to fill space",
    "Makes all strings uppercase",
  ]),
  Quiz(
    582,
    "Which method is used to sort a List based on a specific property?",
    [
      "sort((a, b) => a.property.compareTo(b.property))",
      "orderBy(property)",
      "sortBy(property)",
      "arrange(property)",
    ],
  ),
  Quiz(
    583,
    "How do you remove elements that satisfy a condition from a List?",
    ["removeWhere()", "deleteWhere()", "filter()", "clearIf()"],
  ),
  Quiz(584, "What is a 'Fixed-length' list?", [
    "A list whose size cannot be changed after creation",
    "A list that can only store integers",
    "A list that is constant",
    "A list that cannot be sorted",
  ]),
  Quiz(585, "How do you create a fixed-length list of size 3?", [
    "List.filled(3, 0)",
    "List(3)",
    "[0, 0, 0]",
    "List.fixed(3)",
  ]),
  Quiz(586, "Can you add items to a list created with 'List.filled(3, 0)'?", [
    "No, it throws an UnsupportedError",
    "Yes, if you use .add()",
    "Only if you clear it first",
    "Yes, if the list is var",
  ]),
  Quiz(587, "What does 'unmodifiable' mean for a collection?", [
    "The collection cannot be changed at all (no add/remove/update)",
    "The collection is sorted",
    "The collection is empty",
    "The collection is private",
  ]),
  Quiz(588, "How do you create an unmodifiable List?", [
    "List.unmodifiable([1, 2, 3])",
    "const [1, 2, 3]",
    "Both are effectively unmodifiable",
    "final [1, 2, 3]",
  ]),
  Quiz(589, "Which method returns the values of a Map as an Iterable?", [
    "values",
    "toList()",
    "getData()",
    "content",
  ]),
  Quiz(590, "What is the purpose of the 'asMap()' method on a List?", [
    "Converts a List into a Map where keys are the indices",
    "Converts a List into a Map of objects",
    "Sorts the List into a Map",
    "It is not a valid method",
  ]),
  Quiz(
    591,
    "What happens if you use 'whereType<int>()' on a list of mixed types?",
    [
      "It returns only the elements that are integers",
      "It throws an error",
      "It converts all elements to integers",
      "It returns null",
    ],
  ),
  Quiz(592, "How do you shuffle the elements of a List randomly?", [
    "shuffle()",
    "randomize()",
    "mix()",
    "sort(random)",
  ]),
  Quiz(593, "Which method is used to check if a Map has no key-value pairs?", [
    "isEmpty",
    "hasNone",
    "length == 0",
    "Both A and C",
  ]),
  Quiz(594, "What does 'fold' do that 'reduce' cannot?", [
    "Work on an empty list by providing an initial value",
    "Work with integers",
    "Work with strings",
    "Run faster",
  ]),
  Quiz(
    595,
    "Which collection is best for storing a dictionary (word and definition)?",
    ["Map", "List", "Set", "Queue"],
  ),
  Quiz(
    596,
    "Which collection is best for storing a unique list of guest names?",
    ["Set", "List", "Map", "Queue"],
  ),
  Quiz(
    597,
    "Which collection is best for storing an ordered history of undo actions?",
    ["List", "Set", "Map", "Record"],
  ),
  Quiz(598, "How do you get the 'entries' of a Map?", [
    "map.entries",
    "map.getEntries()",
    "map.toList()",
    "map.keysAndValues",
  ]),
  Quiz(599, "What is the result of '[1, 2] + [3, 4]' in Dart?", [
    "[1, 2, 3, 4]",
    "Error",
    "[[1, 2], [3, 4]]",
    "3, 6",
  ]),
  Quiz(
    600,
    "Which property is used to get the number of key-value pairs in a Map?",
    ["length", "size", "count", "entriesCount"],
  ),
];
final List<Quiz> dartQuizM7 = [
  // --- Topic 43: Classes: Blueprints for Objects ---
  Quiz(601, "What is a Class in Dart?", [
    "A blueprint or template for creating objects",
    "A type of function",
    "A collection of global variables",
    "A list of unique integers",
  ]),
  Quiz(602, "Which keyword is used to declare a class?", [
    "class",
    "object",
    "struct",
    "interface",
  ]),
  Quiz(603, "What is an 'Instance' of a class?", [
    "An individual object created from a class blueprint",
    "A static method",
    "A private variable",
    "The class definition itself",
  ]),
  Quiz(604, "Which keyword is used to create a new instance of a class?", [
    "new (optional in Dart)",
    "create",
    "instance",
    "make",
  ]),
  Quiz(605, "Class names in Dart should follow which naming convention?", [
    "UpperCamelCase",
    "lowerCamelCase",
    "snake_case",
    "SCREAMING_SNAKE_CASE",
  ]),

  // --- Topic 44: Instance Variables and Fields ---
  Quiz(606, "What are Instance Variables?", [
    "Variables declared inside a class that belong to each object",
    "Variables declared inside a method",
    "Global variables used by the whole app",
    "Variables that cannot be changed",
  ]),
  Quiz(
    607,
    "What is the default value of an uninitialized instance variable in Dart?",
    ["null (if nullable)", "0", "false", "undefined"],
  ),
  Quiz(608, "How do you make an instance variable private to its library?", [
    "Start the name with an underscore (e.g., _name)",
    "Use the 'private' keyword",
    "Use the 'final' keyword",
    "Declare it inside a private method",
  ]),
  Quiz(
    609,
    "Which keyword ensures an instance variable is set only once and cannot be changed later?",
    ["final", "const", "static", "late"],
  ),
  Quiz(610, "What does the 'late' keyword do for an instance variable?", [
    "Allows a non-nullable variable to be initialized after declaration",
    "Makes the variable optional",
    "Saves the variable to memory later",
    "Deletes the variable after use",
  ]),

  // --- Topic 45: Methods and 'this' keyword ---
  Quiz(611, "What is a Method?", [
    "A function defined inside a class that describes object behavior",
    "A variable that stores data",
    "A constructor",
    "A way to import files",
  ]),
  Quiz(612, "What does the 'this' keyword refer to in Dart?", [
    "The current instance of the class",
    "The parent class",
    "The main function",
    "A static variable",
  ]),
  Quiz(613, "When is using 'this' strictly necessary in Dart?", [
    "To resolve name conflicts between parameters and instance variables",
    "In every method call",
    "Only in static methods",
    "Only for private variables",
  ]),
  Quiz(614, "What is a 'Getter'?", [
    "A special method used to retrieve the value of a property",
    "A method that sets a value",
    "A type of constructor",
    "A way to delete an object",
  ]),
  Quiz(615, "What is a 'Setter'?", [
    "A special method used to update the value of a property",
    "A method that returns a value",
    "A private variable",
    "A way to create a class",
  ]),

  // --- Topic 46: The Default Constructor ---
  Quiz(616, "What is a Constructor?", [
    "A special function used to initialize an object of a class",
    "A method that deletes an object",
    "The class definition",
    "An instance variable",
  ]),
  Quiz(617, "What happens if you don't define a constructor in your class?", [
    "Dart provides a default, no-argument constructor",
    "The class cannot be instantiated",
    "The program throws a compile error",
    "The class becomes static",
  ]),
  Quiz(618, "What is the name of the default constructor?", [
    "The same as the class name",
    "init()",
    "new()",
    "constructor()",
  ]),
  Quiz(619, "Does a constructor have a return type?", [
    "No, not even void",
    "Yes, it returns the class type",
    "Yes, it returns void",
    "Only if it's a factory constructor",
  ]),
  Quiz(620, "Can a class have multiple constructors in Dart?", [
    "Yes, but they must be 'Named Constructors'",
    "No, only one is allowed",
    "Only if they have different return types",
    "Only in Flutter",
  ]),

  // --- Topic 47: Parameterized and Named Constructors ---
  Quiz(621, "What is a Parameterized Constructor?", [
    "A constructor that takes arguments to initialize fields",
    "A constructor with no name",
    "A constructor that returns a value",
    "A constructor used for lists",
  ]),
  Quiz(
    622,
    "What is the 'shorthand' syntax for initializing fields in a constructor?",
    [
      "Point(this.x, this.y);",
      "Point(x, y) { x = x; y = y; }",
      "Point(int x, int y) : x = x, y = y;",
      "Point(x, y) => {x, y};",
    ],
  ),
  Quiz(623, "What is a Named Constructor?", [
    "A constructor with a custom name (e.g., ClassName.origin())",
    "A constructor that only takes Strings",
    "A constructor that is private",
    "A constructor used for naming objects",
  ]),
  Quiz(
    624,
    "How do you call a named constructor 'fromMap' for a class 'User'?",
    [
      "User.fromMap(data);",
      "User(fromMap: data);",
      "new User.fromMap(data); (legacy style)",
      "User.new.fromMap(data);",
    ],
  ),
  Quiz(625, "Why are Named Constructors useful?", [
    "They allow a class to have multiple constructors with different purposes",
    "They make the code run faster",
    "They are required for all classes",
    "They replace methods",
  ]),

  // --- Topic 48: Initializer Lists ---
  Quiz(626, "What is an Initializer List in a constructor?", [
    "Code that runs before the constructor body to set field values",
    "A list of all objects created",
    "A way to sort parameters",
    "A method that clears variables",
  ]),
  Quiz(627, "Where is the initializer list placed in a constructor?", [
    "After the parameters, preceded by a colon (:)",
    "Inside the curly braces { }",
    "Before the class name",
    "In a separate file",
  ]),
  Quiz(628, "What is a primary use case for Initializer Lists?", [
    "Setting 'final' variables based on constructor logic",
    "Printing debug messages",
    "Calling asynchronous functions",
    "Declaring new classes",
  ]),
  Quiz(
    629,
    "In 'Point(this.x, this.y) : distance = 0;', what is 'distance = 0'?",
    [
      "An initializer list entry",
      "A default parameter",
      "A class field",
      "A syntax error",
    ],
  ),
  Quiz(630, "Can you call 'assert()' inside an initializer list?", [
    "Yes, it is often used to validate inputs before the object is created",
    "No, asserts only work in methods",
    "Only in Flutter",
    "Only for private variables",
  ]),

  // --- Topic 49: Constant Constructors (Flutter Optimization) ---
  Quiz(631, "What is a Constant Constructor?", [
    "A constructor that creates a canonical, immutable instance at compile-time",
    "A constructor that never changes its name",
    "A constructor used only for numbers",
    "A constructor that is defined with 'final'",
  ]),
  Quiz(
    632,
    "To have a constant constructor, all instance variables must be...",
    ["final", "static", "var", "nullable"],
  ),
  Quiz(633, "Which keyword is used to define a constant constructor?", [
    "const",
    "final",
    "immutable",
    "static",
  ]),
  Quiz(634, "How does 'const' help in Flutter development?", [
    "It allows Flutter to skip rebuilding widgets that haven't changed",
    "It makes the UI colors brighter",
    "It makes the app file size smaller",
    "It converts the app to a website",
  ]),
  Quiz(
    635,
    "What happens if you create two objects using 'const Point(0,0)'?",
    [
      "They point to the exact same instance in memory",
      "They are two different objects with the same value",
      "The program crashes",
      "It creates a List",
    ],
  ),

  // --- Topic 50: Factory Constructors ---
  Quiz(636, "What is a Factory Constructor?", [
    "A constructor that doesn't always create a new instance of its class",
    "A constructor that builds other classes",
    "A constructor used only in the industrial industry",
    "A constructor that is always static",
  ]),
  Quiz(637, "Which keyword is used to declare a factory constructor?", [
    "factory",
    "static",
    "provider",
    "new",
  ]),
  Quiz(638, "Can a factory constructor return an instance from a cache?", [
    "Yes, that is one of its main purposes",
    "No, constructors must always create new memory",
    "Only if the class is a Map",
    "Only in async functions",
  ]),
  Quiz(639, "Can a factory constructor return a instance of a subclass?", [
    "Yes",
    "No",
    "Only if the subclass is private",
    "Only in Dart 3.0",
  ]),
  Quiz(640, "Does a factory constructor have access to 'this'?", [
    "No, because the instance might not be created yet",
    "Yes, always",
    "Only if it's a named factory",
    "Only for private fields",
  ]),

  // --- Mix & Deep Dive Module 7 (641-700) ---
  Quiz(641, "What is 'Encapsulation'?", [
    "Hiding internal data and requiring interaction through methods",
    "Making all variables public",
    "Putting all code in one file",
    "Using many constructors",
  ]),
  Quiz(642, "How do you access a property 'name' of an object 'person'?", [
    "person.name",
    "person->name",
    "person['name']",
    "person(name)",
  ]),
  Quiz(643, "What is a 'Redirecting Constructor'?", [
    "A constructor whose only purpose is to call another constructor in the same class",
    "A constructor that opens a URL",
    "A constructor that returns a different class",
    "A constructor that is private",
  ]),
  Quiz(644, "What is the syntax for redirecting a constructor?", [
    "ClassName.named() : this();",
    "ClassName.named() => this();",
    "ClassName.named() { super(); }",
    "ClassName.named() : super();",
  ]),
  Quiz(645, "Can a class have a constructor and a method with the same name?", [
    "No, it would cause a naming conflict",
    "Yes, always",
    "Only if one is static",
    "Only in Flutter",
  ]),

  Quiz(646, "What is 'Constructor Body'?", [
    "The code inside { } that runs after initialization",
    "the parameter list",
    "The class definition",
    "The initializer list",
  ]),
  Quiz(647, "Which of these is NOT a valid constructor type in Dart?", [
    "Virtual Constructor",
    "Named Constructor",
    "Factory Constructor",
    "Constant Constructor",
  ]),
  Quiz(648, "What does 'Point.origin() : x = 0, y = 0;' represent?", [
    "A named constructor with an initializer list",
    "A factory constructor",
    "A default constructor",
    "A redirection",
  ]),
  Quiz(649, "Can you use 'var' for instance variables?", [
    "No, you must use a type, 'final', or 'late'",
    "Yes, always",
    "Only if they are private",
    "Only in the main function",
  ]),
  Quiz(650, "What is an 'Object' in Dart?", [
    "An instance of a class; the base class for all Dart types",
    "A type of string",
    "A keyword to define a class",
    "A collection of functions",
  ]),
  Quiz(651, "How many parameters can a constructor have?", [
    "As many as needed",
    "Maximum 5",
    "Only 255",
    "Only positional parameters",
  ]),
  Quiz(652, "Can constructors be asynchronous?", [
    "No, constructors cannot return a Future",
    "Yes, if you use the async keyword",
    "Only factory constructors",
    "Only in Flutter",
  ]),
  Quiz(653, "If you want an async initialization, what should you use?", [
    "A static method that returns a Future of the class",
    "An async constructor",
    "An initializer list",
    "A late variable",
  ]),
  Quiz(654, "What is a 'Private Constructor'?", [
    "A constructor named ClassName._(); used to prevent instantiation",
    "A constructor that only works for one user",
    "A constructor inside a private method",
    "A constructor that doesn't use 'this'",
  ]),
  Quiz(655, "Which constructor type is used for 'Singleton' patterns?", [
    "Factory Constructor",
    "Constant Constructor",
    "Default Constructor",
    "Named Constructor",
  ]),
  Quiz(656, "What is a 'Singleton'?", [
    "A design pattern that ensures a class has only one instance",
    "A class with only one method",
    "A variable that can't be null",
    "A single-line class",
  ]),
  Quiz(
    657,
    "What is the result of 'print(object)' if 'toString()' is not overridden?",
    [
      "Instance of 'ClassName'",
      "The object's memory address",
      "All variable values",
      "null",
    ],
  ),
  Quiz(658, "How do you override the string representation of a class?", [
    "Override the toString() method",
    "Create a print() method",
    "Use a getter called 'string'",
    "It cannot be done",
  ]),
  Quiz(659, "Can a named constructor be private?", [
    "Yes, e.g., ClassName._internal();",
    "No",
    "Only in library files",
    "Only if it's factory",
  ]),
  Quiz(660, "What is 'Mutation'?", [
    "Changing the value of an object's state (fields)",
    "Creating a new object",
    "Deleting an object",
    "Renaming a class",
  ]),

  Quiz(661, "Which is more memory efficient for identical immutable data?", [
    "Constant Constructor",
    "Standard Constructor",
    "Factory Constructor",
    "Named Constructor",
  ]),
  Quiz(662, "What is the relationship between a Class and an Object?", [
    "Class is the blueprint; Object is the building",
    "Object is the blueprint; Class is the building",
    "They are the same thing",
    "Class is a list of Objects",
  ]),
  Quiz(
    663,
    "Can you initialize a field in both the initializer list and the body?",
    [
      "No, that would be a double initialization error",
      "Yes, the body wins",
      "Yes, the list wins",
      "Only if the field is not final",
    ],
  ),
  Quiz(664, "Is 'Point p = Point(1, 2);' valid if 'new' is omitted?", [
    "Yes, 'new' is optional in Dart 2.0+",
    "No, 'new' is required",
    "Only if Point is a factory",
    "Only in Flutter",
  ]),
  Quiz(665, "What is a 'Member' of a class?", [
    "Both fields (variables) and methods",
    "Only variables",
    "Only methods",
    "The constructor only",
  ]),
  Quiz(666, "What happens to objects no longer referenced in Dart?", [
    "They are automatically removed by the Garbage Collector",
    "They stay in memory forever",
    "You must delete them manually using 'free'",
    "They are moved to the disk",
  ]),
  Quiz(667, "Can you have a 'const' class without a 'const' constructor?", [
    "No, to use 'const' with a class, it must have a const constructor",
    "Yes",
    "Only if all fields are static",
    "Only if it's an abstract class",
  ]),
  Quiz(668, "What is 'Composition'?", [
    "Including an instance of one class as a field in another class",
    "Inheriting from a class",
    "Writing code in a specific style",
    "Mixing two classes together",
  ]),
  Quiz(669, "How do you call a method 'drive()' on an object 'car'?", [
    "car.drive();",
    "drive(car);",
    "car:drive();",
    "car.drive;",
  ]),
  Quiz(670, "What is 'Member Access Operator'?", [
    "The dot (.) symbol",
    "The arrow (->) symbol",
    "The colon (:) symbol",
    "The plus (+) symbol",
  ]),
  Quiz(
    671,
    "In 'User({required this.name})', what kind of parameter is 'name'?",
    [
      "A required named parameter that auto-initializes the field",
      "A positional parameter",
      "An optional parameter",
      "A factory parameter",
    ],
  ),
  Quiz(
    672,
    "Can you call a static method using an instance of the class (object.staticMethod())?",
    [
      "No, static members must be called using the class name",
      "Yes, always",
      "Only in Dart 1.0",
      "Only if it's public",
    ],
  ),
  Quiz(673, "What is the purpose of the 'static' keyword?", [
    "To define members that belong to the class itself rather than instances",
    "To make a variable unchangeable",
    "To create a constant object",
    "To speed up a method",
  ]),
  Quiz(674, "Where are static variables stored?", [
    "In the class definition memory (shared by all instances)",
    "In each object individually",
    "On the stack",
    "In a text file",
  ]),
  Quiz(675, "Can a constructor be 'static'?", [
    "No, constructors are inherently related to instances",
    "Yes",
    "Only factory constructors",
    "Only named ones",
  ]),
  Quiz(676, "What is a 'Logic-heavy' constructor?", [
    "A constructor with a large body { } doing calculations",
    "A constructor with many parameters",
    "A constructor that uses inheritance",
    "A factory constructor",
  ]),
  Quiz(677, "Should you put heavy logic in a constructor?", [
    "Generally no; constructors should be for simple initialization",
    "Yes, always",
    "Only if it's a named constructor",
    "Only in web apps",
  ]),
  Quiz(678, "What is the output of 'class A{} main(){ print(A() == A()); }'?", [
    "false (they are two different instances in memory)",
    "true",
    "Error",
    "null",
  ]),
  Quiz(
    679,
    "What is the output of 'class A{const A();} main(){ print(const A() == const A()); }'?",
    ["true (they are the same canonical instance)", "false", "Error", "null"],
  ),
  Quiz(680, "Which keyword is used to refer to the parent class?", [
    "super",
    "this",
    "parent",
    "base",
  ]),
  Quiz(681, "What does 'super()' do in a constructor?", [
    "Calls the constructor of the parent class",
    "Calls the current class constructor",
    "Deletes the object",
    "Makes the class static",
  ]),
  Quiz(682, "Where must 'super' calls happen in a constructor?", [
    "In the initializer list",
    "Inside the body { }",
    "Before the class name",
    "After the semicolon",
  ]),
  Quiz(683, "Can a factory constructor call 'super'?", [
    "No, it doesn't participate in the normal constructor chaining",
    "Yes, always",
    "Only if it's named",
    "Only in Flutter",
  ]),
  Quiz(684, "What is a 'Constructor Forwarding'?", [
    "Redirecting one constructor to another",
    "Sending a constructor to a different file",
    "Inheriting a constructor",
    "A bug in the code",
  ]),
  Quiz(685, "What is 'Immutable Class'?", [
    "A class where all fields are final and cannot be changed after creation",
    "A class that cannot be inherited",
    "A class with no methods",
    "A class that is always null",
  ]),
  Quiz(686, "Which constructor is best for an immutable class?", [
    "Constant Constructor",
    "Default Constructor",
    "Factory Constructor",
    "Named Constructor",
  ]),
  Quiz(687, "What is the scope of a class defined in a file?", [
    "Library scope (accessible within the same file/library)",
    "Global scope",
    "Function scope",
    "Local scope",
  ]),
  Quiz(688, "Can you define two classes with the same name in the same file?", [
    "No",
    "Yes, if they have different fields",
    "Yes, if they are private",
    "Only in Dart 1.0",
  ]),
  Quiz(689, "How do you make a class field read-only to external code?", [
    "Make it private and provide only a Getter",
    "Use the 'const' keyword",
    "Use the 'readOnly' keyword",
    "Put it in a separate file",
  ]),
  Quiz(
    690,
    "What is the result of 'var p = Point(1, 2); p.x = 10;' if x is final?",
    [
      "Compile-time error",
      "The value of x becomes 10",
      "The value of x stays 1",
      "Runtime crash",
    ],
  ),
  Quiz(
    691,
    "Can you initialize a field using a method of the same class in an initializer list?",
    [
      "No, the instance doesn't exist yet so methods can't be called",
      "Yes",
      "Only if the method is static",
      "Only in the body",
    ],
  ),
  Quiz(692, "What is the 'Implicit Getter'?", [
    "Dart automatically creates a getter for every public instance variable",
    "A getter you write yourself",
    "A way to get private data",
    "A getter that returns null",
  ]),
  Quiz(693, "What is the 'Implicit Setter'?", [
    "Dart automatically creates a setter for every non-final public instance variable",
    "A setter for final variables",
    "A way to set static variables",
    "A method that returns void",
  ]),
  Quiz(694, "In 'User.anonymous() : name = 'Anon';', what is 'anonymous'?", [
    "A named constructor",
    "A factory",
    "A method",
    "A variable",
  ]),
  Quiz(695, "Can a class have only named constructors and no default one?", [
    "Yes",
    "No",
    "Only if it's abstract",
    "Only in Flutter",
  ]),
  Quiz(696, "What is 'Boilerplate' code?", [
    "Repetitive code required by a language (like standard getters/setters)",
    "The main logic of the app",
    "An error in the code",
    "Code that runs very fast",
  ]),
  Quiz(697, "How does Dart reduce boilerplate in constructors?", [
    "By using 'this.fieldName' directly in the parameter list",
    "By making all variables public",
    "By not requiring constructors",
    "By using the 'var' keyword",
  ]),
  Quiz(698, "What is the 'State' of an object?", [
    "The current values of all its instance variables",
    "The list of its methods",
    "The name of its class",
    "Its memory address",
  ]),
  Quiz(699, "What is 'Behavior' of an object?", [
    "The actions it can perform (defined by its methods)",
    "The data it stores",
    "Its parent class",
    "The way it is constructed",
  ]),
  Quiz(
    700,
    "Which of these is the most 'Dart-like' constructor for 'Person' with 'name'?",
    [
      "Person(this.name);",
      "Person(String name) { this.name = name; }",
      "Person(name) : name = name;",
      "Person.create(this.name);",
    ],
  ),
];
final List<Quiz> dartQuizM8 = [
  // --- Topic 51: Privacy with the Underscore (_) ---
  Quiz(701, "How is privacy defined in Dart?", [
    "Privacy is at the library (file) level, not class level",
    "Privacy is strictly at the class level",
    "Privacy requires the 'private' keyword",
    "Dart does not support private members",
  ]),
  Quiz(702, "Which character is used to make a class member private?", [
    "Underscore (_)",
    "Hash (#)",
    "At sign (@)",
    "Dollar sign (\$)",
  ]),
  Quiz(703, "Where can a private member (e.g., _myVar) be accessed?", [
    "Only within the file where it is defined",
    "Only within the class it is defined",
    "Anywhere in the project",
    "Only in subclasses",
  ]),
  Quiz(
    704,
    "What happens if you try to access '_name' from a different file?",
    [
      "A compile-time error occurs",
      "It returns null",
      "It works if you import the file",
      "It works but gives a warning",
    ],
  ),
  Quiz(705, "Why is library-level privacy used in Dart?", [
    "To allow related classes and functions in the same file to collaborate",
    "To make the code run faster",
    "Because Dart doesn't have files",
    "To prevent any variable from being changed",
  ]),

  // --- Topic 52: Creating Getters for Controlled Reading ---
  Quiz(706, "What is a 'Getter' in Dart?", [
    "A special method that provides read access to a property",
    "A method that sets a private variable",
    "A constructor for private fields",
    "A way to delete a variable",
  ]),
  Quiz(707, "What is the syntax for defining a getter for a field '_age'?", [
    "int get age => _age;",
    "int getAge() => _age;",
    "getter age = _age;",
    "int read age => _age;",
  ]),
  Quiz(708, "How do you call a getter named 'fullName' on an object 'user'?", [
    "user.fullName",
    "user.fullName()",
    "user.get_fullName",
    "user->fullName",
  ]),
  Quiz(
    709,
    "What is the benefit of using a getter instead of a public field?",
    [
      "You can change the internal implementation without affecting the API",
      "It uses less memory",
      "It makes the variable constant",
      "It prevents the class from being inherited",
    ],
  ),
  Quiz(710, "Can a getter have parameters?", [
    "No",
    "Yes, but only one",
    "Yes, if they are optional",
    "Only in factory classes",
  ]),

  // --- Topic 53: Creating Setters for Validation ---
  Quiz(711, "What is a 'Setter' in Dart?", [
    "A special method used to update a property's value",
    "A method that only returns values",
    "A way to initialize a class",
    "A function that makes variables final",
  ]),
  Quiz(712, "What is the correct syntax for a setter 'percent'?", [
    "set percent(int value) { ... }",
    "void setPercent(int value) { ... }",
    "setter percent = value { ... }",
    "int set percent => value;",
  ]),
  Quiz(713, "Why are setters useful for validation?", [
    "They allow you to check if a value is valid before assigning it",
    "They automatically fix errors",
    "They make variables read-only",
    "They increase the speed of assignment",
  ]),
  Quiz(714, "How do you use a setter named 'email' on an object 'account'?", [
    "account.email = 'test@me.com';",
    "account.email('test@me.com');",
    "account.set_email('test@me.com');",
    "account:email = 'test@me.com';",
  ]),
  Quiz(715, "Can a setter have a return type?", [
    "No, it must return void or have no return type",
    "Yes, it can return the new value",
    "Yes, it can return a boolean",
    "Only if it's an async setter",
  ]),

  // --- Topic 54: Computed Properties ---
  Quiz(716, "What is a 'Computed Property'?", [
    "A property defined as a getter that calculates its value on the fly",
    "A variable stored in the database",
    "A static constant",
    "A field initialized in the constructor",
  ]),
  Quiz(717, "Which is an example of a computed property?", [
    "double get area => width * height;",
    "double area = 100.0;",
    "static double area = 0.0;",
    "final double area;",
  ]),
  Quiz(718, "Does a computed property store a value in memory?", [
    "No, it is recalculated every time it is accessed",
    "Yes, after the first calculation",
    "Only if it is marked as final",
    "Only in Flutter widgets",
  ]),
  Quiz(719, "When should you use a computed property?", [
    "When a value depends on other mutable fields",
    "When a value never changes",
    "When you want to save CPU cycles",
    "When you need to store large strings",
  ]),
  Quiz(720, "What happens if a computed property has no setter?", [
    "The property is read-only",
    "The property is private",
    "The program crashes",
    "The compiler creates a default setter",
  ]),

  // --- Topic 55: The 'late' keyword in Classes ---
  Quiz(721, "What does the 'late' keyword signify for a class field?", [
    "The variable will be initialized after the constructor runs",
    "The variable is optional",
    "The variable is always null",
    "The variable is static",
  ]),
  Quiz(
    722,
    "What happens if you access a 'late' variable before it is initialized?",
    [
      "A LateInitializationError is thrown at runtime",
      "It returns null",
      "The program hangs",
      "It returns 0",
    ],
  ),
  Quiz(723, "What is 'lazy initialization' with the 'late' keyword?", [
    "The initialization expression only runs the first time the variable is accessed",
    "The variable is initialized when the app starts",
    "The variable is never initialized",
    "The variable is initialized in a background thread",
  ]),
  Quiz(724, "Why use 'late' with 'final'?", [
    "To create a variable that is set once at runtime, but not in the constructor",
    "To make a constant variable",
    "To allow a variable to be reassigned many times",
    "To make a variable public",
  ]),
  Quiz(725, "Can 'late' be used with nullable types?", [
    "Yes, but it is rarely necessary",
    "No, only with non-nullable types",
    "Only if the variable is static",
    "Only in Dart 1.0",
  ]),

  // --- Topic 56: Final vs Private Fields ---
  Quiz(726, "What is the difference between 'final' and 'private'?", [
    "Final restricts modification; Private restricts visibility",
    "Final is for numbers; Private is for strings",
    "They are the same thing",
    "Final is used in classes; Private is used in methods",
  ]),
  Quiz(727, "Can a private field be changed within its own file?", [
    "Yes, unless it is also marked 'final'",
    "No, private fields are always immutable",
    "Only by a setter",
    "Only inside the constructor",
  ]),
  Quiz(
    728,
    "Which combination creates a 'Read-Only' property for external files?",
    [
      "A private field with a public getter",
      "A public final field",
      "A private final field",
      "A public field with a private setter",
    ],
  ),
  Quiz(729, "Is a 'final' field automatically private?", [
    "No, visibility is determined only by the underscore",
    "Yes",
    "Only if it is initialized in the constructor",
    "Only in Flutter",
  ]),
  Quiz(730, "What is 'Data Hiding'?", [
    "The practice of making fields private and exposing them through methods",
    "Deleting data after use",
    "Encrypting class variables",
    "Moving code to a separate library",
  ]),

  // --- Mix & Deep Dive ---
  Quiz(731, "Which keyword helps enforce Encapsulation?", [
    "Underscore (_)",
    "static",
    "dynamic",
    "void",
  ]),

  Quiz(
    732,
    "In 'class BankAccount { double _balance = 0; }', can an instance change _balance from main() in the same file?",
    [
      "Yes, because they are in the same library",
      "No, only the class can change it",
      "Only if the setter is public",
      "Only if BankAccount is static",
    ],
  ),
  Quiz(
    733,
    "Which of these is a valid way to prevent negative values for a field '_width'?",
    [
      "set width(double v) => _width = v > 0 ? v : 0;",
      "double get width => _width < 0 ? 0 : _width;",
      "final double _width = 0;",
      "double _width = -1;",
    ],
  ),
  Quiz(734, "Can a class have a getter and a field with the same name 'x'?", [
    "No, names must be unique within a class",
    "Yes",
    "Only if 'x' is private",
    "Only if the getter is static",
  ]),
  Quiz(735, "What is the primary goal of encapsulation?", [
    "To protect the internal state of an object from unintended interference",
    "To make the code shorter",
    "To allow multiple inheritance",
    "To make all variables global",
  ]),
  Quiz(736, "What is a 'Pass-through' getter?", [
    "A getter that returns a private variable directly without logic",
    "A getter that calls a function",
    "A getter that returns a different type",
    "A getter that is also a setter",
  ]),
  Quiz(737, "Does using 'this._name' in a constructor respect privacy?", [
    "Yes, constructors can access private fields of their own class",
    "No, you must use a public name",
    "Only if the constructor is named",
    "Only in factory constructors",
  ]),
  Quiz(
    738,
    "What is the output of a getter that calculates 'DateTime.now()'?",
    [
      "A different time every time it is called",
      "The time when the object was created",
      "A constant value",
      "null",
    ],
  ),
  Quiz(739, "How many getters can a class have?", [
    "As many as needed",
    "Only one per field",
    "Max 10",
    "None, if it has a constructor",
  ]),
  Quiz(740, "Which is the 'Dart way' of providing a read-only variable?", [
    "final String name;",
    "String get name => _name;",
    "Both are valid, but 'final' is simpler if no logic is needed",
    "Using a function getName()",
  ]),
  Quiz(741, "Can you define a setter without a corresponding getter?", [
    "Yes, this creates a 'Write-Only' property",
    "No, Dart requires both",
    "Only if the field is static",
    "Only for boolean values",
  ]),
  Quiz(742, "Can you define a getter without a corresponding setter?", [
    "Yes, this creates a 'Read-Only' property",
    "No",
    "Only for private fields",
    "Only in abstract classes",
  ]),
  Quiz(743, "What is the return type of a getter 'double get price'?", [
    "double",
    "void",
    "Function",
    "Null",
  ]),
  Quiz(744, "What is 'Shadowing' in the context of setters?", [
    "When a parameter name matches a field name (resolved using this.)",
    "Hiding a private setter",
    "Using a getter as a setter",
    "Deleting a variable",
  ]),
  Quiz(745, "Is 'late final' variable thread-safe in its initialization?", [
    "Yes, Dart's single-threaded nature ensures safe initialization",
    "No",
    "Only in web apps",
    "Only if marked 'atomic'",
  ]),
  Quiz(746, "Which of these allows 'lazy' computation only when needed?", [
    "Getters (Computed Properties)",
    "Constructor bodies",
    "Initializer lists",
    "Static fields",
  ]),
  Quiz(747, "Can a private method call a public method in Dart?", [
    "Yes",
    "No",
    "Only if both are static",
    "Only if they have the same name",
  ]),
  Quiz(748, "What is 'Encapsulation' also known as?", [
    "Information Hiding",
    "Inheritance",
    "Polymorphism",
    "Abstraction",
  ]),
  Quiz(749, "In a Flutter Widget, where is 'late' commonly used?", [
    "In initState() to initialize variables that depend on the Context",
    "In the build() method",
    "In the constructor",
    "In the main() function",
  ]),
  Quiz(
    750,
    "If a class is in 'user.dart' and main is in 'main.dart', can main access '_password'?",
    [
      "No, because of library-level privacy",
      "Yes, if main.dart imports user.dart",
      "Yes, if _password is not final",
      "Only if main uses 'new'",
    ],
  ),
];
final List<Quiz> dartQuizM9 = [
  // --- Topic 57: Inheritance: The 'extends' keyword ---
  Quiz(751, "What is Inheritance in Dart?", [
    "A mechanism where one class acquires the properties and methods of another",
    "A way to hide data from other classes",
    "A method to create multiple instances of a class",
    "A way to combine two different libraries",
  ]),
  Quiz(752, "Which keyword is used to create a subclass in Dart?", [
    "extends",
    "implements",
    "inherits",
    "mixin",
  ]),
  Quiz(753, "In 'class Dog extends Animal', which class is the 'Superclass'?", [
    "Animal",
    "Dog",
    "Both",
    "Neither",
  ]),
  Quiz(754, "How many classes can a Dart class directly extend?", [
    "One (Single Inheritance)",
    "Two",
    "Unlimited",
    "Zero",
  ]),
  Quiz(755, "What is inherited by a subclass?", [
    "All non-private visible members (fields and methods)",
    "Only public methods",
    "Only public fields",
    "Everything including private members",
  ]),

  // --- Topic 58: The 'super' keyword ---
  Quiz(756, "What does the 'super' keyword refer to?", [
    "The immediate parent class of the current class",
    "The current class instance",
    "The main function",
    "A static class",
  ]),
  Quiz(
    757,
    "How do you call a parent class method named 'eat()' from a subclass?",
    ["super.eat();", "this.eat();", "parent.eat();", "Animal.eat();"],
  ),
  Quiz(758, "Where is 'super()' typically used in a subclass constructor?", [
    "In the initializer list to call the parent constructor",
    "Inside the main function",
    "In the class definition line",
    "At the end of the subclass body",
  ]),
  Quiz(
    759,
    "If a parent class has no default constructor, what must the subclass do?",
    [
      "Explicitly call a parent constructor using 'super'",
      "Delete the subclass",
      "Make the parent class abstract",
      "Nothing, Dart handles it automatically",
    ],
  ),
  Quiz(760, "Can 'super' be used inside a static method?", [
    "No, 'super' is only available in instance methods",
    "Yes",
    "Only if the parent is also static",
    "Only in Flutter widgets",
  ]),

  // --- Topic 59: Method Overriding and @override ---
  Quiz(761, "What is Method Overriding?", [
    "Redefining a parent class method inside a subclass",
    "Calling a method with too many arguments",
    "Deleting a method from the parent class",
    "Changing a method into a variable",
  ]),
  Quiz(762, "What is the purpose of the @override annotation?", [
    "To tell the compiler and developers that a method is intended to override a parent method",
    "To make a method run faster",
    "To make a method private",
    "To prevent a method from being changed",
  ]),
  Quiz(763, "Is the @override annotation mandatory in Dart?", [
    "No, but it is highly recommended for clarity and error checking",
    "Yes, it won't compile without it",
    "Only for abstract methods",
    "Only in Flutter",
  ]),
  Quiz(
    764,
    "When overriding a method, can you change the return type to something incompatible?",
    [
      "No, the signature must be compatible with the parent's method",
      "Yes, always",
      "Only if the method is void",
      "Only in Dart 3.0",
    ],
  ),
  Quiz(
    765,
    "What happens if you override a method but still want to run the parent's logic?",
    [
      "Use 'super.methodName()' inside the override",
      "It is impossible; the parent logic is lost",
      "Call the method name directly",
      "Use 'this.methodName()'",
    ],
  ),

  // --- Topic 60: Abstract Classes: Rules and Usage ---
  Quiz(766, "What is an Abstract Class?", [
    "A class that cannot be instantiated and is used as a template",
    "A class that contains only numbers",
    "A class that is hidden from other files",
    "A class that can only have one instance",
  ]),
  Quiz(767, "Which keyword is used to define an abstract class?", [
    "abstract",
    "template",
    "virtual",
    "base",
  ]),
  Quiz(768, "What happens if you try to run 'var a = AbstractClass();'?", [
    "A compile-time error occurs",
    "It creates a null object",
    "It works if the class is public",
    "It creates an empty list",
  ]),
  Quiz(769, "Can an abstract class contain regular (implemented) methods?", [
    "Yes, it can have both abstract and normal methods",
    "No, only abstract methods",
    "Only if the methods are static",
    "Only in private abstract classes",
  ]),
  Quiz(770, "Why use an abstract class?", [
    "To define a common interface and shared behavior for a group of subclasses",
    "To speed up the app",
    "To prevent inheritance",
    "To store global constants",
  ]),

  // --- Topic 61: Abstract Methods ---
  Quiz(771, "What is an Abstract Method?", [
    "A method that has a signature but no body (implementation)",
    "A method that is automatically deleted",
    "A method that only works in the parent class",
    "A static method in an abstract class",
  ]),
  Quiz(772, "How do you define an abstract method?", [
    "void move(); (Ends with a semicolon instead of braces)",
    "abstract void move() { }",
    "void move() => null;",
    "virtual void move();",
  ]),
  Quiz(
    773,
    "What must a concrete subclass do if it extends a class with abstract methods?",
    [
      "It must provide an implementation for all abstract methods",
      "It must also be marked abstract",
      "Nothing, it can leave them empty",
      "It must delete those methods",
    ],
  ),
  Quiz(774, "Can abstract methods exist in a non-abstract (concrete) class?", [
    "No, the class must be marked abstract",
    "Yes",
    "Only if the method is private",
    "Only in Flutter State classes",
  ]),
  Quiz(775, "Does an abstract method have a body?", [
    "No",
    "Yes, but it's empty",
    "Only if it's async",
    "Only in Dart 1.0",
  ]),

  // --- Topic 62: Implementing Interfaces ---
  Quiz(776, "How does Dart handle Interfaces?", [
    "Every class implicitly defines an interface; use the 'implements' keyword",
    "Dart uses the 'interface' keyword like Java",
    "Dart does not support interfaces",
    "Interfaces must be defined inside abstract classes",
  ]),
  Quiz(777, "What is the difference between 'extends' and 'implements'?", [
    "Extends shares code; Implements only shares the signature (requires re-implementation)",
    "They are exactly the same",
    "Extends is for abstract classes; Implements is for concrete classes",
    "Extends allows multiple classes; Implements only allows one",
  ]),
  Quiz(778, "Can a class implement multiple interfaces?", [
    "Yes, you can implement as many as you want",
    "No, only one",
    "Only two",
    "Only if they are abstract",
  ]),
  Quiz(
    779,
    "In 'class SmartPhone implements Camera, Phone', what must SmartPhone do?",
    [
      "Provide implementations for all methods defined in both Camera and Phone",
      "Only implement methods from Camera",
      "Nothing, it inherits the code",
      "SmartPhone must be abstract",
    ],
  ),
  Quiz(780, "Which keyword is used to use a class as an interface?", [
    "implements",
    "with",
    "extends",
    "using",
  ]),

  // --- Topic 63: Polymorphism in Action ---
  Quiz(781, "What is Polymorphism?", [
    "The ability of an object to take on many forms (e.g., a subclass treated as a superclass)",
    "The ability to change a variable's type at runtime",
    "A way to create multiple constructors",
    "A method for encrypting data",
  ]),
  Quiz(782, "Which is an example of Polymorphism?", [
    "Animal myDog = Dog();",
    "Dog myDog = Dog();",
    "int x = 5;",
    "String s = 'Hi';",
  ]),
  Quiz(
    783,
    "When using 'Animal a = Cat()', which version of 'speak()' is called if Cat overrides it?",
    [
      "The Cat's version (Runtime binding)",
      "The Animal's version",
      "Both versions",
      "Neither, it causes an error",
    ],
  ),
  Quiz(784, "Why is polymorphism useful?", [
    "It allows writing code that works with a general superclass while using subclass specifics",
    "It makes the app UI better",
    "It reduces memory usage",
    "It prevents bugs in the main function",
  ]),
  Quiz(
    785,
    "Can you call a Dog-specific method 'bark()' if the variable type is 'Animal'?",
    [
      "No, unless you cast it back to Dog using 'as'",
      "Yes, always",
      "Only if bark() is static",
      "Only if Animal is abstract",
    ],
  ),

  // --- Mix and Review Module 9 (786-850) ---
  Quiz(786, "Which of these is the base class for all classes in Dart?", [
    "Object",
    "Base",
    "Class",
    "Root",
  ]),
  Quiz(787, "What is a 'Concrete Class'?", [
    "A class that can be instantiated (not abstract)",
    "A class with no methods",
    "A class that cannot be inherited",
    "A class used for storage",
  ]),
  Quiz(
    788,
    "Can a subclass have its own methods that the parent doesn't have?",
    ["Yes", "No", "Only if the parent is abstract", "Only in the same file"],
  ),
  Quiz(789, "What happens to the parent's fields when a subclass is created?", [
    "The subclass instance contains the parent's fields as part of its state",
    "The parent's fields are deleted",
    "They are moved to a static map",
    "They are renamed with a prefix",
  ]),
  Quiz(790, "Is it possible to prevent a class from being inherited?", [
    "In Dart 3, use the 'final' modifier on the class",
    "No, all classes can be extended",
    "Only if the class is private",
    "By making all methods private",
  ]),

  Quiz(791, "What is 'Upcasting'?", [
    "Assigning a subclass instance to a superclass variable",
    "Assigning a superclass instance to a subclass variable",
    "Moving a method to a parent class",
    "Changing an int to a double",
  ]),
  Quiz(792, "What is 'Downcasting'?", [
    "Casting a superclass variable back to a subclass type using 'as'",
    "Deleting a subclass",
    "Calling a super constructor",
    "Changing a double to an int",
  ]),
  Quiz(793, "What happens if a downcast is incorrect (e.g., Cat as Dog)?", [
    "A TypeError is thrown at runtime",
    "It returns null",
    "The program ignores it",
    "The variable is converted automatically",
  ]),
  Quiz(
    794,
    "Which operator is used to check if an object is of a certain type?",
    ["is", "as", "==", "typeOf"],
  ),
  Quiz(795, "Which operator is used to cast an object to a specific type?", [
    "as",
    "is",
    "to",
    "cast",
  ]),
  Quiz(
    796,
    "In 'List<Animal> zoo = [Dog(), Cat()];', what principle is being used?",
    ["Polymorphism", "Encapsulation", "Composition", "Recursion"],
  ),
  Quiz(797, "Can an abstract class have a constructor?", [
    "Yes, it is called when a subclass instance is created",
    "No",
    "Only if it's a factory constructor",
    "Only in Dart 3.0",
  ]),
  Quiz(798, "Can you override a getter?", [
    "Yes, just like a method",
    "No",
    "Only if it is public",
    "Only in abstract classes",
  ]),
  Quiz(799, "What is a 'Contract' in programming?", [
    "The set of methods and properties an interface or abstract class requires",
    "A legal document for code",
    "The pubspec.yaml file",
    "A type of constructor",
  ]),
  Quiz(800, "What is the output of calling an overridden method?", [
    "The most specific implementation (subclass) is executed",
    "The most general implementation (superclass) is executed",
    "An error",
    "null",
  ]),

  Quiz(801, "Can you use 'implements' with a concrete class?", [
    "Yes, every class can act as an interface",
    "No, only abstract classes",
    "Only if the class has no methods",
    "Only in private libraries",
  ]),
  Quiz(802, "Does 'implements' copy the method logic from the parent?", [
    "No, it only copies the type signature; you must provide logic",
    "Yes, it works like 'extends'",
    "Only for final methods",
    "Only in older versions of Dart",
  ]),
  Quiz(803, "Can a subclass override a static method?", [
    "No, static methods are not inherited and cannot be overridden",
    "Yes, using @override",
    "Only if the static method is public",
    "Only in Dart 3.0",
  ]),
  Quiz(804, "What is 'Code Reuse'?", [
    "The ability to use existing superclass logic in a subclass",
    "Copying and pasting code",
    "Running the same app on Android and iOS",
    "Using a variable twice",
  ]),
  Quiz(
    805,
    "Which modifier in Dart 3 allows a class to be extended but not implemented?",
    ["base", "interface", "final", "sealed"],
  ),
  Quiz(
    806,
    "Which modifier in Dart 3 allows a class to be implemented but not extended?",
    ["interface", "base", "final", "sealed"],
  ),
  Quiz(
    807,
    "Which modifier in Dart 3 prevents a class from being either extended or implemented?",
    ["final", "base", "interface", "sealed"],
  ),
  Quiz(808, "What is a 'Sealed Class' in Dart 3?", [
    "A class that can only be extended by classes in the same library (file)",
    "A class that is private",
    "A class that cannot have any methods",
    "A class used for encryption",
  ]),
  Quiz(809, "What is a 'Mixin'?", [
    "A way of reusing a class's code in multiple class hierarchies",
    "A type of abstract class",
    "A private variable",
    "A constructor for lists",
  ]),
  Quiz(810, "Which keyword is used to apply a Mixin?", [
    "with",
    "extends",
    "implements",
    "use",
  ]),
  Quiz(811, "How is a Mixin declared?", [
    "mixin Name { ... }",
    "class Name mixin { ... }",
    "abstract mixin Name { ... }",
    "interface Name { ... }",
  ]),
  Quiz(812, "Can a Mixin be instantiated?", [
    "No",
    "Yes",
    "Only if it's public",
    "Only in the main function",
  ]),
  Quiz(813, "Can a class extend one class and use multiple mixins?", [
    "Yes, e.g., class Bird extends Animal with Fly, Chirp",
    "No, only one mixin allowed",
    "Only if it doesn't extend a class",
    "Only in Flutter",
  ]),
  Quiz(814, "What is the 'Diamond Problem'?", [
    "Conflict when inheriting from two classes that have the same method",
    "A syntax error with brackets",
    "An issue with constant constructors",
    "A problem with null safety",
  ]),
  Quiz(815, "How does Dart avoid the Diamond Problem?", [
    "By using Mixins and a linear 'Mixin Composition' order",
    "By not allowing multiple inheritance",
    "By choosing the alphabetical method",
    "By throwing an error",
  ]),
  Quiz(816, "What is 'Method Signature'?", [
    "The name and parameter list of a method",
    "The code inside the method",
    "The return keyword",
    "The file name where the method is",
  ]),
  Quiz(817, "When overriding, can you add more optional parameters?", [
    "Yes, as long as the required parameters match",
    "No",
    "Only in abstract classes",
    "Only if the return type is void",
  ]),
  Quiz(818, "What is the 'is!' operator?", [
    "Checks if an object is NOT of a certain type",
    "A logical 'not' for integers",
    "A way to cast an object",
    "An error in syntax",
  ]),
  Quiz(819, "Can an abstract class have instance variables?", [
    "Yes",
    "No",
    "Only if they are final",
    "Only if they are private",
  ]),
  Quiz(820, "Can a constructor in an abstract class be factory?", [
    "Yes, often used to return a concrete subclass",
    "No",
    "Only if it's named",
    "Only in Dart 2.0",
  ]),
  Quiz(821, "What is 'Composition over Inheritance'?", [
    "The design principle that classes should achieve reuse by containing other classes rather than inheriting",
    "A rule that inheritance is always better",
    "A way to write faster code",
    "A technique for UI design",
  ]),
  Quiz(822, "Which is more flexible: Composition or Inheritance?", [
    "Composition",
    "Inheritance",
    "Both are equal",
    "Neither",
  ]),
  Quiz(823, "Can a subclass access the parent's private members?", [
    "No, private members are library-private",
    "Yes, always",
    "Only if it uses 'super'",
    "Only if it's in the same class",
  ]),
  Quiz(824, "What is 'Runtime Polymorphism'?", [
    "The method call is resolved at runtime based on the object's actual type",
    "The method call is resolved at compile time",
    "Changing the class of an object while it runs",
    "Using the dynamic keyword",
  ]),
  Quiz(825, "In 'class A extends B', which class is the 'Child'?", [
    "A",
    "B",
    "Both",
    "Neither",
  ]),
  Quiz(826, "Can you call 'super' multiple times in one method?", [
    "Yes",
    "No",
    "Only if it's a constructor",
    "Only if it's async",
  ]),
  Quiz(827, "What is 'Shadowing' a field?", [
    "Defining a field in a subclass with the same name as a field in the parent",
    "Making a field private",
    "Using a field as a method",
    "Deleting a field",
  ]),
  Quiz(828, "Is field shadowing recommended in Dart?", [
    "No, it often leads to confusion; use getters or parameters instead",
    "Yes, it's a best practice",
    "Only for private fields",
    "Only in Flutter",
  ]),
  Quiz(829, "What is the keyword 'on' used for in Mixins?", [
    "To restrict the mixin to only be usable by classes that extend a specific type",
    "To start a loop",
    "To define a listener",
    "To use a mixin",
  ]),
  Quiz(830, "In 'mixin M on C', what does this mean?", [
    "Mixin M can only be applied to classes that are also of type C",
    "Mixin M is based on class C",
    "Class C is a mixin",
    "Error",
  ]),
  Quiz(
    831,
    "What happens if a class implements an interface but doesn't override all methods?",
    [
      "It must be marked as an abstract class",
      "It works fine",
      "It throws a runtime error",
      "The missing methods are added automatically",
    ],
  ),
  Quiz(832, "Which keyword describes 'is-a' relationship?", [
    "extends",
    "with",
    "implements",
    "contains",
  ]),
  Quiz(833, "Which keyword describes 'behaves-as' relationship?", [
    "implements",
    "extends",
    "super",
    "static",
  ]),
  Quiz(834, "Which keyword describes 'has-a' relationship?", [
    "Composition (Instance variable)",
    "extends",
    "with",
    "implements",
  ]),
  Quiz(835, "Can you override a static property?", [
    "No",
    "Yes",
    "Only if it's final",
    "Only in the same file",
  ]),
  Quiz(836, "What is a 'Hook Method'?", [
    "A method in a parent class (often empty) intended to be overridden by subclasses",
    "A method that catches errors",
    "A method that calls a web API",
    "A constructor",
  ]),
  Quiz(
    837,
    "Does 'super.method()' work if the method is abstract in the parent?",
    [
      "No, because there is no implementation to call",
      "Yes",
      "Only if the subclass is also abstract",
      "Only in async methods",
    ],
  ),
  Quiz(838, "Which of these is a valid class header?", [
    "class Student extends Person with Sports implements Exam",
    "class Student with Sports extends Person implements Exam",
    "class Student implements Exam extends Person with Sports",
    "class Student Person with Sports",
  ]),
  Quiz(839, "In 'class A with B', what is B?", [
    "A Mixin",
    "A Superclass",
    "An Interface",
    "A Subclass",
  ]),
  Quiz(840, "Can a mixin have a constructor?", [
    "No",
    "Yes",
    "Only if it's named",
    "Only in Dart 3.0",
  ]),
  Quiz(841, "What is 'Deep Inheritance'?", [
    "A long chain of classes extending each other (e.g., A -> B -> C -> D)",
    "Using inheritance in a deep file folder",
    "Inheriting from a private class",
    "An error in logic",
  ]),
  Quiz(842, "Is deep inheritance generally recommended?", [
    "No, it makes code hard to maintain; favor composition",
    "Yes, it shows good architecture",
    "Only in large apps",
    "Only for UI components",
  ]),
  Quiz(843, "What is the output of 'print(myObject is Object)'?", [
    "true (always true for any class instance)",
    "false",
    "true only for base classes",
    "Error",
  ]),
  Quiz(844, "Can you override the 'noSuchMethod' method?", [
    "Yes, to handle calls to non-existent methods (dynamic only)",
    "No",
    "Only in abstract classes",
    "Only in private classes",
  ]),
  Quiz(845, "What does 'covariance' allow in overriding?", [
    "A subclass method can accept a more specific type than the parent method",
    "A subclass can return a more general type",
    "A subclass can change the method name",
    "It allows calling private methods",
  ]),
  Quiz(
    846,
    "Which modifier makes a class 'instantiable' only within its library?",
    ["sealed", "abstract", "final", "base"],
  ),
  Quiz(847, "What is a 'Virtual Method' in other languages?", [
    "In Dart, all instance methods are virtual by default",
    "A method that doesn't exist",
    "An abstract method",
    "A static method",
  ]),
  Quiz(
    848,
    "Can a subclass have a different constructor name than the parent?",
    [
      "Yes, constructors are not inherited",
      "No",
      "Only if it's a factory",
      "Only in Flutter",
    ],
  ),
  Quiz(
    849,
    "What happens if a class implements an interface but is also abstract?",
    [
      "It does not need to implement the methods yet",
      "It must implement them immediately",
      "It throws an error",
      "The methods are ignored",
    ],
  ),
  Quiz(850, "Why is 'extends' called 'Inheritance'?", [
    "Because the child class 'inherits' the structure and behavior of the parent",
    "Because it saves money in development",
    "Because it's a legal term",
    "Because the parent class dies",
  ]),
];
final List<Quiz> dartQuizM10 = [
  // --- Topic 64: Mixins: Code Reuse with 'with' ---
  Quiz(851, "What is the primary purpose of a Mixin in Dart?", [
    "To reuse a class's code in multiple class hierarchies without inheritance",
    "To create a new instance of an abstract class",
    "To define a private variable that cannot be changed",
    "To replace the main function in a library",
  ]),
  Quiz(852, "Which keyword is used to apply a Mixin to a class?", [
    "with",
    "extends",
    "implements",
    "using",
  ]),
  Quiz(853, "How do you declare a Mixin in Dart?", [
    "mixin Musical { ... }",
    "class Musical mixin { ... }",
    "abstract Musical { ... }",
    "interface Musical { ... }",
  ]),
  Quiz(854, "Can a Mixin be instantiated using the 'new' keyword?", [
    "No, mixins cannot be instantiated on their own",
    "Yes, if they are public",
    "Only if they have a factory constructor",
    "Only in Dart 3.0",
  ]),
  Quiz(855, "What does 'mixin M on C' signify?", [
    "The mixin M can only be used by classes that extend or implement C",
    "The mixin M is a subclass of C",
    "The mixin M is stored on the stack in class C",
    "Class C is a mixin of M",
  ]),

  // --- Topic 65: Extension Methods on Existing Types ---
  Quiz(856, "What are Extension Methods?", [
    "A way to add functionality to existing libraries without modifying them",
    "A method that increases the length of a List",
    "A way to inherit from a final class",
    "A method that runs only when the app is in the background",
  ]),
  Quiz(857, "Which keyword is used to define an extension?", [
    "extension",
    "expand",
    "extra",
    "on",
  ]),
  Quiz(
    858,
    "What is the syntax for an extension named 'NumberParsing' on String?",
    [
      "extension NumberParsing on String { ... }",
      "extension String NumberParsing { ... }",
      "extension on String into NumberParsing { ... }",
      "class NumberParsing extends String { ... }",
    ],
  ),
  Quiz(
    859,
    "Can extension methods access private members of the type they extend?",
    [
      "No, they only have access to public members",
      "Yes, always",
      "Only if the extension is in the same file",
      "Only if the members are static",
    ],
  ),
  Quiz(860, "How do you call an extension method 'toInt()' on a string 's'?", [
    "s.toInt()",
    "toInt(s)",
    "String.toInt(s)",
    "extension.toInt(s)",
  ]),

  // --- Topic 66: Basic Enums for State ---
  Quiz(861, "What is an 'Enum' in Dart?", [
    "A special kind of class used to represent a fixed number of constant values",
    "A list that can only store integers",
    "A function that returns a boolean",
    "A way to encrypt strings",
  ]),
  Quiz(862, "Which keyword is used to create an enum?", [
    "enum",
    "const",
    "list",
    "type",
  ]),
  Quiz(863, "What is the default 'index' of the first element in an enum?", [
    "0",
    "1",
    "-1",
    "null",
  ]),
  Quiz(864, "How do you access all values of an enum called 'Status'?", [
    "Status.values",
    "Status.all",
    "Status.toList()",
    "Status.getValues()",
  ]),
  Quiz(865, "What is the result of 'Status.running.toString()'?", [
    "'Status.running'",
    "'running'",
    "0",
    "null",
  ]),

  // --- Topic 67: Enhanced Enums with Fields (Dart 3.0) ---
  Quiz(866, "What is an 'Enhanced Enum'?", [
    "An enum that can have fields, methods, and constructors",
    "An enum that can be changed at runtime",
    "An enum that stores only dynamic values",
    "An enum used only in Flutter widgets",
  ]),
  Quiz(867, "In an enhanced enum, the constructor must be...", [
    "const",
    "factory",
    "static",
    "async",
  ]),
  Quiz(868, "Can enhanced enums implement interfaces?", [
    "Yes",
    "No",
    "Only if they have no fields",
    "Only in private libraries",
  ]),
  Quiz(869, "How do you define a field 'code' for an enum 'ErrorCode'?", [
    "enum ErrorCode { unauthorized(401); final int code; const ErrorCode(this.code); }",
    "enum ErrorCode { unauthorized = 401; }",
    "enum ErrorCode(int code) { unauthorized(401); }",
    "enum ErrorCode { unauthorized; int code = 401; }",
  ]),
  Quiz(870, "Enhanced enums were introduced in which version of Dart?", [
    "2.17 (and further improved in 3.0)",
    "1.0",
    "2.0",
    "4.0",
  ]),

  // --- Topic 68: Comparing Mixins vs Inheritance ---
  Quiz(871, "Which keyword represents 'Linearization' in Dart mixins?", [
    "with",
    "extends",
    "implements",
    "super",
  ]),
  Quiz(
    872,
    "What happens if a class and its mixin have the same method name?",
    [
      "The method in the mixin overrides the one in the superclass",
      "The program crashes",
      "The superclass method always wins",
      "An error occurs at compile time",
    ],
  ),
  Quiz(873, "Can a mixin extend another class?", [
    "No, mixins cannot use the 'extends' keyword",
    "Yes",
    "Only if the class is abstract",
    "Only in Flutter",
  ]),
  Quiz(874, "When should you use a Mixin instead of Inheritance?", [
    "When you want to share behavior across unrelated classes",
    "When you want to create a strict 'is-a' relationship",
    "When you only have one subclass",
    "When you want to hide data",
  ]),
  Quiz(875, "What is the 'Mixin Order' in 'class A extends B with C, D'?", [
    "B is the base, then C, then D (D is the most specific)",
    "D is the base, then C, then B",
    "They are all processed simultaneously",
    "C and D must be the same type",
  ]),

  // --- Mix & Deep Dive ---
  Quiz(876, "What is a common use case for enums in Flutter?", [
    "Managing the state of a UI (e.g., loading, success, error)",
    "Creating a list of names",
    "Calculating math formulas",
    "Storing user passwords",
  ]),
  Quiz(877, "Can you add a getter to an enum?", [
    "Yes (in enhanced enums)",
    "No",
    "Only if the enum is private",
    "Only for the index field",
  ]),

  Quiz(878, "What is the keyword 'on' used for in extensions?", [
    "To specify the type that the extension applies to",
    "To start a loop in an extension",
    "To connect a mixin to an extension",
    "To make the extension public",
  ]),
  Quiz(879, "Can an extension have static fields?", [
    "Yes",
    "No",
    "Only if they are final",
    "Only in Dart 1.0",
  ]),
  Quiz(880, "What is an 'Unnamed Extension'?", [
    "extension on int { ... } (An extension without a name, only usable in the same file)",
    "An extension that has no methods",
    "An extension that cannot be imported",
    "A bug in the Dart compiler",
  ]),
  Quiz(
    881,
    "What happens if two extensions on the same type have the same method name?",
    [
      "You must call the extension explicitly: ExtensionName(object).method()",
      "The program crashes",
      "Dart picks the one declared first",
      "The code will not compile",
    ],
  ),
  Quiz(882, "Can you use 'this' inside an extension method?", [
    "Yes, it refers to the instance of the type being extended",
    "No",
    "Only if the method is static",
    "Only for private members",
  ]),
  Quiz(883, "Is it possible to iterate through enum values using a loop?", [
    "Yes, using Color.values.forEach(...) or a for-in loop",
    "No",
    "Only if the enum has fewer than 10 items",
    "Only in Dart 3.0",
  ]),
  Quiz(884, "Which property of an enum returns its name as a string?", [
    "name",
    "toString()",
    "label",
    "key",
  ]),
  Quiz(885, "Can an enum have a 'main' method?", [
    "No",
    "Yes",
    "Only if it is static",
    "Only if it's an enhanced enum",
  ]),
  Quiz(886, "What is the purpose of 'mixin' vs 'abstract class'?", [
    "Mixins are for horizontal code reuse; abstract classes are for vertical hierarchies",
    "They are exactly the same",
    "Abstract classes are faster",
    "Mixins can be instantiated",
  ]),
  Quiz(887, "Can you apply a mixin to an abstract class?", [
    "Yes",
    "No",
    "Only if the mixin is also abstract",
    "Only if the class has no methods",
  ]),
  Quiz(888, "Can a mixin have abstract methods?", [
    "Yes, the class using the mixin must implement them",
    "No",
    "Only if the mixin is named 'AbstractMixin'",
    "Only in Dart 3.0",
  ]),
  Quiz(889, "What is the difference between a mixin and a class in Dart 3?", [
    "A class can be instantiated, a mixin cannot; a class can have constructors, a mixin cannot",
    "There is no difference",
    "Mixins cannot have methods",
    "Classes cannot use the 'on' keyword",
  ]),
  Quiz(890, "How do you check the type of an enum value?", [
    "if (myStatus is Status)",
    "if (myStatus == 'Status')",
    "if (myStatus.type == Status)",
    "if (Status.has(myStatus))",
  ]),

  Quiz(891, "Can an extension method be used with 'dynamic' types?", [
    "No, extension methods are resolved statically at compile time",
    "Yes",
    "Only if the extension is public",
    "Only if the type is a String",
  ]),
  Quiz(892, "Why would you use an extension on 'Iterable' instead of 'List'?", [
    "To make the method available to Sets and Lists simultaneously",
    "Because Iterable is faster",
    "Because Lists cannot have extensions",
    "To prevent sorting",
  ]),
  Quiz(893, "What is 'Mixin Composition'?", [
    "The way Dart stacks mixins from left to right behind the class",
    "A way to combine two mixins into one",
    "A way to delete a mixin",
    "Using a mixin as a constructor",
  ]),
  Quiz(894, "Can you use 'super' inside a Mixin?", [
    "Yes, to call the next implementation in the stack",
    "No",
    "Only if the mixin is applied to a subclass",
    "Only for static methods",
  ]),
  Quiz(895, "What happens if you define a constructor in a 'mixin'?", [
    "A compile-time error occurs (mixins cannot have constructors)",
    "It works like a normal class",
    "The constructor is ignored",
    "It becomes a factory mixin",
  ]),
  Quiz(896, "Which enum property returns the integer position?", [
    "index",
    "id",
    "value",
    "position",
  ]),
  Quiz(897, "Can you use a 'switch' statement with an enum?", [
    "Yes, and Dart can warn you if a case is missing (Exhaustiveness checking)",
    "No",
    "Only if the enum is enhanced",
    "Only if you use 'default'",
  ]),
  Quiz(898, "Can an extension add a new constructor to a class?", [
    "No, extensions can only add members (methods, getters, setters, operators)",
    "Yes",
    "Only factory constructors",
    "Only in the same file",
  ]),
  Quiz(
    899,
    "Can an extension add a new instance variable (field) to a class?",
    [
      "No, they cannot store new instance data",
      "Yes",
      "Only if the field is late",
      "Only if the field is private",
    ],
  ),
  Quiz(
    900,
    "What keyword allows a class to be used as a mixin in older Dart versions?",
    [
      "class (A normal class could be used as a mixin if it had no constructors)",
      "mixin-class",
      "with",
      "abstract",
    ],
  ),
];
final List<Quiz> dartQuizM11 = [
  // --- Topic 69: The Principle of Null Safety ---
  Quiz(901, "What is the primary goal of Sound Null Safety in Dart?", [
    "To eliminate null reference errors at runtime by catching them at compile-time",
    "To make all variables automatically optional",
    "To remove the null keyword from the language",
    "To speed up mathematical calculations",
  ]),
  Quiz(902, "What does 'Sound' Null Safety mean in Dart?", [
    "If the type system says a variable is non-nullable, it can never be null at runtime",
    "The code produces a sound when a null error occurs",
    "All variables must be initialized in the main function",
    "The compiler automatically fixes all null errors",
  ]),
  Quiz(903, "Before Null Safety, what was the default behavior of variables?", [
    "They were all nullable by default",
    "They were all non-nullable by default",
    "They were all constants",
    "They had to be initialized with 0",
  ]),
  Quiz(904, "Which Dart version introduced Sound Null Safety as the default?", [
    "2.12",
    "1.0",
    "3.0",
    "2.0",
  ]),
  Quiz(905, "What is a 'Non-nullable' type?", [
    "A type that must always contain a value and can never be assigned null",
    "A type that can only be an integer",
    "A type that is defined using the ? symbol",
    "A type that is only used for constants",
  ]),

  // --- Topic 70: Nullable Types (?) ---
  Quiz(
    906,
    "How do you declare a variable that can either hold a String or be null?",
    [
      "String? name;",
      "String name = null;",
      "String !name;",
      "Nullable<String> name;",
    ],
  ),
  Quiz(907, "What is the result of 'int? x;' if it is not initialized?", [
    "It is null",
    "It is 0",
    "A compile-time error occurs",
    "It is undefined",
  ]),
  Quiz(
    908,
    "Can you assign a nullable int (int?) to a non-nullable int variable?",
    [
      "No, not without checking for null or using a cast",
      "Yes, always",
      "Only if the value is currently 0",
      "Only in the main function",
    ],
  ),
  Quiz(
    909,
    "Which of these is a valid declaration for a nullable list of non-nullable strings?",
    [
      "List<String>? items;",
      "List<String?> items;",
      "List?<String> items;",
      "NullableList<String> items;",
    ],
  ),
  Quiz(
    910,
    "Which of these is a valid declaration for a list where the items can be null?",
    [
      "List<String?> items;",
      "List<String>? items;",
      "List?<String?> items;",
      "String[]? items;",
    ],
  ),

  // --- Topic 71: The Null-aware Operator (?.) ---
  Quiz(911, "What does the ?. operator do?", [
    "Calls a method or property only if the object is not null; otherwise returns null",
    "Forcefully calls a method even if the object is null",
    "Checks if a variable is equal to null",
    "Deletes the object if it is null",
  ]),
  Quiz(912, "What is the output of 'String? name; print(name?.length);'?", [
    "null",
    "0",
    "A runtime error",
    "A compile-time error",
  ]),
  Quiz(913, "What is 'Optional Chaining'?", [
    "Using multiple ?. operators in a row (e.g., user?.address?.city)",
    "Using a list of optional parameters",
    "Linking multiple null checks with 'if' statements",
    "A way to make code run faster",
  ]),
  Quiz(
    914,
    "If 'user?.age' is used and 'user' is null, what is the resulting type of the expression?",
    ["A nullable type (e.g., int?)", "A non-nullable int", "void", "dynamic"],
  ),
  Quiz(915, "How do you call a function 'save()' on a nullable object 'db'?", [
    "db?.save();",
    "db.save();",
    "db!.save();",
    "db??save();",
  ]),

  // --- Topic 72: The If-Null Operator (??) ---
  Quiz(916, "What does the ?? operator do?", [
    "Returns the left expression if it is not null; otherwise returns the right expression",
    "Checks if two values are both null",
    "Assigns a value only if the variable is null",
    "Throws an error if the value is null",
  ]),
  Quiz(
    917,
    "What is the result of 'String? name; String display = name ?? 'Guest';'?",
    ["'Guest'", "null", "'' (empty string)", "Error"],
  ),
  Quiz(
    918,
    "Which operator is used to provide a 'fallback' or 'default' value?",
    ["??", "?.", "!", "??="],
  ),
  Quiz(919, "Can you chain multiple ?? operators?", [
    "Yes (e.g., a ?? b ?? c)",
    "No",
    "Only if all variables are strings",
    "Only in Dart 3.0",
  ]),
  Quiz(920, "What is the output of 'print(5 ?? 10);'?", [
    "5",
    "10",
    "15",
    "null",
  ]),

  // --- Topic 73: Null-aware Assignment (??=) ---
  Quiz(921, "What does the ??= operator do?", [
    "Assigns a value to a variable only if that variable is currently null",
    "Assigns a value to a variable even if it is not null",
    "Compares two variables for null",
    "Clears the value of a variable",
  ]),
  Quiz(922, "What is the result of 'int? x; x ??= 10; x ??= 20; print(x);'?", [
    "10",
    "20",
    "30",
    "null",
  ]),
  Quiz(923, "Why is ??= useful?", [
    "It simplifies initializing variables that might not have been set yet",
    "It makes variables final",
    "It converts a string to an integer",
    "It allows assigning null to a non-nullable variable",
  ]),
  Quiz(924, "Is 'x ??= y' the same as 'x = x ?? y'?", [
    "Yes",
    "No",
    "Only for integers",
    "Only in Flutter",
  ]),
  Quiz(925, "What happens if 'x' is already 5 and you run 'x ??= 10;'?", [
    "x remains 5",
    "x becomes 10",
    "x becomes 15",
    "An error is thrown",
  ]),

  // --- Topic 74: The Bang (!) Operator: When to avoid it ---
  Quiz(926, "What does the ! (Bang) operator do in Dart null safety?", [
    "Casts a nullable expression to a non-nullable type, throwing an error if it is null",
    "Checks if a value is false",
    "Assigns a default value",
    "Makes a variable private",
  ]),
  Quiz(927, "What happens if you use 'name!' when 'name' is actually null?", [
    "A runtime exception is thrown",
    "The program ignores it",
    "It returns an empty string",
    "The variable becomes 0",
  ]),
  Quiz(928, "When is the only time you should use the ! operator?", [
    "When you are 100% certain the value is not null, but the compiler cannot prove it",
    "Every time you use a nullable variable",
    "To make the code shorter",
    "To convert a String to a Bool",
  ]),
  Quiz(929, "What is a safer alternative to using the ! operator?", [
    "Using an 'if' check or the ?? operator",
    "Using the ?. operator with a bang",
    "Declaring all variables as dynamic",
    "Using try-catch blocks everywhere",
  ]),
  Quiz(930, "Does the ! operator perform a check at compile-time or runtime?", [
    "Runtime",
    "Compile-time",
    "Both",
    "Neither",
  ]),

  // --- Mix and Review Module 11 ---
  Quiz(
    931,
    "Which of these allows 'Promotion' of a nullable variable to non-nullable?",
    [
      "Checking 'if (variable != null)' inside a block",
      "Using the ?? operator",
      "Assigning null to it",
      "Using the var keyword",
    ],
  ),

  Quiz(932, "What is 'Definite Assignment' in Dart?", [
    "The compiler's ability to ensure a non-nullable variable is assigned a value before use",
    "Assigning a value with the ! operator",
    "Setting a variable to a specific memory address",
    "Making a variable final",
  ]),
  Quiz(
    933,
    "Which keyword is used to declare a variable that will be initialized later but is non-nullable?",
    ["late", "final", "wait", "async"],
  ),
  Quiz(934, "What is the difference between 'String?' and 'dynamic'?", [
    "String? is type-safe (only String or null); dynamic has no type safety",
    "They are the same",
    "dynamic cannot be null",
    "String? is only for constants",
  ]),
  Quiz(935, "Can you call '.length' on a 'String?' variable directly?", [
    "No, you must use ?. or check for null first",
    "Yes, always",
    "Only if it is initialized",
    "Only in Flutter widgets",
  ]),
  Quiz(936, "What is the null-aware spread operator?", [
    "...?",
    "..?",
    "?.?",
    "??",
  ]),
  Quiz(937, "What does 'List<int?>' mean?", [
    "A non-nullable list that can contain integers or nulls",
    "A nullable list of integers",
    "A list that can only contain nulls",
    "A list that cannot be changed",
  ]),
  Quiz(938, "What does 'List<int>?' mean?", [
    "A list that can be null, but its items cannot be null",
    "A list where items can be null",
    "A list that is empty",
    "An error in syntax",
  ]),
  Quiz(939, "How do you access a value in a nullable map 'myMap?.['key']'?", [
    "myMap?['key']",
    "myMap.['key']?",
    "myMap!['key']",
    "myMap??['key']",
  ]),
  Quiz(940, "Which of these is the 'Null-aware Index' operator?", [
    "?[ ]",
    "?.[]",
    "![ ]",
    "??[ ]",
  ]),
  Quiz(
    941,
    "Why does 'late String x;' not throw an error immediately if uninitialized?",
    [
      "Because 'late' promises the compiler that it will be set before it is read",
      "Because x is automatically null",
      "Because the compiler ignore late variables",
      "Because it is a static variable",
    ],
  ),
  Quiz(
    942,
    "What error is thrown when accessing an uninitialized 'late' variable?",
    [
      "LateInitializationError",
      "NullPointerException",
      "RangeError",
      "TypeError",
    ],
  ),
  Quiz(
    943,
    "Which operator allows you to chain a method call on a nullable object?",
    ["?.", "??", "!", ".?"],
  ),
  Quiz(944, "What is the 'Null Safety' benefit for performance?", [
    "Smaller binaries and faster execution because null checks are removed at runtime",
    "The code is automatically minified",
    "It uses more RAM but is faster",
    "There is no performance benefit",
  ]),
  Quiz(
    945,
    "Can a class constructor initialize a non-nullable field to null?",
    [
      "No, this will cause a compile-time error",
      "Yes",
      "Only if it's a factory constructor",
      "Only in Dart 1.0",
    ],
  ),
  Quiz(946, "How do you cast 'Object' to 'String' safely in null safety?", [
    "object as String",
    "object!",
    "object??String",
    "object?",
  ]),
  Quiz(
    947,
    "If you have 'void printLength(String? text)', what is the safest way to get the length?",
    ["text?.length ?? 0", "text!.length", "text.length", "text[0].length"],
  ),
  Quiz(948, "Which type is a subtype of all other types in Dart?", [
    "Never (represents a value that never exists)",
    "Object",
    "Null",
    "dynamic",
  ]),
  Quiz(949, "What is 'Never' used for?", [
    "To indicate a function that always throws an exception or never returns",
    "To create a variable that can be anything",
    "To define a constant",
    "To replace the void keyword",
  ]),
  Quiz(950, "What is the best practice for handling nulls in Dart?", [
    "Avoid null whenever possible by using non-nullable types and constructors",
    "Make everything nullable to be safe",
    "Use the ! operator everywhere",
    "Use dynamic for all variables",
  ]),
];
final List<Quiz> dartQuizM12 = [
  // --- Topic 75: Exceptions vs Errors ---
  Quiz(951, "In Dart, what is an 'Exception'?", [
    "A condition that a program might catch and recover from",
    "A failure that the program should not try to catch",
    "A syntax error in the code",
    "A type of constant variable",
  ]),
  Quiz(952, "In Dart, what is an 'Error'?", [
    "A failure that indicates a programmatic bug (e.g., OutOfMemoryError)",
    "A recoverable user mistake",
    "An optional warning from the compiler",
    "A way to skip code execution",
  ]),
  Quiz(953, "Which class is the base for all things that can be thrown?", [
    "Object",
    "Exception",
    "Error",
    "Throwable",
  ]),
  Quiz(954, "When should you use an Exception instead of an Error?", [
    "When the situation is expected to happen occasionally (like a file not found)",
    "When the developer made a logical mistake",
    "When the computer runs out of RAM",
    "When a variable is the wrong type",
  ]),
  Quiz(955, "What is 'Uncaught Exception'?", [
    "An exception that occurs without a matching try-catch block, stopping execution",
    "A bug that the compiler fixes automatically",
    "An exception that is handled by a global variable",
    "A comment in the code",
  ]),

  // --- Topic 76: Try-Catch Blocks ---
  Quiz(956, "What is the purpose of the 'try' block?", [
    "To wrap code that might potentially throw an exception",
    "To repeat a block of code 5 times",
    "To define a new function",
    "To check if a variable is null",
  ]),
  Quiz(957, "What is the purpose of the 'catch' block?", [
    "To handle the exception thrown by the try block",
    "To throw a new error",
    "To finalize the program state",
    "To restart the app",
  ]),
  Quiz(958, "How many arguments can a catch block take?", [
    "Two (Exception and StackTrace)",
    "One (Exception only)",
    "Three (Exception, StackTrace, and ErrorCode)",
    "Zero",
  ]),
  Quiz(959, "What is a 'StackTrace'?", [
    "A record of the sequence of function calls that led to the exception",
    "A list of all variables in the app",
    "A way to sort numbers",
    "A type of growable list",
  ]),
  Quiz(960, "How do you access the Exception object inside a catch block?", [
    "By defining a variable in the catch parameters, e.g., catch (e)",
    "By calling Exception.current()",
    "By using the 'this' keyword",
    "By checking the log file",
  ]),

  // --- Topic 77: Catching Specific Exceptions with 'on' ---
  Quiz(
    961,
    "How do you catch only a specific type of exception (e.g., FormatException)?",
    [
      "Use the 'on' keyword followed by the exception type",
      "Use 'catch (FormatException e)'",
      "Use 'if (e is FormatException)' inside catch",
      "Use the 'specific' keyword",
    ],
  ),
  Quiz(962, "Can you have multiple 'on' blocks for one 'try' block?", [
    "Yes, to handle different exceptions in different ways",
    "No, only one is allowed",
    "Only if the exceptions are strings",
    "Only in Flutter",
  ]),
  Quiz(
    963,
    "Where should the general 'catch' block be placed when using 'on'?",
    [
      "At the very end, after all 'on' blocks",
      "At the very beginning",
      "Inside the first 'on' block",
      "It doesn't matter",
    ],
  ),
  Quiz(
    964,
    "What happens if an 'on' block doesn't match the thrown exception?",
    [
      "Dart looks for the next 'on' or 'catch' block in sequence",
      "The program crashes immediately",
      "The exception is ignored",
      "The try block restarts",
    ],
  ),
  Quiz(965, "Is 'catch' required if you use 'on'?", [
    "No, 'on' is sufficient if you don't need the exception object or stack trace",
    "Yes, always",
    "Only if the app is in debug mode",
    "Only for custom exceptions",
  ]),

  // --- Topic 78: The Finally Clause ---
  Quiz(966, "When does the 'finally' block execute?", [
    "Always, whether an exception was thrown or not",
    "Only if an exception was thrown",
    "Only if NO exception was thrown",
    "Only if the program is closed",
  ]),
  Quiz(967, "What is a common use for the 'finally' block?", [
    "Closing files or cleaning up database connections",
    "Retrying the logic in the try block",
    "Printing the error message to the user",
    "Defining new variables",
  ]),
  Quiz(968, "Can you use 'finally' without a 'catch' block?", [
    "Yes, a try-finally structure is valid",
    "No",
    "Only if the class is abstract",
    "Only in Dart 1.0",
  ]),
  Quiz(
    969,
    "If a 'try' block has a 'return' statement, does 'finally' still run?",
    [
      "Yes, 'finally' runs before the function actually returns",
      "No",
      "Only if the return value is null",
      "Only if it's a void function",
    ],
  ),
  Quiz(970, "What is the correct order of blocks?", [
    "try -> on -> catch -> finally",
    "try -> finally -> catch",
    "catch -> try -> finally",
    "on -> try -> catch",
  ]),

  // --- Topic 79: Throwing Exceptions Manually ---
  Quiz(971, "Which keyword is used to raise an exception manually?", [
    "throw",
    "raise",
    "catch",
    "emit",
  ]),
  Quiz(972, "What can you 'throw' in Dart?", [
    "Any non-null object",
    "Only objects that extend Exception",
    "Only Strings",
    "Only Integers",
  ]),
  Quiz(973, "What does 'rethrow' do?", [
    "Sends the current exception to the next outer catch block",
    "Throws a new instance of the same error",
    "Restarts the try block",
    "Clears the stack trace",
  ]),
  Quiz(974, "Where is 'rethrow' typically used?", [
    "Inside a catch block",
    "Inside a finally block",
    "In the main function",
    "In a constructor",
  ]),
  Quiz(975, "What is the difference between 'throw e' and 'rethrow'?", [
    "rethrow preserves the original stack trace; throw e resets it",
    "They are identical",
    "throw e is faster",
    "rethrow can only be used with Errors",
  ]),

  // --- Topic 80: Creating Custom Exception Classes ---
  Quiz(976, "How do you create a custom exception class in Dart?", [
    "Create a class that implements the Exception class",
    "Use the 'new exception' keyword",
    "Inherit from the Error class",
    "Define a variable with the name Exception",
  ]),
  Quiz(977, "Why should you create custom exceptions?", [
    "To provide more context and specific handling for app-specific errors",
    "To make the code compile faster",
    "Because Dart requires it for all apps",
    "To replace try-catch blocks",
  ]),
  Quiz(978, "What is a good practice for custom exception classes?", [
    "Override the toString() method to provide a helpful error message",
    "Make all fields private",
    "Never use constructors",
    "Put them all in one big list",
  ]),
  Quiz(
    979,
    "In 'class MyException implements Exception', what is MyException?",
    [
      "A custom exception type",
      "A built-in Dart error",
      "A mixin",
      "A static method",
    ],
  ),
  Quiz(980, "Can a custom exception have fields like 'errorCode'?", [
    "Yes, it is a normal class and can have any fields you need",
    "No, exceptions can only have messages",
    "Only if it extends Error",
    "Only in Flutter",
  ]),

  // --- Mix and Review Module 12 ---
  Quiz(981, "What is the output if 'int.parse('abc')' is inside a try block?", [
    "A FormatException is thrown",
    "It returns 0",
    "It returns null",
    "The program ignores it",
  ]),
  Quiz(
    982,
    "Which exception is thrown when dividing by zero in integer division?",
    [
      "UnsupportedError",
      "IntegerDivisionByZeroException (Deprecated/Removed in recent Dart)",
      "DivideByZeroError",
      "NullThrownError",
    ],
  ),
  Quiz(
    983,
    "What happens if an exception is thrown inside a 'finally' block?",
    [
      "The new exception replaces any previous exception and propagates upward",
      "It is automatically caught",
      "The program ignores it",
      "The app restarts",
    ],
  ),
  Quiz(984, "Can you catch 'Error' types (like RangeError)?", [
    "Yes, but it's generally discouraged because they represent bugs",
    "No, Errors cannot be caught",
    "Only if you use 'on Error'",
    "Only in production mode",
  ]),
  Quiz(985, "What is 'Defensive Programming'?", [
    "Writing code that anticipates and handles potential errors before they crash the app",
    "Using a firewall in your Dart app",
    "Writing code that cannot be read by others",
    "Encrypting all variables",
  ]),
  Quiz(986, "Is 'throw' an expression or a statement in Dart?", [
    "It is an expression, meaning it can be used where a value is expected",
    "It is a statement only",
    "It is a keyword only",
    "It is a type of loop",
  ]),
  Quiz(987, "What does 'StackTrace.current' do?", [
    "Returns the stack trace at the current point in execution",
    "Returns the last error that happened",
    "Clears the memory",
    "Shows the list of all files",
  ]),
  Quiz(988, "In 'catch (e, s)', what does 's' represent?", [
    "The StackTrace object",
    "The String message",
    "The Status code",
    "The Superclass",
  ]),
  Quiz(989, "Which block is used for 'cleanup' logic?", [
    "finally",
    "catch",
    "on",
    "try",
  ]),
  Quiz(990, "Can you use 'try' without any 'catch' or 'finally'?", [
    "No, it must be followed by at least one catch, on, or finally block",
    "Yes",
    "Only if it's a one-line try",
    "Only in async functions",
  ]),
  Quiz(991, "What happens to variables declared inside a 'try' block?", [
    "They are local to the try block and cannot be accessed in catch or finally",
    "They are available everywhere in the function",
    "They are moved to the global scope",
    "They are automatically deleted",
  ]),
  Quiz(
    992,
    "What exception is thrown when a variable is cast to an incompatible type?",
    ["TypeError", "CastError", "FormatError", "ValueError"],
  ),
  Quiz(993, "Does 'finally' run if the program is terminated via 'exit(0)'?", [
    "No, the process ends immediately",
    "Yes",
    "Only if the exit is in the catch block",
    "Only on Android",
  ]),
  Quiz(994, "What is a 'Checked Exception'?", [
    "Dart does not have checked exceptions (unlike Java)",
    "An exception you check with an 'if' statement",
    "An exception that must be declared in the function signature",
    "A type of boolean",
  ]),
  Quiz(995, "Can you throw 'null' in Dart?", [
    "No, throwing null is an error itself (NullThrownError)",
    "Yes",
    "Only in older versions of Dart",
    "Only in web apps",
  ]),
  Quiz(996, "Which of these is most appropriate for a network timeout?", [
    "Exception",
    "Error",
    "Constant",
    "Stack",
  ]),
  Quiz(997, "How do you handle an error in an 'async' function?", [
    "Using try-catch blocks just like synchronous code",
    "Using .then().onError()",
    "Both are valid",
    "Async functions cannot have errors",
  ]),
  Quiz(998, "What is the result of 'throw 'Something went wrong';'?", [
    "The program throws a String as an exception",
    "A compile-time error",
    "It prints a warning but continues",
    "It creates a text file",
  ]),
  Quiz(999, "What is the best practice for 'catch' blocks?", [
    "Only catch exceptions you actually know how to handle",
    "Always catch everything to keep the app running",
    "Print the error and do nothing else",
    "Use empty catch blocks to hide errors",
  ]),
  Quiz(
    1000,
    "If an exception is not caught in the current function, what happens?",
    [
      "It 'bubbles up' the call stack to the calling function",
      "The function restarts",
      "The variable becomes null",
      "The program stops and skips that function",
    ],
  ),
];
final List<Quiz> dartQuizM13 = [
  // --- Topic 81: Event Loop and Single-Threaded Execution ---
  Quiz(1001, "What does it mean that Dart is 'single-threaded'?", [
    "It executes one operation at a time on a single execution sequence",
    "It can only run on single-core processors",
    "It cannot handle any asynchronous tasks",
    "It doesn't support functions",
  ]),
  Quiz(1002, "What is the primary role of the Event Loop?", [
    "To process events from a queue and execute their associated code",
    "To speed up mathematical calculations",
    "To manage memory allocation for objects",
    "To compile Dart code into machine code",
  ]),
  Quiz(1003, "Where do asynchronous events (like I/O) wait to be processed?", [
    "In the Event Queue",
    "On the Stack",
    "In the Heap",
    "In the Main function",
  ]),
  Quiz(1004, "Which queue has higher priority than the Event Queue?", [
    "The Microtask Queue",
    "The UI Queue",
    "The Garbage Collection Queue",
    "The Background Queue",
  ]),
  Quiz(
    1005,
    "What happens if the Event Loop is blocked by a heavy computation?",
    [
      "The UI freezes and becomes unresponsive",
      "The program automatically moves to a new thread",
      "The computation is cancelled",
      "The app runs faster",
    ],
  ),

  // --- Topic 82: Future States: Uncompleted vs Completed ---
  Quiz(1006, "What is a 'Future' in Dart?", [
    "A placeholder for a value that will be available at some point later",
    "A way to predict user input",
    "A variable that cannot be changed",
    "A type of List that grows over time",
  ]),
  Quiz(1007, "What are the two possible outcomes of a 'Completed' Future?", [
    "A value or an error",
    "A string or an integer",
    "A start and an end",
    "A success or a retry",
  ]),
  Quiz(1008, "What is the state of a Future before it finishes its task?", [
    "Uncompleted",
    "Pending",
    "Waiting",
    "Async",
  ]),
  Quiz(1009, "What happens when a Future 'completes with a value'?", [
    "The value is returned to the listener or 'awaited' caller",
    "The program ends",
    "The variable is deleted",
    "A new thread is created",
  ]),
  Quiz(1010, "Which state indicates that an asynchronous operation failed?", [
    "Completed with error",
    "Uncompleted",
    "Cancelled",
    "Rejected",
  ]),

  // --- Topic 83: The .then() Callback vs async/await ---
  Quiz(1011, "What is the purpose of the .then() method?", [
    "To register a callback that runs when a Future completes successfully",
    "To stop a Future from running",
    "To handle errors only",
    "To create a loop",
  ]),
  Quiz(1012, "Why is 'async/await' often preferred over '.then()'?", [
    "It makes asynchronous code look and behave like synchronous code",
    "It is 50% faster than .then()",
    "It prevents all runtime errors",
    "It is the only way to use Futures",
  ]),
  Quiz(1013, "In 'future.then((value) => ...)', what is 'value'?", [
    "The result produced by the completed Future",
    "The name of the function",
    "The error message",
    "The time elapsed",
  ]),
  Quiz(1014, "What is 'Callback Hell'?", [
    "Deeply nested .then() calls that make code hard to read and maintain",
    "A function that never returns",
    "A bug in the Event Loop",
    "When a program runs out of memory",
  ]),
  Quiz(1015, "Can you use both .then() and await in the same project?", [
    "Yes, they are both valid ways to handle Futures",
    "No, you must choose one",
    "Only in Flutter",
    "Only if the app is private",
  ]),

  // --- Topic 84: The await Mechanism and Function Suspension ---
  Quiz(1016, "What does the 'await' keyword do?", [
    "Pauses the execution of the current function until the Future completes",
    "Stops the entire program until the data arrives",
    "Forces a Future to complete instantly",
    "Creates a new thread for the operation",
  ]),
  Quiz(1017, "Where can the 'await' keyword be used?", [
    "Only inside functions marked with the 'async' keyword",
    "Anywhere in a Dart file",
    "Only in the main function",
    "Only inside if-statements",
  ]),
  Quiz(1018, "What is 'Function Suspension'?", [
    "The ability of an async function to yield control back to the Event Loop while waiting",
    "Deleting a function from memory",
    "Stopping a function because of an error",
    "Renaming a function",
  ]),
  Quiz(1019, "Does 'await' block the main UI thread?", [
    "No, it only suspends the specific async function it is in",
    "Yes, until the data is fetched",
    "Only if the Future takes more than 5 seconds",
    "Only on web platforms",
  ]),
  Quiz(
    1020,
    "What is the return type of an 'async' function that returns nothing?",
    ["Future<void>", "void", "Null", "Future<dynamic>"],
  ),

  // --- Topic 85: Declaring Future-Returning Functions ---
  Quiz(1021, "How do you declare a function that will return a String later?", [
    "Future<String> fetchData() async { ... }",
    "String fetchData() async { ... }",
    "async String fetchData() { ... }",
    "Future fetchData<String>() { ... }",
  ]),
  Quiz(
    1022,
    "If a function is marked 'async' but has no 'await', what does it return?",
    [
      "A Future that completes immediately with the returned value",
      "A standard value (not a Future)",
      "null",
      "An error",
    ],
  ),
  Quiz(1023, "Can a constructor be marked as 'async'?", [
    "No, constructors cannot be asynchronous",
    "Yes, if it returns a Future",
    "Only for factory constructors",
    "Only in Dart 3.0",
  ]),
  Quiz(
    1024,
    "Why use 'Future<void>' instead of 'void' for an async function?",
    [
      "To allow the caller to 'await' the completion of the function",
      "Because 'void' isn't allowed with 'async'",
      "To make the code run faster",
      "To hide the return value",
    ],
  ),
  Quiz(1025, "What keyword is used to return a value from an async function?", [
    "return (the value is automatically wrapped in a Future)",
    "yield",
    "complete",
    "async return",
  ]),

  // --- Topic 86: Future.wait() and Iterable Futures ---
  Quiz(1026, "What is the purpose of 'Future.wait()'?", [
    "To wait for multiple Futures to complete and return their results as a List",
    "To wait for a specific amount of time",
    "To stop all running Futures",
    "To run Futures one by one sequentially",
  ]),
  Quiz(1027, "What happens if one Future fails in a 'Future.wait()' call?", [
    "The entire Future.wait() fails with that error",
    "It returns only the successful results",
    "It ignores the error and returns null",
    "The program crashes immediately",
  ]),
  Quiz(
    1028,
    "In what order does 'Future.wait()' execute the provided Futures?",
    [
      "They start concurrently (at the same time)",
      "In the order they are listed in the List",
      "Alphabetically by function name",
      "From shortest to longest duration",
    ],
  ),
  Quiz(
    1029,
    "What is the result type of 'await Future.wait([Future<int>, Future<int>])'?",
    ["List<int>", "int", "Future<int>", "Map<int, int>"],
  ),
  Quiz(1030, "How do you handle multiple unrelated async tasks efficiently?", [
    "Use Future.wait() to run them in parallel",
    "Await them one by one",
    "Put them in a for-loop with await",
    "Use the 'sync' keyword",
  ]),

  // --- Topic 87: Handling Future Errors and Timeouts ---
  Quiz(1031, "How do you catch an error in an 'async/await' block?", [
    "Using a standard try-catch block",
    "Using the .catchError() method",
    "Using an if-null check",
    "Errors cannot be caught in async code",
  ]),
  Quiz(1032, "What does the '.timeout()' method do on a Future?", [
    "Throws a TimeoutException if the Future doesn't complete within a set time",
    "Stops the program after 5 seconds",
    "Automatically retries the Future",
    "Changes the priority of the Future",
  ]),
  Quiz(1033, "Which method is used with .then() to handle errors?", [
    "catchError()",
    "onError()",
    "finally()",
    "handle()",
  ]),
  Quiz(1034, "What is the purpose of the '.whenComplete()' method?", [
    "To run code after a Future finishes, regardless of success or failure",
    "To run code only if the Future fails",
    "To restart the Future",
    "To return a default value",
  ]),
  Quiz(1035, "How can you provide a fallback value for a Future that fails?", [
    "Use .catchError() and return the fallback value",
    "Use the 'fallback' keyword",
    "Use a try-catch and return the value in catch",
    "Both the first and third options are correct",
  ]),

  // --- Mix and Review (1036 - 1100) ---
  Quiz(1036, "What happens to the code after an 'await' line?", [
    "It is scheduled to run after the awaited Future completes",
    "It runs immediately without waiting",
    "It is deleted",
    "It runs on a background thread",
  ]),

  Quiz(1037, "Which of these is an example of an 'Event' in the Event Loop?", [
    "A user tap/click",
    "A variable declaration",
    "A mathematical addition",
    "A print statement",
  ]),
  Quiz(1038, "What is 'Future.delayed' commonly used for?", [
    "Creating a Future that completes after a specific duration (like a timer)",
    "Stopping the app for a set time",
    "Making the code run faster",
    "Deleting data after a delay",
  ]),
  Quiz(1039, "In 'Future.value(10)', when does the Future complete?", [
    "Immediately in the next event loop cycle",
    "After 10 seconds",
    "Never",
    "Only when called",
  ]),
  Quiz(1040, "Can an async function return a non-Future type?", [
    "No, the return value is always wrapped in a Future",
    "Yes",
    "Only if the return is 'void'",
    "Only in Dart 1.0",
  ]),
  Quiz(1041, "What is 'Parallelism' in Dart?", [
    "Achieved by using Isolates, which are separate memory heaps",
    "Achieved by using 'await'",
    "Achieved by running two functions in the same list",
    "Dart does not support parallelism",
  ]),
  Quiz(1042, "How is an Isolate different from a Thread?", [
    "Isolates do not share memory; they communicate via messages",
    "Threads are faster",
    "Isolates are only for UI",
    "They are exactly the same",
  ]),
  Quiz(1043, "What is the primary benefit of Asynchronous programming?", [
    "Keeping the UI responsive while performing long-running tasks",
    "Making the computer processor faster",
    "Using less battery",
    "Reducing the lines of code",
  ]),
  Quiz(1044, "What happens if you forget to 'await' a Future?", [
    "The function continues immediately, likely with a 'Future' object instead of data",
    "The program crashes",
    "The Future is cancelled",
    "Nothing, Dart awaits it automatically",
  ]),
  Quiz(1045, "Is 'await' available in the 'main' function?", [
    "Yes, if the main function is marked 'async'",
    "No, never",
    "Only in Flutter projects",
    "Only in Dart 3.0",
  ]),

  Quiz(1046, "What does 'unawaited' (from pedantic/meta) do?", [
    "Explicitly indicates that a Future is intentionally not being awaited",
    "Forces a Future to finish now",
    "Throws an error if the Future is too slow",
    "Hides the Future from the Event Loop",
  ]),
  Quiz(1047, "Can you use 'try-catch' with '.then()'?", [
    "No, .then() uses .catchError() for error handling",
    "Yes",
    "Only if the function is static",
    "Only for network errors",
  ]),
  Quiz(
    1048,
    "Which Future constructor is used to handle multiple asynchronous calls at once?",
    ["Future.wait()", "Future.any()", "Future.forEach()", "Future.all()"],
  ),
  Quiz(1049, "What is 'Future.microtask' used for?", [
    "Running a task as soon as possible before the next Event Queue item",
    "Running a very small task",
    "Running a task on a mobile phone only",
    "Running a task every microsecond",
  ]),
  Quiz(1050, "What is 'Future.sync'?", [
    "A Future that executes its computation immediately and synchronously",
    "A Future that syncs data with a server",
    "A Future that runs only on the main thread",
    "An error-handling tool",
  ]),
  Quiz(
    1051,
    "In Dart 3.0, can you use await at the 'top-level' (outside a function)?",
    [
      "No, it must still be inside an async function",
      "Yes",
      "Only in the console",
      "Only in library files",
    ],
  ),
  Quiz(1052, "What is the 'FutureOr' type?", [
    "A type that can be either a T or a Future<T>",
    "A type that is only a Future",
    "A way to say 'Future or Error'",
    "An outdated Dart type",
  ]),
  Quiz(
    1053,
    "What happens if an async function throws an exception before the first 'await'?",
    [
      "The exception is thrown synchronously",
      "It is wrapped in a Future error",
      "It is ignored",
      "The program crashes",
    ],
  ),
  Quiz(1054, "How do you 'cancel' a standard Future in Dart?", [
    "Standard Futures are not cancellable; you need a CancelableOperation from the 'async' package",
    "Use the .cancel() method",
    "Set the Future to null",
    "Close the Event Loop",
  ]),
  Quiz(1055, "Which is the correct way to wait 2 seconds?", [
    "await Future.delayed(Duration(seconds: 2));",
    "sleep(2);",
    "Future.wait(2);",
    "delay(2000);",
  ]),
  Quiz(1056, "What is the status of 'Future.error('fail')'?", [
    "Completed with an error",
    "Uncompleted",
    "Active",
    "Cancelled",
  ]),
  // Modified 1057 to be independent
  Quiz(
    1057,
    "What is the output of: print(1); Future(() => print(2)); print(3);",
    ["1, 3, 2", "1, 2, 3", "2, 1, 3", "3, 1, 2"],
  ),

  // Modified 1058 to be independent
  Quiz(
    1058,
    "In the code 'Future(() => print(2)); print(3);', why does '3' print before '2'?",
    [
      "Because the Future is scheduled in the Event Queue to run in a later cycle",
      "Because print(3) is a synchronous operation with higher priority",
      "Because 3 is a larger integer than 2",
      "Because Dart executes all print statements in alphabetical order",
    ],
  ),
  Quiz(1059, "What does 'Future.any()' do?", [
    "Returns the result of the first Future that completes in a collection",
    "Returns any random Future result",
    "Returns all Future results",
    "Checks if any Future is null",
  ]),
  Quiz(1060, "What is an 'Async Stack Trace'?", [
    "A stack trace that includes information about where an async call was awaited",
    "A stack trace for synchronous code",
    "A way to debug the memory heap",
    "A feature in Flutter only",
  ]),
  Quiz(1061, "How do you execute code after a Future fails?", [
    "catchError() or catch block in try-catch",
    "finally()",
    "then()",
    "complete()",
  ]),
  Quiz(1062, "Is 'await' required for a 'Future<void>' function?", [
    "Only if you need to ensure it finish before moving to the next line",
    "Yes, always",
    "No, never",
    "Only if it's private",
  ]),
  Quiz(1063, "What is 'Completer' used for?", [
    "A way to manually create and complete a Future (value or error)",
    "A way to end the program",
    "A type of constructor",
    "A tool to check if a list is full",
  ]),
  Quiz(1064, "In 'completer.complete(val)', what happens?", [
    "The Future associated with the completer finishes with 'val'",
    "The program exits",
    "The completer is deleted",
    "The value is printed",
  ]),
  Quiz(1065, "What is a 'Suspension Point'?", [
    "The 'await' keyword where the function pauses",
    "The end of the function",
    "A syntax error",
    "The main function",
  ]),
  Quiz(1066, "How many Isolates run by default in a Dart app?", [
    "One (the Main isolate)",
    "Two",
    "Equal to the number of CPU cores",
    "Unlimited",
  ]),
  Quiz(1067, "Can Isolates share the same memory heap?", [
    "No, each has its own private memory",
    "Yes",
    "Only in Flutter",
    "Only on desktop",
  ]),
  Quiz(
    1068,
    "What is the best way to handle a Future that might take too long?",
    [
      "Use the .timeout() method",
      "Restart the app",
      "Use a while loop to check",
      "Delete the Future",
    ],
  ),
  Quiz(
    1069,
    "What happens to variables in an async function during suspension?",
    [
      "Their state is preserved until the function resumes",
      "They are reset to null",
      "They are moved to a global scope",
      "They are deleted",
    ],
  ),
  Quiz(1070, "What is the 'async*' keyword used for?", [
    "To define a generator function that returns a Stream",
    "To define a faster async function",
    "To define a synchronous function",
    "To handle multiple errors",
  ]),
  Quiz(1071, "What does 'await for' do?", [
    "Iterates over the events of a Stream",
    "Iterates over a List of Futures",
    "Waits for a specific time",
    "It is not valid Dart syntax",
  ]),
  Quiz(
    1072,
    "What is the result of 'await Future.error('Error')' without try-catch?",
    [
      "An unhandled exception and potential crash",
      "Nothing",
      "A printed warning",
      "The program pauses forever",
    ],
  ),
  Quiz(1073, "Does 'await' work with non-Future values?", [
    "Yes, it simply returns the value immediately",
    "No, it causes a compile error",
    "Only if the value is null",
    "Only in Dart 2.0",
  ]),
  Quiz(1074, "How do you run a task on a separate Isolate in Flutter?", [
    "The compute() function or Isolate.spawn()",
    "The async keyword",
    "The await keyword",
    "The Future.spawn() method",
  ]),
  Quiz(
    1075,
    "Is the 'async' keyword required for functions that only return a Future?",
    [
      "No, only if you want to use the 'await' keyword inside it",
      "Yes, always",
      "Only if they are public",
      "Only in main",
    ],
  ),
  Quiz(1076, "What is 'Future.forEach' used for?", [
    "To perform an async action for each element in an iterable sequentially",
    "To loop through a List faster",
    "To wait for all items in a List",
    "To create a Stream",
  ]),
  Quiz(1077, "Can you use 'await' in a sync function?", [
    "No, the function must be marked 'async'",
    "Yes",
    "Only if it's a microtask",
    "Only in Dart 3",
  ]),
  Quiz(1078, "What does 'uncompleted Future' mean in terms of memory?", [
    "It is an object currently registered with the Event Loop",
    "It is a deleted object",
    "It is a static variable",
    "It is a null value",
  ]),
  Quiz(1079, "Which package provides extra utilities for Futures?", [
    "package:async",
    "package:future",
    "package:dart_async",
    "package:flutter",
  ]),
  Quiz(
    1080,
    "What is the output of 'await Future.delayed(Duration.zero, () => 5);'?",
    ["5", "Duration.zero", "null", "Error"],
  ),
  Quiz(1081, "What is the benefit of 'concurrent' execution in Dart?", [
    "Doing other work (like UI animations) while waiting for data",
    "Running code twice as fast",
    "Reducing memory leaks",
    "Avoiding the need for functions",
  ]),
  Quiz(1082, "In 'Future<int> foo() async => 5;', is the 'async' useful?", [
    "Yes, it ensures the '5' is wrapped in a Future and returned in the next tick",
    "No, it does nothing",
    "It makes the function static",
    "It throws an error",
  ]),
  Quiz(1083, "What is the 'Event Queue' composed of?", [
    "External events like I/O, timers, and user interactions",
    "Internal code logic only",
    "A list of strings",
    "Static variables",
  ]),
  Quiz(1084, "Can a Future complete more than once?", [
    "No, a Future completes exactly once (value or error)",
    "Yes",
    "Only if it is a Stream",
    "Only in Flutter",
  ]),
  Quiz(1085, "What is the 'async' package's 'CancelableOperation'?", [
    "A wrapper for a Future that allows it to be cancelled",
    "A way to delete a function",
    "A tool to stop the event loop",
    "A type of exception",
  ]),
  Quiz(1086, "How do you wait for the 'first' Future to finish in a list?", [
    "Future.any(list)",
    "Future.wait(list).first",
    "list.first",
    "Future.first(list)",
  ]),
  Quiz(
    1087,
    "Which is more readable for complex logic: .then() or async/await?",
    ["async/await", ".then()", "They are identical", "Neither"],
  ),
  Quiz(1088, "Does 'await' work in a loop?", [
    "Yes, it will pause the loop until the Future completes before moving to the next iteration",
    "No, it only works once",
    "It will run all iterations at once",
    "It crashes the loop",
  ]),
  Quiz(1089, "What is 'Future.doWhile'?", [
    "Repeatedly performs an async operation until it returns false",
    "A way to run a Future 10 times",
    "An error-handling loop",
    "A private method",
  ]),
  Quiz(1090, "What is an 'Isolate Message'?", [
    "The data sent between isolates since they can't share memory",
    "An error from the event loop",
    "A notification in Flutter",
    "A type of string",
  ]),
  Quiz(1091, "What is the purpose of 'completer.isCompleted'?", [
    "To check if the completer has already finished its Future",
    "To stop the completer",
    "To print the result",
    "To start the completer",
  ]),
  Quiz(1092, "If you await a Future that is already completed, what happens?", [
    "It returns the value immediately in the next microtask",
    "It waits for it to complete again",
    "It throws an error",
    "It returns null",
  ]),
  Quiz(1093, "What is the default duration for 'Future.delayed'?", [
    "There is no default; you must provide a Duration",
    "1 second",
    "0 seconds",
    "Infinite",
  ]),
  Quiz(
    1094,
    "What is the return type of 'Future.delayed(Duration(seconds: 1))'?",
    ["Future<void>", "void", "int", "null"],
  ),
  Quiz(1095, "What happens to 'microtasks' during an 'await'?", [
    "They are processed before the async function resumes",
    "They are ignored",
    "They are deleted",
    "They are moved to the Event Queue",
  ]),
  Quiz(1096, "Is Dart 'async' code truly 'multi-threaded'?", [
    "No, it is concurrent but usually runs on a single thread (Event Loop)",
    "Yes",
    "Only on servers",
    "Only in Flutter Ultra",
  ]),
  Quiz(
    1097,
    "How do you access the value of a Future in a widget in Flutter?",
    ["FutureBuilder", "StreamBuilder", "AwaitWidget", "FutureWidget"],
  ),
  Quiz(1098, "What does 'Completer.future' return?", [
    "The Future object controlled by that completer",
    "The value of the Future",
    "The error of the Future",
    "A bool indicating if it's finished",
  ]),
  Quiz(1099, "Can you have an 'async' function without any return statement?", [
    "Yes, it returns Future<void>",
    "No",
    "Only if it's a constructor",
    "Only if it's private",
  ]),
  Quiz(
    1100,
    "What is the main advantage of Future.wait() over sequential awaits?",
    [
      "It allows independent tasks to run concurrently, saving total time",
      "It uses less code",
      "It is more secure",
      "It handles errors automatically",
    ],
  ),
];
final List<Quiz> dartQuizM14 = [
  // --- Topic 88: Stream Theory: The Continuous Data Pipe ---
  Quiz(1101, "What is the primary definition of a Stream in Dart?", [
    "An asynchronous sequence of data events",
    "A synchronous list of integers",
    "A single value that arrives in the future",
    "A way to store private variables",
  ]),
  Quiz(1102, "Which analogy best represents how a Stream works?", [
    "A pipe or conveyor belt where data pieces arrive one by one",
    "A single box that is opened only once to reveal a value",
    "A static book where all information is available at once",
    "A light switch that is either on or off",
  ]),
  Quiz(1103, "What are the three types of events a Stream can emit?", [
    "Data, Error, and Done",
    "Start, Stop, and Pause",
    "Integer, String, and Boolean",
    "Success, Failure, and Waiting",
  ]),
  Quiz(1104, "How does a Stream differ from a Future?", [
    "A Future returns one value; a Stream can return many values over time",
    "A Future is asynchronous; a Stream is synchronous",
    "A Future is for UI; a Stream is only for networking",
    "There is no functional difference",
  ]),
  Quiz(1105, "What is a 'Cold Stream'?", [
    "A stream that doesn't start producing data until someone listens to it",
    "A stream that has crashed due to an error",
    "A stream used for low-temperature data sensors",
    "A stream that only sends null values",
  ]),

  // --- Topic 89: The StreamController: Managing the Flow ---
  Quiz(1106, "What is the purpose of a StreamController?", [
    "To manually create a stream and add events to it",
    "To stop the app from using too much memory",
    "To convert a String into an Integer",
    "To handle UI button clicks automatically",
  ]),
  Quiz(1107, "Which property of a StreamController is used to add new data?", [
    "sink",
    "stream",
    "input",
    "buffer",
  ]),
  Quiz(1108, "How do you send a 'Done' event using a StreamController?", [
    "controller.close()",
    "controller.stop()",
    "controller.finish()",
    "controller.sink.end()",
  ]),
  Quiz(
    1109,
    "What happens if you add data to a StreamController after it is closed?",
    [
      "It throws a StateError",
      "It ignores the data",
      "It reopens the controller automatically",
      "It stores the data in a list",
    ],
  ),
  Quiz(1110, "What is a 'StreamSink' in the context of a controller?", [
    "An interface to add data, errors, and close events to the stream",
    "The part of the stream that handles errors",
    "A way to delete the stream from memory",
    "A listener that only receives errors",
  ]),

  // --- Topic 90: Listening to Streams: Subscription and Cancellation ---
  Quiz(1111, "What method is used to begin receiving events from a Stream?", [
    "stream.listen()",
    "stream.subscribe()",
    "stream.start()",
    "stream.get()",
  ]),
  Quiz(1112, "What does the 'StreamSubscription' object allow you to do?", [
    "Pause, resume, or cancel the stream listener",
    "Change the data type of the stream",
    "Delete the stream controller",
    "Access the main isolate",
  ]),
  Quiz(1113, "Why should you call 'subscription.cancel()'?", [
    "To stop listening and prevent memory leaks",
    "To make the stream run faster",
    "To clear the UI screen",
    "To reset the variable to zero",
  ]),
  Quiz(1114, "What is the 'onDone' callback in the listen method used for?", [
    "Executing code when the stream finishes sending all events",
    "Handling errors that occur during the stream",
    "Restarting the stream from the beginning",
    "Changing the stream to a broadcast type",
  ]),
  Quiz(1115, "How can you handle errors inside a stream.listen call?", [
    "Using the 'onError' parameter",
    "Using a try-catch block around the whole stream",
    "By calling stream.fixError()",
    "Errors cannot be handled in .listen()",
  ]),

  // --- Topic 91: Single vs Broadcast: One Listener vs Many ---
  Quiz(1116, "What is a 'Single-Subscription' Stream?", [
    "A stream that allows only one listener throughout its lifetime",
    "A stream that can only emit a single value",
    "A stream that only works in the main function",
    "A stream that is destroyed after 5 seconds",
  ]),
  Quiz(1117, "What is a 'Broadcast' Stream?", [
    "A stream that allows multiple simultaneous listeners",
    "A stream that sends data to all apps on a device",
    "A stream that only emits boolean values",
    "A stream that cannot be cancelled",
  ]),

  Quiz(
    1118,
    "What happens if you listen twice to a Single-Subscription stream?",
    [
      "It throws a StateError",
      "The first listener is automatically disconnected",
      "It creates a copy of the stream",
      "Both listeners receive the same data",
    ],
  ),
  Quiz(1119, "How do you create a broadcast stream from a controller?", [
    "StreamController.broadcast()",
    "StreamController(multiple: true)",
    "StreamController.toBroadcast()",
    "controller.makeBroadcast()",
  ]),
  Quiz(
    1120,
    "In a broadcast stream, what happens to events emitted when there are no listeners?",
    [
      "The events are lost/discarded",
      "They are stored in a buffer for the next listener",
      "The stream pauses automatically",
      "An error is thrown",
    ],
  ),

  // --- Topic 92: Stream Transformations: map, where, and expand ---
  Quiz(1121, "What does the 'stream.map()' method do?", [
    "Converts each emitted event into a new value or type",
    "Filters out events that don't match a condition",
    "Converts the stream into a Map collection",
    "Joins two streams together",
  ]),
  Quiz(
    1122,
    "Which method is used to filter events based on a boolean condition?",
    ["stream.where()", "stream.filter()", "stream.select()", "stream.check()"],
  ),
  Quiz(1123, "What is the purpose of 'stream.expand()'?", [
    "To transform a single event into multiple events",
    "To increase the memory capacity of the stream",
    "To make the stream accessible globally",
    "To add a delay between events",
  ]),
  Quiz(1124, "What does 'stream.take(n)' do?", [
    "Returns a stream that emits only the first n events then closes",
    "Removes the first n events from the stream",
    "Waits for n seconds before starting",
    "Skips every nth event",
  ]),
  Quiz(1125, "What is the result of using 'stream.distinct()'?", [
    "A stream that skips events if they are equal to the previous event",
    "A stream where every event must be a unique type",
    "A stream that only emits strings",
    "A stream that cannot be modified",
  ]),

  // --- Topic 93: Async Generators: Using the 'yield' keyword ---
  Quiz(
    1126,
    "Which keyword is used to define an asynchronous generator function?",
    ["async*", "async", "sync*", "yield"],
  ),
  Quiz(1127, "What does the 'yield' keyword do inside an async* function?", [
    "It emits a value into the stream",
    "It pauses the stream forever",
    "It returns a final value and terminates the function",
    "It throws an error",
  ]),
  Quiz(1128, "What is 'yield*' used for?", [
    "To delegate to another stream or iterable and emit its values",
    "To yield a value and then stop",
    "To multiply the yielded value by 10",
    "To yield a private variable",
  ]),
  Quiz(1129, "What is the return type of an 'async*' function?", [
    "Stream<T>",
    "Future<T>",
    "Iterable<T>",
    "void",
  ]),
  Quiz(1130, "Can you use the 'await' keyword inside an 'async*' function?", [
    "Yes, it allows you to wait for Futures before yielding the next value",
    "No, only 'yield' is allowed",
    "Only if the function returns a Future",
    "Only in Dart 3.0",
  ]),

  // --- General & Deep Dive (1131-1200) ---
  Quiz(1131, "What is 'await for' used for in Dart?", [
    "To iterate over the events of a stream sequentially",
    "To wait for a specific number of seconds",
    "To loop through a List of Futures",
    "To create a new stream",
  ]),
  Quiz(1132, "What happens if an error is thrown inside an 'await for' loop?", [
    "The loop terminates unless caught by a try-catch block",
    "The loop skips that event and continues",
    "The stream automatically restarts",
    "The program crashes immediately without any way to catch it",
  ]),
  Quiz(
    1133,
    "Which method is used to combine all stream events into a single value?",
    ["stream.reduce()", "stream.combine()", "stream.total()", "stream.map()"],
  ),
  Quiz(1134, "What is the difference between 'reduce' and 'fold'?", [
    "fold allows you to provide an initial starting value; reduce does not",
    "reduce is asynchronous; fold is synchronous",
    "fold is only for numbers",
    "There is no difference",
  ]),
  Quiz(1135, "What does 'stream.skip(5)' do?", [
    "Ignores the first 5 events emitted by the stream",
    "Ends the stream after 5 events",
    "Wait 5 seconds between each event",
    "Skips events that are greater than 5",
  ]),
  Quiz(1136, "How can you check if a stream is empty?", [
    "await stream.isEmpty",
    "stream.length == 0",
    "stream.count == 0",
    "stream.checkEmpty()",
  ]),
  Quiz(1137, "What does 'stream.timeout()' do?", [
    "Throws an error if the stream doesn't emit an event within a given time",
    "Closes the stream after 10 minutes",
    "Speeds up the delivery of events",
    "Pauses the stream automatically",
  ]),
  Quiz(
    1138,
    "Which property returns a Future that completes when the stream finishes?",
    ["stream.length", "stream.isDone", "stream.last", "stream.final"],
  ),
  Quiz(1139, "What is 'Stream.periodic' used for?", [
    "Creating a stream that emits events at specified time intervals",
    "A stream that only runs once a day",
    "A stream that deletes itself after use",
    "A stream for tracking clock cycles",
  ]),
  Quiz(1140, "What is 'Stream.fromIterable'?", [
    "A constructor that creates a stream from a List or Set",
    "A method to convert a stream to a List",
    "A tool for looping through stream data",
    "A private variable type",
  ]),

  Quiz(1141, "How do you handle a stream that emits multiple types of data?", [
    "Use a Stream of a common base class like Object or a Sealed Class",
    "You cannot; streams must only have one type",
    "Use the 'dynamic' keyword for every event",
    "Create multiple streams",
  ]),
  Quiz(1142, "What is 'stream.any()'?", [
    "A Future that returns true if any event matches a condition",
    "A way to get a random event from the stream",
    "A stream that never ends",
    "An error-handling method",
  ]),
  Quiz(1143, "What does 'stream.drain()' do?", [
    "Discards all data in the stream until it is done",
    "Clears the app's cache",
    "Forces all events to be processed instantly",
    "Deletes the stream controller",
  ]),
  Quiz(1144, "What is the 'onPause' callback in a StreamController used for?", [
    "Detecting when a listener has paused their subscription",
    "Pausing the entire app",
    "Stopping the event loop",
    "Handling errors",
  ]),
  Quiz(1145, "Can a broadcast stream have its own 'onListen' callback?", [
    "Yes, it triggers when the first listener is added",
    "No, only single-subscription streams have it",
    "Only if it's an 'async*' stream",
    "Only in Flutter",
  ]),
  Quiz(1146, "What is 'Stream.value'?", [
    "A stream that emits a single value and then closes",
    "A way to get the current value of a stream",
    "An alias for a Future",
    "A type of constant",
  ]),
  Quiz(1147, "What is 'Stream.error'?", [
    "A stream that immediately emits an error and closes",
    "A method to catch errors in a stream",
    "A property that stores the last error message",
    "A way to print errors to the console",
  ]),
  Quiz(1148, "What is 'stream.firstWhere()'?", [
    "A Future that finds the first event matching a condition",
    "A way to filter the entire stream",
    "A method to restart the stream",
    "A tool to find the index of an event",
  ]),
  Quiz(1149, "Which Flutter widget is primarily used to display Stream data?", [
    "StreamBuilder",
    "FutureBuilder",
    "ListView",
    "StatefulWidget",
  ]),
  Quiz(1150, "What is the 'ConnectionState' in a StreamBuilder?", [
    "The current status of the stream (waiting, active, or done)",
    "The strength of the internet connection",
    "The ID of the stream controller",
    "A check for whether the stream is private",
  ]),
  Quiz(
    1151,
    "What happens if a StreamBuilder receives an error from a stream?",
    [
      "The 'snapshot.hasError' property becomes true",
      "The app crashes",
      "The builder stops working",
      "The stream is automatically cancelled",
    ],
  ),
  Quiz(1152, "What is 'stream.cast<T>()' used for?", [
    "To change the generic type of a stream to a subtype or supertype",
    "To convert a stream into a String",
    "To make a stream read-only",
    "To cast the stream to the UI",
  ]),
  Quiz(1153, "What is the purpose of 'StreamView'?", [
    "To provide a read-only interface to a stream, hiding the controller",
    "To display stream data in a 3D view",
    "To debug the event loop",
    "To create a new broadcast stream",
  ]),
  Quiz(1154, "Which keyword is used to create a synchronous generator?", [
    "sync*",
    "async*",
    "yield",
    "return*",
  ]),
  Quiz(1155, "What does a 'sync*' function return?", [
    "Iterable<T>",
    "Stream<T>",
    "Future<T>",
    "List<T>",
  ]),
  Quiz(1156, "What is 'stream.handleError()'?", [
    "A transformation that intercepts errors before they reach the listener",
    "A way to close the stream on error",
    "A method to print error messages only",
    "A private Dart function",
  ]),
  Quiz(1157, "What is the 'onCancel' callback in a StreamController for?", [
    "Logic to run when the last listener stops listening",
    "Cancelling the entire app",
    "Handling network disconnections",
    "Deleting the class instance",
  ]),
  Quiz(1158, "How do you check if a stream is broadcast at runtime?", [
    "stream.isBroadcast",
    "stream.type == 'broadcast'",
    "stream.hasMultipleListeners",
    "stream.canBroadcast",
  ]),
  Quiz(1159, "What is 'Stream.empty()'?", [
    "A stream that closes immediately without emitting data",
    "A check to see if a list is empty",
    "A way to clear the stream sink",
    "A private stream constructor",
  ]),
  Quiz(1160, "What is the 'sink' property used for?", [
    "Adding data to a StreamController",
    "Removing data from a Stream",
    "Handling memory cleanup",
    "Displaying data in the UI",
  ]),
  Quiz(1161, "What is 'stream.lastWhere()'?", [
    "A Future that finds the last event matching a condition",
    "A way to filter only the end of a stream",
    "A tool to reverse a stream",
    "A private Dart method",
  ]),
  Quiz(1162, "Can a stream have different listeners at different times?", [
    "Yes, but for single-subscription streams, you can only have one at a time",
    "No, listeners must be added at the start",
    "Only in broadcast streams",
    "Only in Flutter",
  ]),
  Quiz(1163, "What is 'stream.single'?", [
    "A Future that completes with the only element of the stream (errors if more than one)",
    "A stream that can only have one listener",
    "A way to make the stream faster",
    "A constant value",
  ]),
  Quiz(1164, "What is 'StreamIterator'?", [
    "A class that allows you to manually pull events from a stream one by one",
    "A way to loop through a List",
    "A debugging tool for streams",
    "A private variable",
  ]),
  Quiz(1165, "What does 'stream.pipe()' do?", [
    "Forwards all stream events to a StreamConsumer (like another controller)",
    "Joins two strings together",
    "Cleans the stream buffer",
    "Adds a delay to the stream",
  ]),
  Quiz(1166, "What is 'Stream.fromFuture'?", [
    "Creates a stream that emits a single value when the Future completes",
    "Converts a stream into a Future",
    "Repeats a Future 10 times",
    "An error-handling tool",
  ]),
  Quiz(1167, "Can you use 'yield' in a standard 'async' function?", [
    "No, 'yield' is only for 'async*' or 'sync*' functions",
    "Yes",
    "Only for integers",
    "Only in main",
  ]),
  Quiz(1168, "What is 'stream.elementAt(i)'?", [
    "A Future that returns the event at the given index i",
    "A way to change an event at index i",
    "A tool to delete an event",
    "A private method",
  ]),
  Quiz(
    1169,
    "What happens if you use 'await for' on a stream that never closes?",
    [
      "The loop will continue running as long as events arrive",
      "The program crashes after 1 minute",
      "The loop only runs once",
      "The stream is forced to close",
    ],
  ),
  Quiz(
    1170,
    "What is the main benefit of 'async*' over creating a StreamController?",
    [
      "It is more readable and automatically handles stream closing",
      "It is 50% faster",
      "It uses less RAM",
      "It is the only way to use streams",
    ],
  ),
  Quiz(1171, "What is 'StreamGroup' (from package:async)?", [
    "A utility to merge multiple streams into one",
    "A way to group streams by data type",
    "A private Dart class",
    "An error-handling tool",
  ]),
  Quiz(1172, "What is 'stream.forEach()'?", [
    "A Future that executes a function for every event in the stream",
    "A loop for a standard List",
    "A way to filter the stream",
    "A private method",
  ]),
  Quiz(1173, "What does 'subscription.pause()' do?", [
    "Stops the listener from receiving events until resume is called",
    "Pauses the whole computer",
    "Deletes the stream data",
    "Throws a TimeoutException",
  ]),
  Quiz(1174, "How is data handled while a subscription is paused?", [
    "It is usually buffered by the stream source",
    "It is discarded immediately",
    "It is sent to the next listener",
    "The stream throws an error",
  ]),
  Quiz(1175, "What is the purpose of 'Stream.multi'?", [
    "To create a stream that runs its logic separately for every listener",
    "To combine multiple streams",
    "To send multiple types of data",
    "A private Dart 3.0 feature",
  ]),
  Quiz(1176, "What is 'stream.toList()'?", [
    "A Future that collects all stream events into a List once the stream closes",
    "A way to convert a List into a stream",
    "A tool for sorting a stream",
    "A private method",
  ]),
  Quiz(1177, "What is 'stream.toSet()'?", [
    "A Future that collects all unique stream events into a Set once it closes",
    "A method to name a stream",
    "An error-handling tool",
    "A way to make the stream broadcast",
  ]),
  Quiz(1178, "What does 'stream.join(separator)' do?", [
    "A Future that combines all events into a single string separated by a value",
    "Merges two separate streams",
    "Adds a listener to the stream",
    "A private method",
  ]),
  Quiz(1179, "What is the return type of 'stream.listen()?'", [
    "StreamSubscription<T>",
    "void",
    "Future<void>",
    "Stream<T>",
  ]),
  Quiz(1180, "What is 'package:rxdart'?", [
    "An external library that adds extra functionality and operators to Dart Streams",
    "The official Dart stream engine",
    "A tool for creating images",
    "A server-side framework",
  ]),
  Quiz(1181, "What is a 'BehaviorSubject' in RxDart?", [
    "A broadcast controller that remembers the last value for new listeners",
    "A stream that only works in the background",
    "A way to delete listeners",
    "A private Dart class",
  ]),
  Quiz(1182, "What is 'stream.first'?", [
    "A Future that returns the first event emitted by the stream",
    "The name of the first listener",
    "A method to restart the stream",
    "A check if the stream is empty",
  ]),
  Quiz(1183, "What happens if you access 'stream.first' on an empty stream?", [
    "It throws a StateError",
    "It returns null",
    "The Future never completes",
    "It restarts the stream",
  ]),
  Quiz(1184, "What is 'stream.last'?", [
    "A Future that returns the final event before the stream closes",
    "A property that keeps the stream open",
    "The last error that happened",
    "A tool to reverse a stream",
  ]),
  Quiz(1185, "What is 'stream.every()'?", [
    "A Future that returns true if ALL events match a condition",
    "A way to get every single event",
    "A tool to double the events",
    "A private method",
  ]),
  Quiz(1186, "What is 'stream.takeWhile()'?", [
    "Emits events while a condition is true, then closes the stream",
    "Takes events until the app closes",
    "Filters only the even numbers",
    "A private method",
  ]),
  Quiz(1187, "What is 'stream.skipWhile()'?", [
    "Ignores events until a condition is false, then emits the rest",
    "Skips all events if a condition is true",
    "Skips the first 10 events",
    "A private method",
  ]),
  Quiz(1188, "Can a Stream emit 'null'?", [
    "Yes, if the stream's type is nullable (e.g., Stream<int?>)",
    "No, nulls are ignored",
    "Only in broadcast streams",
    "Only in Dart 1.0",
  ]),
  Quiz(
    1189,
    "What is the default behavior of a StreamController's 'onListen'?",
    [
      "It is null/empty until you provide logic for it",
      "It automatically starts the stream",
      "It prints a message to the console",
      "It closes the stream",
    ],
  ),
  Quiz(1190, "What is 'StreamTransformer'?", [
    "A class used to create custom reusable stream transformations",
    "A tool to change the stream's name",
    "A function to convert a stream to a list",
    "A Dart 3.0 keyword",
  ]),
  Quiz(1191, "How many times can you call '.listen()' on a broadcast stream?", [
    "Unlimited times",
    "Only once",
    "Up to 10 times",
    "Twice",
  ]),
  Quiz(1192, "What happens to a StreamBuilder when the widget is disposed?", [
    "It automatically unsubscribes from the stream",
    "It continues listening in the background",
    "It throws an error",
    "It closes the stream source",
  ]),
  Quiz(1193, "In 'await for (var item in stream)', what is 'item'?", [
    "The data value currently emitted by the stream",
    "The index of the event",
    "The stream subscription",
    "An error message",
  ]),
  Quiz(1194, "What is 'stream.cast()' primarily used for?", [
    "Safe type conversion of stream events",
    "Printing the stream values",
    "Ending the stream",
    "Making the stream private",
  ]),
  Quiz(
    1195,
    "Can you use 'yield' inside a for-loop within an async* function?",
    [
      "Yes, it allows you to emit multiple values inside the loop",
      "No",
      "Only if the loop is a while-loop",
      "Only in Dart 2.0",
    ],
  ),
  Quiz(1196, "What is 'Stream.eventTransformed'?", [
    "A low-level constructor for creating complex custom streams",
    "A way to change the UI",
    "A debugging tool",
    "A private variable",
  ]),
  Quiz(1197, "What is the primary difference between Stream and Iterable?", [
    "Stream is asynchronous (push); Iterable is synchronous (pull)",
    "Stream is for strings; Iterable is for numbers",
    "Stream is faster than Iterable",
    "There is no difference",
  ]),
  Quiz(1198, "What is 'controller.hasListener' used for?", [
    "Checking if there are any active subscribers to the stream",
    "Checking if the controller is closed",
    "Checking if the stream has an error",
    "Checking the data type",
  ]),
  Quiz(1199, "What is 'stream.timeout(Duration, onTimeout)' used for?", [
    "Providing a fallback action if no event occurs within the duration",
    "Closing the app after a timeout",
    "Speeding up the stream",
    "Adding a delay to the events",
  ]),
  Quiz(1200, "What is the ultimate goal of Asynchronous Programming in Dart?", [
    "To keep the application responsive by performing long tasks in the background",
    "To make the code run twice as fast",
    "To avoid using functions and classes",
    "To encrypt all data automatically",
  ]),
];
final List<List<Quiz>> dartQuizzes = [
  dartQuizM1,
  dartQuizM2,
  dartQuizM3,
  dartQuizM4,
  dartQuizM5,
  dartQuizM6,
  dartQuizM7,
  dartQuizM8,
  dartQuizM9,
  dartQuizM10,
  dartQuizM11,
  dartQuizM12,
  dartQuizM13,
  dartQuizM14,
];
