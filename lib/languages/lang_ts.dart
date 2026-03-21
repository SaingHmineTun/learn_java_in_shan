import 'package:tmkacademy/utils/utils.dart';

import '../utils/quiz.dart';

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
  12: "Advanced OOP (Abstract, Static, & Interfaces)",
  13: "Meta-Programming & Decorators",
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
    18: "Loops: Iterating with For, While, and Do-While",
  },
  4: {
    19: "Function Declarations: Parameters & Return Types",
    20: "Optional & Default Parameters",
    21: "Arrow Functions: The Modern Syntax",
    22: "Function Types: Defining function signatures",
    23: "Rest Parameters: Handling multiple arguments",
    24: "Function Overloading: One name, multiple ways",
  },
  5: {
    25: "Object Literals: Defining shapes on the fly",
    26: "Interfaces: Creating reusable blueprints",
    27: "Type Aliases vs Interfaces: When to use which?",
    28: "Extending Interfaces: Building upon existing shapes",
    29: "Readonly & Optional Properties in Objects",
    30: "Index Signatures: Handling dynamic property names",
  },
  6: {
    31: "Array Types: Square brackets vs Array<T>",
    32: "Multi-dimensional Arrays: Matrices in TS",
    33: "Tuples: Fixed-length and mixed-type arrays",
    34: "Enums: Numeric and String enumerations",
    35: "Const Enums: Performance and usage",
    36: "Readonly Arrays: Protecting list integrity",
  },
  7: {
    37: "Union Types: Handling multiple types (|)",
    38: "Type Guarding: Using typeof and instanceof",
    39: "Truthiness Guarding: Handling null and undefined",
    40: "Discriminated Unions: Pattern matching for objects",
    41: "The 'in' operator: Checking property existence",
    42: "User-defined Type Guards: Creating custom checkers",
  },
  8: {
    43: "Try...Catch...Finally: The basic safety net",
    44: "Throwing Errors: Creating custom exceptions",
    45: "Type Guarding 'unknown' errors in catch blocks",
    46: "Built-in Error Types (Reference, Syntax, Type Errors)",
    47: "Debugging in VS Code: Breakpoints and Watches",
    48: "Source Maps: Debugging TS in the Browser",
  },
  9: {
    49: "Generics: Creating flexible and reusable components",
    50: "Generic Constraints: Limiting types with 'extends'",
    51: "Generics with Interfaces and Classes",
    52: "Utility Types: Partial, Pick, and Omit",
    53: "Utility Types: Readonly, Record, and Required",
    54: "Mapped Types: Transforming types dynamically",
  },
  10: {
    55: "The Event Loop: How TS handles Asynchronous tasks",
    56: "Callbacks: The old way and 'Callback Hell'",
    57: "Promises: Pending, Resolved, and Rejected states",
    58: "Async/Await: Writing Async code like Synchronous",
    59: "Error Handling in Async: Try/Catch with Await",
    60: "Promise.all vs Promise.race: Handling multiple tasks",
    61: "Typing Promises: Generics with Promise<T>",
    62: "Advanced: AbortController and Canceling Async tasks",
  },
  11: {
    63: "Classes: The blueprint for objects",
    64: "Constructors: Initializing objects with properties",
    65: "Access Modifiers: Public, Private, and Protected",
    66: "Readonly properties: Protecting data from changes",
    67: "Shorthand Initialization: Writing cleaner constructors",
    68: "Inheritance: Reusing code with 'extends'",
    69: "Super keyword: Calling parent constructors and methods",
  },
  12: {
    70: "Static Properties & Methods: Global class data",
    71: "Abstract Classes: Creating 'blueprints' for subclasses",
    72: "Abstract Methods: Enforcing logic implementation",
    73: "Singletons: Ensuring only one instance exists",
    74: "Interfaces with Classes: Contract-based programming",
    75: "Readonly in Interfaces vs Classes",
    76: "Extending Multiple Interfaces",
  },
  13: {
    77: "Decorators: Adding 'Meta-data' to Classes",
    78: "Decorator Factories: Customizing your magic",
    79: "Method & Property Decorators: Controlling behavior",
    80: "Conditional Types: Logic inside your Types (T extends U ? X : Y)",
    81: "Template Literal Types: String manipulation in TS",
    82: "Recursive Types: Handling deeply nested data",
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
  25: Lesson(5, 25),
  26: Lesson(5, 26),
  27: Lesson(5, 27),
  28: Lesson(5, 28),
  29: Lesson(5, 29),
  30: Lesson(5, 30),
  31: Lesson(6, 31),
  32: Lesson(6, 32),
  33: Lesson(6, 33),
  34: Lesson(6, 34),
  35: Lesson(6, 35),
  36: Lesson(6, 36),
  37: Lesson(7, 37),
  38: Lesson(7, 38),
  39: Lesson(7, 39),
  40: Lesson(7, 40),
  41: Lesson(7, 41),
  42: Lesson(7, 42),
  43: Lesson(8, 43),
  44: Lesson(8, 44),
  45: Lesson(8, 45),
  46: Lesson(8, 46),
  47: Lesson(8, 47),
  48: Lesson(8, 48),
  49: Lesson(9, 49),
  50: Lesson(9, 50),
  51: Lesson(9, 51),
  52: Lesson(9, 52),
  53: Lesson(9, 53),
  54: Lesson(9, 54),
  55: Lesson(10, 55),
  56: Lesson(10, 56),
  57: Lesson(10, 57),
  58: Lesson(10, 58),
  59: Lesson(10, 59),
  60: Lesson(10, 60),
  61: Lesson(10, 61),
  62: Lesson(10, 62),
  63: Lesson(11, 63),
  64: Lesson(11, 64),
  65: Lesson(11, 65),
  66: Lesson(11, 66),
  67: Lesson(11, 67),
  68: Lesson(11, 68),
  69: Lesson(11, 69),
  70: Lesson(12, 70),
  71: Lesson(12, 71),
  72: Lesson(12, 72),
  73: Lesson(12, 73),
  74: Lesson(12, 74),
  75: Lesson(12, 75),
  76: Lesson(12, 76),
  77: Lesson(13, 77),
  78: Lesson(13, 78),
  79: Lesson(13, 79),
  80: Lesson(13, 80),
  81: Lesson(13, 81),
  82: Lesson(13, 82),
};

final List<Quiz> tsQuizM1 = [
  // --- Topic 1: The Anatomy of TypeScript (Compiler vs. Runtime) ---
  Quiz(1, "What is TypeScript at its core?", [
    "A superset of JavaScript that adds static typing",
    "A complete replacement for JavaScript in the browser",
    "A low-level language like C++ for web assembly",
    "A database management system for web apps",
  ]),
  Quiz(2, "Can browsers run TypeScript files (.ts) directly?", [
    "No, they must be compiled to JavaScript first",
    "Yes, all modern browsers support .ts files",
    "Only if you use a specific Chrome extension",
    "Yes, but only in Developer Mode",
  ]),
  Quiz(3, "What does the 'Static Typing' in TypeScript mean?", [
    "Types are checked at compile-time before the code runs",
    "Variables cannot change their values once assigned",
    "The code runs faster because it doesn't use memory",
    "Types are checked only while the application is running",
  ]),
  Quiz(4, "What is the relationship between TypeScript and JavaScript?", [
    "TypeScript is a superset of JavaScript",
    "JavaScript is a superset of TypeScript",
    "They are two completely unrelated languages",
    "TypeScript is an older version of JavaScript",
  ]),
  Quiz(5, "Which process converts TypeScript into JavaScript?", [
    "Transpilation",
    "Interpretation",
    "Serialization",
    "Encryption",
  ]),
  Quiz(6, "When does TypeScript perform type checking?", [
    "During development/compile-time",
    "During execution/runtime",
    "After the user closes the browser",
    "Only when the server restarts",
  ]),
  Quiz(7, "If a TypeScript file has a type error, what usually happens during compilation?", [
    "The compiler reports an error but can still produce JS",
    "The computer automatically shuts down",
    "The TypeScript file is deleted automatically",
    "The browser crashes immediately",
  ]),
  Quiz(8, "What happens to TypeScript type annotations after compilation?", [
    "They are removed (Type Erasure)",
    "They are converted into CSS",
    "They are stored in a separate database",
    "They remain in the JavaScript file to be checked by the browser",
  ]),
  Quiz(9, "Which of the following is a benefit of TypeScript?", [
    "Catching errors early in the development cycle",
    "Allowing the browser to skip JavaScript execution",
    "Automatically designing the UI of the app",
    "Speeding up the internet connection",
  ]),
  Quiz(10, "Is valid JavaScript also valid TypeScript?", [
    "Yes, almost all JavaScript is valid TypeScript",
    "No, TypeScript uses completely different syntax",
    "Only if the file extension is .js",
    "Only if you don't use variables",
  ]),
  Quiz(11, "Who developed and maintains TypeScript?", [
    "Microsoft",
    "Google",
    "Facebook",
    "Apple",
  ]),
  Quiz(12, "What is the main goal of the TypeScript compiler?", [
    "To transform TS code into clean, compatible JS code",
    "To minify images and assets",
    "To host the website on a server",
    "To check for spelling mistakes in comments",
  ]),

  // --- Topic 2: The Toolkit: Node.js & Global TSC Installation ---
  Quiz(13, "Why is Node.js required for TypeScript development?", [
    "To run the TypeScript compiler (tsc) and manage packages",
    "To render HTML elements in the browser",
    "To design logos for the application",
    "To increase the RAM of the computer",
  ]),
  Quiz(14, "What does 'NPM' stand for?", [
    "Node Package Manager",
    "New Programming Model",
    "Network Protocol Manager",
    "Node Power Module",
  ]),
  Quiz(15, "Which command is used to install TypeScript globally?", [
    "npm install -g typescript",
    "npm get typescript",
    "node install ts",
    "install global tsc",
  ]),
  Quiz(16, "How do you check the installed version of the TypeScript compiler?", [
    "tsc -v",
    "typescript --check",
    "node check-ts",
    "npm version-tsc",
  ]),
  Quiz(17, "What is 'tsc'?", [
    "The TypeScript Compiler executable",
    "A type of text editor",
    "A JavaScript framework",
    "A command to clear the terminal",
  ]),
  Quiz(18, "What does the '-g' flag mean in an npm command?", [
    "Global installation",
    "Generic installation",
    "Generate code",
    "Google dependency",
  ]),
  Quiz(19, "Which command initializes a new Node.js project (creates package.json)?", [
    "npm init",
    "npm start",
    "node create",
    "tsc --init",
  ]),
  Quiz(20, "If you want to use a local version of TypeScript, where is it stored?", [
    "node_modules folder",
    "System32 folder",
    "Downloads folder",
    "Browser cache",
  ]),
  Quiz(21, "Which environment variable must be set to use 'tsc' in the command line?", [
    "PATH",
    "HOME",
    "USER",
    "PORT",
  ]),
  Quiz(22, "Can you run TypeScript using only a web browser without Node.js?", [
    "Not for professional development/compilation",
    "Yes, using the <script ts> tag",
    "Yes, browsers have tsc built-in",
    "Yes, by renaming the file to .html",
  ]),
  Quiz(23, "Which command would you use to uninstall TypeScript globally?", [
    "npm uninstall -g typescript",
    "npm remove ts",
    "node delete tsc",
    "tsc --remove",
  ]),
  Quiz(24, "What is the 'Node.js Runtime' used for in TS development?", [
    "Executing tools like the compiler and build scripts",
    "Displaying the final website to the user",
    "Creating 3D graphics",
    "Managing the computer's keyboard drivers",
  ]),

  // --- Topic 3: The Workspace: Installing & Setting up VS Code ---
  Quiz(25, "Why is VS Code recommended for TypeScript?", [
    "It has excellent built-in support for TS features",
    "It is the only editor that can open .ts files",
    "It automatically writes the code for you",
    "It converts TypeScript into Python",
  ]),
  Quiz(26, "What is 'IntelliSense' in VS Code?", [
    "Features like code completion, parameter info, and member lists",
    "An AI that writes your whole app",
    "A tool that checks your internet speed",
    "A plugin for playing music while coding",
  ]),
  Quiz(27, "Which file extension is used for standard TypeScript files?", [
    ".ts",
    ".tsx",
    ".tscript",
    ".js",
  ]),
  Quiz(28, "How can you open the integrated terminal in VS Code?", [
    "Ctrl + ` (backtick)",
    "Alt + F4",
    "Ctrl + Shift + T",
    "Double click the scrollbar",
  ]),
  Quiz(29, "Which extension in VS Code is often used to run JS/TS snippets quickly?", [
    "Quokka.js",
    "Adobe Photoshop",
    "Spotify",
    "Word Counter",
  ]),
  Quiz(30, "What does VS Code show when it detects a type error in a .ts file?", [
    "A red squiggly line under the code",
    "A blue background on the whole screen",
    "A popup window that blocks the computer",
    "It plays an alarm sound",
  ]),
  Quiz(31, "How do you search for a file by name in VS Code?", [
    "Ctrl + P",
    "Ctrl + S",
    "Alt + S",
    "Shift + Enter",
  ]),
  Quiz(32, "Which VS Code feature allows you to see the definition of a type by hovering?", [
    "Hover Information",
    "Code Folding",
    "Minimap",
    "Breadcrumbs",
  ]),
  Quiz(33, "Can you debug TypeScript directly in VS Code?", [
    "Yes, using source maps and the built-in debugger",
    "No, you can only debug in Chrome",
    "No, debugging is not possible in TS",
    "Yes, but only if you use a Mac",
  ]),
  Quiz(34, "What is the 'Command Palette' shortcut in VS Code?", [
    "Ctrl + Shift + P",
    "Ctrl + C",
    "Alt + P",
    "Ctrl + Alt + Delete",
  ]),
  Quiz(35, "Why should you use the 'ESLint' extension with TypeScript?", [
    "To enforce code quality and consistent patterns",
    "To make the code run 10x faster",
    "To change the font color of the editor",
    "To translate code into different languages",
  ]),
  Quiz(36, "Which part of VS Code displays the list of files in your project?", [
    "Explorer",
    "Source Control",
    "Extensions View",
    "Output Window",
  ]),

  // --- Topic 4: First Script: Manual Compilation & Type Erasure ---
  Quiz(37, "Which command compiles a file named 'app.ts'?", [
    "tsc app.ts",
    "node app.ts",
    "compile app.ts",
    "run app.ts",
  ]),
  Quiz(38, "If you compile 'app.ts', what is the default output file name?", [
    "app.js",
    "app.out",
    "index.js",
    "app.ts.js",
  ]),
  Quiz(39, "What is 'Type Erasure'?", [
    "The process of removing all TS-specific code during compilation",
    "Deleting the .ts file after the .js file is created",
    "A bug that causes variables to lose their values",
    "Clearing the console screen",
  ]),
  Quiz(40, "Which of the following is removed during Type Erasure?", [
    "Interface definitions",
    "Console.log statements",
    "While loops",
    "Math operations",
  ]),
  Quiz(41, "After compiling app.ts to app.js, which file do you run with Node?", [
    "node app.js",
    "node app.ts",
    "tsc app.js",
    "run app.js",
  ]),
  Quiz(42, "What happens if you try to assign a string to a variable declared as a number in TS?", [
    "The compiler shows an error before execution",
    "The computer will restart",
    "It works perfectly in the browser",
    "The string is converted to 0 automatically",
  ]),
  Quiz(43, "Does Type Erasure affect the runtime performance of JavaScript?", [
    "No, it results in standard JavaScript with no type overhead",
    "Yes, it makes the JavaScript slower",
    "Yes, it makes the JavaScript faster than C++",
    "It makes the file size significantly larger",
  ]),
  Quiz(44, "Can you compile multiple files at once manually?", [
    "Yes, by listing them: tsc file1.ts file2.ts",
    "No, you can only compile one file per day",
    "No, you must merge them into one file first",
    "Only if you use a specific cloud service",
  ]),
  Quiz(45, "Which command compiles all .ts files in the current directory (if configured)?", [
    "tsc",
    "node compile all",
    "npm ts-run",
    "typescript --all",
  ]),
  Quiz(46, "Are 'Classes' removed during Type Erasure?", [
    "No, because Classes are a standard JavaScript feature",
    "Yes, all classes are deleted",
    "Only if they have a constructor",
    "Only in older versions of TypeScript",
  ]),
  Quiz(47, "What is the purpose of 'transpiling' instead of 'compiling'?", [
    "To convert source code from one high-level language to another",
    "To convert code directly into machine binary (0s and 1s)",
    "To check for security vulnerabilities",
    "To upload code to GitHub",
  ]),
  Quiz(48, "Which file is the 'Source' and which is the 'Output'?", [
    ".ts is Source, .js is Output",
    ".js is Source, .ts is Output",
    ".html is Source, .ts is Output",
    ".ts is Source, .exe is Output",
  ]),

  // --- Topic 5: The Project Brain: Deep Dive into tsconfig.json ---
  Quiz(49, "Which command generates a default tsconfig.json file?", [
    "tsc --init",
    "npm init ts",
    "node ts-config",
    "create-tsconfig",
  ]),
  Quiz(50, "What is the purpose of 'tsconfig.json'?", [
    "To specify the compiler options and root files for the project",
    "To store the user's login passwords",
    "To list the hardware requirements for the app",
    "To track the time spent coding",
  ]),
  Quiz(51, "Which property in tsconfig.json specifies the JS version of the output?", [
    "target",
    "version",
    "outputJS",
    "module",
  ]),
  Quiz(52, "What does the 'outDir' option do?", [
    "Redirects compiled .js files to a specific folder",
    "Deletes the source files after compilation",
    "Specifies the location of the Node.js installation",
    "Changes the theme of the VS Code editor",
  ]),
  Quiz(53, "What does 'strict': true do in tsconfig.json?", [
    "Enables all strict type-checking options",
    "Prevents the user from typing comments",
    "Makes the compiler run slower for safety",
    "Locks the file so it cannot be edited",
  ]),
  Quiz(54, "Which option is used to include only specific folders for compilation?", [
    "include",
    "folders",
    "sourceList",
    "pathMap",
  ]),
  Quiz(55, "Which option is used to prevent certain files from being compiled?", [
    "exclude",
    "ignore",
    "remove",
    "hide",
  ]),
  Quiz(56, "What does the 'rootDir' option specify?", [
    "The location of the source (.ts) files",
    "The location of the compiled (.js) files",
    "The root directory of the hard drive",
    "The installation path of VS Code",
  ]),
  Quiz(57, "If you want to use modern JS features but support old browsers, which 'target' is best?", [
    "ES5",
    "ESNext",
    "ES2024",
    "C++",
  ]),
  Quiz(58, "What is 'noImplicitAny'?", [
    "An option that raises an error if a variable's type is inferred as 'any'",
    "A command to allow any type for all variables",
    "A setting that hides all errors",
    "A way to rename the 'any' keyword",
  ]),
  Quiz(59, "What happens if you run 'tsc' in a folder without a tsconfig.json?", [
    "It expects specific file arguments or shows help",
    "It creates a tsconfig.json automatically",
    "It deletes all files in the folder",
    "It formats the code according to Google standards",
  ]),
  Quiz(60, "Which property allows you to use decorators in TypeScript?", [
    "experimentalDecorators",
    "useDecorators",
    "enableMagic",
    "strictDecorators",
  ]),

  // --- Topic 6: Professional Workflow: Watch Mode & Directory Structure ---
  Quiz(61, "What is 'Watch Mode' in TypeScript?", [
    "A mode where the compiler automatically recompiles when a file is saved",
    "A mode where you can watch videos of your code",
    "A setting that tracks how long you look at the screen",
    "A way to see who is editing your file on the network",
  ]),
  Quiz(62, "Which command starts the compiler in Watch Mode?", [
    "tsc -w",
    "tsc --observe",
    "node watch ts",
    "npm start-watch",
  ]),
  Quiz(63, "In a professional project, where are source files usually kept?", [
    "src folder",
    "dist folder",
    "root folder",
    "assets folder",
  ]),
  Quiz(64, "In a professional project, where are compiled files usually stored?", [
    "dist or build folder",
    "src folder",
    "node_modules folder",
    "Desktop",
  ]),
  Quiz(65, "What is the benefit of a professional directory structure (src/dist)?", [
    "It keeps source code and production code separate and clean",
    "It makes the computer use less electricity",
    "It allows the code to be written in multiple languages",
    "It hides the code from hackers automatically",
  ]),
  Quiz(66, "How do you stop 'tsc -w' in the terminal?", [
    "Ctrl + C",
    "Alt + F4",
    "Typing 'exit'",
    "Unplugging the mouse",
  ]),
  Quiz(67, "What is 'Live Server' usually used for in a TS workflow?", [
    "To automatically refresh the browser when the .js file changes",
    "To compile TypeScript into machine code",
    "To host the database for the application",
    "To chat with other developers",
  ]),
  Quiz(68, "Why do we use 'sourceMap': true in development?", [
    "To allow the browser debugger to map JS back to the original TS code",
    "To generate a map of the city for the app",
    "To reduce the size of the JavaScript file",
    "To encrypt the source code for safety",
  ]),
  Quiz(69, "Which file is usually ignored by Git in a TS project?", [
    "dist/ and node_modules/",
    "src/ and package.json",
    "tsconfig.json",
    "All .ts files",
  ]),
  Quiz(70, "What is the 'Module' setting in tsconfig.json for?", [
    "To decide how code is imported/exported (e.g., CommonJS, ES6)",
    "To choose the background color of the app",
    "To list the names of the developers",
    "To set the maximum file size for the project",
  ]),
  Quiz(71, "What does 'removeComments': true do?", [
    "Removes all comments from the output .js file",
    "Deletes all comments from the source .ts file",
    "Prevents developers from writing comments",
    "Replaces comments with emojis",
  ]),
  Quiz(72, "Can you run watch mode on a single file?", [
    "Yes: tsc app.ts -w",
    "No, only on the whole project",
    "Only if you have an active internet connection",
    "Only in VS Code, not in the terminal",
  ]),
  Quiz(73, "What is the purpose of the 'lib' option in tsconfig.json?", [
    "To specify which environment APIs (like DOM) are available",
    "To download external libraries from the internet",
    "To list the books used to learn TypeScript",
    "To set the language of the compiler errors",
  ]),
  Quiz(74, "How do you run a compiled project that is in the 'dist' folder?", [
    "node dist/app.js",
    "node src/app.ts",
    "tsc dist/app.js",
    "npm run src",
  ]),
  Quiz(75, "What is the 'Professional Workflow' summarized?", [
    "Write in src -> tsc watches/compiles -> Output to dist -> Run from dist",
    "Write in dist -> Copy to src -> Run with tsc",
    "Write in root -> Delete dist -> Run with browser",
    "Write in VS Code -> Upload to YouTube -> Download as JS",
  ]),
];
final List<Quiz> tsQuizM2 = [
  // --- Topic 7: Primitive Types: string, number, and boolean ---
  Quiz(76, "Which keyword is used to declare a variable that only accepts text?", [
    "string",
    "Text",
    "char",
    "StringLine",
  ]),
  Quiz(77, "In TypeScript, what does the 'number' type represent?", [
    "Both integers and floating-point numbers",
    "Only whole integers",
    "Only decimal numbers",
    "Only positive numbers",
  ]),
  Quiz(78, "Which of the following is a valid 'boolean' value?", [
    "false",
    "0",
    "null",
    "\"true\"",
  ]),
  Quiz(79, "How do you explicitly type a variable in TypeScript?", [
    "let count: number = 10;",
    "let count number = 10;",
    "number count = 10;",
    "let count = 10 as number;",
  ]),
  Quiz(80, "What is the result of using a string method on a variable typed as 'number'?", [
    "A compile-time error",
    "A runtime crash",
    "The number is converted to string automatically",
    "TypeScript ignores the error",
  ]),
  Quiz(81, "Which symbol is used to separate a variable name from its type?", [
    ": (colon)",
    "= (equals)",
    "-> (arrow)",
    "; (semicolon)",
  ]),
  Quiz(82, "Can you assign 'undefined' to a variable of type 'string' in strict mode?", [
    "No, unless the type is explicitly string | undefined",
    "Yes, string always includes undefined",
    "Only if the string is empty",
    "Yes, but only in watch mode",
  ]),
  Quiz(83, "What happens if you assign 5.5 to a variable of type 'number'?", [
    "It is accepted as a valid floating-point number",
    "It is rounded to 5",
    "It causes a type error",
    "It is converted to a string",
  ]),
  Quiz(84, "Is 'boolean' in TypeScript the same as 'Boolean' (capital B)?", [
    "No, 'boolean' is the primitive type; 'Boolean' is the object wrapper",
    "Yes, they are identical",
    "No, 'Boolean' is for strings",
    "No, 'boolean' is only for true values",
  ]),
  Quiz(85, "Which type would you use for a variable representing 'true' or 'false'?", [
    "boolean",
    "bit",
    "logic",
    "binary",
  ]),
  Quiz(86, "What is the default type of a variable declared as: let x = \"Hello\";?", [
    "string",
    "any",
    "unknown",
    "Literal \"Hello\"",
  ]),
  Quiz(87, "Which primitive type is used to handle extremely large integers?", [
    "bigint",
    "long",
    "double",
    "maxnum",
  ]),

  // --- Topic 8: Type Inference: Letting TypeScript do the work ---
  Quiz(88, "What is Type Inference?", [
    "The compiler automatically guessing the type based on the value assigned",
    "The developer forcing a type using a cast",
    "The browser changing types at runtime",
    "A bug that makes all variables 'any'",
  ]),
  Quiz(89, "If you write 'let isDone = true;', what type does TypeScript infer?", [
    "boolean",
    "any",
    "true",
    "Object",
  ]),
  Quiz(90, "When is Type Inference most commonly used?", [
    "When a variable is initialized at the same time it is declared",
    "When a variable is declared without a value",
    "Only when working with classes",
    "Only inside try-catch blocks",
  ]),
  Quiz(91, "What type is inferred for 'let x;' (no value assigned)?", [
    "any",
    "undefined",
    "unknown",
    "void",
  ]),
  Quiz(92, "Does TypeScript continue to track the type after it is inferred?", [
    "Yes, the variable is locked to that type for its lifetime",
    "No, it becomes a dynamic JavaScript variable",
    "Only until the first function call",
    "Only if you use the 'const' keyword",
  ]),
  Quiz(93, "Is it always necessary to write out types explicitly (e.g., : string)?", [
    "No, inference often makes explicit typing redundant",
    "Yes, TypeScript requires types for every variable",
    "Yes, but only for numbers",
    "No, but it makes the code run faster",
  ]),
  Quiz(94, "What happens if you assign a number to 'let x = \"Hi\";' later in the code?", [
    "A compile-time error occurs",
    "The type of x changes to number",
    "The number is ignored",
    "The string \"Hi\" is deleted",
  ]),
  Quiz(95, "What is the inferred type of: let items = [1, 2, 3];?", [
    "number[]",
    "any[]",
    "Array<any>",
    "list",
  ]),
  Quiz(96, "Why is Type Inference beneficial?", [
    "It keeps code clean while maintaining type safety",
    "It makes the compiled JavaScript file smaller",
    "It allows variables to hold any value like JavaScript",
    "It prevents the computer from overheating",
  ]),
  Quiz(97, "Does inference work for function return values?", [
    "Yes, TypeScript can often infer what a function returns",
    "No, return types must always be explicit",
    "Only if the function returns a string",
    "Only in async functions",
  ]),
  Quiz(98, "What type is inferred for: const greeting = \"Hello\";?", [
    "The literal type \"Hello\"",
    "string",
    "any",
    "const-string",
  ]),
  Quiz(99, "What happens if a variable is initialized with 'null' without a type?", [
    "It is inferred as 'any' (unless strictNullChecks is on)",
    "It is inferred as 'null' only",
    "It causes an immediate crash",
    "It is inferred as 'string'",
  ]),

  // --- Topic 9: The Danger Zone: any, unknown, and void ---
  Quiz(100, "What is the 'any' type in TypeScript?", [
    "A type that turns off all type-checking for that variable",
    "A type that only accepts strings and numbers",
    "A type used for 3D graphics",
    "A safer version of 'unknown'",
  ]),
  Quiz(101, "Why is using 'any' often discouraged?", [
    "It bypasses the benefits of TypeScript and can hide bugs",
    "It makes the code run 50% slower",
    "It is not supported in modern browsers",
    "It prevents the file from compiling",
  ]),
  Quiz(102, "What is the 'unknown' type?", [
    "A safer alternative to 'any' that requires a type check before use",
    "A type for variables that don't exist",
    "A secret type used by the Microsoft team",
    "The same as 'undefined'",
  ]),
  Quiz(103, "Can you call a method on a variable of type 'unknown'?", [
    "No, you must narrow the type or cast it first",
    "Yes, just like 'any'",
    "Only if the method name is 'toString'",
    "Only in non-strict mode",
  ]),
  Quiz(104, "What is the 'void' type used for?", [
    "To indicate that a function does not return a value",
    "To delete a variable from memory",
    "To represent an empty string",
    "To handle asynchronous errors",
  ]),
  Quiz(105, "Can you assign a value to a variable of type 'void'?", [
    "Only 'undefined' (or 'null' if strict mode is off)",
    "Yes, any value can be assigned",
    "Only numbers",
    "No, 'void' variables cannot exist",
  ]),
  Quiz(106, "What happens if a function returns a string but is typed as 'void'?", [
    "A compile-time error occurs",
    "The string is converted to 0",
    "The browser ignores the return value",
    "The function is deleted",
  ]),
  Quiz(107, "Which type is the 'Top Type' (can hold anything)?", [
    "any and unknown",
    "void",
    "never",
    "string",
  ]),
  Quiz(108, "When should you use 'unknown' instead of 'any'?", [
    "When you don't know the type but want to ensure safety later",
    "When you want to write code as fast as possible",
    "When the variable is a constant",
    "When working with HTML elements only",
  ]),
  Quiz(109, "What is the inferred return type of: function sayHi() { console.log(\"Hi\"); }?", [
    "void",
    "any",
    "undefined",
    "string",
  ]),
  Quiz(110, "Which of the following can be assigned to 'unknown'?", [
    "Anything (string, number, object, etc.)",
    "Only objects",
    "Only null and undefined",
    "Nothing",
  ]),
  Quiz(111, "What happens if you use 'any' everywhere in your project?", [
    "You essentially lose the benefits of using TypeScript",
    "The project becomes ultra-secure",
    "The code compiles into C++",
    "The file size decreases",
  ]),

  // --- Topic 10: Union Types: Allowing multiple possibilities ---
  Quiz(112, "What is a Union Type?", [
    "A type that allows a variable to hold one of several specified types",
    "A type used only for database connections",
    "A way to combine two strings together",
    "A mathematical function in TypeScript",
  ]),
  Quiz(113, "Which operator is used to create a Union Type?", [
    "| (pipe)",
    "& (ampersand)",
    "&& (double and)",
    "|| (double or)",
  ]),
  Quiz(114, "How do you declare a variable that can be a string or a number?", [
    "let result: string | number;",
    "let result: string or number;",
    "let result: [string, number];",
    "let result: string & number;",
  ]),
  Quiz(115, "What is 'Type Narrowing' in the context of Union Types?", [
    "Using logic (like typeof) to determine the specific type at runtime",
    "Removing one of the types from the union forever",
    "Reducing the font size of the code",
    "Converting all types to 'any'",
  ]),
  Quiz(116, "What happens if you call a method that only exists on 'string' on a 'string | number' union?", [
    "A compile-time error unless you narrow the type first",
    "TypeScript automatically converts the number to string",
    "It works fine if the value happens to be a string",
    "The program crashes immediately",
  ]),
  Quiz(117, "Which of the following is a valid union assignment: let x: 1 | 2 = 1;?", [
    "Yes, literals can also be used in unions",
    "No, unions only work with string and number",
    "No, you cannot use the pipe with numbers",
    "Only if the variable is a const",
  ]),
  Quiz(118, "Can a union have more than two types?", [
    "Yes, you can have as many as you need (e.g., string | number | boolean)",
    "No, only two types are allowed",
    "Yes, but only if one of them is 'any'",
    "Only in the latest version of Node.js",
  ]),
  Quiz(119, "What type is 'const x = Math.random() > 0.5 ? \"hi\" : 10;'?", [
    "\"hi\" | 10 (or string | number)",
    "string",
    "number",
    "any",
  ]),
  Quiz(120, "In a union 'string | null', how do you safely access string methods?", [
    "Check if the variable is not null first (if (val) { ... })",
    "Just call the method and hope for the best",
    "Convert it to 'any'",
    "TypeScript does this automatically",
  ]),
  Quiz(121, "Does a Union Type create a new object in JavaScript?", [
    "No, it is purely a TypeScript concept that is erased after compilation",
    "Yes, it creates a wrapper object",
    "Only if you use strings",
    "Yes, it creates a Proxy",
  ]),
  Quiz(122, "What is the result of 'string | string'?", [
    "It simplifies to just 'string'",
    "It becomes a string array",
    "It causes a syntax error",
    "It allows two strings in one variable",
  ]),
  Quiz(123, "What is the common use case for unions with 'null'?", [
    "Representing a value that might not exist yet",
    "Speeding up calculations",
    "Securing the code against hackers",
    "Enabling 3D features",
  ]),

  // --- Topic 11: Literal Types: Creating strict constants ---
  Quiz(124, "What is a Literal Type?", [
    "A type that represents exactly one specific value",
    "A type used for writing books",
    "A type that allows any string",
    "A way to import files",
  ]),
  Quiz(125, "What is the type of: const direction = \"left\";?", [
    "The literal type \"left\"",
    "string",
    "any",
    "direction",
  ]),
  Quiz(126, "How do you restrict a variable to only the values 'yes' or 'no'?", [
    "let answer: \"yes\" | \"no\";",
    "let answer: string(\"yes\", \"no\");",
    "let answer = \"yes\" || \"no\";",
    "type answer = yes | no;",
  ]),
  Quiz(127, "Can you use numbers as literal types?", [
    "Yes (e.g., let score: 0 | 1 | 2;)",
    "No, literals only work with strings",
    "Only if they are integers",
    "Only inside a class",
  ]),
  Quiz(128, "What happens if you assign \"up\" to a variable of type \"left\" | \"right\"?", [
    "A compile-time error occurs",
    "TypeScript adds \"up\" to the allowed list",
    "The variable becomes \"left\" automatically",
    "The program runs but prints a warning",
  ]),
  Quiz(129, "Why use Literal Types instead of just 'string'?", [
    "To provide better security and catch invalid values early",
    "To save disk space",
    "To make the code look more complex",
    "Because 'string' is deprecated",
  ]),
  Quiz(130, "What type is: let x: 5 = 5;?", [
    "The numeric literal type 5",
    "number",
    "any",
    "constant",
  ]),
  Quiz(131, "Are literal types case-sensitive?", [
    "Yes, \"Admin\" is different from \"admin\"",
    "No, TypeScript ignores case",
    "Only if you enable strict mode",
    "Only for boolean literals",
  ]),
  Quiz(132, "Can you combine literal types with primitive types in a union?", [
    "Yes (e.g., \"high\" | \"low\" | number)",
    "No, you can only use literals or primitives, not both",
    "Only if the primitive is a string",
    "Only in interfaces",
  ]),
  Quiz(133, "Which keyword helps in making an object's properties literal types?", [
    "as const",
    "readonly",
    "static",
    "final",
  ]),
  Quiz(134, "What is the inferred type of: let x = 10; (using let)?", [
    "number",
    "10",
    "any",
    "integer",
  ]),
  Quiz(135, "What is a 'Boolean Literal' type?", [
    "A type that is specifically 'true' or specifically 'false'",
    "The same as the boolean type",
    "A type for the string \"true\"",
    "A number that is 0 or 1",
  ]),

  // --- Topic 12: Type Aliases: Customizing your data types ---
  Quiz(136, "What is a Type Alias?", [
    "A name given to a custom type definition using the 'type' keyword",
    "A way to rename a variable at runtime",
    "A shortcut for importing modules",
    "A type of loop",
  ]),
  Quiz(137, "Which keyword is used to create a Type Alias?", [
    "type",
    "alias",
    "interface",
    "define",
  ]),
  Quiz(138, "How do you create an alias for a union of 'string | number'?", [
    "type ID = string | number;",
    "alias ID = string | number;",
    "let ID = type(string | number);",
    "type ID { string | number }",
  ]),
  Quiz(139, "Can you use a Type Alias for an object shape?", [
    "Yes (e.g., type User = { name: string; age: number };)",
    "No, only for primitive unions",
    "Only if the object has no methods",
    "Only in React projects",
  ]),
  Quiz(140, "What is a major advantage of Type Aliases?", [
    "Code reusability and improved readability",
    "They make the final JavaScript bundle smaller",
    "They allow you to bypass strict mode",
    "They are required for all TypeScript files",
  ]),
  Quiz(141, "Can you nest Type Aliases (use one alias inside another)?", [
    "Yes, you can use existing aliases to build new ones",
    "No, an alias must be self-contained",
    "Only if they are in the same file",
    "Only up to 2 levels deep",
  ]),
  Quiz(142, "Is 'type User = string;' valid?", [
    "Yes, you can alias even a single primitive type",
    "No, an alias must be an object or union",
    "Only if 'User' is capitalized",
    "Only in global scope",
  ]),
  Quiz(143, "What is the difference between Type Alias and Interface (basic)?", [
    "Type can represent primitives and unions; Interface is mostly for objects",
    "Type is for JavaScript; Interface is for TypeScript",
    "Type is faster to compile than Interface",
    "There is no difference at all",
  ]),
  Quiz(144, "How do you apply a type alias to a variable?", [
    "let person: User = { ... };",
    "let person = new User();",
    "type person = User;",
    "User person = { ... };",
  ]),
  Quiz(145, "Can you create an alias for a function signature?", [
    "Yes (e.g., type Greet = (name: string) => void;)",
    "No, function types cannot be aliased",
    "Only if the function is an arrow function",
    "Only in Module 4",
  ]),
  Quiz(146, "What happens if you define the same type alias name twice in the same scope?", [
    "A duplicate identifier error occurs",
    "TypeScript merges them together",
    "The second one overwrites the first",
    "It works fine",
  ]),
  Quiz(147, "Which is more flexible for defining complex unions?", [
    "Type Alias",
    "Interface",
    "Enum",
    "Class",
  ]),
  Quiz(148, "What is the result of using a Type Alias after compilation?", [
    "It is completely removed from the JavaScript output",
    "It becomes a JavaScript class",
    "It is converted into a JSON object",
    "It remains as a comment",
  ]),
  Quiz(149, "Are type aliases strictly enforced at runtime?", [
    "No, they only exist during development for type checking",
    "Yes, JavaScript checks them when the app runs",
    "Only if you use a specific middleware",
    "Only if you use 'instanceof'",
  ]),
  Quiz(150, "What is the type of User in: type User = { id: ID }; where type ID = number;?", [
    "An object with a property 'id' of type 'number'",
    "An object with a property 'id' of type 'ID'",
    "An invalid definition",
    "A string",
  ]),
];
final List<Quiz> tsQuizM3 = [
  // --- Topic 13: Basic Operators: Arithmetic & Assignment ---
  Quiz(151, "Which operator is used for exponentiation (power) in TypeScript?", [
    "**",
    "^",
    "pow",
    "exp",
  ]),
  Quiz(152, "What is the result of '5 + \"5\"' in TypeScript?", [
    "\"55\" (string concatenation)",
    "10 (number addition)",
    "A compile-time error",
    "NaN",
  ]),
  Quiz(153, "Which operator returns the remainder of a division?", [
    "% (Modulo)",
    "/ (Division)",
    "// (Floor Division)",
    "rem",
  ]),
  Quiz(154, "What does the '++' operator do?", [
    "Increments a number by 1",
    "Adds two numbers together",
    "Multiplies a number by itself",
    "Converts a string to a number",
  ]),
  Quiz(155, "Which assignment operator is equivalent to 'x = x + 5'?", [
    "x += 5",
    "x =+ 5",
    "x ++ 5",
    "x == 5",
  ]),
  Quiz(156, "What is the result of '10 / 0' in JavaScript/TypeScript?", [
    "Infinity",
    "0",
    "A runtime error",
    "undefined",
  ]),
  Quiz(157, "Which operator is used to decrement a value by 1?", [
    "--",
    "-=",
    "_-",
    "dec",
  ]),
  Quiz(158, "What is the result of '10 - \"5\"' in TypeScript?", [
    "5 (number subtraction)",
    "\"105\"",
    "A compile-time error",
    "NaN",
  ]),
  Quiz(159, "What is the primary function of the '=' operator?", [
    "Assigning a value to a variable",
    "Checking if two values are equal",
    "Comparing types",
    "Creating a new constant",
  ]),
  Quiz(160, "Which operator is used for multiplication?", [
    "*",
    "x",
    "mult",
    "dot",
  ]),
  Quiz(161, "What does 'x *= 2' do?", [
    "Multiplies x by 2 and assigns the result to x",
    "Checks if x is double the value of 2",
    "Creates 2 copies of x",
    "Raises x to the power of 2",
  ]),
  Quiz(162, "Is the operator '&&=' (logical AND assignment) valid in modern TypeScript?", [
    "Yes, it assigns only if the left side is truthy",
    "No, only arithmetic assignments exist",
    "Only if the variable is a boolean",
    "Only in Module 13",
  ]),

  // --- Topic 14: Comparison & Logical Operators: Making Decisions ---
  Quiz(163, "What is the difference between '==' and '==='?", [
    "'===' checks both value and type; '==' only checks value",
    "'==' is for strings; '===' is for numbers",
    "'===' is only for constants",
    "There is no difference in TypeScript",
  ]),
  Quiz(164, "Which operator represents 'Strict Inequality'?", [
    "!==",
    "!=",
    "<>",
    "not==",
  ]),
  Quiz(165, "Which logical operator represents 'AND'?", [
    "&&",
    "||",
    "!",
    "&",
  ]),
  Quiz(166, "Which logical operator represents 'OR'?", [
    "||",
    "&&",
    "|",
    "OR",
  ]),
  Quiz(167, "What does the '!' (NOT) operator do?", [
    "Inverts a boolean value (true to false, false to true)",
    "Checks if a value is null",
    "Ends a statement",
    "Multiplies by -1",
  ]),
  Quiz(168, "What is the result of '5 > 3 && 2 < 4'?", [
    "true",
    "false",
    "undefined",
    "null",
  ]),
  Quiz(169, "What is the result of '10 === \"10\"'?", [
    "false",
    "true",
    "A compile-time error",
    "NaN",
  ]),
  Quiz(170, "Which operator checks if a value is 'Greater than or Equal to'?", [
    ">=",
    "=>",
    ">==",
    "gte",
  ]),
  Quiz(171, "What is the result of 'true || false'?", [
    "true",
    "false",
    "null",
    "0",
  ]),
  Quiz(172, "Which operator is the 'Nullish Coalescing' operator?", [
    "??",
    "||",
    "&&",
    "?!",
  ]),
  Quiz(173, "What does '??' do compared to '||'?", [
    "It only provides a default for null or undefined (not 0 or \"\")",
    "It is faster than the OR operator",
    "It works only with numbers",
    "It deletes the variable if it is null",
  ]),
  Quiz(174, "What is the result of '0 || 10'?", [
    "10",
    "0",
    "true",
    "false",
  ]),
  Quiz(175, "What is the result of '0 ?? 10'?", [
    "0",
    "10",
    "undefined",
    "null",
  ]),

  // --- Topic 15: Conditionals: The power of If, Else If, and Else ---
  Quiz(176, "Which statement is used to execute code only if a condition is true?", [
    "if",
    "else",
    "switch",
    "while",
  ]),
  Quiz(177, "What follows an 'if' statement to handle the case where the condition is false?", [
    "else",
    "then",
    "otherwise",
    "stop",
  ]),
  Quiz(178, "How do you check for multiple distinct conditions in sequence?", [
    "else if",
    "elseif",
    "if else",
    "switch if",
  ]),
  Quiz(179, "Which brackets are used to wrap the condition in an 'if' statement?", [
    "( ) (parentheses)",
    "{ } (curly braces)",
    "[ ] (square brackets)",
    "< > (angle brackets)",
  ]),
  Quiz(180, "Which brackets wrap the code block to be executed in an 'if' statement?", [
    "{ } (curly braces)",
    "( ) (parentheses)",
    "[ ] (square brackets)",
    "| | (pipes)",
  ]),
  Quiz(181, "Can an 'if' statement exist without an 'else'?", [
    "Yes, it is perfectly valid",
    "No, 'else' is mandatory",
    "Only if you use 'any'",
    "Only in Module 1",
  ]),
  Quiz(182, "What happens if multiple 'else if' conditions are true?", [
    "Only the first true block is executed",
    "All true blocks are executed",
    "The program crashes",
    "The 'else' block is executed instead",
  ]),
  Quiz(183, "What is 'Truthy' in TypeScript?", [
    "A value that is considered true when evaluated in a boolean context",
    "A variable that is explicitly set to 'true'",
    "A function that returns a boolean",
    "A comment that is actually true",
  ]),
  Quiz(184, "Which of the following is 'Falsy'?", [
    "0",
    "\" \" (space)",
    "[] (empty array)",
    "{} (empty object)",
  ]),
  Quiz(185, "Is an empty string \"\" falsy?", [
    "Yes",
    "No",
    "Only if it contains a space",
    "Only in strict mode",
  ]),
  Quiz(186, "What is the result of 'if (\"hello\")'?", [
    "It executes (strings are truthy)",
    "It does not execute",
    "It causes a type error",
    "It only works if the string is \"true\"",
  ]),
  Quiz(187, "Can you nest 'if' statements inside other 'if' statements?", [
    "Yes",
    "No",
    "Only up to 2 levels",
    "Only in functions",
  ]),

  // --- Topic 16: Switch Statements: Handling multiple conditions ---
  Quiz(188, "When is a 'switch' statement usually preferred over 'if-else'?", [
    "When comparing one variable against many possible literal values",
    "When checking ranges of numbers (e.g., x > 10)",
    "When you only have one condition",
    "When you want the code to run slower",
  ]),
  Quiz(189, "Which keyword is used to define a possible value in a switch?", [
    "case",
    "value",
    "option",
    "if",
  ]),
  Quiz(190, "What happens if you forget the 'break' keyword in a case?", [
    "The code 'falls through' to the next case automatically",
    "The program stops immediately",
    "The switch statement restarts",
    "A compile-time error occurs",
  ]),
  Quiz(191, "Which keyword handles cases that don't match any defined 'case'?", [
    "default",
    "else",
    "other",
    "fallback",
  ]),
  Quiz(192, "Does a 'switch' statement use strict equality (===) for comparison?", [
    "Yes",
    "No, it uses loose equality (==)",
    "Only for strings",
    "Only if you enable it in tsconfig",
  ]),
  Quiz(193, "Is the 'default' case mandatory in a switch statement?", [
    "No, it is optional",
    "Yes, it must always be at the end",
    "Yes, it must be at the beginning",
    "Only if you have more than 5 cases",
  ]),
  Quiz(194, "Can multiple cases execute the same code block?", [
    "Yes, by stacking cases (case 1: case 2: ...)",
    "No, each case must have its own block",
    "Only if they are strings",
    "Only in JavaScript, not TypeScript",
  ]),
  Quiz(195, "Where is the 'default' case typically placed?", [
    "At the very end of the switch statement",
    "At the very beginning",
    "It doesn't matter, it's always checked last",
    "Inside the first case",
  ]),
  Quiz(196, "Can you use expressions like 'case (x > 10):' in a standard switch?", [
    "No, cases usually expect constant/literal values",
    "Yes, always",
    "Only if x is a number",
    "Only if you use the 'if' keyword",
  ]),
  Quiz(197, "What is the result of a switch matching a case but having no code in it?", [
    "It continues to the next case (fall-through)",
    "It exits the switch",
    "It throws an error",
    "It does nothing and stops",
  ]),
  Quiz(198, "Which brackets wrap the entire switch logic?", [
    "{ } (curly braces)",
    "( ) (parentheses)",
    "[ ] (square brackets)",
    "None",
  ]),
  Quiz(199, "Can a switch statement handle boolean values?", [
    "Yes, but if-else is usually better for booleans",
    "No, only strings and numbers",
    "Only 'true'",
    "Only in strict mode",
  ]),

  // --- Topic 17: Ternary Operator: The shorthand for If-Else ---
  Quiz(200, "What is the syntax of the Ternary Operator?", [
    "condition ? expressionIfTrue : expressionIfFalse",
    "condition : expressionIfTrue ? expressionIfFalse",
    "if condition ? true : false",
    "condition ?? true : false",
  ]),
  Quiz(201, "How many operands does the ternary operator take?", [
    "3",
    "2",
    "1",
    "4",
  ]),
  Quiz(202, "What is the primary use of the ternary operator?", [
    "Assigning a value based on a condition in a single line",
    "Looping through an array",
    "Handling errors in async functions",
    "Creating a new class",
  ]),
  Quiz(203, "Is 'let x = age > 18 ? \"Adult\" : \"Minor\";' valid?", [
    "Yes",
    "No, ternary cannot be used in assignment",
    "Only if 'Adult' is a variable",
    "Only in React",
  ]),
  Quiz(204, "Can you nest ternary operators?", [
    "Yes, but it often makes code harder to read",
    "No, only one '?' is allowed per file",
    "Only if the first condition is false",
    "Only in the return statement",
  ]),
  Quiz(205, "What happens if you omit the ':' in a ternary operator?", [
    "A syntax error occurs",
    "It defaults to 'undefined'",
    "It acts like an 'if' without an 'else'",
    "The code runs faster",
  ]),
  Quiz(206, "Which symbol separates the true and false expressions?", [
    ": (colon)",
    "? (question mark)",
    "; (semicolon)",
    "| (pipe)",
  ]),
  Quiz(207, "Can a ternary operator be used to call two different functions?", [
    "Yes (e.g., isHappy ? smile() : cry())",
    "No, it can only return values",
    "Only in the latest TypeScript",
    "Only if the functions return void",
  ]),
  Quiz(208, "Is 'const x = condition ? 10;' valid?", [
    "No, it must include the colon and a second expression",
    "Yes, if condition is false it returns null",
    "Yes, it acts like a partial if",
    "Only in Module 2",
  ]),
  Quiz(209, "What is the result of '10 > 5 ? \"A\" : \"B\"'?", [
    "\"A\"",
    "\"B\"",
    "true",
    "10",
  ]),
  Quiz(210, "Why is it called 'Ternary'?", [
    "Because it involves three parts (condition, true-val, false-val)",
    "Because it was invented by the third developer of JS",
    "Because it only works with numbers divisible by 3",
    "Because it was the third operator added to the language",
  ]),
  Quiz(211, "Does the ternary operator replace all 'if-else' statements?", [
    "No, it's best for simple assignments; 'if-else' is better for complex logic",
    "Yes, 'if-else' is deprecated",
    "Only in arrow functions",
    "Only in professional code",
  ]),

  // --- Topic 18: Loops: Iterating with For, While, and Do-While ---
  Quiz(212, "Which loop is best when you know exactly how many times to iterate?", [
    "for loop",
    "while loop",
    "do-while loop",
    "if loop",
  ]),
  Quiz(213, "What are the three parts of a 'for' loop header?", [
    "Initialization, Condition, Increment/Decrement",
    "Variable, Loop, Stop",
    "Start, Middle, End",
    "If, Then, Else",
  ]),
  Quiz(214, "Which loop checks the condition *before* executing the block?", [
    "while and for",
    "do-while",
    "switch",
    "if",
  ]),
  Quiz(215, "Which loop is guaranteed to run at least once?", [
    "do-while",
    "while",
    "for",
    "foreach",
  ]),
  Quiz(216, "What is an 'Infinite Loop'?", [
    "A loop whose condition never becomes false",
    "A loop that repeats exactly 100 times",
    "A loop used for space calculations",
    "A loop that contains a switch statement",
  ]),
  Quiz(217, "Which keyword is used to skip the rest of the current iteration and move to the next one?", [
    "continue",
    "break",
    "skip",
    "next",
  ]),
  Quiz(218, "Which keyword is used to exit a loop completely?", [
    "break",
    "continue",
    "stop",
    "exit",
  ]),
  Quiz(219, "What is the correct syntax for a 'while' loop?", [
    "while (condition) { ... }",
    "while condition { ... }",
    "do while (condition)",
    "for (while condition)",
  ]),
  Quiz(220, "In a 'for' loop: for (let i = 0; i < 5; i++), what is 'i++'?", [
    "The increment step executed after each loop cycle",
    "The starting value of the loop",
    "The condition that stops the loop",
    "A type of error",
  ]),
  Quiz(221, "Can you use 'const' to declare the iterator in a standard for loop (for (const i = 0...))?", [
    "No, because the iterator needs to be updated (reassigned)",
    "Yes, it is safer",
    "Only if the loop runs once",
    "Only in for-of loops",
  ]),
  Quiz(222, "What is the result of 'for (let i = 0; i < 0; i++)'?", [
    "The loop body never executes",
    "It runs once",
    "It runs infinitely",
    "It causes a crash",
  ]),
  Quiz(223, "Which loop type is most common for iterating through array indices?", [
    "for loop",
    "do-while loop",
    "switch loop",
    "if-else loop",
  ]),
  Quiz(224, "What happens if you forget to increment the variable in a 'while' loop?", [
    "It will likely result in an infinite loop",
    "TypeScript increments it automatically",
    "The loop runs once and stops",
    "The compiler throws an error",
  ]),
  Quiz(225, "Which symbol separates the three expressions in a 'for' loop header?", [
    "; (semicolon)",
    ", (comma)",
    ": (colon)",
    "| (pipe)",
  ]),
];
final List<Quiz> tsQuizM4 = [
  // --- Topic 19: Function Declarations: Parameters & Return Types ---
  Quiz(226, "Which keyword is used to define a standard function in TypeScript?", [
    "function",
    "def",
    "method",
    "func",
  ]),
  Quiz(227, "How do you specify the return type of a function?", [
    "function add(a: number): number { ... }",
    "function add(a: number) -> number { ... }",
    "function add:number (a: number) { ... }",
    "number function add(a: number) { ... }",
  ]),
  Quiz(228, "What is the default return type if a function has no return statement?", [
    "void",
    "any",
    "undefined",
    "null",
  ]),
  Quiz(229, "Can TypeScript infer the return type of a function based on the return keyword?", [
    "Yes, it is often inferred automatically",
    "No, it must always be explicit",
    "Only for strings",
    "Only in strict mode",
  ]),
  Quiz(230, "What happens if you provide 3 arguments to a function that only defines 2 parameters?", [
    "A compile-time error occurs in TypeScript",
    "The third argument is stored in a secret variable",
    "The function runs and ignores the error",
    "The program crashes immediately",
  ]),
  Quiz(231, "Which type is used for a function that is intended to never reach a return (e.g., always throws an error)?", [
    "never",
    "void",
    "unknown",
    "null",
  ]),
  Quiz(232, "How do you type multiple parameters in a function declaration?", [
    "function greet(name: string, age: number) { ... }",
    "function greet(name string, age number) { ... }",
    "function greet(name: string | age: number) { ... }",
    "function greet(string name, number age) { ... }",
  ]),
  Quiz(233, "Does TypeScript check the order of arguments passed to a function?", [
    "Yes, the types must match the order of the parameters",
    "No, it matches them by variable name",
    "Only if you use curly braces",
    "Only for optional parameters",
  ]),
  Quiz(234, "What is the return type of: function sum(a: number, b: number) { return a + b; }?", [
    "number",
    "any",
    "void",
    "string",
  ]),
  Quiz(235, "Can a function return a Union Type?", [
    "Yes (e.g., : string | number)",
    "No, only one primitive type is allowed",
    "Only if you use 'any'",
    "Only in Module 12",
  ]),
  Quiz(236, "Which brackets wrap the parameters of a function?", [
    "( ) (parentheses)",
    "{ } (curly braces)",
    "[ ] (square brackets)",
    "< > (angle brackets)",
  ]),
  Quiz(237, "Is 'function add(a, b) { ... }' allowed in strict TypeScript?", [
    "No, it will cause an 'implicit any' error",
    "Yes, it is standard JavaScript",
    "Yes, but only if the result is a number",
    "Only in the Global scope",
  ]),

  // --- Topic 20: Optional & Default Parameters ---
  Quiz(238, "Which symbol is used to mark a parameter as optional?", [
    "?",
    "*",
    "!",
    "=",
  ]),
  Quiz(239, "Where must optional parameters be placed in a function definition?", [
    "After all required parameters",
    "Before all required parameters",
    "Anywhere in the list",
    "Only at the very beginning",
  ]),
  Quiz(240, "What is the value of an optional parameter if it is not provided?", [
    "undefined",
    "null",
    "any",
    "0",
  ]),
  Quiz(241, "How do you set a default value for a parameter?", [
    "function greet(name: string = \"Guest\") { ... }",
    "function greet(name: string? \"Guest\") { ... }",
    "function greet(name: string : \"Guest\") { ... }",
    "function greet(name := \"Guest\") { ... }",
  ]),
  Quiz(242, "If a parameter has a default value, is it required when calling the function?", [
    "No, it becomes optional automatically",
    "Yes, you must still pass 'undefined'",
    "Yes, default values are just comments",
    "Only if strict mode is on",
  ]),
  Quiz(243, "What happens if you try to use a '?' and a '=' on the same parameter?", [
    "A compile-time error occurs (they are mutually exclusive)",
    "The default value overrides the optional symbol",
    "The optional symbol overrides the default value",
    "It works perfectly",
  ]),
  Quiz(244, "Can you have multiple optional parameters?", [
    "Yes, as long as they follow the required parameters",
    "No, only one per function",
    "Yes, but only for strings",
    "Only in arrow functions",
  ]),
  Quiz(245, "What type is inferred for 'param' in: function test(param = 10) { ... }?", [
    "number",
    "any",
    "unknown",
    "10 (literal)",
  ]),
  Quiz(246, "Is 'function log(msg?: string, id: number)' valid?", [
    "No, required parameters cannot follow optional parameters",
    "Yes, TypeScript allows any order",
    "Yes, if you call it with null",
    "Only if id has a default value",
  ]),
  Quiz(247, "When using default parameters, does TypeScript infer the type from the value?", [
    "Yes (e.g., name = \"Mao\" implies name: string)",
    "No, you must still write : string",
    "Only if you use 'const'",
    "Only in classes",
  ]),
  Quiz(248, "What is the result of greet() for: function greet(n: string = \"Hi\") { return n; }?", [
    "\"Hi\"",
    "undefined",
    "An error",
    "null",
  ]),
  Quiz(249, "Can default values be the result of a function call?", [
    "Yes (e.g., date = Date.now())",
    "No, only literal values are allowed",
    "Only if the function is static",
    "Only in Module 10",
  ]),

  // --- Topic 21: Arrow Functions: The Modern Syntax ---
  Quiz(250, "What is the syntax for a basic Arrow Function?", [
    "const add = (a: number) => { ... }",
    "const add = function(a: number) => { ... }",
    "const add(a: number) => { ... }",
    "const add = (a: number) -> { ... }",
  ]),
  Quiz(251, "What is a 'shorthand' arrow function (implicit return)?", [
    "const square = (x: number) => x * x;",
    "const square = (x: number) => { return x * x; }",
    "const square = x => x * x;",
    "const square => x * x;",
  ]),
  Quiz(252, "How do you define the return type in an arrow function explicitly?", [
    "const greet = (name: string): string => { ... }",
    "const greet = :string (name: string) => { ... }",
    "const greet = (name: string) => :string { ... }",
    "const greet:string = (name: string) => { ... }",
  ]),
  Quiz(253, "Arrow functions do not have their own 'this' context. True or False?", [
    "True (they inherit from the parent scope)",
    "False (they work exactly like standard functions)",
    "True, but only in strict mode",
    "False, they always point to the Global object",
  ]),
  Quiz(254, "Can arrow functions be used as methods inside a class?", [
    "Yes, and they are often used to auto-bind 'this'",
    "No, classes only allow standard function syntax",
    "Only if they are private",
    "Only if they return void",
  ]),
  Quiz(255, "Which character replaces the 'function' keyword in arrow functions?", [
    "=>",
    "->",
    "==>",
    "::",
  ]),
  Quiz(256, "How do you return an object literal implicitly in an arrow function?", [
    "const getObj = () => ({ id: 1 }); (use parentheses)",
    "const getObj = () => { id: 1 };",
    "const getObj = () => [ id: 1 ];",
    "const getObj = () => { return { id: 1 } };",
  ]),
  Quiz(257, "If an arrow function has exactly one parameter and no type, are parentheses required?", [
    "In JavaScript no, but in TypeScript they are usually needed for types",
    "Yes, parentheses are always mandatory",
    "No, never",
    "Only if you use 'any'",
  ]),
  Quiz(258, "Are arrow functions 'hoisted' like function declarations?", [
    "No, they must be defined before they are called",
    "Yes, you can call them anywhere",
    "Only if they are declared with 'var'",
    "Only in global scope",
  ]),
  Quiz(259, "What is the type of 'const log = () => console.log(\"Hi\")'?", [
    "() => void",
    "function",
    "any",
    "void => ()",
  ]),
  Quiz(260, "Can you use 'arguments' object inside an arrow function?", [
    "No, it is not available (use rest parameters instead)",
    "Yes, it works fine",
    "Only in non-strict mode",
    "Only if the function is global",
  ]),
  Quiz(261, "Which is more concise for simple callbacks?", [
    "Arrow Functions",
    "Function Declarations",
    "Switch Statements",
    "Loops",
  ]),

  // --- Topic 22: Function Types: Defining function signatures ---
  Quiz(262, "What is a Function Type?", [
    "A way to define the expected signature (params and return) of a function",
    "A type that makes all variables into functions",
    "A way to rename a function",
    "A function that returns a type",
  ]),
  Quiz(263, "How do you define a function type using a type alias?", [
    "type CalcFunc = (a: number, b: number) => number;",
    "type CalcFunc = function(a: number, b: number): number;",
    "type CalcFunc = { a: number, b: number } -> number;",
    "alias CalcFunc = (a: number, b: number) => number;",
  ]),
  Quiz(264, "Which symbol separates parameters from the return type in a Function Type definition?", [
    "=>",
    ":",
    "->",
    "return",
  ]),
  Quiz(265, "Can you use a function type to validate a callback parameter?", [
    "Yes (e.g., function exec(cb: () => void))",
    "No, callbacks can only be 'any'",
    "Only if the callback returns a string",
    "Only in Module 10",
  ]),
  Quiz(266, "What happens if a function assigned to a Function Type variable has the wrong signature?", [
    "A compile-time error occurs",
    "TypeScript ignores the signature and allows it",
    "The function is automatically modified",
    "The program runs but crashes later",
  ]),
  Quiz(267, "Is 'let myLog: (m: string) => void;' a function call or a type definition?", [
    "A type definition (it only describes the function)",
    "A function call (it executes the code)",
    "An object creation",
    "A variable assignment",
  ]),
  Quiz(268, "Can function types include optional parameters?", [
    "Yes (e.g., (n: string, a?: number) => void)",
    "No, type signatures must be exact",
    "Only if they return void",
    "Only in classes",
  ]),
  Quiz(269, "Can you define function types within an Interface?", [
    "Yes (e.g., { greet(n: string): void; })",
    "No, interfaces are only for data properties",
    "Only if you use arrow syntax inside the interface",
    "Only in Module 5",
  ]),
  Quiz(270, "What is the benefit of using Function Types?", [
    "It ensures that functions passed as arguments are safe and predictable",
    "It makes the functions run faster",
    "It allows functions to change their names at runtime",
    "It prevents the use of the 'function' keyword",
  ]),
  Quiz(271, "Can a function type variable be reassigned?", [
    "Yes, as long as the new function matches the signature",
    "No, they are always constants",
    "Only if you use 'var'",
    "Only if the return type is 'any'",
  ]),
  Quiz(272, "Does '() => number' match a function that returns 'string'?", [
    "No, return types must be compatible",
    "Yes, because all functions are objects",
    "Only if you use 'unknown'",
    "Only in non-strict mode",
  ]),
  Quiz(273, "What is the 'Top Type' for functions that can accept anything?", [
    "Function or (...args: any[]) => any",
    "any",
    "object",
    "void",
  ]),

  // --- Topic 23: Rest Parameters: Handling multiple arguments ---
  Quiz(274, "What are Rest Parameters?", [
    "A syntax that allows a function to accept an indefinite number of arguments as an array",
    "Parameters that are allowed to take a break/rest",
    "A way to stop a function from running",
    "Parameters that only accept the remainder of a division",
  ]),
  Quiz(275, "Which prefix is used for rest parameters?", [
    "... (triple dots)",
    "* (asterisk)",
    "& (ampersand)",
    ".. (double dots)",
  ]),
  Quiz(276, "What is the data type of a rest parameter inside the function?", [
    "An Array",
    "An Object",
    "A String",
    "A Tuple",
  ]),
  Quiz(277, "How do you type a rest parameter of numbers?", [
    "(...nums: number[])",
    "(...nums: number)",
    "(nums: ...number)",
    "(nums: number[])",
  ]),
  Quiz(278, "Where must a rest parameter be placed in the function's parameter list?", [
    "Last",
    "First",
    "Middle",
    "Anywhere",
  ]),
  Quiz(279, "Can a function have more than one rest parameter?", [
    "No, only one rest parameter is allowed per function",
    "Yes, up to 3",
    "Yes, if they have different names",
    "Only in JavaScript",
  ]),
  Quiz(280, "What is the result of sum(1, 2) if the function is 'sum(...n: number[])'?", [
    "[1, 2] is passed as the array 'n'",
    "Only 1 is passed",
    "An error occurs",
    "A string \"12\" is created",
  ]),
  Quiz(281, "Do rest parameters count towards the function's '.length' property in JS?", [
    "No, only required/named parameters count",
    "Yes, it includes all dots",
    "It returns Infinity",
    "Only if they are strings",
  ]),
  Quiz(282, "Can rest parameters be used with other types (e.g., strings)?", [
    "Yes (e.g., ...names: string[])",
    "No, only for numbers",
    "Only in arrow functions",
    "Only if you use 'any'",
  ]),
  Quiz(283, "Is 'function test(...args: any[])' a valid way to accept any number of any arguments?", [
    "Yes, it is very flexible",
    "No, rest parameters must have a specific primitive type",
    "Only if you use 'unknown'",
    "Only in Module 1",
  ]),
  Quiz(284, "What happens if you pass no arguments to a function with only a rest parameter?", [
    "It receives an empty array []",
    "It receives undefined",
    "It causes an error",
    "The function doesn't run",
  ]),
  Quiz(285, "Which is the modern replacement for the 'arguments' object?", [
    "Rest Parameters",
    "Optional Parameters",
    "Interfaces",
    "Tuples",
  ]),

  // --- Topic 24: Function Overloading: One name, multiple ways ---
  Quiz(286, "What is Function Overloading?", [
    "Defining multiple function signatures for a single function implementation",
    "Calling a function too many times until the app crashes",
    "A function that contains too many lines of code",
    "Passing more arguments than defined",
  ]),
  Quiz(287, "How do you define overloads in TypeScript?", [
    "Write several function headers without bodies, then one with the body",
    "Write multiple functions with the same name and different bodies",
    "Use a switch statement inside the function",
    "Use the 'overload' keyword",
  ]),
  Quiz(288, "Does JavaScript natively support function overloading like TypeScript?", [
    "No, TS overloads are erased during compilation",
    "Yes, it works exactly the same",
    "Only in ESNext",
    "Only if you use 'strict' mode",
  ]),
  Quiz(289, "What is the 'Implementation Signature'?", [
    "The final function body that handles all the overload cases",
    "The first line of the function",
    "The type definition in an interface",
    "The code that calls the function",
  ]),
  Quiz(290, "Can overload signatures have different numbers of parameters?", [
    "Yes, to support different calling patterns",
    "No, they must be identical",
    "Only if they return void",
    "Only in classes",
  ]),
  Quiz(291, "Are the overload signatures visible in the final .js file?", [
    "No, they are completely removed (Type Erasure)",
    "Yes, as comments",
    "Yes, as multiple function definitions",
    "Only if sourceMap is true",
  ]),
  Quiz(292, "If a function is overloaded, which signatures can the user actually call?", [
    "Only the overload signatures (the implementation is hidden)",
    "Only the implementation signature",
    "Any function with the same name in the file",
    "None of them",
  ]),
  Quiz(293, "Why use Function Overloading?", [
    "To provide better IntelliSense and type safety for functions that handle different types",
    "To make the code run faster",
    "To avoid using union types",
    "To create multiple functions with the same name in JS",
  ]),
  Quiz(294, "What happens if a call doesn't match any of the overload signatures?", [
    "A compile-time error occurs",
    "It falls back to the implementation signature",
    "It returns null",
    "It runs the first overload",
  ]),
  Quiz(295, "Can you overload arrow functions?", [
    "Not directly with the 'function' syntax; you use interfaces or type literals",
    "Yes, exactly like standard functions",
    "Only in Module 13",
    "Only if they are anonymous",
  ]),
  Quiz(296, "Is the implementation signature's type checked against the overloads?", [
    "Yes, it must be compatible with all overload signatures",
    "No, it can be anything",
    "Only if you use 'strict'",
    "Only for return types",
  ]),
  Quiz(297, "Which part of the function contains the actual logic in an overloaded function?", [
    "The Implementation Block",
    "The first Overload",
    "The tsconfig.json",
    "The Interface",
  ]),
  Quiz(298, "What is the result of overloading a function with (string) and (number) return types?", [
    "The user gets the specific return type based on their input type",
    "The return type is always any",
    "It causes a crash",
    "It becomes a union type string | number",
  ]),
  Quiz(299, "Is overloading common in TypeScript libraries?", [
    "Yes, it provides a very professional API experience",
    "No, it is considered bad practice",
    "Only in very small projects",
    "Only for math functions",
  ]),
  Quiz(300, "What is the limit for how many overloads a function can have?", [
    "There is no specific limit, but too many makes it hard to read",
    "Exactly 5",
    "Exactly 10",
    "Infinite, but the computer will crash",
  ]),
];
final List<Quiz> tsQuizM5 = [
  // --- Topic 25: Object Literals: Defining shapes on the fly ---
  Quiz(301, "What is an Object Literal in TypeScript?", [
    "A comma-separated list of name-value pairs wrapped in curly braces",
    "A function that returns a new class instance",
    "A special type of array used for 3D coordinates",
    "A string that looks like an object",
  ]),
  Quiz(302, "How does TypeScript infer the type of an object literal?", [
    "Based on the names and types of the properties assigned to it",
    "It always defaults to the 'any' type",
    "It converts the object into a JSON string",
    "It assumes the object is a Class",
  ]),
  Quiz(303, "What happens if you try to add a new property to an object literal that wasn't in its initial type?", [
    "A compile-time error occurs",
    "TypeScript adds it automatically without warning",
    "The property is ignored during execution",
    "The object is deleted from memory",
  ]),
  Quiz(304, "Which syntax is used to define an inline type for an object parameter?", [
    "function greet(user: { name: string; age: number })",
    "function greet(user: [ name: string, age: number ])",
    "function greet(user: name: string, age: number)",
    "function greet(user: Object<string, number>)",
  ]),
  Quiz(305, "Can object literals contain nested objects?", [
    "Yes, and TypeScript will infer the types for all levels",
    "No, object literals must be flat",
    "Only if you use 'any'",
    "Only in Module 13",
  ]),
  Quiz(306, "What is the inferred type of: const person = { name: 'Mao' };?", [
    "{ name: string; }",
    "object",
    "any",
    "string",
  ]),
  Quiz(307, "Does 'Excess Property Checking' apply when assigning an object literal directly to a type?", [
    "Yes, it ensures no extra properties are present",
    "No, it allows any number of extra properties",
    "Only for numeric properties",
    "Only in non-strict mode",
  ]),
  Quiz(308, "How can you bypass excess property checks for an object literal?", [
    "Assign the object to an intermediate variable first",
    "Rename the properties to match the type",
    "Delete the extra properties manually",
    "Turn off the computer",
  ]),
  Quiz(309, "Can object literals contain methods?", [
    "Yes, functions can be properties of an object",
    "No, objects only hold data",
    "Only if they are arrow functions",
    "Only in classes",
  ]),
  Quiz(310, "What is the result of using a semi-colon vs a comma in an object type definition?", [
    "Both are acceptable separators in type definitions",
    "Semi-colons cause a syntax error",
    "Commas are only for JavaScript objects",
    "Semi-colons are for production only",
  ]),
  Quiz(311, "Which keyword helps in creating a constant object where properties are literal types?", [
    "as const",
    "readonly",
    "fixed",
    "static",
  ]),
  Quiz(312, "Is '{ name: string }' the same as 'Object' in TypeScript?", [
    "No, '{ name: string }' is a specific shape; 'Object' is a general type",
    "Yes, they are identical",
    "Only if name is an empty string",
    "Only in JavaScript",
  ]),

  // --- Topic 26: Interfaces: Creating reusable blueprints ---
  Quiz(313, "What is an Interface in TypeScript?", [
    "A way to define a contract for the shape of an object",
    "A physical connection between two computers",
    "A special type of function used for loops",
    "A way to hide code from the browser",
  ]),
  Quiz(314, "Which keyword is used to declare an Interface?", [
    "interface",
    "type",
    "contract",
    "struct",
  ]),
  Quiz(315, "How do you apply an interface to a variable?", [
    "let user: UserInterface;",
    "let user = new UserInterface();",
    "interface user = UserInterface;",
    "UserInterface user = { ... };",
  ]),
  Quiz(316, "What is a major feature of Interfaces regarding 'Declaration Merging'?", [
    "Multiple interface definitions with the same name are merged into one",
    "They automatically merge with the window object",
    "They merge with any classes in the file",
    "They delete previous definitions",
  ]),
  Quiz(317, "Do Interfaces exist in the final JavaScript bundle?", [
    "No, they are completely removed (Type Erasure)",
    "Yes, as JavaScript objects",
    "Yes, as JSON strings",
    "Only if the project is in production",
  ]),
  Quiz(318, "Can interfaces define method signatures?", [
    "Yes (e.g., greet(name: string): void;)",
    "No, only data properties are allowed",
    "Only if the method is an arrow function",
    "Only in Module 11",
  ]),
  Quiz(319, "Which is the standard naming convention for Interfaces?", [
    "PascalCase (e.g., UserAccount)",
    "camelCase (e.g., userAccount)",
    "snake_case (e.g., user_account)",
    "UPPER_CASE (e.g., USER_ACCOUNT)",
  ]),
  Quiz(320, "What happens if a variable using an interface is missing a required property?", [
    "A compile-time error occurs",
    "The property is set to null automatically",
    "The object is treated as 'any'",
    "The browser crashes",
  ]),
  Quiz(321, "Can an interface be used to describe a function?", [
    "Yes, using the call signature syntax",
    "No, only objects",
    "Only if the function has no parameters",
    "Only in strict mode",
  ]),
  Quiz(322, "Are interfaces used for runtime validation?", [
    "No, they are for compile-time type checking only",
    "Yes, they check values when the app runs",
    "Only if you use 'instanceof'",
    "Only for numbers",
  ]),
  Quiz(323, "Can an interface have optional properties?", [
    "Yes, using the '?' symbol",
    "No, all properties must be required",
    "Only if they are strings",
    "Only in Module 2",
  ]),
  Quiz(324, "Can an interface describe an array?", [
    "Yes, using an index signature",
    "No, arrays have their own type",
    "Only if the array contains objects",
    "Only if the array is empty",
  ]),

  // --- Topic 27: Type Aliases vs Interfaces: When to use which? ---
  Quiz(325, "Which can represent Union Types (e.g., string | number)?", [
    "Type Aliases",
    "Interfaces",
    "Both",
    "Neither",
  ]),
  Quiz(326, "Which supports Declaration Merging (defining it twice to add properties)?", [
    "Interfaces",
    "Type Aliases",
    "Both",
    "Neither",
  ]),
  Quiz(327, "When should you generally prefer an Interface over a Type Alias?", [
    "When defining the shape of an object or using inheritance",
    "When creating a simple alias for a primitive",
    "When defining a complex union or tuple",
    "When you want the code to compile faster",
  ]),
  Quiz(328, "Can Type Aliases use inheritance like Interfaces?", [
    "Yes, but they use intersections (&) instead of 'extends'",
    "No, type aliases cannot be extended",
    "Yes, they also use the 'extends' keyword",
    "Only if they are in the same file",
  ]),
  Quiz(329, "Which one is better for defining a tuple type?", [
    "Type Alias",
    "Interface",
    "Enum",
    "Class",
  ]),
  Quiz(330, "Is 'interface MyString extends string {}' valid?", [
    "No, interfaces cannot extend primitive types",
    "Yes, interfaces can extend anything",
    "Only if string is capitalized",
    "Only in Module 1",
  ]),
  Quiz(331, "Which one can use computed property names (e.g., [someVar]: string)?", [
    "Both",
    "Only Type Alias",
    "Only Interface",
    "Neither",
  ]),
  Quiz(332, "Which one is more suitable for framework public APIs?", [
    "Interface (because it allows consumers to merge properties)",
    "Type Alias (because it is more rigid)",
    "Any (it doesn't matter)",
    "Class",
  ]),
  Quiz(333, "Can an interface extend a type alias?", [
    "Yes, as long as the type alias represents an object shape",
    "No, interfaces only extend other interfaces",
    "Only if the type alias is a union",
    "Only in Module 9",
  ]),
  Quiz(334, "Can a type alias intersect an interface?", [
    "Yes, using the '&' operator",
    "No, they are incompatible",
    "Only if the interface is empty",
    "Only in React projects",
  ]),
  Quiz(335, "What is the error if you define 'type X = string;' twice?", [
    "Duplicate identifier 'X'",
    "They are merged automatically",
    "TypeScript ignores the second one",
    "The computer shuts down",
  ]),
  Quiz(336, "Is 'type User = { name: string };' the same as 'interface User { name: string; }' in behavior?", [
    "Mostly, but they differ in technical features like merging",
    "Yes, they are 100% identical in every way",
    "No, one is for local and one for global",
    "No, one is for web and one for node",
  ]),

  // --- Topic 28: Extending Interfaces: Building upon existing shapes ---
  Quiz(337, "Which keyword is used to inherit properties from another interface?", [
    "extends",
    "implements",
    "inherits",
    "plus",
  ]),
  Quiz(338, "Can an interface extend multiple other interfaces?", [
    "Yes, you can list them separated by commas",
    "No, only single inheritance is allowed",
    "Only if they have no overlapping properties",
    "Only in Module 12",
  ]),
  Quiz(339, "What happens if a child interface defines a property already in the parent with a different type?", [
    "A compile-time error occurs (incompatible override)",
    "The child's type overrides the parent's type silently",
    "TypeScript creates a union of both types",
    "The parent's type is used instead",
  ]),
  Quiz(340, "How do you extend an interface named 'Animal' into 'Dog'?", [
    "interface Dog extends Animal { ... }",
    "interface Dog : Animal { ... }",
    "interface Dog from Animal { ... }",
    "type Dog = Animal + { ... }",
  ]),
  Quiz(341, "Can an interface extend a Class?", [
    "Yes, it inherits the members but not the implementation",
    "No, classes and interfaces are totally separate",
    "Only if the class is abstract",
    "Only if the class has no constructor",
  ]),
  Quiz(342, "What is the benefit of extending interfaces?", [
    "Code reusability and creating logical hierarchies",
    "It makes the compiled code run 2x faster",
    "It prevents the use of optional properties",
    "It is required for all interfaces",
  ]),
  Quiz(343, "If interface B extends interface A, does an object of type B need properties of A?", [
    "Yes, it must have all properties from both A and B",
    "No, it only needs properties from B",
    "Only if the properties are numbers",
    "No, B replaces A",
  ]),
  Quiz(344, "Can you extend an interface that is in a different file?", [
    "Yes, as long as it is exported and imported correctly",
    "No, inheritance only works within the same file",
    "Only if you use 'require'",
    "Only in strict mode",
  ]),
  Quiz(345, "Is 'interface A extends B, C {}' valid?", [
    "Yes, multiple inheritance is supported for interfaces",
    "No, only one interface can be extended",
    "Only if B and C are type aliases",
    "Only in Module 10",
  ]),
  Quiz(346, "What is the difference between extending an interface and declaration merging?", [
    "Extending creates a new name; Merging adds to the existing name",
    "Merging creates a new name; Extending adds to the existing name",
    "There is no difference",
    "Extending is for classes only",
  ]),
  Quiz(347, "Can you extend an interface and add optional properties?", [
    "Yes, the new properties can be optional or required",
    "No, all extended properties must be required",
    "Only if the parent properties are optional",
    "Only in Module 2",
  ]),
  Quiz(348, "What type of relationship does 'extends' represent?", [
    "An 'is-a' or 'is-a-subtype-of' relationship",
    "A mathematical addition",
    "A database join",
    "A temporary link",
  ]),

  // --- Topic 29: Readonly & Optional Properties in Objects ---
  Quiz(349, "Which keyword prevents a property from being modified after initialization?", [
    "readonly",
    "const",
    "final",
    "static",
  ]),
  Quiz(350, "Which symbol marks a property as not required?", [
    "?",
    "!",
    "*",
    "=",
  ]),
  Quiz(351, "Where is the 'readonly' keyword placed in an interface?", [
    "Before the property name (e.g., readonly id: number;)",
    "After the property name",
    "After the property type",
    "In the constructor only",
  ]),
  Quiz(352, "What happens if you try to change a 'readonly' property?", [
    "A compile-time error occurs",
    "TypeScript ignores the change silently",
    "The variable is deleted",
    "The program crashes at runtime",
  ]),
  Quiz(353, "Can a property be both 'readonly' and 'optional'?", [
    "Yes (e.g., readonly id?: number;)",
    "No, it must be one or the other",
    "Only for string properties",
    "Only in Module 13",
  ]),
  Quiz(354, "Does 'readonly' make the object itself immutable (cannot add new properties)?", [
    "No, it only applies to the specific property marked",
    "Yes, the whole object is locked",
    "Only if you use 'Object.freeze()'",
    "Only in production",
  ]),
  Quiz(355, "What is the value of an optional property if it is missing from an object?", [
    "undefined",
    "null",
    "0",
    "\"\"",
  ]),
  Quiz(356, "How do you check if an optional property exists on an object?", [
    "if ('prop' in obj) or if (obj.prop)",
    "if (obj has prop)",
    "if (prop exists)",
    "if (obj.prop == null)",
  ]),
  Quiz(357, "Is 'readonly' enforced by the JavaScript runtime?", [
    "No, it is a TypeScript compile-time feature only",
    "Yes, it uses Object.defineProperty internally",
    "Only in strict mode",
    "Only for numbers",
  ]),
  Quiz(358, "Which utility type can make all properties of an interface optional?", [
    "Partial<T>",
    "Readonly<T>",
    "Pick<T>",
    "Omit<T>",
  ]),
  Quiz(359, "Which utility type can make all properties of an interface readonly?", [
    "Readonly<T>",
    "Partial<T>",
    "Required<T>",
    "Pick<T>",
  ]),
  Quiz(360, "Can you use 'readonly' on array types?", [
    "Yes (e.g., ReadonlyArray<number> or readonly number[])",
    "No, only on object properties",
    "Only for tuples",
    "Only in Module 6",
  ]),

  // --- Topic 30: Index Signatures: Handling dynamic property names ---
  Quiz(361, "What is an Index Signature?", [
    "A way to define the types for properties when the names are unknown in advance",
    "A way to sign a digital document in TS",
    "A type of loop for objects",
    "The index number of an array",
  ]),
  Quiz(362, "Which syntax is used for a string-based index signature?", [
    "[key: string]: any;",
    "{key: string}: any;",
    "(key: string): any;",
    "key: string -> any;",
  ]),
  Quiz(363, "Can an interface have both fixed properties and an index signature?", [
    "Yes, but fixed properties must match the index signature's type",
    "No, it must be one or the other",
    "Only if fixed properties are optional",
    "Only for numbers",
  ]),
  Quiz(364, "Which types are allowed as keys in an index signature?", [
    "string and number (and symbols)",
    "boolean and null",
    "Only string",
    "Any object",
  ]),
  Quiz(365, "What happens if an index signature is: [key: string]: number; and you add a string property?", [
    "A compile-time error occurs because the value must be a number",
    "It works fine",
    "The string is converted to 0",
    "The property name is ignored",
  ]),
  Quiz(366, "Why use a number-based index signature ([key: number]: T)?", [
    "To describe array-like objects or dictionaries with numeric keys",
    "To make the code run faster than strings",
    "Because strings are not allowed in interfaces",
    "To handle 3D graphics",
  ]),
  Quiz(367, "Can you have multiple index signatures in one interface?", [
    "Yes, if they are of different key types (string vs number)",
    "No, only one is allowed",
    "Only if they have the same value type",
    "Only in Module 10",
  ]),
  Quiz(368, "If an interface has [key: string]: string, can it have a property 'age: number'?", [
    "No, 'age' must also be a string to match the index signature",
    "Yes, because 'age' is a fixed property",
    "Only if 'age' is optional",
    "Only in non-strict mode",
  ]),
  Quiz(369, "Is 'obj['dynamicKey']' safe to use with index signatures?", [
    "Yes, TypeScript allows it because of the signature",
    "No, it always returns 'any'",
    "Only if you use 'as string'",
    "Only in JavaScript",
  ]),
  Quiz(370, "What is the return type of accessing a key not present in an object with an index signature?", [
    "The type defined in the signature (e.g., number | undefined if noUncheckedIndexedAccess is on)",
    "It causes an immediate crash",
    "null",
    "any",
  ]),
  Quiz(371, "Which tsconfig option makes index signatures safer by adding 'undefined' to the return type?", [
    "noUncheckedIndexedAccess",
    "strictNullChecks",
    "noImplicitAny",
    "strictPropertyInitialization",
  ]),
  Quiz(372, "Can you make an index signature 'readonly'?", [
    "Yes (e.g., readonly [key: string]: string;)",
    "No, index signatures are always mutable",
    "Only for numeric keys",
    "Only in Module 13",
  ]),
  Quiz(373, "What is a common use case for index signatures?", [
    "Dictionaries, Maps, and dynamic config objects",
    "Defining simple variables",
    "Creating loops",
    "Math calculations",
  ]),
  Quiz(374, "Does 'key: string' in [key: string] have to be named 'key'?", [
    "No, it can be any name (e.g., [propName: string])",
    "Yes, 'key' is a reserved keyword",
    "Only if you use numbers",
    "Only in Module 1",
  ]),
  Quiz(375, "What is the result of 'type MyObj = { [key: string]: string }; const x: MyObj = { a: 1 };'?", [
    "A compile-time error (1 is not a string)",
    "It works fine",
    "x.a becomes \"1\"",
    "The computer crashes",
  ]),
];
final List<Quiz> tsQuizM6 = [
  // --- Topic 31: Array Types: Square brackets vs Array<T> ---
  Quiz(376, "What is the most common syntax to define an array of strings?", [
    "string[]",
    "Array(string)",
    "[string]",
    "string.array",
  ]),
  Quiz(377, "Which syntax uses Generics to define an array of numbers?", [
    "Array<number>",
    "number<Array>",
    "<number>[]",
    "Generic.number[]",
  ]),
  Quiz(378, "Is there a functional difference between 'string[]' and 'Array<string>'?", [
    "No, they are identical in behavior and outcome",
    "Yes, string[] is faster at runtime",
    "Yes, Array<string> allows for objects only",
    "Yes, string[] is only for local variables",
  ]),
  Quiz(379, "What happens if you try to push a number into a 'string[]'?", [
    "A compile-time error occurs",
    "The number is converted to a string automatically",
    "The array becomes 'any[]'",
    "The push operation is ignored",
  ]),
  Quiz(380, "How do you define an array that can hold either strings or numbers?", [
    "(string | number)[]",
    "string | number[]",
    "string[] | number[]",
    "[string | number]",
  ]),
  Quiz(381, "What is the inferred type of 'const list = [];' if no type is provided?", [
    "any[]",
    "never[]",
    "unknown[]",
    "undefined[]",
  ]),
  Quiz(382, "Which array method returns a new array with elements that pass a test?", [
    "filter()",
    "map()",
    "find()",
    "reduce()",
  ]),
  Quiz(383, "What is the type of 'arr' in: const arr = [1, 'hi'];?", [
    "(number | string)[]",
    "any[]",
    "[number, string]",
    "number[]",
  ]),
  Quiz(384, "Can you use the '.length' property on a TypeScript array?", [
    "Yes, it works exactly like in JavaScript",
    "No, you must use .size()",
    "Only if the array is not empty",
    "Only in Module 1",
  ]),
  Quiz(385, "What does 'Array<T>' allow that 'T[]' might find less readable?", [
    "Complex nested generic types (e.g., Array<Array<number>>)",
    "Using boolean values",
    "Automatic memory management",
    "Better performance in Chrome",
  ]),
  Quiz(386, "Which command checks if a variable is an array at runtime?", [
    "Array.isArray(variable)",
    "typeof variable === 'array'",
    "variable instanceof Array[]",
    "variable.checkArray()",
  ]),
  Quiz(387, "What is the result of 'const a: number[] = [1, 2, 3]; a[10] = 5;'?", [
    "It is allowed by default (but risky)",
    "A compile-time error",
    "The array is automatically filled with 0s",
    "The computer restarts",
  ]),

  // --- Topic 32: Multi-dimensional Arrays: Matrices in TS ---
  Quiz(388, "How do you define a two-dimensional array of numbers (a matrix)?", [
    "number[][]",
    "number[2]",
    "Matrix<number>",
    "number[,]",
  ]),
  Quiz(389, "What is the type of: const data = [[1, 2], [3, 4]];?", [
    "number[][]",
    "number[]",
    "any[]",
    "Array<number>",
  ]),
  Quiz(390, "How do you access the element in the first row and second column of 'matrix'?", [
    "matrix[0][1]",
    "matrix[1, 2]",
    "matrix(0, 1)",
    "matrix{0}{1}",
  ]),
  Quiz(391, "How would you define a 3D array of strings?", [
    "string[][][]",
    "string[3]",
    "Array3D<string>",
    "string[,,]",
  ]),
  Quiz(392, "Is 'Array<Array<number>>' the same as 'number[][]'?", [
    "Yes, it is the generic version of the same type",
    "No, the first one is only for objects",
    "Only if the array is empty",
    "No, one is for Node and one is for Web",
  ]),
  Quiz(393, "What happens if a row in a 'number[][]' has a different length than other rows?", [
    "It is allowed (Jagged Array)",
    "A compile-time error occurs",
    "TypeScript forces them to be the same length",
    "The array is deleted",
  ]),
  Quiz(394, "Which method is commonly used to 'flatten' a multi-dimensional array?", [
    "flat()",
    "reduce()",
    "join()",
    "slice()",
  ]),
  Quiz(395, "Can a 2D array contain different types in different rows if typed as '(string | number)[][]'?", [
    "Yes, each inner array can contain strings or numbers",
    "No, all rows must be identical in type",
    "Only if you use 'any'",
    "Only in Module 5",
  ]),
  Quiz(396, "What is the inferred type of '[[1], ['a']]'?", [
    "(number[] | string[])[]",
    "any[][]",
    "number | string[][]",
    "tuple[]",
  ]),
  Quiz(397, "How do you iterate through a 2D array?", [
    "Using nested loops (e.g., nested for loops)",
    "Using a single .forEach()",
    "Using the .matrix() method",
    "It is not possible to iterate",
  ]),
  Quiz(398, "What is the maximum number of dimensions an array can have in TypeScript?", [
    "Technically unlimited (limited by memory)",
    "Exactly 3",
    "Exactly 10",
    "Exactly 255",
  ]),
  Quiz(399, "What is 'number[][]' called in computer science terms?", [
    "A matrix or a 2D array",
    "A linked list",
    "A stack",
    "A queue",
  ]),

  // --- Topic 33: Tuples: Fixed-length and mixed-type arrays ---
  Quiz(400, "What is a Tuple in TypeScript?", [
    "An array with a fixed number of elements and specific types for each position",
    "A function that returns three values",
    "An object that behaves like a string",
    "Another name for an enum",
  ]),
  Quiz(401, "How do you define a tuple with a string and a number?", [
    "[string, number]",
    "(string, number)",
    "{string, number}",
    "string | number[]",
  ]),
  Quiz(402, "What happens if you try to access 'tuple[2]' on a '[string, number]' tuple?", [
    "A compile-time error occurs (out of bounds)",
    "It returns undefined",
    "It returns the first element",
    "The program crashes",
  ]),
  Quiz(403, "Can you use the .push() method on a tuple in TypeScript?", [
    "Yes, but TypeScript might not catch errors if you access the new element",
    "No, tuples are completely immutable",
    "Only if the tuple is empty",
    "Only in non-strict mode",
  ]),
  Quiz(404, "Which of the following is a valid tuple assignment: let x: [number, string] = [1, 'hi'];?", [
    "Yes, the types and order match perfectly",
    "No, numbers must come after strings",
    "No, you cannot use brackets in assignment",
    "Only if you use 'const'",
  ]),
  Quiz(405, "Can tuples have optional elements?", [
    "Yes, using the '?' symbol (e.g., [number, string?])",
    "No, tuples must have a fixed length",
    "Only if all elements are strings",
    "Only in Module 12",
  ]),
  Quiz(406, "What are 'Labeled Tuples'?", [
    "Tuples where elements have names for better readability (e.g., [id: number, name: string])",
    "Tuples that are stored in a database",
    "Tuples that use the 'any' keyword",
    "Tuples used for 3D graphics",
  ]),
  Quiz(407, "Are labeled tuple names ('id', 'name') accessible at runtime?", [
    "No, they are erased and used only for documentation/IntelliSense",
    "Yes, using obj.id",
    "Only if you use 'as const'",
    "Only in JavaScript",
  ]),
  Quiz(408, "Can a tuple have a rest element (...string[])?", [
    "Yes, it allows for a variable number of trailing elements",
    "No, rest elements are only for functions",
    "Only if the rest is at the beginning",
    "Only in strict mode",
  ]),
  Quiz(409, "What is the difference between '[string, string]' and 'string[]'?", [
    "The tuple has exactly 2 elements; the array can have any number",
    "There is no difference",
    "The array is faster",
    "The tuple is only for numbers",
  ]),
  Quiz(410, "How do you destructure a tuple 'const [id, name] = myTuple;'?", [
    "Exactly like an array destructuring",
    "Using curly braces {id, name}",
    "Using the .get() method",
    "Using a for-in loop",
  ]),
  Quiz(411, "What is a common use case for Tuples?", [
    "Returning multiple values from a function (like React's useState)",
    "Storing millions of records",
    "Creating animations",
    "Connecting to a server",
  ]),

  // --- Topic 34: Enums: Numeric and String enumerations ---
  Quiz(412, "What is an Enum in TypeScript?", [
    "A way to define a set of named constants",
    "A loop that iterates forever",
    "A type of mathematical equation",
    "A keyword for deleting objects",
  ]),
  Quiz(413, "By default, what is the value of the first member of a numeric enum?", [
    "0",
    "1",
    "-1",
    "undefined",
  ]),
  Quiz(414, "If the first member of an enum is set to 5, what is the value of the second member?", [
    "6",
    "0",
    "1",
    "10",
  ]),
  Quiz(415, "Do numeric enums support 'Reverse Mapping' (mapping value back to name)?", [
    "Yes, you can access the name using the numeric value",
    "No, only name to value",
    "Only if you use strings",
    "Only in strict mode",
  ]),
  Quiz(416, "What is a String Enum?", [
    "An enum where every member is initialized with a string literal",
    "An enum that only allows the word 'string'",
    "A way to convert numbers to strings",
    "An enum that doesn't use the 'enum' keyword",
  ]),
  Quiz(417, "Do string enums support reverse mapping?", [
    "No, they only map from name to value",
    "Yes, automatically",
    "Only if the string is a number",
    "Only in Module 1",
  ]),
  Quiz(418, "Which keyword is used to declare an enum?", [
    "enum",
    "type enum",
    "const enum",
    "interface enum",
  ]),
  Quiz(419, "What happens to an 'enum' after compilation to JavaScript?", [
    "It is converted into a specialized JavaScript object",
    "It is completely erased",
    "It is converted into a class",
    "It becomes a list of strings",
  ]),
  Quiz(420, "Can enums have mixed string and numeric members (Heterogeneous enums)?", [
    "Yes, but it is generally discouraged",
    "No, they must be all strings or all numbers",
    "Only if they are constant",
    "Only in Module 13",
  ]),
  Quiz(421, "Why use Enums instead of just constant strings?", [
    "They provide better intent, auto-completion, and type safety",
    "They make the code run faster",
    "They reduce the file size by 90%",
    "They are required by the browser",
  ]),
  Quiz(422, "How do you access an enum member?", [
    "EnumName.MemberName",
    "EnumName['MemberName']",
    "Both are valid",
    "Neither",
  ]),
  Quiz(423, "Can an enum member's value be calculated (computed)?", [
    "Yes, for numeric enums (e.g., A = getVal())",
    "No, values must be literals",
    "Only for string enums",
    "Only in non-strict mode",
  ]),

  // --- Topic 35: Const Enums: Performance and usage ---
  Quiz(424, "What is a 'const enum'?", [
    "An enum that is completely inlined during compilation to save space",
    "An enum that cannot be changed at runtime",
    "An enum that only allows numeric values",
    "An enum that is stored in a separate file",
  ]),
  Quiz(425, "Does a 'const enum' create a JavaScript object in the output?", [
    "No, it is removed and replaced by literal values (Inlining)",
    "Yes, just like a regular enum",
    "Only if you use strings",
    "Only in development mode",
  ]),
  Quiz(426, "Can you use reverse mapping with 'const enums'?", [
    "No, because the object doesn't exist at runtime",
    "Yes, always",
    "Only for numbers",
    "Only if the computer is fast",
  ]),
  Quiz(427, "When should you use 'const enums'?", [
    "When you want to avoid the extra overhead of an object and don't need reverse mapping",
    "When you want to create a global variable",
    "When the enum has more than 100 members",
    "When you are using React",
  ]),
  Quiz(428, "Which compiler option can affect how const enums behave in some build tools?", [
    "isolatedModules",
    "strict",
    "noImplicitAny",
    "target",
  ]),
  Quiz(429, "How do you declare a const enum?", [
    "const enum Direction { ... }",
    "enum const Direction { ... }",
    "readonly enum Direction { ... }",
    "static enum Direction { ... }",
  ]),
  Quiz(430, "What is 'Inlining' in the context of const enums?", [
    "Replacing the enum access with the actual value (e.g., 0 instead of Direction.Up)",
    "Writing the whole enum on one line of code",
    "Using enums inside a string",
    "Loading the enum from a website",
  ]),
  Quiz(431, "Can const enums have computed members?", [
    "No, they must be constant values (literals or other enum members)",
    "Yes, always",
    "Only if the function is static",
    "Only in strict mode",
  ]),
  Quiz(432, "What is the result of 'console.log(Direction.Up)' if Direction is a const enum?", [
    "The literal value (e.g., 0) is printed in the compiled code",
    "The string 'Direction.Up' is printed",
    "An error occurs",
    "The program crashes",
  ]),
  Quiz(433, "Are const enums recommended for libraries published to NPM?", [
    "It can be problematic for consumers using certain build setups",
    "Yes, always recommended",
    "Only if the library is small",
    "Only for numeric values",
  ]),
  Quiz(434, "Can you access a const enum using a dynamic string key (Enum[str])?", [
    "No, because the object doesn't exist to look up the key",
    "Yes, it works fine",
    "Only in Module 5",
    "Only in JavaScript",
  ]),
  Quiz(435, "Which is generally smaller in compiled file size?", [
    "const enum",
    "regular enum",
    "type alias",
    "interface",
  ]),

  // --- Topic 36: Readonly Arrays: Protecting list integrity ---
  Quiz(436, "What is a 'ReadonlyArray'?", [
    "An array type that prevents any modifications (push, pop, etc.) after creation",
    "An array that can only be read by the administrator",
    "An array that is deleted after it is read",
    "An array that only holds 'readonly' strings",
  ]),
  Quiz(437, "Which syntax is used to define a readonly array of numbers?", [
    "readonly number[]",
    "number[] readonly",
    "const number[]",
    "fixed number[]",
  ]),
  Quiz(438, "Is there a generic way to write a readonly array?", [
    "ReadonlyArray<number>",
    "Array<readonly number>",
    "number<ReadonlyArray>",
    "Immutable<number[]>",
  ]),
  Quiz(439, "What happens if you try to use '.push()' on a readonly array?", [
    "A compile-time error occurs",
    "TypeScript allows it but warns you",
    "The push happens but the value is null",
    "The computer restarts",
  ]),
  Quiz(440, "Can you assign a regular array to a readonly array?", [
    "Yes (casting a mutable array to an immutable one is safe)",
    "No, they are incompatible",
    "Only if the array is empty",
    "Only in non-strict mode",
  ]),
  Quiz(441, "Can you assign a readonly array back to a regular mutable array?", [
    "No (because you could then modify the 'readonly' source)",
    "Yes, always",
    "Only if you use 'any'",
    "Only in Module 1",
  ]),
  Quiz(442, "Which methods ARE allowed on a readonly array?", [
    "Non-mutating methods like .map(), .filter(), and .slice()",
    ".push(), .pop(), and .splice()",
    ".sort() and .reverse()",
    "None, you can only use a for loop",
  ]),
  Quiz(443, "Does 'readonly' on an array make the objects inside the array readonly too?", [
    "No, it only prevents the array itself from being modified (deep vs shallow)",
    "Yes, everything becomes readonly",
    "Only if the objects are strings",
    "Only in strict mode",
  ]),
  Quiz(444, "How do you create a deep readonly array (including nested objects)?", [
    "You must use custom utility types or 'as const'",
    "It happens automatically with 'readonly'",
    "You cannot do this in TypeScript",
    "By using 'const enum'",
  ]),
  Quiz(445, "What is the shorthand for 'ReadonlyArray<string>'?", [
    "readonly string[]",
    "const string[]",
    "string.readonly[]",
    "[readonly string]",
  ]),
  Quiz(446, "Why use Readonly Arrays?", [
    "To ensure data integrity and prevent accidental side effects in functions",
    "To make the code run 10x faster",
    "To use less RAM",
    "Because the 'Array' keyword is too long",
  ]),
  Quiz(447, "What is the return type of '.slice()' on a readonly array?", [
    "A regular mutable array",
    "Another readonly array",
    "A string",
    "void",
  ]),
  Quiz(448, "Can a tuple be marked as readonly?", [
    "Yes (e.g., readonly [number, string])",
    "No, only regular arrays",
    "Only if it has 2 elements",
    "Only in Module 13",
  ]),
  Quiz(449, "What happens if you pass a readonly array to a function expecting 'number[]'?", [
    "A compile-time error occurs (ReadonlyArray is not assignable to Array)",
    "It works fine",
    "TypeScript converts it to a regular array",
    "The program crashes at runtime",
  ]),
  Quiz(450, "How do you make an array readonly in a single line using an assertion?", [
    "const arr = [1, 2, 3] as const;",
    "const arr = [1, 2, 3] as readonly;",
    "const arr = [1, 2, 3] as final;",
    "const arr = [1, 2, 3] as static;",
  ]),
];
final List<Quiz> tsQuizM7 = [
  // --- Topic 37: Union Types: Handling multiple types (|) ---
  Quiz(451, "What does a Union Type allow a variable to do?", [
    "Hold a value of one of several different specified types",
    "Combine all properties of two types into one new type",
    "Hold only strings that contain numbers",
    "Automatically convert types at runtime",
  ]),
  Quiz(452, "Which symbol is used to create a Union Type?", [
    "| (pipe)",
    "& (ampersand)",
    "|| (double or)",
    "&& (double and)",
  ]),
  Quiz(453, "If a variable is 'string | number', which methods can you call WITHOUT narrowing?", [
    "Only methods common to both string and number (e.g., toString())",
    "All string methods and all number methods",
    "Only string methods",
    "No methods are allowed",
  ]),
  Quiz(454, "What is the process of checking a specific type within a union called?", [
    "Type Narrowing",
    "Type Widening",
    "Type Casting",
    "Type Erasure",
  ]),
  Quiz(455, "Can a union type consist of more than two types?", [
    "Yes, you can pipe as many types as needed",
    "No, only two types are allowed",
    "Only if one is 'any'",
    "Only in non-strict mode",
  ]),
  Quiz(456, "Which of these is a valid Union Type declaration?", [
    "let value: string | number | boolean;",
    "let value: string or number;",
    "let value: [string, number];",
    "let value: string + number;",
  ]),
  Quiz(457, "What is the inferred type of 'const x = Math.random() > 0.5 ? \"A\" : 1;'?", [
    "\"A\" | 1",
    "string",
    "number",
    "any",
  ]),
  Quiz(458, "Why are Union Types useful in function parameters?", [
    "They allow a function to accept different kinds of inputs flexibly",
    "They make the function run twice as fast",
    "They prevent the function from returning void",
    "They are required for all async functions",
  ]),
  Quiz(459, "What happens if you assign a boolean to 'let x: string | number;'?", [
    "A compile-time error occurs",
    "The boolean is converted to 0 or 1",
    "TypeScript adds boolean to the union automatically",
    "The program crashes",
  ]),
  Quiz(460, "Is 'null | undefined' a valid union?", [
    "Yes, it is common for optional or missing data",
    "No, these are not considered types",
    "Only in Module 1",
    "Only if you use 'any'",
  ]),
  Quiz(461, "What type is 'type Status = \"success\" | \"error\";' called?", [
    "A Union of String Literals",
    "A Tuple",
    "An Enum",
    "A Mixed Union",
  ]),
  Quiz(462, "Can you use union types with interfaces?", [
    "Yes, a variable can be 'InterfaceA | InterfaceB'",
    "No, unions only work with primitives",
    "Only if they share a common ID",
    "Only in Module 5",
  ]),

  // --- Topic 38: Type Guarding: Using typeof and instanceof ---
  Quiz(463, "What is the purpose of a Type Guard?", [
    "To narrow down a union type to a specific type within a block of code",
    "To prevent hackers from changing variable types",
    "To lock a variable so it cannot be edited",
    "To delete a variable if it has the wrong type",
  ]),
  Quiz(464, "Which operator is used to check for primitive types (string, number, etc.)?", [
    "typeof",
    "instanceof",
    "isType",
    "typeOf",
  ]),
  Quiz(465, "What is the return value of 'typeof' in JavaScript/TypeScript?", [
    "A string representing the type (e.g., 'string', 'number')",
    "The type itself",
    "A boolean",
    "A numeric code",
  ]),
  Quiz(466, "Which operator is used to check if an object is an instance of a specific Class?", [
    "instanceof",
    "typeof",
    "isClass",
    "extends",
  ]),
  Quiz(467, "Can 'typeof' distinguish between a custom Interface and a regular Object?", [
    "No, both will return 'object'",
    "Yes, it returns the interface name",
    "Only if you use strict mode",
    "Only in Module 5",
  ]),
  Quiz(468, "How do you use 'typeof' to guard a number?", [
    "if (typeof val === 'number') { ... }",
    "if (val is number) { ... }",
    "if (val == number) { ... }",
    "if (typeof(val) : number)",
  ]),
  Quiz(469, "Can 'instanceof' be used with Interfaces?", [
    "No, because interfaces are removed during compilation",
    "Yes, it works exactly like classes",
    "Only if the interface has methods",
    "Only in Module 12",
  ]),
  Quiz(470, "What is the result of 'typeof null' in JavaScript?", [
    "'object' (this is a known JS quirk)",
    "'null'",
    "'undefined'",
    "'any'",
  ]),
  Quiz(471, "Which of these is a valid use of 'instanceof'?", [
    "if (myObj instanceof Date) { ... }",
    "if (myStr instanceof string) { ... }",
    "if (myNum instanceof 5) { ... }",
    "if (myArr instanceof Array<T>)",
  ]),
  Quiz(472, "Does Type Guarding affect the code after the 'if' block?", [
    "No, the narrowing only applies within the scope of the guard",
    "Yes, the variable is changed forever",
    "Only if you use 'var'",
    "Only if the variable is a constant",
  ]),
  Quiz(473, "What is 'Control Flow Analysis'?", [
    "TypeScript's ability to track types based on logic like if/else",
    "A tool for measuring CPU usage",
    "A way to speed up loops",
    "The process of deleting unused variables",
  ]),
  Quiz(474, "How does 'typeof' handle arrays?", [
    "It returns 'object'",
    "It returns 'array'",
    "It returns 'list'",
    "It returns 'number[]'",
  ]),

  // --- Topic 39: Truthiness Guarding: Handling null and undefined ---
  Quiz(475, "What is 'Truthiness Guarding'?", [
    "Checking if a variable is null/undefined before accessing it",
    "Verifying if a string is factually correct",
    "A security feature for passwords",
    "Making sure a variable is exactly 'true'",
  ]),
  Quiz(476, "Which values are considered 'Falsy' in TypeScript?", [
    "false, 0, \"\", null, undefined, and NaN",
    "Only false and 0",
    "Only null and undefined",
    "Everything except strings",
  ]),
  Quiz(477, "What is a simple way to guard against 'null' for a variable 'val'?", [
    "if (val) { ... }",
    "if (val != empty) { ... }",
    "if (val exists)",
    "if (val as boolean)",
  ]),
  Quiz(478, "What is the problem with 'if (val)' if 'val' could be the number 0?", [
    "0 is falsy, so the block won't execute even if 0 is a valid number",
    "It causes a runtime error",
    "0 is treated as true",
    "Nothing, it works perfectly",
  ]),
  Quiz(479, "Which operator is better for checking ONLY null/undefined (but not 0 or \"\")?", [
    "if (val != null) { ... }",
    "if (val) { ... }",
    "if (val == true)",
    "if (!val)",
  ]),
  Quiz(480, "What does the 'Optional Chaining' operator (?.) do?", [
    "Safely accesses a property only if the object is not null/undefined",
    "Makes a variable optional",
    "Converts a value to a boolean",
    "Deletes an object if it is empty",
  ]),
  Quiz(481, "What is the result of 'null?.property'?", [
    "undefined",
    "An error",
    "null",
    "false",
  ]),
  Quiz(482, "What is the 'Non-null Assertion' operator?", [
    "! (e.g., val!)",
    "? (e.g., val?)",
    "* (e.g., val*)",
    "!! (e.g., !!val)",
  ]),
  Quiz(483, "When should you use the '!' non-null assertion?", [
    "When you are 100% sure a value is not null, even if TS doesn't know",
    "Every time you use a variable",
    "To convert a string to a number",
    "To comment out an error",
  ]),
  Quiz(484, "What does '!!val' do?", [
    "Converts any value into its actual boolean equivalent",
    "Checks if a value is double null",
    "Cancels a previous exclamation mark",
    "Throws a double error",
  ]),
  Quiz(485, "Is '[]' (empty array) truthy or falsy?", [
    "Truthy",
    "Falsy",
    "Depends on strict mode",
    "Only if it contains null",
  ]),
  Quiz(486, "Is '\" \"' (string with a space) truthy or falsy?", [
    "Truthy",
    "Falsy",
    "It is null",
    "It causes an error",
  ]),

  // --- Topic 40: Discriminated Unions: Pattern matching for objects ---
  Quiz(487, "What is a Discriminated Union?", [
    "A union of object types that share a common literal property (tag)",
    "A union that is not allowed in certain files",
    "A union that only uses numbers",
    "A way to delete properties from an object",
  ]),
  Quiz(488, "What is the 'Discriminant' in a discriminated union?", [
    "The shared property with a literal type used to distinguish objects",
    "A mathematical function",
    "The name of the interface",
    "The last property in the object",
  ]),
  Quiz(489, "Which is a common name for the discriminant property?", [
    "type, kind, or status",
    "id, name, or age",
    "any, void, or never",
    "value, data, or body",
  ]),
  Quiz(490, "Why are Discriminated Unions better than regular unions for objects?", [
    "They allow for 100% safe and easy type narrowing using a simple property check",
    "They make the objects take up less memory",
    "They allow objects to be used as strings",
    "They are required for React",
  ]),
  Quiz(491, "How do you narrow a Discriminated Union in a code block?", [
    "Using a switch or if statement on the discriminant property",
    "Using 'typeof'",
    "Using 'instanceof'",
    "By renaming the object",
  ]),
  Quiz(492, "If Circle has { kind: 'circle', radius: 10 }, what is 'kind'?", [
    "The Discriminant",
    "A variable",
    "A method",
    "An optional property",
  ]),
  Quiz(493, "Does the discriminant property have to be a string literal?", [
    "It can be a string, number, or boolean literal",
    "No, it must be a unique ID number",
    "Yes, only strings are allowed",
    "It can be any dynamic variable",
  ]),
  Quiz(494, "What is 'Exhaustiveness Checking' with Discriminated Unions?", [
    "Using the 'never' type to ensure all possible cases are handled",
    "Checking if the computer is tired",
    "Counting the number of properties in a union",
    "Making sure the discriminant is not null",
  ]),
  Quiz(495, "Which type is used to check for unhandled cases in a switch?", [
    "never",
    "any",
    "void",
    "unknown",
  ]),
  Quiz(496, "Is 'interface Square { type: 'sq'; size: number }' a good candidate for a discriminated union?", [
    "Yes, 'type' is the literal discriminant",
    "No, it needs more properties",
    "Only if 'size' is a string",
    "Only in Module 12",
  ]),
  Quiz(497, "What happens if you add a new type to a union but forget to update the switch statement (with exhaustiveness check)?", [
    "A compile-time error occurs on the 'never' assignment",
    "The program runs fine but skips the case",
    "TypeScript updates the switch automatically",
    "The program crashes immediately",
  ]),
  Quiz(498, "Can you have two different types with the same discriminant value?", [
    "No, they must be unique literals to distinguish the types",
    "Yes, always",
    "Only if the other properties are the same",
    "Only in Module 1",
  ]),

  // --- Topic 41: The 'in' operator: Checking property existence ---
  Quiz(499, "What does the 'in' operator do in TypeScript?", [
    "Checks if a specific property exists on an object",
    "Checks if a value is inside an array",
    "Is used to import modules",
    "Creates a new property",
  ]),
  Quiz(500, "What is the syntax for the 'in' operator?", [
    "'propertyName' in object",
    "object has 'propertyName'",
    "in(object, 'propertyName')",
    "object['propertyName'] exists",
  ]),
  Quiz(501, "Can the 'in' operator be used as a type guard?", [
    "Yes, it narrows the type to the one containing that property",
    "No, it only works in JavaScript",
    "Only for numeric properties",
    "Only in Module 5",
  ]),
  Quiz(502, "What is the return type of the 'in' operator?", [
    "boolean",
    "string",
    "the property value",
    "void",
  ]),
  Quiz(503, "If Bird has 'fly' and Fish has 'swim', how do you check for Bird?", [
    "if ('fly' in animal)",
    "if (animal is Bird)",
    "if (typeof animal === 'Bird')",
    "if (animal.fly != null)",
  ]),
  Quiz(504, "Does 'in' check for properties in the prototype chain?", [
    "Yes",
    "No, only own properties",
    "Only in non-strict mode",
    "Only for classes",
  ]),
  Quiz(505, "Is 'in' useful for narrowing regular Unions of objects?", [
    "Yes, especially when they don't have a shared discriminant",
    "No, 'in' is for arrays only",
    "Only for optional properties",
    "Only in Module 2",
  ]),
  Quiz(506, "What happens if you use 'in' on a primitive like a string?", [
    "A runtime error occurs (it expects an object)",
    "It returns false",
    "It checks the string length",
    "It returns true",
  ]),
  Quiz(507, "Can 'in' be used to check for methods?", [
    "Yes, methods are just properties with function values",
    "No, only data properties",
    "Only if the method is public",
    "Only in Module 11",
  ]),
  Quiz(508, "How does 'in' compare to 'typeof' for object narrowing?", [
    "'in' checks for property presence; 'typeof' just says 'object'",
    "They are identical",
    "'typeof' is much safer",
    "'in' only works for numbers",
  ]),
  Quiz(509, "Is 'if (obj.prop)' safer than \" 'prop' in obj \"?", [
    "No, 'if (obj.prop)' can fail if the property is a falsy value (like 0)",
    "Yes, it is always safer",
    "They are exactly the same",
    "Only if you use 'any'",
  ]),
  Quiz(510, "What is the inferred type inside: if ('name' in x)?", [
    "The type(s) in the union of x that definitely have a 'name' property",
    "any",
    "string",
    "The property value",
  ]),

  // --- Topic 42: User-defined Type Guards: Creating custom checkers ---
  Quiz(511, "What is a User-defined Type Guard?", [
    "A function that returns a type predicate to narrow a type",
    "A security setting in tsconfig.json",
    "A way to password-protect a class",
    "A comment that tells TS to ignore errors",
  ]),
  Quiz(512, "What is a 'Type Predicate'?", [
    "A return type of the form 'parameterName is Type'",
    "A boolean value",
    "An error message",
    "A mathematical theorem",
  ]),
  Quiz(513, "How do you define a type guard function for 'Bird'?", [
    "function isBird(x: any): x is Bird { ... }",
    "function isBird(x: any): boolean { ... }",
    "function isBird(x: any): x as Bird { ... }",
    "function isBird(x: Bird): boolean",
  ]),
  Quiz(514, "What must a type guard function return internally?", [
    "A boolean (true if the guard passes, false otherwise)",
    "The object itself",
    "A string with the type name",
    "void",
  ]),
  Quiz(515, "Why use a custom type guard instead of just a boolean function?", [
    "It tells TypeScript's compiler exactly what the type is if it returns true",
    "It makes the function run in a separate thread",
    "It allows the function to return multiple types",
    "It is required by the browser",
  ]),
  Quiz(516, "In 'arg is Bird', what does 'arg' refer to?", [
    "One of the parameters of the guard function",
    "A global variable",
    "The return value",
    "The name of the class",
  ]),
  Quiz(517, "Where can you use a custom type guard?", [
    "In any conditional block like 'if' or 'filter()'",
    "Only inside a class",
    "Only in the tsconfig file",
    "Only for numbers",
  ]),
  Quiz(518, "How do you use a type guard to filter an array: 'arr.filter(isBird)'?", [
    "It narrows the resulting array type to 'Bird[]'",
    "It removes all elements from the array",
    "It converts all elements to Bird",
    "It doesn't change the type, only the values",
  ]),
  Quiz(519, "Can a type guard have multiple parameters?", [
    "Yes, but only one is used in the predicate (arg is Type)",
    "No, it must have exactly one",
    "Only if they are all any",
    "Only in Module 13",
  ]),
  Quiz(520, "What happens if a type guard returns 'true' but the logic is wrong?", [
    "TypeScript believes the guard and might allow unsafe code (be careful!)",
    "TypeScript detects the logical error and fails",
    "The program crashes",
    "Nothing, TypeScript ignores the return",
  ]),
  Quiz(521, "Is 'typeof x === \"string\"' a built-in type guard?", [
    "Yes, TypeScript recognizes standard JS checks as guards",
    "No, you must wrap it in a function",
    "Only if you use 'any'",
    "Only in Module 1",
  ]),
  Quiz(522, "Can you use 'asserts x is Type'?", [
    "Yes, it's an Assertion Guard that throws if the condition is false",
    "No, only 'x is Type' is allowed",
    "Only for strings",
    "Only in Module 8",
  ]),
  Quiz(523, "What is the return type of an assertion guard 'asserts x is Bird'?", [
    "void (it either passes or throws)",
    "boolean",
    "Bird",
    "any",
  ]),
  Quiz(524, "When should you prefer a custom type guard?", [
    "When the narrowing logic is complex or used in many places",
    "Every time you use an 'if' statement",
    "Only for primitive types",
    "Only in React components",
  ]),
  Quiz(525, "What is the result of using a type guard on an 'any' variable?", [
    "It narrows the 'any' to the specified type safely",
    "It has no effect",
    "It causes a compile error",
    "It makes the variable 'unknown'",
  ]),
];
final List<Quiz> tsQuizM8 = [
  // --- Topic 43: Try...Catch...Finally: The basic safety net ---
  Quiz(526, "What is the primary purpose of a try...catch block?", [
    "To handle runtime errors and prevent the application from crashing",
    "To speed up the execution of a loop",
    "To define a new type for a variable",
    "To check for syntax errors during compilation",
  ]),
  Quiz(527, "Which block contains the code that might throw an error?", [
    "try",
    "catch",
    "finally",
    "throw",
  ]),
  Quiz(528, "When does the 'catch' block execute?", [
    "Only if an error occurs in the 'try' block",
    "Always, after the 'try' block completes",
    "Only if the 'finally' block fails",
    "Before the 'try' block starts",
  ]),
  Quiz(529, "What is the purpose of the 'finally' block?", [
    "To execute code regardless of whether an error occurred or not",
    "To catch errors that the 'catch' block missed",
    "To restart the 'try' block from the beginning",
    "To log the error to a remote server only",
  ]),
  Quiz(530, "Can you have a 'try' block without a 'catch' block?", [
    "Yes, but only if a 'finally' block is present",
    "No, 'catch' is always mandatory",
    "Yes, always",
    "Only in non-strict mode",
  ]),
  Quiz(531, "What happens to the code execution after a catch block finishes?", [
    "It continues with the code following the try-catch-finally structure",
    "It stops the entire program",
    "It jumps back into the 'try' block",
    "It repeats the 'catch' block",
  ]),
  Quiz(532, "Can you nest try...catch blocks inside other try blocks?", [
    "Yes, it is common for complex error handling",
    "No, only one try block is allowed per function",
    "Only if they are in different files",
    "Only in Module 13",
  ]),
  Quiz(533, "If a 'return' is inside a 'try' block, does 'finally' still run?", [
    "Yes, 'finally' always runs before the function returns",
    "No, 'return' exits the function immediately",
    "Only if there was an error",
    "Only in JavaScript, not TypeScript",
  ]),
  Quiz(534, "What is the scope of variables declared inside a 'try' block?", [
    "Local to the 'try' block (not accessible in catch/finally)",
    "Global to the entire function",
    "Accessible only in the 'catch' block",
    "Accessible only in the 'finally' block",
  ]),
  Quiz(535, "What happens if an error occurs in the 'catch' block itself?", [
    "It will bubble up to the next outer try-catch or crash the app",
    "The 'try' block restarts",
    "The 'finally' block is skipped",
    "It is ignored by TypeScript",
  ]),
  Quiz(536, "Is 'try { ... } finally { ... }' valid syntax?", [
    "Yes",
    "No, it must have a catch",
    "Only for async functions",
    "Only in Module 1",
  ]),
  Quiz(537, "Which part of the structure is used for 'cleanup' tasks like closing a file?", [
    "finally",
    "try",
    "catch",
    "throw",
  ]),

  // --- Topic 44: Throwing Errors: Creating custom exceptions ---
  Quiz(538, "Which keyword is used to manually trigger an error?", [
    "throw",
    "error",
    "raise",
    "emit",
  ]),
  Quiz(539, "What can you technically 'throw' in JavaScript/TypeScript?", [
    "Anything (strings, numbers, objects, or Error instances)",
    "Only instances of the Error class",
    "Only strings",
    "Only boolean values",
  ]),
  Quiz(540, "What is the recommended object to throw for standard error handling?", [
    "An instance of the 'Error' class (new Error())",
    "A plain string message",
    "A numeric error code",
    "An empty object",
  ]),
  Quiz(541, "How do you add a custom message to a new Error object?", [
    "new Error(\"Your custom message\")",
    "new Error(message: \"Your custom message\")",
    "Error.throw(\"Your custom message\")",
    "new Error.message = \"Your custom message\"",
  ]),
  Quiz(542, "How do you create a custom Error class in TypeScript?", [
    "class MyError extends Error { ... }",
    "class MyError implements Error { ... }",
    "type MyError = Error + { ... }",
    "interface MyError extends Error { ... }",
  ]),
  Quiz(543, "Why use a custom Error class instead of a generic Error?", [
    "To allow for specific type checking (instanceof) in catch blocks",
    "To make the error message colorful",
    "To bypass the try-catch structure",
    "Because standard Error is deprecated",
  ]),
  Quiz(544, "What property of the Error object contains the text message?", [
    "message",
    "text",
    "body",
    "info",
  ]),
  Quiz(545, "What property of the Error object shows the sequence of function calls?", [
    "stack",
    "trace",
    "history",
    "path",
  ]),
  Quiz(546, "What happens to the code execution immediately after a 'throw' statement?", [
    "It stops and searches for the nearest catch block",
    "It continues to the next line",
    "It waits for 5 seconds",
    "It clears the variable memory",
  ]),
  Quiz(547, "Can you throw 'null'?", [
    "Yes, though it is not recommended",
    "No, it must be an object",
    "Only in non-strict mode",
    "Only in Module 10",
  ]),
  Quiz(548, "What is 'Rethrowing' an error?", [
    "Catching an error and then throwing it again after some logic",
    "Throwing the same error twice in one line",
    "Automatically throwing every 5 minutes",
    "Deleting the error from the stack",
  ]),
  Quiz(549, "When would you rethrow an error?", [
    "When you want to log it locally but still let the caller handle it",
    "When you want to hide the error from the user",
    "To make the code run infinitely",
    "To convert a string to a number",
  ]),

  // --- Topic 45: Type Guarding 'unknown' errors in catch blocks ---
  Quiz(550, "In modern TypeScript (strict mode), what is the default type of the 'error' variable in a catch block?", [
    "unknown",
    "any",
    "Error",
    "object",
  ]),
  Quiz(551, "Why is the catch variable typed as 'unknown' instead of 'Error'?", [
    "Because JavaScript can throw anything, not just Error objects",
    "Because 'Error' is too memory-intensive",
    "To prevent developers from using catch blocks",
    "It's a bug in TypeScript",
  ]),
  Quiz(552, "How do you safely access 'error.message' in a catch block?", [
    "Check 'if (error instanceof Error)' first",
    "Just use 'error.message' directly",
    "Use 'error as Error' without checking",
    "Convert error to a string first",
  ]),
  Quiz(553, "What happens if you use 'any' for the catch variable (catch (err: any))?", [
    "You lose type safety but can access properties easily",
    "The code becomes 10x more secure",
    "The catch block will never run",
    "A compile-time error occurs immediately",
  ]),
  Quiz(554, "Which operator is best for guarding against custom Error classes?", [
    "instanceof",
    "typeof",
    "in",
    "as",
  ]),
  Quiz(555, "How do you check if 'unknown' error is a simple string?", [
    "if (typeof error === 'string')",
    "if (error is string)",
    "if (error instanceof String)",
    "if (error == \"\")",
  ]),
  Quiz(556, "Can you provide a type annotation to a catch variable (e.g., catch (err: MyType))?", [
    "No, TypeScript only allows 'any' or 'unknown' for catch variables",
    "Yes, you can put any type there",
    "Only if the type is 'Error'",
    "Only in Module 12",
  ]),
  Quiz(557, "Which tsconfig option enforces 'unknown' for catch variables?", [
    "useUnknownInCatchVariables",
    "strictNullChecks",
    "noImplicitAny",
    "alwaysStrict",
  ]),
  Quiz(558, "What is the benefit of narrowing 'unknown' in catch blocks?", [
    "It prevents runtime crashes from accessing properties on things that aren't Errors",
    "It makes the stack trace longer",
    "It speeds up the transpilation process",
    "It is purely for aesthetic reasons",
  ]),
  Quiz(559, "What do you call 'error as Error'?", [
    "Type Assertion (or Type Casting)",
    "Type Guarding",
    "Type Inference",
    "Type Erasure",
  ]),
  Quiz(560, "Is type assertion (as Error) safer than a type guard (instanceof)?", [
    "No, type assertion bypasses checks; type guard verifies at runtime",
    "Yes, it is much safer",
    "They are identical",
    "Assertion is only for numbers",
  ]),
  Quiz(561, "What is a common pattern for handling unknown errors?", [
    "Guard with instanceof Error, else handle as a generic case",
    "Delete the error",
    "Use a while loop to wait",
    "Change the type to 'any'",
  ]),

  // --- Topic 46: Built-in Error Types (Reference, Syntax, Type Errors) ---
  Quiz(562, "When is a 'ReferenceError' thrown?", [
    "When you try to access a variable that has not been declared",
    "When there is a typo in your syntax",
    "When you assign the wrong type to a variable",
    "When a function returns null",
  ]),
  Quiz(563, "When is a 'SyntaxError' thrown?", [
    "When the code violates the rules of the language (e.g., missing a bracket)",
    "When a variable is undefined",
    "When you divide by zero",
    "When the internet is disconnected",
  ]),
  Quiz(564, "When is a 'TypeError' thrown?", [
    "When an operation is performed on a value of the wrong type (e.g., calling a number as a function)",
    "When a file is not found",
    "When a loop runs infinitely",
    "When you use a custom Error class",
  ]),
  Quiz(565, "What is a 'RangeError'?", [
    "When a numeric value is outside its allowed range (e.g., invalid array length)",
    "When a variable is out of scope",
    "When the range of a for loop is too small",
    "When the computer is out of disk space",
  ]),
  Quiz(566, "What is 'URIError'?", [
    "When global URI handling functions are used incorrectly",
    "When a website URL is missing 'https'",
    "When a link in a comment is broken",
    "When the browser is in offline mode",
  ]),
  Quiz(567, "Which built-in error is most common during development in TypeScript?", [
    "TypeError (usually caught by the compiler first)",
    "SyntaxError",
    "URIError",
    "InternalError",
  ]),
  Quiz(568, "Can you catch a 'SyntaxError' at runtime in the same script that contains it?", [
    "No, the script usually fails to parse and doesn't run at all",
    "Yes, with try-catch",
    "Only if you use 'any'",
    "Only in Module 1",
  ]),
  Quiz(569, "What base class do ReferenceError and TypeError inherit from?", [
    "Error",
    "Object",
    "Exception",
    "BaseError",
  ]),
  Quiz(570, "What is 'EvalError'?", [
    "An error regarding the global eval() function (rarely used now)",
    "An error during variable evaluation",
    "An error in the VS Code terminal",
    "An error when calculating math",
  ]),
  Quiz(571, "Which error occurs if you try: const x = y + 1; where y is not defined?", [
    "ReferenceError",
    "TypeError",
    "SyntaxError",
    "RangeError",
  ]),
  Quiz(572, "Which error occurs if you try: null.f();?", [
    "TypeError",
    "ReferenceError",
    "NullError",
    "SyntaxError",
  ]),
  Quiz(573, "Does TypeScript catch all these errors at compile-time?", [
    "Many, but some (like logic-based ReferenceErrors) only happen at runtime",
    "Yes, 100% of them",
    "No, TypeScript only checks for spelling",
    "Only in strict mode",
  ]),

  // --- Topic 47: Debugging in VS Code: Breakpoints and Watches ---
  Quiz(574, "What is a 'Breakpoint'?", [
    "A marker that pauses the execution of code at a specific line",
    "A line of code that causes an error",
    "A way to break out of a loop",
    "A keyboard shortcut to delete a file",
  ]),
  Quiz(575, "How do you set a breakpoint in VS Code?", [
    "Click in the margin (gutter) to the left of the line number",
    "Type the 'break' keyword in the code",
    "Right-click the file name and select 'Stop'",
    "Press Ctrl + Alt + Delete",
  ]),
  Quiz(576, "What is the 'Debug Console' used for?", [
    "To evaluate expressions and see output while the app is paused",
    "To write the final code of the app",
    "To download extensions",
    "To chat with other developers",
  ]),
  Quiz(577, "What does 'Step Over' do during debugging?", [
    "Moves to the next line of code without entering into function calls",
    "Skips the next 10 lines",
    "Restarts the entire function",
    "Ignores all errors",
  ]),
  Quiz(578, "What does 'Step Into' do?", [
    "Enters inside the function called on the current line",
    "Goes to the next file",
    "Increases the value of a variable",
    "Pauses the debugger for 1 minute",
  ]),
  Quiz(579, "What is a 'Watch' expression?", [
    "A variable or expression whose value you want to monitor continuously during debugging",
    "A timer that stops the debugger",
    "A video recording of the code execution",
    "A type of comment",
  ]),
  Quiz(580, "What is the 'Call Stack' window for?", [
    "To see the hierarchy of function calls that led to the current point",
    "To see how much memory the app is using",
    "To list all the variables in the file",
    "To check for updates to VS Code",
  ]),
  Quiz(581, "What does 'Step Out' do?", [
    "Finishes the current function and returns to the caller",
    "Exits the VS Code application",
    "Deletes the current line of code",
    "Disconnects the debugger",
  ]),
  Quiz(582, "Which panel in VS Code shows all the current local and global variables?", [
    "Variables Panel",
    "Explorer Panel",
    "Output Panel",
    "Terminal Panel",
  ]),
  Quiz(583, "Can you modify a variable's value while the debugger is paused?", [
    "Yes, in the Variables panel or Debug Console",
    "No, variables are locked during debugging",
    "Only if they are not 'const'",
    "Only in JavaScript files",
  ]),
  Quiz(584, "What is a 'Conditional Breakpoint'?", [
    "A breakpoint that only pauses if a specific expression is true",
    "A breakpoint that only works on 'if' statements",
    "A breakpoint that changes its color",
    "A breakpoint that is only active on Mondays",
  ]),
  Quiz(585, "Which shortcut key usually starts debugging in VS Code?", [
    "F5",
    "F1",
    "F12",
    "Ctrl + S",
  ]),

  // --- Topic 48: Source Maps: Debugging TS in the Browser ---
  Quiz(586, "What is a 'Source Map' (.js.map)?", [
    "A file that maps the compiled JS code back to the original TS source code",
    "A map of all the files in the project directory",
    "A way to locate the server's physical address",
    "A guide for beginners to learn TypeScript",
  ]),
  Quiz(587, "Which option in tsconfig.json enables source map generation?", [
    "sourceMap: true",
    "generateMaps: true",
    "debug: true",
    "outputMapping: true",
  ]),
  Quiz(588, "Why are source maps important for browser debugging?", [
    "They allow you to set breakpoints in .ts files directly in the browser dev tools",
    "They make the JavaScript file smaller",
    "They translate the code into different languages",
    "They prevent the browser from showing errors",
  ]),
  Quiz(589, "Where does the browser look for the source map?", [
    "A special comment at the bottom of the .js file",
    "In the node_modules folder",
    "In the HTML head tag",
    "It scans the whole hard drive",
  ]),
  Quiz(590, "Do you need to upload .ts files to the server for source maps to work for users?", [
    "Only if you want users to see the original source in their dev tools",
    "Yes, they are required for the app to run",
    "No, only the .js files are needed for the app",
    "Yes, otherwise the app will be slow",
  ]),
  Quiz(591, "Which tab in Chrome DevTools is used for debugging using source maps?", [
    "Sources",
    "Network",
    "Console",
    "Elements",
  ]),
  Quiz(592, "What happens if sourceMap is set to false?", [
    "You can only debug the compiled (and often messy) JavaScript code",
    "The TypeScript code will not compile",
    "The browser will crash",
    "All errors will disappear",
  ]),
  Quiz(593, "Are source maps usually enabled in the final production build?", [
    "Often disabled or hidden to prevent others from seeing the original source code",
    "Yes, always",
    "Only for small projects",
    "Only in Module 10",
  ]),
  Quiz(594, "Can source maps be embedded directly inside the .js file?", [
    "Yes, using 'inlineSourceMap' in tsconfig.json",
    "No, they must always be separate files",
    "Only if you use 'any'",
    "Only in Module 1",
  ]),
  Quiz(595, "What is the file extension for a source map file?", [
    ".js.map",
    ".ts.map",
    ".map.json",
    ".debug",
  ]),
  Quiz(596, "Which tool creates the source map?", [
    "The TypeScript Compiler (tsc)",
    "The Web Browser",
    "VS Code",
    "Node.js",
  ]),
  Quiz(597, "What happens if the .js.map file is missing but 'sourceMap' was on?", [
    "The browser might log a warning and only show the .js code",
    "The application will fail to load",
    "The computer will crash",
    "The code runs faster",
  ]),
  Quiz(598, "Can source maps work with minified JavaScript code?", [
    "Yes, they are especially useful for debugging production minified code",
    "No, minification breaks the mapping",
    "Only for numeric values",
    "Only if the file is very small",
  ]),
  Quiz(599, "What is 'inlineSources' in tsconfig?", [
    "An option to include the actual TS source code inside the map file",
    "A way to write code on a single line",
    "A tool for downloading libraries",
    "A type of variable",
  ]),
  Quiz(600, "What is the best workflow for debugging TypeScript?", [
    "Enable sourceMap -> Use VS Code Debugger or Browser Sources -> Set Breakpoints",
    "Use console.log only",
    "Guess where the error is and change code",
    "Rewrite the code in JavaScript",
  ]),
];
final List<Quiz> tsQuizM9 = [
  // --- Topic 49: Generics: Creating flexible and reusable components ---
  Quiz(601, "What is the primary purpose of Generics in TypeScript?", [
    "To create reusable components that work with a variety of types while maintaining type safety",
    "To make the code run faster by using any type",
    "To automatically convert strings into numbers",
    "To hide the implementation details of a function",
  ]),
  Quiz(602, "Which symbol is commonly used as a placeholder for a Generic type?", [
    "<T>",
    "(T)",
    "[T]",
    "{T}",
  ]),
  Quiz(603, "What does 'T' usually stand for in Generic syntax?", [
    "Type",
    "Template",
    "Transformation",
    "Temporary",
  ]),
  Quiz(604, "How do you define a generic function named 'identity'?", [
    "function identity<T>(arg: T): T { return arg; }",
    "function identity(arg: T): T { return arg; }",
    "function <T>identity(arg: T) { return arg; }",
    "type identity<T> = (arg: T) => T",
  ]),
  Quiz(605, "What is 'Type Inference' in the context of Generics?", [
    "The compiler automatically determining the type of T based on the argument passed",
    "The developer manually writing the type inside angle brackets",
    "A way to change the type of a variable at runtime",
    "An error that happens when T is unknown",
  ]),
  Quiz(606, "Can a function have multiple generic type parameters?", [
    "Yes (e.g., <T, U>)",
    "No, only one <T> is allowed",
    "Only if they are both strings",
    "Only in Module 13",
  ]),
  Quiz(607, "What is the benefit of using <T> instead of 'any'?", [
    "It preserves the specific type information of the input and output",
    "It allows the variable to be anything without any checks",
    "It makes the compiled JavaScript file smaller",
    "It is required by the browser to run the code",
  ]),
  Quiz(608, "How do you explicitly call a generic function with a string type?", [
    "identity<string>('Hello')",
    "identity('Hello') as string",
    "identity(string: 'Hello')",
    "string.identity('Hello')",
  ]),
  Quiz(609, "Can generics be used with arrow functions?", [
    "Yes (e.g., const id = <T>(arg: T) => arg;)",
    "No, only with standard function declarations",
    "Only if the arrow function is async",
    "Only if you use 'any'",
  ]),
  Quiz(610, "What happens if you use a generic type T but don't use it in parameters or return?", [
    "It is valid but usually useless/redundant",
    "A compile-time error occurs",
    "TypeScript deletes the function",
    "The computer crashes",
  ]),
  Quiz(611, "Which of the following is a built-in generic type for arrays?", [
    "Array<T>",
    "List<T>",
    "Collection<T>",
    "Set<any>",
  ]),
  Quiz(612, "Is 'T' a reserved keyword in TypeScript?", [
    "No, it is just a convention; you can use any name like <MyType>",
    "Yes, you must only use T, U, or V",
    "Only inside interfaces",
    "Only in strict mode",
  ]),

  // --- Topic 50: Generic Constraints: Limiting types with 'extends' ---
  Quiz(613, "What is a Generic Constraint?", [
    "A way to limit the types that can be passed to a generic using the 'extends' keyword",
    "A way to stop a function from being generic",
    "A security feature for variables",
    "A method to delete a type",
  ]),
  Quiz(614, "How do you constrain a generic T to only types that have a 'length' property?", [
    "<T extends { length: number }>",
    "<T has length>",
    "<T: length>",
    "<T implements length>",
  ]),
  Quiz(615, "What happens if you pass a number to a generic function constrained by 'extends string'?", [
    "A compile-time error occurs",
    "The number is converted to a string",
    "The constraint is ignored",
    "The program runs but returns null",
  ]),
  Quiz(616, "Which keyword is used to apply a constraint to a generic parameter?", [
    "extends",
    "implements",
    "is",
    "where",
  ]),
  Quiz(617, "Can a generic constraint extend another generic type parameter (e.g., <T, U extends T>)?", [
    "Yes, this is used to ensure one type is compatible with another",
    "No, you can only extend primitives or interfaces",
    "Only in Module 12",
    "Only for numbers",
  ]),
  Quiz(618, "What is the 'keyof' operator used for in constraints?", [
    "To constrain a type to be a valid key of another object type",
    "To unlock a private property",
    "To list all the variables in a file",
    "To check the type of a key at runtime",
  ]),
  Quiz(619, "How do you write a function that only accepts a key from an object?", [
    "function getProp<T, K extends keyof T>(obj: T, key: K)",
    "function getProp<T>(obj: T, key: string)",
    "function getProp<keyof T>(obj: T)",
    "function getProp(obj: any, key: any)",
  ]),
  Quiz(620, "Is '<T extends any>' a useful constraint?", [
    "No, it is essentially the same as not having a constraint at all",
    "Yes, it makes the code much safer",
    "It is required for all generics",
    "It only works for strings",
  ]),
  Quiz(621, "Can you use multiple interfaces in a single generic constraint?", [
    "Yes, by using an intersection (e.g., <T extends InterfaceA & InterfaceB>)",
    "No, only one interface can be extended",
    "Only if you use commas",
    "Only in non-strict mode",
  ]),
  Quiz(622, "What is the result of using a generic without constraints when accessing a property like '.name'?", [
    "A compile-time error (T might not have a 'name' property)",
    "TypeScript assumes it might exist and allows it",
    "It returns 'undefined' at runtime",
    "It works only if the input is an object",
  ]),
  Quiz(623, "Why are constraints important for type safety?", [
    "They allow the compiler to guarantee that certain properties exist on the generic type",
    "They make the functions run faster",
    "They prevent the use of 'any'",
    "They are needed to export the function",
  ]),
  Quiz(624, "Can a constraint be a Union type (e.g., <T extends string | number>)?", [
    "Yes, T must be either a string, a number, or a subtype of them",
    "No, only single types are allowed",
    "Only if you use 'unknown'",
    "Only in Module 2",
  ]),

  // --- Topic 51: Generics with Interfaces and Classes ---
  Quiz(625, "How do you define a Generic Interface?", [
    "interface Box<T> { content: T; }",
    "interface Box { content: <T>; }",
    "interface <T>Box { content: T; }",
    "type Box<T> = interface { content: T; }",
  ]),
  Quiz(626, "How do you define a Generic Class?", [
    "class DataStorage<T> { ... }",
    "generic class DataStorage { ... }",
    "class <T>DataStorage { ... }",
    "class DataStorage { item: <T>; }",
  ]),
  Quiz(627, "Can a generic class have a static property of the generic type (static item: T)?", [
    "No, static members cannot use the class's generic type parameters",
    "Yes, always",
    "Only if the property is private",
    "Only in Module 11",
  ]),
  Quiz(628, "How do you instantiate a generic class with a specific type?", [
    "const storage = new DataStorage<string>();",
    "const storage = new <string>DataStorage();",
    "const storage = DataStorage<string>.new();",
    "const storage: string = new DataStorage();",
  ]),
  Quiz(629, "Can a class implement a generic interface?", [
    "Yes (e.g., class MyClass implements Box<string>)",
    "No, only interfaces can implement interfaces",
    "Only if the class is also generic",
    "Only in Module 5",
  ]),
  Quiz(630, "What is a 'Generic Default Type'?", [
    "A default type assigned if none is provided (e.g., <T = string>)",
    "The type 'any'",
    "The type assigned to all variables",
    "A type used only for numbers",
  ]),
  Quiz(631, "Can you have a generic interface for a function signature?", [
    "Yes (e.g., interface Fn<T> { (arg: T): T; })",
    "No, only for object shapes",
    "Only if the function is static",
    "Only in strict mode",
  ]),
  Quiz(632, "In a generic class, where can you use the type parameter T?", [
    "In property types, method parameters, and return types",
    "Only in the constructor",
    "Only in private methods",
    "Only in the class name",
  ]),
  Quiz(633, "Does every instance of a generic class share the same T?", [
    "No, each instance can be created with a different type for T",
    "Yes, once defined it's fixed for all instances",
    "Only if you use 'static'",
    "Only in Node.js",
  ]),
  Quiz(634, "Can an interface extend a generic interface?", [
    "Yes (e.g., interface BetterBox<T> extends Box<T>)",
    "No, that's not allowed",
    "Only if you use 'implements'",
    "Only for strings",
  ]),
  Quiz(635, "Why use generic classes?", [
    "To create flexible data structures like Stacks, Queues, or Lists that handle any data safely",
    "To make classes load faster from the network",
    "To automatically generate CSS for the class",
    "To bypass the need for a constructor",
  ]),
  Quiz(636, "What is the result of 'interface I<T> { x: T }' if you use 'let a: I;'?", [
    "A compile-time error (Generic type 'I' requires 1 type argument)",
    "It defaults to 'any'",
    "It defaults to 'unknown'",
    "It works perfectly",
  ]),

  // --- Topic 52: Utility Types: Partial, Pick, and Omit ---
  Quiz(637, "What does the 'Partial<T>' utility type do?", [
    "Makes all properties of type T optional",
    "Removes half of the properties from T",
    "Makes all properties of type T required",
    "Converts all properties to strings",
  ]),
  Quiz(638, "What does the 'Pick<T, K>' utility type do?", [
    "Creates a new type by choosing a specific set of properties K from T",
    "Picks a random property from T",
    "Deletes properties K from T",
    "Converts T into an array",
  ]),
  Quiz(639, "What does the 'Omit<T, K>' utility type do?", [
    "Creates a new type by picking all properties from T except for K",
    "Makes all properties in T required",
    "Adds new properties K to T",
    "Changes the type of K to 'any'",
  ]),
  Quiz(640, "How do you pick 'name' and 'age' from a 'User' interface?", [
    "Pick<User, 'name' | 'age'>",
    "Pick<User, ['name', 'age']>",
    "Pick<User, name & age>",
    "User.pick('name', 'age')",
  ]),
  Quiz(641, "If you Omit 'id' from '{ id: number; name: string }', what is the result?", [
    "{ name: string }",
    "{ id?: number; name: string }",
    "{ id: any; name: string }",
    "An empty object",
  ]),
  Quiz(642, "Can 'Partial' be used to update an object partially in a function?", [
    "Yes, it's very common for 'update' or 'patch' functions",
    "No, you must provide the full object",
    "Only if all properties are strings",
    "Only in Module 10",
  ]),
  Quiz(643, "What is the difference between Pick and Omit?", [
    "Pick defines what to KEEP; Omit defines what to REMOVE",
    "Pick is for classes; Omit is for interfaces",
    "Pick is for strings; Omit is for numbers",
    "There is no difference",
  ]),
  Quiz(644, "Are Utility Types available globally in TypeScript?", [
    "Yes, they are built-in and always available",
    "No, you must import them from 'ts-utils'",
    "Only if you enable them in tsconfig",
    "Only in strict mode",
  ]),
  Quiz(645, "What happens if you use Pick with a key that doesn't exist in T?", [
    "A compile-time error occurs",
    "It returns 'undefined'",
    "It adds the key as 'any'",
    "It works silently",
  ]),
  Quiz(646, "Is 'Partial<Partial<T>>' valid?", [
    "Yes, but it is redundant as it's already partial",
    "No, you cannot nest utility types",
    "Only if T is a class",
    "Only in Module 1",
  ]),
  Quiz(647, "Which utility type is best for a 'Draft' object before it is saved?", [
    "Partial<T>",
    "Pick<T>",
    "Omit<T>",
    "Readonly<T>",
  ]),
  Quiz(648, "What is the result of 'Pick<User, never>'?", [
    "An empty object type {}",
    "The full User type",
    "null",
    "any",
  ]),

  // --- Topic 53: Utility Types: Readonly, Record, and Required ---
  Quiz(649, "What does the 'Readonly<T>' utility type do?", [
    "Makes all properties of T immutable (cannot be reassigned)",
    "Makes the object invisible",
    "Allows the object to be read from a file only",
    "Deletes the object after reading",
  ]),
  Quiz(650, "What does 'Required<T>' do?", [
    "Makes all properties of T mandatory (removes optional '?' modifiers)",
    "Adds more properties to T",
    "Changes all types to 'any'",
    "Requires the project to be compiled again",
  ]),
  Quiz(651, "What does 'Record<K, T>' do?", [
    "Creates an object type with keys K and values of type T",
    "Records the history of changes to an object",
    "Creates a database record",
    "Converts an array to an object",
  ]),
  Quiz(652, "How do you create an object where keys are strings and values are numbers?", [
    "Record<string, number>",
    "Record<number, string>",
    "Map<string, number>",
    "Object<string, number>",
  ]),
  Quiz(653, "If T has { name?: string }, what does Required<T> result in?", [
    "{ name: string } (the '?' is removed)",
    "{ name?: string } (no change)",
    "{ name: string | undefined }",
    "An error",
  ]),
  Quiz(654, "Is 'Readonly<T>' deep or shallow?", [
    "Shallow (only top-level properties are made readonly)",
    "Deep (all nested properties also become readonly)",
    "It depends on the browser",
    "Only for arrays",
  ]),
  Quiz(655, "Which utility type is perfect for a simple 'Dictionary' or 'Map' object?", [
    "Record",
    "Required",
    "Partial",
    "Omit",
  ]),
  Quiz(656, "Can K in 'Record<K, T>' be a union of literals?", [
    "Yes (e.g., Record<'admin' | 'user', number>)",
    "No, only 'string' or 'number' types",
    "Only if you use 'any'",
    "Only in Module 12",
  ]),
  Quiz(657, "What happens if you try to modify a property of a 'Readonly<User>' object?", [
    "A compile-time error occurs",
    "It works fine at runtime",
    "The change is silently ignored",
    "The program crashes",
  ]),
  Quiz(658, "Which utility type is the opposite of 'Partial'?", [
    "Required",
    "Readonly",
    "Record",
    "Pick",
  ]),
  Quiz(659, "How do you create a Readonly Record of strings?", [
    "Readonly<Record<string, string>>",
    "Record<readonly string, string>",
    "ReadonlyRecord<string>",
    "Record<string, string> as const",
  ]),
  Quiz(660, "Is 'Record<string, any>' the same as '{ [key: string]: any }'?", [
    "Yes, they represent the same index signature structure",
    "No, one is an object and one is a type",
    "Only if strict mode is off",
    "Only in Module 5",
  ]),

  // --- Topic 54: Mapped Types: Transforming types dynamically ---
  Quiz(661, "What is a Mapped Type?", [
    "A way to create a new type by iterating through the keys of an existing type",
    "A way to map coordinates in a game",
    "A function that transforms an array",
    "A type of loop for strings",
  ]),
  Quiz(662, "Which syntax is the foundation of Mapped Types?", [
    "{ [P in K]: T }",
    "for (let p in k) { ... }",
    "map(P => K)",
    "type P = keyof K",
  ]),
  Quiz(663, "What does 'keyof T' do in a mapped type?", [
    "Gets a union of all property names (keys) from type T",
    "Gets the values of type T",
    "Deletes the keys of T",
    "Checks if a key exists in T",
  ]),
  Quiz(664, "How do you manually create a 'Readonly' version of T using a mapped type?", [
    "{ readonly [P in keyof T]: T[P] }",
    "{ [P in keyof T] = readonly T[P] }",
    "readonly { [P in T]: P }",
    "type Readonly<T> = T",
  ]),
  Quiz(665, "What does the '-' prefix do in a mapped type (e.g., -readonly or -?)?", [
    "It removes that modifier (e.g., makes it mutable or required)",
    "It makes the property negative",
    "It deletes the property",
    "It's a syntax error",
  ]),
  Quiz(666, "How do you make all properties required using a mapped type?", [
    "{ [P in keyof T]-?: T[P] }",
    "{ [P in keyof T]+required: T[P] }",
    "{ required [P in keyof T]: T[P] }",
    "type Required<T> = T",
  ]),
  Quiz(667, "What is 'Property Re-mapping' using the 'as' keyword?", [
    "A way to change the name of the keys while mapping",
    "A way to cast the values",
    "A way to delete keys",
    "A way to hide properties",
  ]),
  Quiz(668, "How can you prefix all keys of an object with 'get_'?", [
    "{ [P in keyof T as `get_\${string & P}`]: T[P] }",
    "{ get_[P in keyof T]: T[P] }",
    "{ [P in keyof T]: T[`get_\${P}`] }",
    "This is not possible in TS",
  ]),
  Quiz(669, "Can mapped types filter out keys?", [
    "Yes, by using 'as never' in the re-mapping clause",
    "No, they must include all keys",
    "Only if the values are null",
    "Only in Module 13",
  ]),
  Quiz(670, "What is 'T[P]' called in a mapped type?", [
    "Indexed Access Type (gets the type of property P from T)",
    "An array of P",
    "A generic parameter",
    "A syntax error",
  ]),
  Quiz(671, "Why are Mapped Types powerful?", [
    "They allow for dynamic and complex type transformations based on existing shapes",
    "They make the code run faster than JavaScript",
    "They are required for all interfaces",
    "They automatically connect to a database",
  ]),
  Quiz(672, "Is 'Record<K, T>' actually implemented as a mapped type internally?", [
    "Yes, it uses the mapped type syntax { [P in K]: T }",
    "No, it is a special compiler feature",
    "Only for numeric keys",
    "Only in strict mode",
  ]),
  Quiz(673, "Can you map over a union of strings directly?", [
    "Yes (e.g., { [P in 'a' | 'b']: string })",
    "No, only over 'keyof' an object",
    "Only if you use 'any'",
    "Only in Module 5",
  ]),
  Quiz(674, "What is the result of '{ [P in keyof T]: boolean }' for T = { id: number }?", [
    "{ id: boolean }",
    "{ id: number }",
    "boolean[]",
    "An error",
  ]),
  Quiz(675, "Mapped types are a key part of which TypeScript feature?", [
    "Advanced Type System (Type Meta-programming)",
    "Basic Syntax",
    "Runtime execution",
    "Garbage collection",
  ]),
];
final List<Quiz> tsQuizM10 = [
  // --- Topic 55: The Event Loop: How TS handles Asynchronous tasks ---
  Quiz(676, "What is the Event Loop in JavaScript/TypeScript?", [
    "A mechanism that handles asynchronous callbacks by moving them to the execution stack",
    "A loop that repeats a function 100 times",
    "A hardware component in the CPU",
    "A way to write CSS animations",
  ]),
  Quiz(677, "Is JavaScript a single-threaded or multi-threaded language by default?", [
    "Single-threaded (one task at a time)",
    "Multi-threaded (many tasks at once)",
    "It depends on the operating system",
    "Only multi-threaded in TypeScript",
  ]),
  Quiz(678, "Where are asynchronous tasks (like timers) handled before they go back to the stack?", [
    "Web APIs (Browser) or C++ APIs (Node.js)",
    "The RAM directly",
    "The TypeScript Compiler",
    "The HTML file",
  ]),
  Quiz(679, "What is the 'Callback Queue' (Task Queue)?", [
    "A queue where finished async tasks wait to be pushed onto the stack",
    "A list of all variables in the app",
    "A way to delete code",
    "The place where 'if' statements are stored",
  ]),
  Quiz(680, "What happens if the 'Call Stack' is not empty?", [
    "The Event Loop waits and does not push tasks from the queue",
    "The Event Loop clears the stack automatically",
    "The program crashes",
    "The computer restarts",
  ]),
  Quiz(681, "Which of the following is a 'Microtask'?", [
    "Promise callbacks (.then/catch)",
    "setTimeout",
    "setInterval",
    "Click events",
  ]),
  Quiz(682, "Which has higher priority in the Event Loop: Macrotasks or Microtasks?", [
    "Microtasks (they run immediately after the current script and before the next macrotask)",
    "Macrotasks",
    "They have the same priority",
    "It depends on the internet speed",
  ]),
  Quiz(683, "What is 'Non-blocking I/O'?", [
    "The ability to start a long task and move to the next line without waiting",
    "A way to prevent users from clicking buttons",
    "A security feature for databases",
    "A way to lock a file",
  ]),
  Quiz(684, "What does 'setTimeout(() => {}, 0)' actually do?", [
    "Schedules the code to run as soon as possible after the stack is clear",
    "Runs the code instantly and blocks everything",
    "Deletes the function",
    "Runs the code in a separate thread",
  ]),
  Quiz(685, "Why is the Event Loop important for UI performance?", [
    "It prevents long tasks from freezing the browser screen",
    "It makes the font look better",
    "It reduces the size of images",
    "It automatically saves data",
  ]),

  // --- Topic 56: Callbacks: The old way and 'Callback Hell' ---
  Quiz(686, "What is a Callback function?", [
    "A function passed as an argument to another function to be executed later",
    "A function that calls the developer's phone",
    "A function that only returns numbers",
    "A way to rename a variable",
  ]),
  Quiz(687, "What is 'Callback Hell'?", [
    "Deeply nested callbacks that make code hard to read and maintain",
    "An error that happens in the compiler",
    "A loop that never ends",
    "When a function is deleted by mistake",
  ]),
  Quiz(688, "How do you handle an error in a traditional Node.js style callback?", [
    "The first argument is usually reserved for the error (err, data) => { ... }",
    "Using a try-catch block around the function call",
    "Using the 'error' keyword",
    "Callbacks cannot handle errors",
  ]),
  Quiz(689, "Which symbol is often seen repeatedly in 'Callback Hell'?", [
    "}) (Closing brackets and parentheses nesting)",
    "++ (Increment)",
    "?? (Nullish coalescing)",
    "== (Equality)",
  ]),
  Quiz(690, "Why did developers move away from deep callbacks?", [
    "They are difficult to debug and lead to 'Pyramid of Doom' code structure",
    "They make the internet slower",
    "They are not supported in TypeScript",
    "They only work in Internet Explorer",
  ]),
  Quiz(691, "Is a callback always asynchronous?", [
    "No, some (like array.map()) are synchronous",
    "Yes, always",
    "Only if it returns a string",
    "Only in Module 10",
  ]),

  // --- Topic 57: Promises: Pending, Resolved, and Rejected states ---
  Quiz(692, "What is a Promise in TypeScript?", [
    "An object representing the eventual completion (or failure) of an async operation",
    "A guarantee that the code has no bugs",
    "A way to store data permanently",
    "A type of loop for strings",
  ]),
  Quiz(693, "What are the three possible states of a Promise?", [
    "Pending, Fulfilled (Resolved), Rejected",
    "Start, Middle, End",
    "Wait, OK, Error",
    "Active, Inactive, Deleted",
  ]),
  Quiz(694, "Which method is called when a Promise is successful?", [
    ".then()",
    ".catch()",
    ".finally()",
    ".success()",
  ]),
  Quiz(695, "Which method is called when a Promise fails?", [
    ".catch()",
    ".then()",
    ".error()",
    ".stop()",
  ]),
  Quiz(696, "What does 'Pending' mean for a Promise?", [
    "The initial state, neither fulfilled nor rejected",
    "The code is deleted",
    "The data is ready to use",
    "The browser is closed",
  ]),
  Quiz(697, "How do you create a new Promise manually?", [
    "new Promise((resolve, reject) => { ... })",
    "create Promise()",
    "Promise.start()",
    "new Promise{ ... }",
  ]),
  Quiz(698, "What is 'Promise Chaining'?", [
    "Returning a new promise from a .then() to handle sequential async tasks",
    "Connecting two computers with a cable",
    "Using multiple catch blocks",
    "A way to make promises run infinitely",
  ]),
  Quiz(699, "Which method runs whether the Promise succeeded or failed?", [
    ".finally()",
    ".then()",
    ".catch()",
    ".done()",
  ]),
  Quiz(700, "What is the result of 'Promise.resolve(5)'?", [
    "A promise that is immediately fulfilled with the value 5",
    "The number 5 directly",
    "An error",
    "A pending promise that never finishes",
  ]),

  // --- Topic 58: Async/Await: Writing Async code like Synchronous ---
  Quiz(701, "What is 'async/await'?", [
    "Syntactic sugar over Promises that makes async code look like synchronous code",
    "A new way to write CSS",
    "A tool for minifying JavaScript",
    "A method to delete variables",
  ]),
  Quiz(702, "Which keyword must be used before a function to use 'await' inside it?", [
    "async",
    "await",
    "promise",
    "sync",
  ]),
  Quiz(703, "What does the 'await' keyword do?", [
    "Pauses the execution of the async function until the promise resolves",
    "Makes the code run faster",
    "Restarts the computer",
    "Converts a string to a promise",
  ]),
  Quiz(704, "What does an 'async' function always return?", [
    "A Promise",
    "void",
    "The direct value returned by the 'return' statement",
    "undefined",
  ]),
  Quiz(705, "Can you use 'await' at the top level of a script (not inside a function)?", [
    "Yes, in modern environments (ES Modules)",
    "No, never",
    "Only if you use 'any'",
    "Only in Module 1",
  ]),
  Quiz(706, "What happens if you 'await' a non-promise value?", [
    "It is wrapped in a resolved promise and returns immediately",
    "A runtime error occurs",
    "The program stops",
    "It waits forever",
  ]),
  Quiz(707, "Does 'await' block the main thread (freeze the UI)?", [
    "No, it only pauses the async function; the rest of the app stays responsive",
    "Yes, it freezes everything until the task is done",
    "Only in strict mode",
    "Only for network requests",
  ]),
  Quiz(708, "Which is generally easier to read for complex logic: Promises or Async/Await?", [
    "Async/Await",
    "Callbacks",
    "Promises with .then()",
    "Manual loops",
  ]),

  // --- Topic 59: Error Handling in Async: Try/Catch with Await ---
  Quiz(709, "How do you handle errors when using async/await?", [
    "Wrap the await call in a try...catch block",
    "Use a .catch() method at the end of every line",
    "Async functions cannot have errors",
    "The compiler catches them automatically",
  ]),
  Quiz(710, "What happens if an awaited promise rejects and there is no try/catch?", [
    "An 'Uncaught (in promise)' error occurs and might crash the process",
    "The program ignores the error",
    "The variable becomes null",
    "The browser reloads",
  ]),
  Quiz(711, "Can you combine .catch() with await (e.g., await task().catch(...))?", [
    "Yes, it is a valid alternative to try/catch",
    "No, they are incompatible",
    "Only if you use 'any'",
    "Only in Module 8",
  ]),
  Quiz(712, "In a catch block with async/await, what is the 'err' type by default in TS?", [
    "unknown",
    "Error",
    "any",
    "string",
  ]),

  // --- Topic 60: Promise.all vs Promise.race: Handling multiple tasks ---
  Quiz(713, "What does 'Promise.all([p1, p2])' do?", [
    "Waits for all promises to resolve and returns an array of results",
    "Runs only the first promise",
    "Returns the result of the fastest promise",
    "Deletes both promises if one fails",
  ]),
  Quiz(714, "What happens if ONE promise in 'Promise.all' fails?", [
    "The whole thing rejects immediately (Fail-fast)",
    "It ignores the failure and returns the successful ones",
    "It waits for the others anyway",
    "It restarts the failed promise",
  ]),
  Quiz(715, "What does 'Promise.race([p1, p2])' do?", [
    "Returns the result of the first promise that settles (either resolved or rejected)",
    "Returns the results of all promises",
    "Waits for the last promise to finish",
    "It causes a crash",
  ]),
  Quiz(716, "What does 'Promise.allSettled()' do?", [
    "Waits for all promises to finish and returns an array describing the outcome of each",
    "Rejects if any promise is pending",
    "Only returns successful results",
    "Makes the computer run faster",
  ]),
  Quiz(717, "What does 'Promise.any()' do?", [
    "Returns the first promise that fulfills (ignores rejections unless all reject)",
    "Returns any random promise from the list",
    "Returns the first rejection it finds",
    "Returns a boolean",
  ]),
  Quiz(718, "Which is best for loading multiple independent data sources simultaneously?", [
    "Promise.all",
    "Promise.race",
    "Callbacks",
    "While loop",
  ]),

  // --- Topic 61: Typing Promises: Generics with Promise<T> ---
  Quiz(719, "How do you type a promise that will resolve to a number?", [
    "Promise<number>",
    "Promise(number)",
    "number.Promise",
    "Async<number>",
  ]),
  Quiz(720, "What is the return type of: async function getID(): Promise<string> { ... }?", [
    "Promise<string>",
    "string",
    "void",
    "any",
  ]),
  Quiz(721, "If a function is 'async', can its return type be just 'string'?", [
    "No, TypeScript will force it to be 'Promise<string>'",
    "Yes, always",
    "Only if you don't use 'await'",
    "Only in JavaScript",
  ]),
  Quiz(722, "What is the type of the 'data' in: promise.then(data => ...)?", [
    "The generic type T from Promise<T>",
    "any",
    "unknown",
    "Error",
  ]),

  // --- Topic 62: Advanced: AbortController and Canceling Async tasks ---
  Quiz(723, "What is an 'AbortController' used for?", [
    "To cancel asynchronous tasks like fetch requests",
    "To stop the whole program from running",
    "To delete a file from the server",
    "To restart the browser",
  ]),
  Quiz(724, "Which property of AbortController do you pass to a fetch request?", [
    "controller.signal",
    "controller.abort()",
    "controller.stop",
    "controller.cancel",
  ]),
  Quiz(725, "How do you trigger the cancellation?", [
    "controller.abort()",
    "controller.stop()",
    "controller.end()",
    "Delete the controller",
  ]),

  // Additional Quizzes for Module 10 (Total 125)
  Quiz(726, "What is the difference between a task and a microtask?", [
    "Microtasks have a higher priority and run before the next task in the event loop",
    "Tasks are for promises; microtasks are for setTimeout",
    "Tasks run in the background; microtasks block the UI",
    "There is no difference",
  ]),
  Quiz(727, "Which function can be used to wait for a specific number of milliseconds?", [
    "setTimeout()",
    "setInterval()",
    "wait()",
    "pause()",
  ]),
  Quiz(728, "What does 'setInterval()' do?", [
    "Repeatedly calls a function with a fixed time delay between each call",
    "Calls a function once after a delay",
    "Stops a function from running",
    "Creates a new promise",
  ]),
  Quiz(729, "How do you stop a setInterval?", [
    "clearInterval(id)",
    "stopInterval(id)",
    "endInterval()",
    "id.stop()",
  ]),
  Quiz(730, "What is the 'Pyramid of Doom'?", [
    "Another name for callback hell due to its visual shape",
    "A design pattern for databases",
    "A security vulnerability",
    "A way to organize CSS files",
  ]),
  Quiz(731, "What happens if a promise is never resolved or rejected?", [
    "It stays in the pending state forever, potentially causing a memory leak",
    "It resolves to null automatically",
    "It crashes the program after 5 minutes",
    "It restarts the computer",
  ]),
  Quiz(732, "Can a promise be resolved twice?", [
    "No, once a promise is settled (resolved or rejected), it cannot change",
    "Yes, as many times as you want",
    "Only if it's a number",
    "Only in Module 12",
  ]),
  Quiz(733, "Which method was introduced to solve the nesting problem of callbacks?", [
    "Promises",
    "If statements",
    "For loops",
    "Switch statements",
  ]),
  Quiz(734, "What is the benefit of 'Promise.allSettled' over 'Promise.all'?", [
    "It doesn't reject if one promise fails; it waits for all of them",
    "It is faster",
    "It uses less memory",
    "It is easier to write",
  ]),
  Quiz(735, "What error is thrown when a fetch request is aborted?", [
    "AbortError",
    "CancelError",
    "NetworkError",
    "StopError",
  ]),
  Quiz(736, "Can you use async/await with any function?", [
    "Yes, as long as you add the 'async' keyword",
    "No, only with classes",
    "No, only with global functions",
    "Only in TypeScript",
  ]),
  Quiz(737, "What is 'Promisification'?", [
    "Converting a callback-based function into one that returns a promise",
    "Changing a string to a promise",
    "A security feature for promises",
    "The process of deleting a promise",
  ]),
  Quiz(738, "Which utility in Node.js can automatically promisify a function?", [
    "util.promisify",
    "node.promise",
    "async.wrap",
    "promise.convert",
  ]),
  Quiz(739, "What happens if you use 'await' without 'async' in an old environment?", [
    "A syntax error occurs",
    "The code works fine",
    "The variable becomes any",
    "The program crashes",
  ]),
  Quiz(740, "Which is a valid way to create a rejected promise?", [
    "Promise.reject(new Error('Failed'))",
    "new Promise(reject => reject())",
    "throw Promise()",
    "Promise.error()",
  ]),
  Quiz(741, "What is the purpose of '.then(null, err => ...)'?", [
    "It is an alternative way to write .catch(err => ...)",
    "It resolves the promise to null",
    "It clears the error from the stack",
    "It is a syntax error",
  ]),
  Quiz(742, "Can you use 'await' in a constructor?", [
    "No, constructors cannot be async",
    "Yes, always",
    "Only in Module 11",
    "Only if you use 'any'",
  ]),
  Quiz(743, "How do you handle multiple errors in 'Promise.allSettled'?", [
    "By checking the 'status' property of each result in the returned array",
    "Using a single catch block",
    "Using a try-catch block",
    "It is not possible",
  ]),
  Quiz(744, "What is 'Starvation' in the event loop?", [
    "When microtasks keep adding more microtasks, preventing macrotasks from running",
    "When the computer runs out of power",
    "When a function has no parameters",
    "When a variable is never used",
  ]),
  Quiz(745, "Which browser API is used for making network requests using promises?", [
    "fetch()",
    "XMLHttpRequest()",
    "get()",
    "ajax()",
  ]),
  Quiz(746, "Is fetch() synchronous or asynchronous?", [
    "Asynchronous (it returns a promise)",
    "Synchronous",
    "Depends on the file size",
    "Only in Module 10",
  ]),
  Quiz(747, "How do you get the JSON data from a fetch response?", [
    "await response.json()",
    "response.data",
    "response.toJSON()",
    "JSON.parse(response)",
  ]),
  Quiz(748, "What does 'await Promise.all([])' return?", [
    "An empty array []",
    "undefined",
    "null",
    "An error",
  ]),
  Quiz(749, "Can an async function return 'void'?", [
    "Technically it returns Promise<void>",
    "Yes, it returns exactly void",
    "No, it must return a string",
    "Only in Module 4",
  ]),
  Quiz(750, "What is the 'state' of a promise created with 'new Promise(() => {})'?", [
    "Pending (forever, since resolve/reject are never called)",
    "Resolved",
    "Rejected",
    "Fulfilled",
  ]),
  Quiz(751, "What does 'async' do to a function that returns 10?", [
    "It makes it return Promise.resolve(10)",
    "It returns the number 10",
    "It returns a string \"10\"",
    "It throws an error",
  ]),
  Quiz(752, "Does 'await' work with intervals?", [
    "No, intervals call a function multiple times; await is for single outcomes",
    "Yes, always",
    "Only for the first interval",
    "Only in Module 3",
  ]),
  Quiz(753, "Which has a .then method?", [
    "A 'Thenable' object (like a Promise)",
    "Every object in JS",
    "Only arrays",
    "Only strings",
  ]),
  Quiz(754, "What is the primary benefit of promises over callbacks?", [
    "Better error handling and flatter code structure",
    "They are much faster",
    "They use no memory",
    "They are required by law",
  ]),
  Quiz(755, "What happens to the Event Loop when a promise is resolved?", [
    "The callback is added to the microtask queue",
    "The loop stops",
    "The stack is cleared instantly",
    "Nothing happens",
  ]),
  Quiz(756, "Can you use 'try' without 'catch' in an async function if you use 'finally'?", [
    "Yes",
    "No",
    "Only in strict mode",
    "Only for network requests",
  ]),
  Quiz(757, "What is the type of the value returned by 'await fetch(...)'?", [
    "Response",
    "Promise<Response>",
    "any",
    "string",
  ]),
  Quiz(758, "What is the best way to run three async tasks that don't depend on each other?", [
    "Promise.all([task1(), task2(), task3()])",
    "await task1(); await task2(); await task3();",
    "Using three nested callbacks",
    "Using a for loop",
  ]),
  Quiz(759, "What happens if you resolve a promise with another promise?", [
    "The first promise will wait for the second one to settle",
    "It causes a crash",
    "It creates an array",
    "It is ignored",
  ]),
  Quiz(760, "Is 'Promise' a class or an interface in TypeScript?", [
    "It is a built-in class/constructor",
    "It is just a type alias",
    "It is a keyword like 'if'",
    "It is a CSS property",
  ]),
  Quiz(761, "What is the 'executor' function?", [
    "The function passed to the Promise constructor (resolve, reject) => { ... }",
    "The main function of the app",
    "The function that calls .then()",
    "A security feature",
  ]),
  Quiz(762, "When does the executor function run?", [
    "Immediately when the Promise is created",
    "After 1 second",
    "When .then() is called",
    "When the stack is empty",
  ]),
  Quiz(763, "Can you 'await' a custom object if it has a .then() method?", [
    "Yes, it is treated as a Thenable",
    "No, it must be an instance of Promise",
    "Only if you use 'any'",
    "Only in Module 5",
  ]),
  Quiz(764, "What is the type of 'err' in '.catch(err => ...)'?", [
    "any (unless configured otherwise)",
    "Error",
    "string",
    "unknown",
  ]),
  Quiz(765, "What does 'Promise.resolve().then(() => console.log(1))' print?", [
    "1",
    "undefined",
    "Nothing",
    "An error",
  ]),
  Quiz(766, "How do you handle a timeout for a fetch request?", [
    "Use AbortController with a setTimeout",
    "Pass a 'timeout' property to fetch",
    "It happens automatically after 5 seconds",
    "You cannot do this",
  ]),
  Quiz(767, "Is 'await' allowed in a standard 'for' loop?", [
    "Yes, it will pause the loop for each iteration",
    "No, use forEach instead",
    "Only if the loop is infinite",
    "Only for numeric values",
  ]),
  Quiz(768, "Which is better for serial (one after another) tasks?", [
    "await task1(); await task2();",
    "Promise.all()",
    "Promise.race()",
    "A switch statement",
  ]),
  Quiz(769, "What is 'Deadlock' in an async context?", [
    "When two tasks are waiting for each other and neither can proceed",
    "When the computer is off",
    "When a promise is resolved twice",
    "When a variable is deleted",
  ]),
  Quiz(770, "What is 'Promise.prototype.then'?", [
    "The method used to handle the fulfilled case of a promise",
    "A way to create a new promise",
    "A static method of the Promise class",
    "A property of the string class",
  ]),
  Quiz(771, "What is 'Promise.prototype.catch'?", [
    "The method used to handle the rejected case of a promise",
    "A way to throw an error",
    "A static method",
    "A CSS selector",
  ]),
  Quiz(772, "Does 'async' make code run in parallel on multiple CPU cores?", [
    "No, it manages concurrency on a single thread",
    "Yes, always",
    "Only in Node.js",
    "Only for math calculations",
  ]),
  Quiz(773, "What happens if you return a value in a .finally() block?", [
    "The return value is ignored (the original promise result is kept)",
    "It overwrites the promise result",
    "It causes an error",
    "It stops the program",
  ]),
  Quiz(774, "How many arguments does the executor function take?", [
    "2 (resolve and reject)",
    "1 (resolve)",
    "0",
    "3",
  ]),
  Quiz(775, "Is 'await' a reserved word in TypeScript?", [
    "Yes, it cannot be used as a variable name",
    "No, only in JavaScript",
    "Only inside functions",
    "Only if you use 'any'",
  ]),
  Quiz(776, "What is the output of 'await Promise.resolve('Done')'?", [
    "'Done'",
    "Promise { 'Done' }",
    "undefined",
    "null",
  ]),
  Quiz(777, "Can you use 'await' with a callback-based function?", [
    "No, you must promisify it first",
    "Yes, always",
    "Only if it's in Node.js",
    "Only in Module 1",
  ]),
  Quiz(778, "What does 'Promise.all([])' resolve to?", [
    "An empty array []",
    "An error",
    "null",
    "undefined",
  ]),
  Quiz(779, "What happens if you resolve a promise with itself?", [
    "A TypeError occurs (Chaining cycle detected)",
    "It works fine",
    "It creates an infinite loop",
    "The computer crashes",
  ]),
  Quiz(780, "Which method is best for adding a timeout to a promise?", [
    "Promise.race([myPromise, timeoutPromise])",
    "Promise.all()",
    "Promise.allSettled()",
    "setTimeout()",
  ]),
  Quiz(781, "What is 'Sugar Syntax'?", [
    "A cleaner way to write something that is already possible (like async/await for promises)",
    "Code that is easy to read for kids",
    "A way to write code in different colors",
    "A library for math",
  ]),
  Quiz(782, "Does TypeScript provide runtime type checks for async data from an API?", [
    "No, you must manually validate or use a library like Zod",
    "Yes, it automatically checks the data",
    "Only if you use 'any'",
    "Only in strict mode",
  ]),
  Quiz(783, "What is the return type of 'JSON.parse()'? ", [
    "any",
    "string",
    "object",
    "unknown",
  ]),
  Quiz(784, "Why is 'any' the default for JSON data in TS?", [
    "Because the compiler cannot know what the server will return at runtime",
    "Because it's easier to write",
    "Because strings are too slow",
    "It's a mistake in TypeScript",
  ]),
  Quiz(785, "What is a 'Job Queue'?", [
    "Another name for the Microtask Queue in some environments",
    "A list of tasks for the developer",
    "A database table",
    "A way to find work",
  ]),
  Quiz(786, "Which runs first: a resolved promise .then or a setTimeout(0)?", [
    "The promise .then (microtask)",
    "The setTimeout (macrotask)",
    "They run at the same time",
    "It's random",
  ]),
  Quiz(787, "Can you 'await' a function that does not return a promise?", [
    "Yes, it will just resolve immediately with the returned value",
    "No, it will cause an error",
    "Only if you use 'any'",
    "Only in Module 4",
  ]),
  Quiz(788, "What is the 'state' of a rejected promise?", [
    "Rejected",
    "Fulfilled",
    "Pending",
    "Settled",
  ]),
  Quiz(789, "What is the 'state' of a fulfilled promise?", [
    "Fulfilled",
    "Rejected",
    "Pending",
    "Settled",
  ]),
  Quiz(790, "What is 'Settled'?", [
    "A state that is either fulfilled or rejected (not pending anymore)",
    "When the code is finished compiling",
    "When the browser is closed",
    "When a variable is constant",
  ]),
  Quiz(791, "Can you use 'await' in a Map loop (arr.map(async x => await x))?", [
    "It will return an array of Promises, not values",
    "Yes, it works as expected",
    "No, it's a syntax error",
    "Only in Module 6",
  ]),
  Quiz(792, "How do you wait for all promises in a Map loop to finish?", [
    "await Promise.all(arr.map(async x => ...))",
    "Just use await arr.map()",
    "Using a for-in loop",
    "You cannot do this",
  ]),
  Quiz(793, "What is the type of 'Response' in a fetch call?", [
    "A built-in interface representing the HTTP response",
    "A string of JSON",
    "An error object",
    "A number representing the status code",
  ]),
  Quiz(794, "What property of fetch response tells if the request was successful (200-299)?", [
    "response.ok",
    "response.success",
    "response.status == 'OK'",
    "response.done",
  ]),
  Quiz(795, "How do you catch a network error in fetch (e.g., no internet)?", [
    "Using the .catch() method or try-catch block",
    "By checking response.ok",
    "Fetch does not throw network errors",
    "By reloading the page",
  ]),
  Quiz(796, "Is 'async' required to use 'Promise.all'? ", [
    "No, Promise.all can be used anywhere; async is only for 'await'",
    "Yes, always",
    "Only in Node.js",
    "Only for numbers",
  ]),
  Quiz(797, "What is the main purpose of 'AbortSignal'?", [
    "To communicate with an async operation and tell it to stop",
    "To signal the end of the program",
    "To play a sound",
    "To change the color of the UI",
  ]),
  Quiz(798, "Can you use AbortController more than once?", [
    "Yes, but calling abort() will affect all listeners using that signal",
    "No, only once",
    "Only for one fetch call",
    "Only in Module 12",
  ]),
  Quiz(799, "Which keyword is a more modern way to handle async: .then() or await?", [
    "await",
    ".then()",
    "callback",
    "if",
  ]),
  Quiz(800, "Final Goal: Does async/await make code truly synchronous?", [
    "No, it only makes it *look* synchronous; it is still non-blocking and async",
    "Yes, it stops the whole CPU",
    "Only in strict mode",
    "Only for small tasks",
  ]),
];
final List<Quiz> tsQuizM11 = [
  // --- Topic 63: Classes: The blueprint for objects ---
  Quiz(801, "What is a Class in TypeScript?", [
    "A blueprint for creating objects with properties and methods",
    "A type of array for strings",
    "A function that only runs once",
    "A style of writing CSS",
  ]),
  Quiz(802, "Which keyword is used to define a class?", [
    "class",
    "interface",
    "struct",
    "blueprint",
  ]),
  Quiz(803, "How do you create an instance (object) of a class named 'User'?", [
    "new User()",
    "User.create()",
    "create User()",
    "User()",
  ]),
  Quiz(804, "What is the relationship between a Class and an Object?", [
    "The Class is the blueprint, and the Object is the instance built from it",
    "They are the same thing",
    "The Object is the blueprint for the Class",
    "An Object is a type of function",
  ]),
  Quiz(805, "Can a class contain both data (properties) and behavior (methods)?", [
    "Yes",
    "No, only properties",
    "No, only methods",
    "Only if you use 'any'",
  ]),
  Quiz(806, "Where are class properties usually defined?", [
    "At the top of the class body",
    "Inside the tsconfig file",
    "In the global scope",
    "Inside a for loop",
  ]),
  Quiz(807, "What is the 'this' keyword used for inside a class?", [
    "To refer to the current instance of the class",
    "To refer to the global window object",
    "To delete the class",
    "To create a new variable",
  ]),
  Quiz(808, "Is a Class a runtime feature or a compile-time feature?", [
    "Both (TS compiles it to a JS constructor function or ES6 class)",
    "Only compile-time (it is erased)",
    "Only runtime",
    "Neither",
  ]),
  Quiz(809, "Can you define a method inside a class?", [
    "Yes (e.g., greet() { ... })",
    "No, only in interfaces",
    "Only if it is a static method",
    "Only if you use 'any'",
  ]),
  Quiz(810, "How do you access a property of a class instance named 'mao'?", [
    "mao.propertyName",
    "mao['propertyName']",
    "Both are valid",
    "Neither",
  ]),
  Quiz(811, "Can a class be empty?", [
    "Yes, 'class Empty {}' is valid",
    "No, it must have at least one property",
    "Only if you use 'strict' mode",
    "Only in Module 1",
  ]),
  Quiz(812, "What is the naming convention for Class names?", [
    "PascalCase (e.g., Department)",
    "camelCase",
    "snake_case",
    "UPPER_CASE",
  ]),

  // --- Topic 64: Constructors: Initializing objects with properties ---
  Quiz(813, "What is a 'Constructor' in a class?", [
    "A special method that runs automatically when a new object is created",
    "A tool for building the code",
    "A way to delete an object",
    "A function that returns a promise",
  ]),
  Quiz(814, "Which keyword is used to define the constructor method?", [
    "constructor",
    "init",
    "new",
    "create",
  ]),
  Quiz(815, "How many constructors can a single class have in TypeScript?", [
    "Only one",
    "As many as you want",
    "Exactly two",
    "Zero",
  ]),
  Quiz(816, "What is the main purpose of a constructor?", [
    "To initialize the properties of the class with specific values",
    "To loop through an array",
    "To connect to a database",
    "To change the CSS of the page",
  ]),
  Quiz(817, "Can a constructor take parameters?", [
    "Yes, to pass initial data when calling 'new'",
    "No, only the class can have parameters",
    "Only string parameters",
    "Only in strict mode",
  ]),
  Quiz(818, "What happens if you don't define a constructor in a class?", [
    "TypeScript provide a default empty constructor",
    "The class cannot be instantiated",
    "The program crashes",
    "A compile-time error occurs",
  ]),
  Quiz(819, "Can you call a constructor manually (e.g., obj.constructor())?", [
    "No, it is only called during 'new' instantiation",
    "Yes, always",
    "Only if you use 'any'",
    "Only in Module 5",
  ]),
  Quiz(820, "What is the return type of a constructor?", [
    "It implicitly returns the instance of the class",
    "void",
    "any",
    "string",
  ]),
  Quiz(821, "Can you perform logic (like validation) inside a constructor?", [
    "Yes, it is a normal method block",
    "No, it can only assign values",
    "Only if you use 'strict' mode",
    "Only in Module 1",
  ]),
  Quiz(822, "Are constructor parameters limited to primitive types?", [
    "No, they can be anything (objects, functions, other classes)",
    "Yes, only strings and numbers",
    "Only in Module 12",
    "Only if they are optional",
  ]),
  Quiz(823, "What is 'new User('Mao')' doing?", [
    "Calling the constructor with 'Mao' and returning a User object",
    "Deleting the User class",
    "Searching for a user named Mao",
    "Formatting the code",
  ]),

  // --- Topic 65: Access Modifiers: Public, Private, and Protected ---
  Quiz(824, "What are Access Modifiers?", [
    "Keywords that control the visibility of class members",
    "Tools for changing the font size",
    "Functions for loops",
    "A type of CSS property",
  ]),
  Quiz(825, "Which modifier is the default if none is specified?", [
    "public",
    "private",
    "protected",
    "internal",
  ]),
  Quiz(826, "What does 'public' mean?", [
    "The member is accessible from anywhere (inside and outside the class)",
    "The member is only for the government",
    "The member is accessible only inside the file",
    "The member is free for everyone",
  ]),
  Quiz(827, "What does 'private' mean?", [
    "The member is ONLY accessible within the class it was defined in",
    "The member is invisible",
    "The member cannot be changed",
    "The member is only for constants",
  ]),
  Quiz(828, "What does 'protected' mean?", [
    "Accessible within the class and its subclasses (child classes)",
    "Protected from hackers",
    "Accessible only by the constructor",
    "Locked from any changes",
  ]),
  Quiz(829, "Can you access a 'private' property from an instance (e.g., user.id)?", [
    "No, it will cause a compile-time error",
    "Yes, always",
    "Only if you use 'any'",
    "Only in JavaScript",
  ]),
  Quiz(830, "Where is 'protected' most useful?", [
    "In Inheritance, to share properties with child classes but not the public",
    "In simple objects",
    "In Module 1",
    "In the tsconfig file",
  ]),
  Quiz(831, "Does TypeScript's 'private' actually hide the data at runtime in old JS?", [
    "No, it is a compile-time check (but modern JS # syntax does)",
    "Yes, it is impossible to see",
    "Only in Chrome",
    "Only if you use 'strict' mode",
  ]),
  Quiz(832, "Which syntax represents a 'Hard Private' property in modern JavaScript/TypeScript?", [
    "#propertyName",
    "private propertyName",
    "_propertyName",
    "!propertyName",
  ]),
  Quiz(833, "Why use access modifiers?", [
    "To encapsulate data and follow the 'Principle of Least Privilege'",
    "To make the code run faster",
    "To reduce the file size",
    "To connect to a server",
  ]),
  Quiz(834, "Can a method be private?", [
    "Yes, to be used only internally by other methods in the class",
    "No, only properties can be private",
    "Only if it returns void",
    "Only in Module 12",
  ]),
  Quiz(835, "Can you change a property from 'private' to 'public' in a subclass?", [
    "No, that is a type error",
    "Yes, always",
    "Only if it's a number",
    "Only in non-strict mode",
  ]),

  // --- Topic 66: Readonly properties: Protecting data from changes ---
  Quiz(836, "What does the 'readonly' keyword do in a class?", [
    "Prevents the property from being changed after the constructor runs",
    "Allows everyone to read the property but not see it",
    "Deletes the property after it is read",
    "Makes the property a string",
  ]),
  Quiz(837, "Where can you assign a value to a 'readonly' property?", [
    "In the property declaration or the constructor",
    "Anywhere in the class",
    "Only in static methods",
    "Outside the class",
  ]),
  Quiz(838, "Can a property be both 'private' and 'readonly'?", [
    "Yes (e.g., private readonly id: string;)",
    "No, they are mutually exclusive",
    "Only for numbers",
    "Only in Module 13",
  ]),
  Quiz(839, "Is 'readonly' enforced at runtime in JavaScript?", [
    "No, it is a TypeScript-only check during compilation",
    "Yes, using Object.freeze()",
    "Only in strict mode",
    "Only for constants",
  ]),
  Quiz(840, "What is the difference between 'const' and 'readonly'?", [
    "'const' is for variables; 'readonly' is for class properties",
    "They are identical",
    "'readonly' is for strings only",
    "'const' is faster",
  ]),
  Quiz(841, "Can you change a readonly property inside a regular method (not constructor)?", [
    "No, it will cause an error",
    "Yes, always",
    "Only if you use 'any'",
    "Only in Module 1",
  ]),
  Quiz(842, "Why use 'readonly'?", [
    "To protect important configuration data from accidental changes",
    "To make the code run 10x faster",
    "To use less memory",
    "Because 'const' is not allowed in classes",
  ]),
  Quiz(843, "Does 'readonly' apply to the properties of an object stored in that property?", [
    "No, it only prevents the property itself from being reassigned (shallow)",
    "Yes, it makes the whole object immutable",
    "Only in strict mode",
    "Only for arrays",
  ]),
  Quiz(844, "What happens if you try to assign to a readonly property outside the class?", [
    "A compile-time error occurs",
    "It works fine",
    "The change is ignored",
    "The browser crashes",
  ]),

  // --- Topic 67: Shorthand Initialization: Writing cleaner constructors ---
  Quiz(845, "What is 'Shorthand Initialization' (Parameter Properties)?", [
    "Defining and initializing properties directly in the constructor parameters",
    "A way to write a constructor in one line",
    "A loop for properties",
    "A way to skip the constructor",
  ]),
  Quiz(846, "How do you use shorthand initialization?", [
    "constructor(public name: string) { } (prefix param with an access modifier)",
    "constructor(name: string) { this.name = name; }",
    "constructor(name: string = name) { }",
    "constructor(@name: string) { }",
  ]),
  Quiz(847, "What happens if you use 'public' in a constructor parameter?", [
    "TypeScript automatically creates a property and assigns the value to it",
    "It makes the parameter a global variable",
    "It is a syntax error",
    "It is ignored",
  ]),
  Quiz(848, "Can you use 'private' or 'protected' with shorthand initialization?", [
    "Yes, any access modifier works",
    "No, only public",
    "Only if the property is a string",
    "Only in Module 12",
  ]),
  Quiz(849, "Can you use 'readonly' with shorthand initialization?", [
    "Yes (e.g., constructor(public readonly id: string))",
    "No, only access modifiers",
    "Only in strict mode",
    "Only for numbers",
  ]),
  Quiz(850, "Do you need to write 'this.name = name' when using shorthand syntax?", [
    "No, TypeScript does it for you automatically",
    "Yes, always",
    "Only if you use 'any'",
    "Only in Module 1",
  ]),
  Quiz(851, "Where do the properties created via shorthand appear in the class?", [
    "They are treated as regular class properties",
    "They only exist inside the constructor",
    "In the global scope",
    "They are hidden",
  ]),
  Quiz(852, "Why use shorthand initialization?", [
    "It reduces boilerplate code and makes classes cleaner",
    "It makes the code run faster",
    "It is required by TypeScript",
    "It allows for better debugging",
  ]),
  Quiz(853, "Can you combine shorthand properties with regular parameters?", [
    "Yes (e.g., constructor(public name: string, age: number))",
    "No, it must be all or nothing",
    "Only if you use 'any'",
    "Only in Module 10",
  ]),

  // --- Topic 68: Inheritance: Reusing code with 'extends' ---
  Quiz(854, "What is 'Inheritance' in OOP?", [
    "A way for a class to acquire properties and methods from another class",
    "Getting money from a bank",
    "A way to delete code",
    "A type of array",
  ]),
  Quiz(855, "Which keyword is used for inheritance?", [
    "extends",
    "implements",
    "inherits",
    "from",
  ]),
  Quiz(856, "What is the class that is being inherited from called?", [
    "Base Class or Parent Class",
    "Subclass",
    "Child Class",
    "New Class",
  ]),
  Quiz(857, "What is the class that inherits from another called?", [
    "Subclass or Child Class",
    "Parent Class",
    "Super Class",
    "Old Class",
  ]),
  Quiz(858, "How many classes can a subclass inherit from in TypeScript?", [
    "Only one (Single Inheritance)",
    "As many as you want",
    "Exactly two",
    "None",
  ]),
  Quiz(859, "What is 'Method Overriding'?", [
    "Providing a new implementation for a method that already exists in the parent class",
    "Deleting a method from the parent class",
    "Calling a method too many times",
    "Renaming a method",
  ]),
  Quiz(860, "Can a subclass access 'private' members of its parent class?", [
    "No",
    "Yes, always",
    "Only if it uses 'super'",
    "Only in non-strict mode",
  ]),
  Quiz(861, "Can a subclass access 'protected' members of its parent class?", [
    "Yes",
    "No",
    "Only if they are public",
    "Only in Module 12",
  ]),
  Quiz(862, "Is 'class Dog extends Animal { ... }' valid syntax?", [
    "Yes",
    "No, use 'Dog inherits Animal'",
    "Only if Dog is a function",
    "Only in Module 5",
  ]),
  Quiz(863, "Why use inheritance?", [
    "To reuse code and create a logical 'is-a' hierarchy",
    "To make the code more complex",
    "To speed up compilation",
    "To avoid using classes",
  ]),
  Quiz(864, "Can a subclass have its own properties and methods?", [
    "Yes, in addition to the ones it inherits",
    "No, it must be exactly like the parent",
    "Only if they are private",
    "Only in Module 1",
  ]),

  // --- Topic 69: Super keyword: Calling parent constructors and methods ---
  Quiz(865, "What is the 'super' keyword used for?", [
    "To call the constructor or methods of the parent class",
    "To make a variable global",
    "To delete the current object",
    "To speed up the app",
  ]),
  Quiz(866, "Where must you call 'super()' in a subclass constructor?", [
    "At the very beginning, before using 'this'",
    "At the very end",
    "It doesn't matter",
    "Inside an if statement",
  ]),
  Quiz(867, "What happens if you forget to call 'super()' in a subclass constructor?", [
    "A compile-time error occurs",
    "TypeScript calls it automatically",
    "The program crashes at runtime",
    "The variable 'this' becomes null",
  ]),
  Quiz(868, "How do you call a parent method named 'move' from a subclass method?", [
    "super.move()",
    "this.move()",
    "parent.move()",
    "move.super()",
  ]),
  Quiz(869, "Can 'super' be used in a class that does NOT extend another class?", [
    "No, it will cause an error",
    "Yes, always",
    "Only in Module 1",
    "Only if you use 'any'",
  ]),
  Quiz(870, "What does 'super(name)' do in a constructor?", [
    "Calls the parent constructor and passes 'name' to it",
    "Creates a new variable called name",
    "Deletes the parent class",
    "Prints 'name' to the console",
  ]),
  Quiz(871, "Is 'super' accessible inside static methods?", [
    "Yes, it refers to the parent class itself (not the instance)",
    "No, never",
    "Only for public properties",
    "Only in Module 12",
  ]),
  Quiz(872, "Why is 'super()' required before using 'this'?", [
    "Because the parent class must be initialized before the subclass can add its own data",
    "Because it's a rule of the JavaScript language",
    "To make the code look better",
    "To connect to the internet",
  ]),
  Quiz(873, "Can 'super' be used multiple times in one method?", [
    "Yes, you can call multiple parent methods using super",
    "No, only once",
    "Only in the constructor",
    "Only in Module 10",
  ]),

  // --- Mixed OOP Concepts for Module 11 ---
  Quiz(874, "What is 'Encapsulation'?", [
    "Hiding internal state and requiring all interaction through methods",
    "Converting a class to a string",
    "A way to export a class",
    "Using multiple interfaces",
  ]),
  Quiz(875, "What is 'Polymorphism'?", [
    "The ability of different classes to be treated as instances of the same parent class",
    "Having many properties",
    "A type of loop",
    "A security feature",
  ]),
  Quiz(876, "What is the output of 'typeof MyClass'?", [
    "'function' (because classes are constructor functions internally)",
    "'class'",
    "'object'",
    "'any'",
  ]),
  Quiz(877, "Can you assign a subclass object to a variable of the parent class type?", [
    "Yes (Upcasting)",
    "No",
    "Only if you use 'any'",
    "Only in Module 12",
  ]),
  Quiz(878, "Can a class implement an interface and extend another class at the same time?", [
    "Yes",
    "No",
    "Only in strict mode",
    "Only for numbers",
  ]),
  Quiz(879, "Which keyword stops a class from being inherited (not native TS, but a pattern)?", [
    "private constructor (or using 'final' in other languages)",
    "static",
    "readonly",
    "abstract",
  ]),
  Quiz(880, "What is a 'Member' of a class?", [
    "A property or a method belonging to the class",
    "A person who uses the class",
    "A file in the project",
    "A type of variable",
  ]),
  Quiz(881, "What happens to access modifiers after compilation to JavaScript?", [
    "They are removed (Type Erasure), as JS doesn't natively support all of them yet",
    "They remain as comments",
    "They are converted to CSS",
    "They are saved in a database",
  ]),
  Quiz(882, "Which version of JavaScript introduced the 'class' keyword?", [
    "ES6 (ES2015)",
    "ES5",
    "ES3",
    "ESNext",
  ]),
  Quiz(883, "Can a class property have a default value?", [
    "Yes (e.g., role: string = 'user';)",
    "No, only in the constructor",
    "Only if it's a number",
    "Only in Module 5",
  ]),
  Quiz(884, "What is an 'Instance'?", [
    "An individual object created from a class",
    "A type of loop",
    "A fast function",
    "A bug in the code",
  ]),
  Quiz(885, "What is the return type of 'new User() as any'?", [
    "any",
    "User",
    "object",
    "void",
  ]),
  Quiz(886, "Is 'this.name = name' valid in a constructor if 'name' is NOT a parameter but a property?", [
    "Yes, if the property is defined in the class",
    "No",
    "Only in strict mode",
    "Only in Module 1",
  ]),
  Quiz(887, "Can you use 'super' to access a parent's private property?", [
    "No",
    "Yes",
    "Only in the constructor",
    "Only if you use 'any'",
  ]),
  Quiz(888, "Does a subclass inherit the parent's constructor?", [
    "Yes, if the subclass has no constructor of its own",
    "No, never",
    "Only if the constructor is public",
    "Only in Module 12",
  ]),
  Quiz(889, "What is the result of 'subclassInstance instanceof ParentClass'?", [
    "true",
    "false",
    "undefined",
    "Error",
  ]),
  Quiz(890, "Can a method be protected?", [
    "Yes",
    "No, only properties",
    "Only in Module 12",
    "Only if it returns void",
  ]),
  Quiz(891, "What is the scope of 'this' in an arrow function defined as a class property?", [
    "It is automatically bound to the class instance",
    "It refers to the global object",
    "It is undefined",
    "It refers to the method itself",
  ]),
  Quiz(892, "Why is 'private' better than 'public' for internal state?", [
    "It prevents outside code from creating invalid states or bugs",
    "It makes the object smaller",
    "It makes the code run faster",
    "It is required by the compiler",
  ]),
  Quiz(893, "What happens if two properties have the same name in parent and child?", [
    "The child property 'shadows' or overrides the parent one",
    "A compile-time error occurs",
    "They are merged into an array",
    "The program crashes",
  ]),
  Quiz(894, "What is the result of 'new ClassName'? ", [
    "A new instance of that class",
    "A string of the class name",
    "An error",
    "The number 1",
  ]),
  Quiz(895, "Can you define a property using 'let' or 'const' inside a class body (not in a method)?", [
    "No, you must use properties (optionally with access modifiers)",
    "Yes, always",
    "Only if you use 'static'",
    "Only in Module 1",
  ]),
  Quiz(896, "Is 'this' required to access a class property inside a method?", [
    "Yes",
    "No",
    "Only in strict mode",
    "Only for private properties",
  ]),
  Quiz(897, "What is the difference between '#private' and 'private'?", [
    "'#private' is a runtime JS feature; 'private' is a compile-time TS feature",
    "They are the same",
    "'#private' is only for numbers",
    "'private' is faster",
  ]),
  Quiz(898, "Can a class be exported from a module?", [
    "Yes, using 'export class ...'",
    "No, classes are only local",
    "Only if they have a constructor",
    "Only in Module 1",
  ]),
  Quiz(899, "What is a 'Subtype'?", [
    "A class that is a more specific version of another (e.g., Dog is a subtype of Animal)",
    "A type of string",
    "A number with a decimal",
    "A bug",
  ]),
  Quiz(900, "OOP stands for...?", [
    "Object-Oriented Programming",
    "Optional Object Protocol",
    "Open Online Programming",
    "Original Object Project",
  ]),
];
final List<Quiz> tsQuizM12 = [
  // --- Topic 70: Static Properties & Methods: Global class data ---
  Quiz(901, "What does the 'static' keyword do in a class?", [
    "It makes a property or method belong to the class itself rather than instances",
    "It makes a property unchangeable",
    "It hides a property from the public",
    "It makes the class load faster"
  ]),
  Quiz(902, "How do you access a static property named 'version' on a class 'App'?", [
    "App.version",
    "this.version",
    "new App().version",
    "App['version']"
  ]),
  Quiz(903, "Can a static method access instance properties (using 'this')?", [
    "No, because static methods don't run on a specific instance",
    "Yes, always",
    "Only if the property is public",
    "Only in non-strict mode"
  ]),
  Quiz(904, "Which is a common use case for static methods?", [
    "Utility/Helper functions (like Math.random())",
    "Updating a specific user's name",
    "Storing an object's unique ID",
    "Changing the CSS of a button"
  ]),
  Quiz(905, "Can a class have both a static and an instance property with the same name?", [
    "Yes, they exist in different 'spaces' (Class vs Instance)",
    "No, it causes a naming conflict",
    "Only if one is private",
    "Only in Module 1"
  ]),
  Quiz(906, "What is the 'this' keyword inside a static method?", [
    "It refers to the Class constructor itself",
    "It is undefined",
    "It refers to the global window",
    "It refers to the first object created"
  ]),
  Quiz(907, "Can static members be private?", [
    "Yes (e.g., private static count: number;)",
    "No, statics must be public",
    "Only if they are constants",
    "Only in Module 13"
  ]),
  Quiz(908, "Are static properties shared across all instances of a class?", [
    "Yes, there is only one copy of a static property for the whole class",
    "No, every object gets its own copy",
    "Only if they are strings",
    "Only in strict mode"
  ]),
  Quiz(909, "Which keyword is used to define a class-level constant?", [
    "static readonly",
    "const",
    "final static",
    "permanent"
  ]),

  // --- Topic 71: Abstract Classes: Creating 'blueprints' for subclasses ---
  Quiz(910, "What is an 'Abstract Class'?", [
    "A class that cannot be instantiated directly and serves as a base for others",
    "A class with no properties",
    "A class that is hidden from the compiler",
    "A class used only for math"
  ]),
  Quiz(911, "Which keyword is used to define an abstract class?", [
    "abstract",
    "virtual",
    "base",
    "interface"
  ]),
  Quiz(912, "Can you create an object using 'new MyAbstractClass()'?", [
    "No, abstract classes cannot be instantiated",
    "Yes, always",
    "Only if it has a constructor",
    "Only in JavaScript"
  ]),
  Quiz(913, "Can an abstract class contain regular (implemented) methods?", [
    "Yes, it can have a mix of abstract and concrete methods",
    "No, all methods must be abstract",
    "Only if the methods are private",
    "Only in Module 11"
  ]),
  Quiz(914, "What is the primary purpose of an abstract class?", [
    "To define a common structure and enforce certain behaviors in subclasses",
    "To make the code harder to read",
    "To store global variables",
    "To replace interfaces entirely"
  ]),
  Quiz(915, "Does a class extending an abstract class need to call 'super()'?", [
    "Yes, if the subclass has a constructor",
    "No, never",
    "Only if the parent is public",
    "Only for static methods"
  ]),
  Quiz(916, "Can an abstract class have a constructor?", [
    "Yes, it is used when a subclass is instantiated",
    "No, because you can't use 'new'",
    "Only if it's private",
    "Only in Module 1"
  ]),
  Quiz(917, "What happens if a subclass does not implement an abstract method?", [
    "A compile-time error occurs (unless the subclass is also abstract)",
    "It uses a default empty implementation",
    "The program crashes at runtime",
    "TypeScript ignores it"
  ]),

  // --- Topic 72: Abstract Methods: Enforcing logic implementation ---
  Quiz(918, "What is an 'Abstract Method'?", [
    "A method definition without an implementation (no body {})",
    "A method that runs in the background",
    "A method that can only be called once",
    "A method that returns a promise"
  ]),
  Quiz(919, "Where can abstract methods be defined?", [
    "Only inside an abstract class",
    "In any class",
    "Only in interfaces",
    "In the global scope"
  ]),
  Quiz(920, "What is the syntax for an abstract method?", [
    "abstract methodName(): void;",
    "methodName() { abstract; }",
    "void methodName();",
    "virtual methodName(): void;"
  ]),
  Quiz(921, "Do abstract methods have a body (curly braces)?", [
    "No, they only have a signature",
    "Yes, but it must be empty",
    "Only in strict mode",
    "Only for strings"
  ]),
  Quiz(922, "Who provides the actual implementation for an abstract method?", [
    "The concrete subclass that inherits the abstract class",
    "The TypeScript compiler",
    "The user at runtime",
    "The abstract class itself"
  ]),
  Quiz(923, "Can an abstract method be private?", [
    "No, it must be accessible to subclasses to be implemented (protected/public)",
    "Yes, always",
    "Only if it returns a number",
    "Only in Module 13"
  ]),
  Quiz(924, "Why use abstract methods instead of just regular methods?", [
    "To force every subclass to provide its own specific logic for that method",
    "To speed up the execution",
    "To avoid using 'this'",
    "Because they are shorter to write"
  ]),

  // --- Topic 73: Singletons: Ensuring only one instance exists ---
  Quiz(925, "What is a 'Singleton' pattern?", [
    "Ensuring that a class has only one instance throughout the whole app",
    "A class that only has one property",
    "A class that is only used by one user",
    "A function that returns a single number"
  ]),
  Quiz(926, "How do you prevent 'new MyClass()' from being called outside the class?", [
    "Make the constructor 'private'",
    "Make the class 'abstract'",
    "Delete the constructor",
    "Use the 'static' keyword on the class"
  ]),
  Quiz(927, "How do you typically get the instance of a Singleton class?", [
    "Through a static method (e.g., MyClass.getInstance())",
    "By calling 'new Singleton()'",
    "From the window object",
    "By importing it as a string"
  ]),
  Quiz(928, "Where is the single instance usually stored in a Singleton?", [
    "In a private static property within the same class",
    "In the local storage of the browser",
    "In a global array",
    "It isn't stored anywhere"
  ]),
  Quiz(929, "Is the Singleton pattern common for things like Database or Logger classes?", [
    "Yes, where you only need one shared connection or service",
    "No, it is considered bad practice",
    "Only in small projects",
    "Only in Module 1"
  ]),
  Quiz(930, "What is 'Lazy Initialization' in a Singleton?", [
    "Creating the instance only when it is first requested",
    "Creating the instance after 5 minutes",
    "Creating the instance without a constructor",
    "A bug in the code"
  ]),
  Quiz(931, "Can a Singleton class have regular instance methods?", [
    "Yes, once you get the instance, you use it like a normal object",
    "No, only static methods",
    "Only private methods",
    "Only in strict mode"
  ]),

  // --- Topic 74: Interfaces with Classes: Contract-based programming ---
  Quiz(932, "What does it mean when a class 'implements' an interface?", [
    "The class must follow the structure defined by the interface",
    "The class inherits code from the interface",
    "The class becomes a copy of the interface",
    "The interface is deleted"
  ]),
  Quiz(933, "Which keyword is used to link a class to an interface?", [
    "implements",
    "extends",
    "interface",
    "using"
  ]),
  Quiz(934, "Can a class implement an interface and still have its own extra properties?", [
    "Yes, as long as it fulfills the interface's minimum requirements",
    "No, it must match the interface exactly",
    "Only if the properties are private",
    "Only in non-strict mode"
  ]),
  Quiz(935, "What is the main difference between 'implements' and 'extends'?", [
    "'extends' is for inheritance (logic); 'implements' is for structure (contract)",
    "They are the same thing",
    "'implements' is only for strings",
    "'extends' is only for numbers"
  ]),
  Quiz(936, "Can an interface define the types for the class's constructor?", [
    "No, 'implements' only checks the instance side (properties/methods)",
    "Yes, always",
    "Only if you use 'any'",
    "Only in Module 1"
  ]),
  Quiz(937, "Why use Interfaces with Classes?", [
    "To ensure different classes share a common set of features (standardization)",
    "To make the code run 10x faster",
    "To avoid writing classes",
    "To connect to a database"
  ]),
  Quiz(938, "Can a class implement multiple interfaces?", [
    "Yes, separated by commas (implements InterfaceA, InterfaceB)",
    "No, only one",
    "Only if one is empty",
    "Only in Module 12"
  ]),
  Quiz(939, "What happens if a class implements an interface but is missing a method?", [
    "A compile-time error occurs",
    "The method is created automatically",
    "The program crashes",
    "TypeScript ignores it"
  ]),

  // --- Topic 75: Readonly in Interfaces vs Classes ---
  Quiz(940, "Where can 'readonly' be used in an interface?", [
    "On properties to specify they shouldn't be changed after creation",
    "On methods only",
    "On the interface name",
    "It cannot be used in interfaces"
  ]),
  Quiz(941, "If an interface has a 'readonly' property, can a class implement it as a regular property?", [
    "Yes, but if you treat the object as the interface type, it will be readonly",
    "No, it must also be readonly in the class",
    "Only if you use 'any'",
    "Only in Module 1"
  ]),
  Quiz(942, "Does 'readonly' in a class prevent changes at runtime?", [
    "No, it is a compile-time check (erased in JS)",
    "Yes, always",
    "Only in Chrome",
    "Only for numbers"
  ]),
  Quiz(943, "What is the result of 'readonly name: string' in an interface?", [
    "It creates a contract that 'name' should not be reassigned",
    "It makes 'name' a constant",
    "It hides 'name'",
    "It is a syntax error"
  ]),
  Quiz(944, "Can you use 'private readonly' in an interface?", [
    "No, interfaces only describe public-facing shapes",
    "Yes, always",
    "Only in strict mode",
    "Only for numbers"
  ]),

  // --- Topic 76: Extending Multiple Interfaces ---
  Quiz(945, "Can an interface 'extend' more than one other interface?", [
    "Yes (e.g., interface C extends A, B)",
    "No, only one",
    "Only if they have the same properties",
    "Only in Module 13"
  ]),
  Quiz(946, "What is the benefit of extending multiple interfaces?", [
    "To combine different small sets of requirements into a larger one",
    "To make the compiled code smaller",
    "To avoid using 'implements'",
    "It is required by the browser"
  ]),
  Quiz(947, "If Interface C extends A and B, does an object of type C need properties from both?", [
    "Yes, it must satisfy all requirements from A, B, and C",
    "No, only from C",
    "Only from A",
    "Only if they are strings"
  ]),
  Quiz(948, "Can you extend multiple interfaces that have a property with the same name but different types?", [
    "No, this causes a conflict error",
    "Yes, it becomes a union type",
    "Yes, it becomes 'any'",
    "Only in non-strict mode"
  ]),
  Quiz(949, "Is 'interface User extends Person, Contact' valid?", [
    "Yes",
    "No, use 'implements'",
    "Only if Person is a class",
    "Only in Module 5"
  ]),

  // --- Mixed Advanced OOP (Statics, Abstract, Singletons, Interfaces) ---
  Quiz(950, "Can a class 'extend' an abstract class and 'implement' an interface at once?", [
    "Yes",
    "No",
    "Only if the interface is empty",
    "Only in strict mode"
  ]),
  Quiz(951, "What is 'Instance Side' vs 'Static Side' of a class?", [
    "Instance side is the object created; Static side is the constructor/class itself",
    "They are the same thing",
    "Instance is for Node; Static is for Web",
    "It is a type of loop"
  ]),
  Quiz(952, "Can abstract classes be exported?", [
    "Yes, like any other class or interface",
    "No, they are always internal",
    "Only if they are public",
    "Only in Module 1"
  ]),
  Quiz(953, "Which pattern is used to provide a global point of access to an instance?", [
    "Singleton",
    "Abstract",
    "Static",
    "Interface"
  ]),
  Quiz(954, "What is the difference between an Abstract Class and an Interface?", [
    "Abstract class can have logic (method bodies); Interface cannot",
    "There is no difference",
    "Interface is faster",
    "Abstract class is only for numbers"
  ]),
  Quiz(955, "Can an interface extend a class?", [
    "Yes, it inherits the class's members but not its implementation",
    "No, interfaces only extend interfaces",
    "Only if the class is static",
    "Only in Module 1"
  ]),
  Quiz(956, "What is 'Contract-based Programming'?", [
    "Using interfaces to define what a class MUST do without saying HOW",
    "Writing code for a legal contract",
    "A way to delete code",
    "A type of loop"
  ]),
  Quiz(957, "Can you have a static constructor in TypeScript?", [
    "No, but you can use static initialization blocks",
    "Yes, always",
    "Only in Module 10",
    "Only for numbers"
  ]),
  Quiz(958, "Is 'Math' a Singleton in JavaScript?", [
    "It behaves like one (it is a global object with static-like methods)",
    "No, it is a regular class",
    "It is a string",
    "It is a loop"
  ]),
  Quiz(959, "What happens if you try to use 'this' in a static property initializer?", [
    "It will not refer to the instance",
    "It works perfectly",
    "It points to the window",
    "A runtime error occurs"
  ]),
  Quiz(960, "Can a class implement an interface that has an optional property?", [
    "Yes, the class can choose to implement it or not",
    "No, all interface properties must be in the class",
    "Only if it's a string",
    "Only in Module 2"
  ]),
  Quiz(961, "Can an abstract class extend a regular class?", [
    "Yes",
    "No",
    "Only if the regular class is empty",
    "Only in Module 1"
  ]),
  Quiz(962, "What is the output of 'typeof MyAbstractClass'?", [
    "'function'",
    "'abstract'",
    "'object'",
    "'undefined'"
  ]),
  Quiz(963, "Which modifier allows a property to be seen by child classes but not the outside world?", [
    "protected",
    "private",
    "public",
    "static"
  ]),
  Quiz(964, "Can you use 'readonly' on a static property?", [
    "Yes (e.g., static readonly PI = 3.14;)",
    "No",
    "Only in strict mode",
    "Only for strings"
  ]),
  Quiz(965, "What is 'Upcasting'?", [
    "Treating a subclass instance as a parent class type",
    "Moving code to a higher file",
    "Changing a number to a string",
    "A bug"
  ]),
  Quiz(966, "What is 'Downcasting'?", [
    "Treating a parent type as a specific subclass (requires type assertion)",
    "Deleting a class",
    "A way to save memory",
    "A loop"
  ]),
  Quiz(967, "Can static methods be overloaded?", [
    "Yes, just like regular methods",
    "No",
    "Only in Module 4",
    "Only if they return void"
  ]),
  Quiz(968, "How many times does a static block run?", [
    "Once, when the class is first loaded",
    "Every time you create an object",
    "Every 5 minutes",
    "Never"
  ]),
  Quiz(969, "Can an abstract class implement an interface?", [
    "Yes, and it doesn't even have to implement the methods if it marks them as abstract",
    "No",
    "Only in Module 1",
    "Only if you use 'any'"
  ]),
  Quiz(970, "What is 'Decoupling' in OOP?", [
    "Reducing dependencies between classes (e.g., using interfaces instead of specific classes)",
    "Removing code",
    "A way to speed up loops",
    "A security feature"
  ]),
  Quiz(971, "Can you override a static method in a subclass?", [
    "Yes, static methods are inherited and can be shadowed",
    "No, they are locked",
    "Only if they are public",
    "Only in Module 11"
  ]),
  Quiz(972, "Is 'this' valid in a regular method of a Singleton instance?", [
    "Yes, it refers to the single instance",
    "No, it must be static",
    "Only if you use 'any'",
    "Only in Module 1"
  ]),
  Quiz(973, "What is 'Composition over Inheritance'?", [
    "The idea that combining small objects is often better than creating deep hierarchies",
    "A way to write CSS",
    "A database query",
    "A loop"
  ]),
  Quiz(974, "Can you define an interface inside a class?", [
    "No, interfaces are top-level declarations in TS",
    "Yes, always",
    "Only in strict mode",
    "Only for numbers"
  ]),
  Quiz(975, "Does TypeScript support 'Multiple Inheritance' for classes (extends A, B)?", [
    "No, only single inheritance for classes",
    "Yes, always",
    "Only for abstract classes",
    "Only in JavaScript"
  ]),
  Quiz(976, "Can an interface be used as a type for a function parameter?", [
    "Yes, it's one of the most common uses",
    "No, only classes",
    "Only in Module 4",
    "Only for strings"
  ]),
  Quiz(977, "What is 'Structural Typing'?", [
    "TypeScript checks if the 'shape' matches, not just the name of the type",
    "A way to build houses",
    "A loop for objects",
    "A security feature"
  ]),
  Quiz(978, "Is 'new abstract class {}' valid?", [
    "No, it is a syntax error",
    "Yes, it is an anonymous class",
    "Only in strict mode",
    "Only in Module 1"
  ]),
  Quiz(979, "Which keyword ensures that a subclass MUST implement a specific method?", [
    "abstract",
    "static",
    "readonly",
    "protected"
  ]),
  Quiz(980, "Can a static property be initialized in the constructor?", [
    "It is possible (ClassName.prop = value), but usually done at declaration",
    "No, never",
    "Only if it's public",
    "Only for numbers"
  ]),
  Quiz(981, "What is a 'Concrete Class'?", [
    "A normal class that can be instantiated (not abstract)",
    "A class for building roads",
    "A class with only numbers",
    "A class that is hidden"
  ]),
  Quiz(982, "Can an interface have static members?", [
    "No, interfaces only describe instance shapes",
    "Yes, always",
    "Only in Module 13",
    "Only if you use 'any'"
  ]),
  Quiz(983, "What is 'Method Signature'?", [
    "The name, parameters, and return type of a method (without the body)",
    "The developer's name",
    "A security key",
    "A loop"
  ]),
  Quiz(984, "Is 'interface {}' valid?", [
    "Yes, it represents an empty object type",
    "No, it must have at least one property",
    "Only in Module 1",
    "Only for strings"
  ]),
  Quiz(985, "Can you use 'super' in a class that doesn't have a parent?", [
    "No, it will cause an error",
    "Yes",
    "Only in the constructor",
    "Only if you use 'any'"
  ]),
  Quiz(986, "Which tool helps in generating the tsconfig.json file?", [
    "tsc --init",
    "npm init",
    "node init",
    "vs-code init"
  ]),
  Quiz(987, "Can an abstract class have an abstract property?", [
    "Yes (e.g., abstract name: string;)",
    "No, only methods",
    "Only if it's public",
    "Only in Module 13"
  ]),
  Quiz(988, "Does 'static' work in interfaces?", [
    "No",
    "Yes",
    "Only in Module 5",
    "Only for numbers"
  ]),
  Quiz(989, "What happens if you define the same interface twice in one file?", [
    "Declaration Merging (they are combined)",
    "Duplicate identifier error",
    "The second one is ignored",
    "The program crashes"
  ]),
  Quiz(990, "Can a class implement an interface using a getter/setter?", [
    "Yes, it counts as fulfilling the property requirement",
    "No, must be a plain property",
    "Only in non-strict mode",
    "Only in Module 11"
  ]),
  Quiz(991, "What is the return type of a method that returns 'this'?", [
    "The specific type of the class (useful for chaining)",
    "any",
    "void",
    "string"
  ]),
  Quiz(992, "Is 'readonly' available in JavaScript class syntax?", [
    "No, it is a TypeScript feature",
    "Yes, in ES6",
    "Only in Node.js",
    "Only for constants"
  ]),
  Quiz(993, "Can a static method be protected?", [
    "Yes",
    "No",
    "Only if it's a number",
    "Only in Module 12"
  ]),
  Quiz(994, "What does 'instanceof' check for?", [
    "If an object was created by a specific class or its parents",
    "If a variable is a string",
    "If a file exists",
    "If the loop is finished"
  ]),
  Quiz(995, "Can you use access modifiers in an Interface?", [
    "No, everything in an interface is implicitly public",
    "Yes, public and private",
    "Only private",
    "Only in strict mode"
  ]),
  Quiz(996, "What is 'Duck Typing'?", [
    "Similar to structural typing: 'If it walks and quacks like a duck, it is a duck'",
    "Typing while watching ducks",
    "A bug in the compiler",
    "A way to write CSS"
  ]),
  Quiz(997, "Can you call a static method from an instance method?", [
    "Yes, using ClassName.methodName()",
    "No",
    "Only using 'this'",
    "Only if it's private"
  ]),
  Quiz(998, "Does an abstract class take up space in the compiled JS file?", [
    "Yes, it is converted into a regular JS class (but cannot be 'new'ed in TS)",
    "No, it is erased like an interface",
    "Only if it has static methods",
    "Only in Module 10"
  ]),
  Quiz(999, "Which is more restrictive: private or protected?", [
    "private",
    "protected",
    "public",
    "static"
  ]),
  Quiz(1000, "TypeScript's goal for OOP is...?", [
    "To provide a standard, safe, and powerful way to build large applications",
    "To make code run slower",
    "To replace JavaScript entirely",
    "To make everyone use classes"
  ]),
];
final List<Quiz> tsQuizM13 = [
  // --- Topic 77: Decorators: Adding 'Meta-data' to Classes ---
  Quiz(1001, "What is a Decorator in TypeScript?", [
    "A special kind of declaration that can be attached to a class, method, or property",
    "A function that changes the CSS of a class",
    "A tool for minifying JavaScript code",
    "A way to delete a class from memory",
  ]),
  Quiz(1002, "Which symbol is used to call a decorator?", [
    "@",
    "#",
    "\$",
    "&",
  ]),
  Quiz(1003, "Which tsconfig.json option must be enabled to use decorators?", [
    "experimentalDecorators",
    "emitDecoratorMetadata",
    "strictPropertyInitialization",
    "target",
  ]),
  Quiz(1004, "When does a class decorator execute?", [
    "When the class is defined (not when an instance is created)",
    "Every time 'new' is called",
    "Only when a method is called",
    "After the page finishes loading",
  ]),
  Quiz(1005, "What argument does a Class Decorator receive?", [
    "The constructor function of the class",
    "The instance of the class",
    "A string of the class name",
    "The tsconfig file",
  ]),
  Quiz(1006, "What is the primary use of Decorators?", [
    "Meta-programming (adding extra logic or metadata to code structures)",
    "Making the code run 10x faster",
    "Converting TypeScript to Python",
    "Hiding code from other developers",
  ]),
  Quiz(1007, "Can a decorator be applied to a function that is NOT inside a class?", [
    "No, decorators are currently only for classes and their members",
    "Yes, always",
    "Only in strict mode",
    "Only if you use 'any'",
  ]),
  Quiz(1008, "Is the Decorator feature considered stable in standard JavaScript (ECMAScript)?", [
    "No, it is an experimental/stage feature (requires a compiler like TS)",
    "Yes, it has been stable since 2015",
    "Only in Node.js",
    "Only in Chrome",
  ]),

  // --- Topic 78: Decorator Factories: Customizing your magic ---
  Quiz(1009, "What is a Decorator Factory?", [
    "A function that returns a decorator function, allowing for configuration",
    "A class that creates decorators",
    "A way to run multiple decorators at once",
    "A built-in TypeScript library",
  ]),
  Quiz(1010, "Why use a Decorator Factory instead of a simple Decorator?", [
    "To pass custom arguments/options to the decorator (e.g., @Logger('Admin'))",
    "To make the code look more complex",
    "To avoid using 'any'",
    "Because factories are faster",
  ]),
  Quiz(1011, "How do you call a decorator factory compared to a simple decorator?", [
    "You must add parentheses (e.g., @Factory())",
    "You use two @ symbols",
    "You call it inside the constructor",
    "There is no difference",
  ]),
  Quiz(1012, "In what order are Decorator Factories evaluated?", [
    "Top to bottom (Expression evaluation order)",
    "Bottom to top",
    "Randomly",
    "Alphabetically",
  ]),
  Quiz(1013, "In what order are the actual Decorators applied (called)?", [
    "Bottom to top (Reverse order)",
    "Top to bottom",
    "In the order they were written",
    "Only the first one is applied",
  ]),

  // --- Topic 79: Method & Property Decorators: Controlling behavior ---
  Quiz(1014, "What arguments does a Property Decorator receive?", [
    "Target (prototype) and Property Key (name)",
    "The value of the property",
    "The constructor of the class only",
    "A list of all properties",
  ]),
  Quiz(1015, "What arguments does a Method Decorator receive?", [
    "Target, Property Key, and Property Descriptor",
    "Only the function body",
    "The result of the function",
    "A boolean",
  ]),
  Quiz(1016, "What can you do with the 'Property Descriptor' in a method decorator?", [
    "Modify or replace the original function logic",
    "Change the name of the class",
    "Delete the property from memory",
    "Convert the method into a string",
  ]),
  Quiz(1017, "Can you use a decorator on a method parameter?", [
    "Yes, these are called Parameter Decorators",
    "No, only on the method itself",
    "Only if the parameter is a string",
    "Only in Module 4",
  ]),
  Quiz(1018, "Which of these is a real-world example of method decorators?", [
    "@Get('/users') in NestJS for routing",
    "@NgModule in Angular",
    "console.log",
    "if statements",
  ]),
  Quiz(1019, "What is 'Autobind' using decorators?", [
    "A decorator that automatically binds 'this' to the correct instance",
    "A way to automatically save code",
    "A tool for connecting to a database",
    "A loop for methods",
  ]),

  // --- Topic 80: Conditional Types: Logic inside your Types ---
  Quiz(1020, "What is the syntax for a Conditional Type?", [
    "T extends U ? X : Y",
    "if (T == U) { X } else { Y }",
    "T ? X : Y",
    "type T = U",
  ]),
  Quiz(1021, "What does 'T extends U' mean in a conditional type?", [
    "Check if type T is assignable to type U",
    "Make T a subclass of U",
    "Combine T and U together",
    "Delete T if it matches U",
  ]),
  Quiz(1022, "Conditional types are most commonly used with...?", [
    "Generics",
    "Classes",
    "Enums",
    "Loops",
  ]),
  Quiz(1023, "What is 'never' used for in conditional types?", [
    "To filter out types that don't match a condition",
    "To make a type run forever",
    "To represent any string",
    "To catch errors",
  ]),
  Quiz(1024, "What is 'Distributive Conditional Types'?", [
    "When a union type is passed to a conditional type, it checks each member individually",
    "A way to share types between files",
    "A type of mathematical equation",
    "A bug in the type system",
  ]),
  Quiz(1025, "What is the result of 'string extends any ? 1 : 2'?", [
    "1",
    "2",
    "any",
    "string",
  ]),
  Quiz(1026, "Can you nest conditional types (ternary chains)?", [
    "Yes, just like JavaScript ternary operators",
    "No, only one ? is allowed",
    "Only if you use 'any'",
    "Only in Module 1",
  ]),

  // --- Topic 81: Template Literal Types: String manipulation in TS ---
  Quiz(1027, "What are Template Literal Types?", [
    "Types that use string templates to build and enforce specific string patterns",
    "A way to write HTML in TypeScript",
    "A tool for translating code",
    "A type of array for characters",
  ]),
  Quiz(1028, "What is the syntax for a template literal type?", [
    "`hello \${string}`",
    "'hello' + string",
    "template('hello', string)",
    "string.hello",
  ]),
  Quiz(1029, "If you combine two unions in a template literal type, what happens?", [
    "TypeScript generates all possible combinations (Cross Product)",
    "It only takes the first one",
    "It causes a syntax error",
    "It becomes 'any'",
  ]),
  Quiz(1030, "What does 'Capitalize<T>' do to a template literal?", [
    "Converts the first character of the string type to uppercase",
    "Makes all letters uppercase",
    "Deletes the string",
    "Checks if the string is capitalized",
  ]),
  Quiz(1031, "What is the type of: `` `id-\${number}` ``?", [
    "Any string that starts with 'id-' followed by any number",
    "The literal string 'id-number'",
    "A number",
    "An array of IDs",
  ]),
  Quiz(1032, "Which utility helps convert a string type to all lowercase?", [
    "Lowercase<T>",
    "Uncapitalize<T>",
    "lower()",
    "Small<T>",
  ]),

  // --- Topic 82: Recursive Types: Handling deeply nested data ---
  Quiz(1033, "What is a Recursive Type?", [
    "A type that references itself in its own definition",
    "A type that runs in a loop",
    "A type that deletes itself",
    "A way to rename a class",
  ]),
  Quiz(1034, "Which of these is a perfect use case for recursive types?", [
    "JSON data structures or Nested Comments",
    "Simple variables like age or name",
    "CSS styling",
    "Math calculations",
  ]),
  Quiz(1035, "How do you define a nested 'Comment' interface?", [
    "interface Comment { text: string; replies: Comment[]; }",
    "interface Comment { text: string; replies: any; }",
    "type Comment = string[]",
    "class Comment { replies = this; }",
  ]),
  Quiz(1036, "Can you use recursive types with Type Aliases?", [
    "Yes, as of TypeScript 3.7+",
    "No, only with interfaces",
    "Only if you use 'any'",
    "Only for numbers",
  ]),
  Quiz(1037, "What is the danger of recursive types if not defined carefully?", [
    "The compiler might run infinitely or hit a depth limit",
    "The computer will run out of electricity",
    "The final file size will be 1GB",
    "All variables will become null",
  ]),

  // --- Final Module Review & Mixed Advanced ---
  Quiz(1038, "What does 'infer' keyword do in a conditional type?", [
    "Allows you to declare a type variable to be 'extracted' from a type check",
    "Infers that the code has an error",
    "Automatically writes the else block",
    "Deletes the type",
  ]),
  Quiz(1039, "What is the result of 'Exclude<\"a\" | \"b\", \"a\">'?", [
    "\"b\"",
    "\"a\"",
    "any",
    "never",
  ]),
  Quiz(1040, "What is the purpose of 'keyof' in advanced types?", [
    "To get a union of all property names of an object type",
    "To unlock a private property",
    "To see if a key is a string",
    "To sort an object",
  ]),
  Quiz(1041, "What is 'Mapped Types' foundational syntax?", [
    "{ [P in K]: T[P] }",
    "map(T => P)",
    "for (P in T)",
    "type K = T",
  ]),
  Quiz(1042, "What does '-readonly' do in a mapped type?", [
    "Removes the 'readonly' modifier from all properties",
    "Makes the property negative",
    "Hides the property",
    "It is a syntax error",
  ]),
  Quiz(1043, "Which tool can you use to inspect complex types in VS Code?", [
    "Hovering over the type variable",
    "Right-clicking the file",
    "The terminal",
    "The scrollbar",
  ]),
  Quiz(1044, "Is 'type NestedArray<T> = Array<T | NestedArray<T>>' a valid recursive type?", [
    "Yes, it describes an array with infinite nesting depth",
    "No, it must be an interface",
    "Only for numbers",
    "Only in Module 6",
  ]),
  Quiz(1045, "What is the 'Intrinsic' type in TS for string manipulation?", [
    "Built-in types like Uppercase, Lowercase, etc.",
    "A type for internal memory",
    "A hidden class",
    "A way to write numbers",
  ]),
  Quiz(1046, "Can decorators change the type of a class instance?", [
    "They don't change the TS type, but can change the JS behavior/value",
    "Yes, they change the interface",
    "Only if you use 'as any'",
    "Only in Module 12",
  ]),
  Quiz(1047, "Which is more 'magical' but risky: Decorators or Standard OOP?", [
    "Decorators (they hide logic behind annotations)",
    "Standard OOP",
    "Interfaces",
    "Variables",
  ]),
  Quiz(1048, "What is the output of `` `user_${1 | 2}` ``?", [
    "\"user_1\" | \"user_2\"",
    "\"user_12\"",
    "\"user_\"",
    "any",
  ]),
  Quiz(1049, "Why is TypeScript called a 'Turing Complete' type system?", [
    "Because you can perform complex logic and computation at the type level",
    "Because it was made by Alan Turing",
    "Because it runs on any computer",
    "Because it uses binary code",
  ]),
  Quiz(1050, "Final Goal: Meta-programming in TS is used to...?", [
    "Build powerful frameworks and libraries that are safe and easy to use",
    "Make code harder to understand",
    "Replace the need for a compiler",
    "Write code that writes CSS",
  ]),
];
final List<List<Quiz>> tsQuizzes = [
  tsQuizM1,
  tsQuizM2,
  tsQuizM3,
  tsQuizM4,
  tsQuizM5,
  tsQuizM6,
  tsQuizM7,
  tsQuizM8,
  tsQuizM9,
  tsQuizM10,
  tsQuizM11,
  tsQuizM12,
  tsQuizM13,
];
