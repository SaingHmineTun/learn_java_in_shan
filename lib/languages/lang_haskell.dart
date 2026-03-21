import 'package:tmkacademy/utils/quiz.dart';
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
  9: "IO, Side Effects & Project Completion",
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
  2: {
    13: "The Anatomy of a List (The Cons Operator : and Empty List [])",
    14: "Basic List Functions (Head, Tail, Last, and Init)",
    15: "Thinking in Sequences (Ranges and Infinite Lists)",
    16: "List Comprehensions (The Filter and Transform Syntax)",
    17: "Introduction to Tuples (Storing Different Data Types Together)",
    18: "Pattern Matching Basics (Matching Constants and Variables)",
    19: "List Pattern Matching (The Power of x:xs)",
    20: "As-Patterns (Keeping the Whole while Matching Parts with @)",
  },
  3: {
    21: "Thinking Recursively: The Mindset Shift",
    22: "The Base Case vs. The Recursive Step",
    23: "Recursion with Lists (Maximum and Sum)",
    24: "More List Recursion (Replicate and Take)",
    25: "The QuickSort Algorithm (Haskell's Elegant Way)",
    26: "Tail Recursion and Performance Optimization",
  },
  4: {
    27: "Types and Typeclasses: The Big Picture",
    28: "Common Typeclasses (Eq, Ord, Show, and Read)",
    29: "Numeric Typeclasses (Num, Integral, and Floating)",
    30: "Creating Your Own Types with 'data'",
    31: "Record Syntax: Modeling Complex Data (Like Student Profiles)",
    32: "Type Parameters: Making Types Flexible (Generics)",
    33: "Derived Instances: Letting Haskell Do the Work",
    34: "The Maybe Type: Handling Nothingness Gracefully",
  },
  5: {
    35: "Currying and Partial Application: One Argument at a Time",
    36: "Higher-Order Basics: Functions as Parameters",
    37: "The 'Map' Function: Transforming Every Element",
    38: "The 'Filter' Function: Keeping What Matters",
    39: "Lambdas: Anonymous Functions on the Fly",
    40: "Folds (Foldl and Foldr): The Ultimate List Reducer",
    41: "Function Composition: Linking Functions with (.)",
    42: "The '\$' Operator: Cleaning Up Parentheses",
  },
  6: {
    43: "Defining Your Own Typeclasses: The 'class' Keyword",
    44: "Making Instances: The 'instance' Keyword",
    45: "Subclassing Typeclasses: Class Constraints",
    46: "Parametric vs Ad-hoc Polymorphism",
    47: "Functors: Mapping Over Wrappers (The fmap Power)",
    48: "Applicative Functors: Functions in Context",
    49: "The Monoid Typeclass: Identity and Associativity",
    50: "Introduction to Monads: The 'm' Word",
  },
  7: {
    51: "The Functor Laws: Identity and Composition",
    52: "Applicative Laws: Keeping Things Predictable",
    53: "Using 'fmap' with Multiple Arguments",
    54: "The 'liftA2' and 'sequenceA' Functions",
    55: "IO as a Functor: Mapping Over Real-World Data",
    56: "Applicative IO: Running Actions in Parallel (Concept)",
    57: "ZipLists: A Different Kind of Applicative",
    58: "From Applicative to Monad: The Big Jump",
  },
  8: {
    59: "The Monad Laws: Left Identity, Right Identity, and Associativity",
    60: "The Maybe Monad: Handling Failure Gracefully",
    61: "The Either Monad: Error Handling with Messages",
    62: "The List Monad: Non-determinism and List Comprehensions",
    63: "The Writer Monad: Keeping a Log of Computations",
    64: "The Reader Monad: Shared Environment and Dependency Injection",
    65: "The State Monad: Managing Mutable State Purely",
    66: "Monad Transformers: Combining Multiple Monads",
  },
  9: {
    67: "Understanding the IO Monad: Why it's a One-way Street",
    68: "Reading and Writing Files: Persistent Data Storage",
    69: "Command Line Arguments: Handling User Input",
    70: "Exception Handling: Making the App Crash-Proof",
    71: "Concurrency: Running Multiple Tasks in Parallel",
    72: "Project Part 1: Architecture of a CLI Todo App",
    73: "Project Part 2: Implementing Features with Monads",
    74: "Grand Finale: Compiling and Packaging the Final App",
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
  13: Lesson(2, 13),
  14: Lesson(2, 14),
  15: Lesson(2, 15),
  16: Lesson(2, 16),
  17: Lesson(2, 17),
  18: Lesson(2, 18),
  19: Lesson(2, 19),
  20: Lesson(2, 20),
  21: Lesson(3, 21),
  22: Lesson(3, 22),
  23: Lesson(3, 23),
  24: Lesson(3, 24),
  25: Lesson(3, 25),
  26: Lesson(3, 26),
  27: Lesson(4, 27),
  28: Lesson(4, 28),
  29: Lesson(4, 29),
  30: Lesson(4, 30),
  31: Lesson(4, 31),
  32: Lesson(4, 32),
  33: Lesson(4, 33),
  34: Lesson(4, 34),
  35: Lesson(5, 35),
  36: Lesson(5, 36),
  37: Lesson(5, 37),
  38: Lesson(5, 38),
  39: Lesson(5, 39),
  40: Lesson(5, 40),
  41: Lesson(5, 41),
  42: Lesson(5, 42),
  43: Lesson(6, 43),
  44: Lesson(6, 44),
  45: Lesson(6, 45),
  46: Lesson(6, 46),
  47: Lesson(6, 47),
  48: Lesson(6, 48),
  49: Lesson(6, 49),
  50: Lesson(6, 50),
  51: Lesson(7, 51),
  52: Lesson(7, 52),
  53: Lesson(7, 53),
  54: Lesson(7, 54),
  55: Lesson(7, 55),
  56: Lesson(7, 56),
  57: Lesson(7, 57),
  58: Lesson(7, 58),
  59: Lesson(8, 59),
  60: Lesson(8, 60),
  61: Lesson(8, 61),
  62: Lesson(8, 62),
  63: Lesson(8, 63),
  64: Lesson(8, 64),
  65: Lesson(8, 65),
  66: Lesson(8, 66),
  67: Lesson(9, 67),
  68: Lesson(9, 68),
  69: Lesson(9, 69),
  70: Lesson(9, 70),
  71: Lesson(9, 71),
  72: Lesson(9, 72),
  73: Lesson(9, 73),
  74: Lesson(9, 74),
};

final List<Quiz> haskellQuizM1 = [
  // --- Topic 1: What is Functional Programming? ---
  Quiz(1, "In Functional Programming, what is the primary building block of a program?", [
    "Functions",
    "Objects",
    "Statements",
    "Loops",
  ]),
  Quiz(2, "What does it mean for a function to be 'Pure'?", [
    "It always produces the same output for the same input and has no side effects",
    "It can only handle numbers",
    "It is written in a single line",
    "It is faster than an impure function",
  ]),
  Quiz(3, "Haskell is a 'Lazy' language. What does this mean?", [
    "Expressions are not evaluated until their results are actually needed",
    "The compiler takes a long time to run",
    "It does not support complex math",
    "It requires fewer lines of code",
  ]),
  Quiz(4, "How does FP differ from Imperative Programming?", [
    "FP focuses on 'what' to solve (expressions), Imperative focuses on 'how' to solve (instructions)",
    "FP is only for math, Imperative is for apps",
    "FP does not use variables at all",
    "Imperative programming is always faster",
  ]),
  Quiz(5, "In Haskell, are variables 'mutable' by default?", [
    "No, once a value is bound to a name, it cannot be changed",
    "Yes, they work exactly like Java variables",
    "Yes, but only inside the main function",
    "No, unless you use the 'var' keyword",
  ]),

  // --- Topic 2 & 3: Environment and GHCi ---
  Quiz(6, "What does GHC stand for?", [
    "Glasgow Haskell Compiler",
    "Global Haskell Console",
    "General Haskell Compiler",
    "Graphical Haskell Creator",
  ]),
  Quiz(7, "Which command is used to start the Haskell Interactive REPL?", [
    "ghci",
    "runhaskell",
    "haskell-start",
    "ghc --interactive",
  ]),
  Quiz(8, "In GHCi, which command is used to load a Haskell file named 'Main.hs'?", [
    ":l Main.hs",
    ":load Main.hs",
    "import Main.hs",
    "open Main.hs",
  ]),
  Quiz(9, "Which GHCi command allows you to check the type of an expression?", [
    ":t",
    ":type",
    ":i",
    ":check",
  ]),
  Quiz(10, "How do you exit the GHCi environment?", [
    ":q",
    ":exit",
    "exit()",
    "stop",
  ]),
  Quiz(11, "What is the purpose of the 'it' variable in GHCi?", [
    "It stores the result of the last evaluated expression",
    "It is a keyword for loops",
    "It represents the current module",
    "It is an alias for the main function",
  ]),
  Quiz(12, "In GHCi, what command is used to reload the currently loaded file?", [
    ":r",
    ":reload",
    ":refresh",
    ":update",
  ]),

  // --- Topic 4: Numbers and Math ---
  Quiz(13, "What is the difference between 'Int' and 'Integer' in Haskell?", [
    "Int is fixed-precision (bounded), while Integer has arbitrary-precision (unbounded)",
    "Int is for decimals, Integer is for whole numbers",
    "Int is 64-bit, Integer is 32-bit",
    "There is no difference",
  ]),
  Quiz(14, "Which operator is used for floating-point division in Haskell?", [
    "/",
    "div",
    "//",
    "divide",
  ]),
  Quiz(15, "Which function is used for integer division (discarding the remainder)?", [
    "div",
    "/",
    "rem",
    "mod",
  ]),
  Quiz(16, "What is the result of '5 `mod` 2' in Haskell?", [
    "1",
    "2",
    "2.5",
    "0",
  ]),
  Quiz(17, "How do you represent a negative number in an expression like '5 + -3' to avoid syntax errors?", [
    "Wrap it in parentheses: 5 + (-3)",
    "Use a double minus: 5 -- 3",
    "Haskell handles 5 + -3 automatically",
    "Use the 'negate' function without parentheses",
  ]),
  Quiz(18, "Which type would be most appropriate for the value 3.14159?", [
    "Double",
    "Int",
    "Integer",
    "Bool",
  ]),
  Quiz(19, "What does the function 'abs' do?", [
    "Returns the absolute (positive) value of a number",
    "Squares a number",
    "Rounds a number to the nearest integer",
    "Returns the square root",
  ]),

  // --- Topic 5: Booleans and Logic ---
  Quiz(20, "What are the two possible values of the 'Bool' type?", [
    "True and False",
    "true and false",
    "1 and 0",
    "Yes and No",
  ]),
  Quiz(21, "Which operator represents the logical AND in Haskell?", [
    "&&",
    "and",
    "&",
    "||",
  ]),
  Quiz(22, "Which operator represents the logical OR in Haskell?", [
    "||",
    "or",
    "|",
    "&&",
  ]),
  Quiz(23, "What is the result of 'not (5 > 3)'?", [
    "False",
    "True",
    "Error",
    "Nothing",
  ]),
  Quiz(24, "Which operator is used to check if two values are 'not equal'?", [
    "/=",
    "!=",
    "<>",
    "not ==",
  ]),
  Quiz(25, "What is the result of 'True || False'?", [
    "True",
    "False",
    "Error",
    "0",
  ]),

  // --- Topic 6: Strings and Characters ---
  Quiz(26, "How is a 'String' defined in Haskell?", [
    "As a list of characters: [Char]",
    "As a primitive data type separate from lists",
    "As an array of bytes",
    "As a pointer to a memory address",
  ]),
  Quiz(27, "Which syntax is used to define a single 'Char'?", [
    "Single quotes: 'a'",
    "Double quotes: \"a\"",
    "Backticks: `a`",
    "Brackets: [a]",
  ]),
  Quiz(28, "Which syntax is used to define a 'String'?", [
    "Double quotes: \"Hello\"",
    "Single quotes: 'Hello'",
    "Backticks: `Hello`",
    "Braces: {Hello}",
  ]),
  Quiz(29, "Which operator is used to concatenate two strings together?", [
    "++",
    "+",
    "&",
    "concat",
  ]),
  Quiz(30, "What is the result of \"Shan\" ++ \" \" ++ \"State\"?", [
    "\"Shan State\"",
    "\"ShanState\"",
    "Error",
    "[\"Shan\", \"State\"]",
  ]),
  Quiz(31, "What is the first element of the string \"Muse\"?", [
    "'M'",
    "\"M\"",
    "0",
    "Error",
  ]),
  Quiz(32, "How do you find the length of a string in Haskell?", [
    "length \"string\"",
    "size \"string\"",
    "\"string\".length",
    "count \"string\"",
  ]),

  // --- Topic 7 & 8: Constants and Function Anatomy ---
  Quiz(33, "How do you define a constant named 'piValue' with a value of 3.14?", [
    "piValue = 3.14",
    "let piValue : 3.14",
    "const piValue = 3.14",
    "piValue := 3.14",
  ]),
  Quiz(34, "In Haskell, what separates a function name from its parameters?", [
    "Spaces",
    "Commas",
    "Parentheses",
    "Colons",
  ]),
  Quiz(35, "What does the '->' symbol signify in a type signature?", [
    "A transformation from an input type to an output type",
    "An assignment of a value",
    "A logical comparison",
    "The start of a loop",
  ]),
  Quiz(36, "Which of the following is a valid type signature for a function that takes an Int and returns an Int?", [
    "myFunc :: Int -> Int",
    "myFunc(Int) : Int",
    "int myFunc(int x)",
    "myFunc :: Int => Int",
  ]),
  Quiz(37, "How do you call a function 'add' with arguments 5 and 10?", [
    "add 5 10",
    "add(5, 10)",
    "add 5, 10",
    "5 add 10",
  ]),
  Quiz(38, "What is 'Function Application' in Haskell?", [
    "The act of calling a function with arguments",
    "Defining a function's type signature",
    "Importing a library",
    "Compiling the code",
  ]),

  // --- Topic 9 & 10: Function Application and If-Then-Else ---
  Quiz(39, "In Haskell, function application has the highest precedence. What does this mean?", [
    "Functions are evaluated before operators like + or * unless parentheses are used",
    "Functions must be written at the top of the file",
    "Functions are faster than loops",
    "Functions can only take one argument",
  ]),
  Quiz(40, "What is mandatory in a Haskell 'if' expression that is often optional in other languages?", [
    "The 'else' clause",
    "The 'then' keyword",
    "Parentheses around the condition",
    "Curly braces for the body",
  ]),
  Quiz(41, "Why must an 'if' expression always return a value?", [
    "Because Haskell is expression-oriented, and every expression must evaluate to a result",
    "To make the code harder to read",
    "Because side effects are allowed in the 'else' block",
    "It is a bug in the GHC compiler",
  ]),
  Quiz(42, "Can the 'then' and 'else' branches return different types of data?", [
    "No, both branches must return the exact same type",
    "Yes, as long as they are both numbers",
    "Yes, it doesn't matter",
    "Only if you use a 'String' and an 'Int'",
  ]),
  Quiz(43, "What is the result of: if 10 > 5 then \"Yes\" else \"No\"?", [
    "\"Yes\"",
    "\"No\"",
    "True",
    "Error",
  ]),

  // --- Topic 11: Scoping (let and where) ---
  Quiz(44, "What is the purpose of 'let' and 'where'?", [
    "To define local variables or helper functions within a specific scope",
    "To create global constants",
    "To import external modules",
    "To define a new data type",
  ]),
  Quiz(45, "Where is a 'where' clause typically placed?", [
    "After the main body of a function definition",
    "At the very top of the script",
    "Inside an if-then-else expression",
    "Before the function name",
  ]),
  Quiz(46, "Where is a 'let' binding typically used?", [
    "Inside an expression to define values before they are used in the 'in' block",
    "Only at the end of a file",
    "To define type signatures",
    "To replace the 'main' function",
  ]),
  Quiz(47, "What is the correct syntax for a 'let' expression?", [
    "let x = 5 in x * x",
    "let x = 5; x * x",
    "x * x where let x = 5",
    "let x = 5 do x * x",
  ]),
  Quiz(48, "Which of the following uses 'where' correctly?", [
    "area r = pi * r * r where pi = 3.14",
    "where pi = 3.14 area r = pi * r * r",
    "area r = let pi = 3.14 in pi * r * r",
    "area r where pi = 3.14 = pi * r * r",
  ]),
  Quiz(49, "Can local definitions in a 'where' clause see the parameters of the main function?", [
    "Yes, they are in the same scope",
    "No, they are isolated",
    "Only if you pass them as arguments",
    "Only if they are numbers",
  ]),

  // --- Topic 12: Review and Project Logic ---
  Quiz(50, "What is the primary role of the 'main' function in a Haskell program?", [
    "The entry point where IO actions are executed",
    "A placeholder for math equations",
    "To define the types of all variables",
    "It is not required in Haskell",
  ]),
  Quiz(51, "Which function would you use to print a string followed by a newline to the console?", [
    "putStrLn",
    "print",
    "write",
    "log",
  ]),
  Quiz(52, "In the 'TMK Personal Assistant' project, how do we store a student's name temporarily?", [
    "By binding it to a constant or passing it through function parameters",
    "In a global mutable variable",
    "In a SQL database only",
    "We cannot store names in Haskell",
  ]),
  Quiz(53, "What does '::' mean in Haskell code?", [
    "Has the type of",
    "Is equal to",
    "Is a comment",
    "Function call",
  ]),
  Quiz(54, "How do you write a single-line comment in Haskell?", [
    "-- Comment",
    "// Comment",
    "# Comment",
    "/* Comment */",
  ]),
  Quiz(55, "How do you write a multi-line comment in Haskell?", [
    "{- Comment -}",
    "/* Comment */",
    "\"\"\" Comment \"\"\"",
    "### Comment ###",
  ]),
  Quiz(56, "Haskell is 'Statically Typed'. What does this mean?", [
    "Types are checked at compile time",
    "You don't need to define types",
    "Types change as the program runs",
    "It only supports one type of data",
  ]),
  Quiz(57, "What is the result of 'head [1, 2, 3]'?", [
    "1",
    "3",
    "[1]",
    "Error",
  ]),
  Quiz(58, "What is the result of 'tail [1, 2, 3]'?", [
    "[2, 3]",
    "3",
    "1",
    "[1, 2]",
  ]),
  Quiz(59, "What type is the value 'True'?", [
    "Bool",
    "String",
    "Int",
    "Condition",
  ]),
  Quiz(60, "Is 'Haskell' case-sensitive?", [
    "Yes",
    "No",
    "Only for numbers",
    "Only for comments",
  ]),

  // --- Additional Core Concepts (Deepening Module 1) ---
  Quiz(61, "Which of these is a valid function name in Haskell?", [
    "calculateArea",
    "CalculateArea",
    "1stCalculate",
    "calculate-area",
  ]),
  Quiz(62, "Functions names in Haskell must start with what?", [
    "A lowercase letter",
    "An uppercase letter",
    "A number",
    "An underscore",
  ]),
  Quiz(63, "Type names in Haskell (like Int, Bool) must start with what?", [
    "An uppercase letter",
    "A lowercase letter",
    "A special symbol",
    "A number",
  ]),
  Quiz(64, "What is an expression in Haskell?", [
    "Something that evaluates to a value",
    "A line of code that does nothing",
    "A specific type of error",
    "A command to the operating system",
  ]),
  Quiz(65, "What is the result of '2^3' in Haskell?", [
    "8",
    "6",
    "9",
    "5",
  ]),
  Quiz(66, "What is the result of 'sqrt 16'?", [
    "4.0",
    "4",
    "16",
    "8",
  ]),
  Quiz(67, "Which function turns a number into a string?", [
    "show",
    "read",
    "toString",
    "print",
  ]),
  Quiz(68, "Which function parses a string into a number (if possible)?", [
    "read",
    "show",
    "toInt",
    "parse",
  ]),
  Quiz(69, "What happens if you use 'div' with a floating-point number?", [
    "A type error occurs",
    "It works normally",
    "It rounds the result",
    "It returns zero",
  ]),
  Quiz(70, "What is the result of 'null []'?", [
    "True",
    "False",
    "Error",
    "[]",
  ]),
  Quiz(71, "What is the result of 'reverse \"Sai\"'?", [
    "\"iaS\"",
    "\"Sai\"",
    "\"S\"",
    "Error",
  ]),
  Quiz(72, "In 'f x y = x + y', what are 'x' and 'y'?", [
    "Parameters",
    "Constants",
    "Types",
    "Operators",
  ]),
  Quiz(73, "What does 'replicate 3 \"A\"' produce?", [
    "[\"A\", \"A\", \"A\"]",
    "\"AAA\"",
    "\"A3\"",
    "Error",
  ]),
  Quiz(74, "How do you represent 'not equal' for strings?", [
    "/=",
    "!=",
    "isNot",
    "<>",
  ]),
  Quiz(75, "What is the result of 'min 10 20'?", [
    "10",
    "20",
    "15",
    "Error",
  ]),
  Quiz(76, "What is the result of 'max 5 2'?", [
    "5",
    "2",
    "7",
    "10",
  ]),
  Quiz(77, "In Haskell, 'if True then 1' is missing something. What is it?", [
    "The else branch",
    "The then keyword",
    "A semicolon",
    "A return statement",
  ]),
  Quiz(78, "What does 'ghc --version' do in the terminal?", [
    "Shows the installed version of the Haskell compiler",
    "Starts the Haskell compiler",
    "Updates Haskell",
    "Deletes Haskell",
  ]),
  Quiz(79, "Which file extension is used for Haskell source files?", [
    ".hs",
    ".h",
    ".ha",
    ".hask",
  ]),
  Quiz(80, "What is the identity of '&& True'?", [
    "The value depends on the other operand",
    "Always True",
    "Always False",
    "An error",
  ]),
  Quiz(81, "What type is returned by '5 > 3'?", [
    "Bool",
    "Int",
    "String",
    "Ordering",
  ]),
  Quiz(82, "Can you use '+' with a String and an Int in Haskell?", [
    "No, Haskell does not allow implicit type conversion",
    "Yes, it converts the Int to String",
    "Yes, it converts the String to Int",
    "Yes, but only in GHCi",
  ]),
  Quiz(83, "What is an 'operator' in Haskell?", [
    "A function that uses symbols and is used infixly (between arguments)",
    "A special command for the CPU",
    "A person who writes code",
    "A type of module",
  ]),
  Quiz(84, "What is 'Syntax'?", [
    "The set of rules defining the structure of the language",
    "The speed of the program",
    "A type of Haskell compiler",
    "An error in the logic",
  ]),
  Quiz(85, "What is the result of 'succ 4'?", [
    "5",
    "4",
    "3",
    "6",
  ]),
  Quiz(86, "What is the result of 'pred 10'?", [
    "9",
    "11",
    "10",
    "0",
  ]),
  Quiz(87, "Which function returns the last element of a list?", [
    "last",
    "final",
    "end",
    "tail",
  ]),
  Quiz(88, "Which function returns all elements except the last one?", [
    "init",
    "tail",
    "head",
    "reverse",
  ]),
  Quiz(89, "What is 'Type Inference'?", [
    "The compiler automatically figuring out the type of an expression",
    "The user guessing the type",
    "A way to skip writing code",
    "An error where types are unknown",
  ]),
  Quiz(90, "What is a 'side effect'?", [
    "Any change to the outside world, like printing to console or writing a file",
    "A math calculation",
    "A secondary function",
    "A bug in the program",
  ]),
  Quiz(91, "Are functions 'first-class citizens' in Haskell?", [
    "Yes, they can be passed as arguments, returned, and stored",
    "No, only numbers are first-class",
    "No, Haskell does not have functions",
    "Only if they are defined in the main module",
  ]),
  Quiz(92, "What is 'currying'?", [
    "Translating a function with multiple arguments into a sequence of functions with one argument",
    "Adding spices to the code",
    "Combining two files into one",
    "A type of recursive loop",
  ]),
  Quiz(93, "What is the result of 'toUpper 'a'' (from Data.Char)?", [
    "'A'",
    "\"A\"",
    "Error",
    "97",
  ]),
  Quiz(94, "What is 'Int' bit size typically?", [
    "Machine dependent (usually 64-bit on modern systems)",
    "Always 8-bit",
    "Always 128-bit",
    "Unlimited",
  ]),
  Quiz(95, "Which character is used to define 'is equal to' in a definition?", [
    "=",
    "==",
    ":=",
    "->",
  ]),
  Quiz(96, "What does 'elem 3 [1, 2, 3]' return?", [
    "True",
    "False",
    "3",
    "1",
  ]),
  Quiz(97, "What is the value of 'pi' in Haskell (pre-defined)?", [
    "3.141592653589793",
    "3.14",
    "22/7",
    "3",
  ]),
  Quiz(98, "In VS Code, which extension is recommended for Haskell?", [
    "Haskell Language Support (HLS)",
    "Python Extension",
    "Java Extension",
    "C++ Tools",
  ]),
  Quiz(99, "What is the result of 'even 4'?", [
    "True",
    "False",
    "4",
    "Error",
  ]),
  Quiz(100, "What is the result of 'odd 4'?", [
    "False",
    "True",
    "4",
    "Error",
  ]),
];
final List<Quiz> haskellQuizM2 = [
  // --- Topic 13: Anatomy of a List (Cons and Empty) ---
  Quiz(101, "What is the symbol for the 'Cons' operator in Haskell?", [
    ":",
    "++",
    "->",
    "::",
  ]),
  Quiz(102, "What does the 'Cons' operator (:) do?", [
    "Adds an element to the front of a list",
    "Joins two lists together",
    "Removes the last element of a list",
    "Multiplies all numbers in a list",
  ]),
  Quiz(103, "How is an empty list represented in Haskell?", [
    "[]",
    "{}",
    "null",
    "empty",
  ]),
  Quiz(104, "Which of the following is the internal representation of the list [1, 2]?", [
    "1 : (2 : [])",
    "[1] : [2]",
    "1 ++ 2 ++ []",
    "(1, 2) : []",
  ]),
  Quiz(105, "Can a Haskell list contain different data types (e.g., an Int and a Bool)?", [
    "No, lists must be homogeneous (all elements of the same type)",
    "Yes, as long as they are wrapped in parentheses",
    "Yes, Haskell lists are dynamic",
    "Only if the list is empty",
  ]),
  Quiz(106, "What is the result of '5 : [1, 2, 3]'?", [
    "[5, 1, 2, 3]",
    "[1, 2, 3, 5]",
    "Error",
    "6",
  ]),

  // --- Topic 14: Basic List Functions ---
  Quiz(107, "Which function returns the first element of a list?", [
    "head",
    "first",
    "start",
    "top",
  ]),
  Quiz(108, "What does the 'tail' function return?", [
    "A list containing everything except the first element",
    "The very last element of the list",
    "The length of the list",
    "An empty list",
  ]),
  Quiz(109, "Which function returns only the very last element of a list?", [
    "last",
    "end",
    "final",
    "tail",
  ]),
  Quiz(110, "What does the 'init' function do?", [
    "Returns a list containing everything except the last element",
    "Initializes a new empty list",
    "Returns the first two elements",
    "Reverse the list",
  ]),
  Quiz(111, "What happens if you call 'head' on an empty list []?", [
    "It throws a runtime error (exception)",
    "It returns Nothing",
    "It returns 0",
    "It returns an empty list",
  ]),
  Quiz(112, "What is the result of 'tail [5]'?", [
    "[]",
    "5",
    "Error",
    "[5]",
  ]),
  Quiz(113, "What is the result of 'init [1, 2, 3]'?", [
    "[1, 2]",
    "[2, 3]",
    "3",
    "1",
  ]),

  // --- Topic 15: Ranges and Infinite Lists ---
  Quiz(114, "How do you create a list of numbers from 1 to 10 using range syntax?", [
    "[1..10]",
    "[1-10]",
    "1 to 10",
    "range(1, 10)",
  ]),
  Quiz(115, "How do you create a list of even numbers from 2 to 10?", [
    "[2, 4..10]",
    "[2..10, 2]",
    "[even 2..10]",
    "[2, 4, 6, 8, 10..]",
  ]),
  Quiz(116, "What is the result of '[10, 9..1]'?", [
    "[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]",
    "[10, 9, 1]",
    "Error",
    "[]",
  ]),
  Quiz(117, "How do you define an infinite list of all positive integers?", [
    "[1..]",
    "[1..infinity]",
    "repeat 1",
    "cycle [1]",
  ]),
  Quiz(118, "Which function takes the first 'n' elements from a list (even an infinite one)?", [
    "take",
    "get",
    "slice",
    "limit",
  ]),
  Quiz(119, "What is the result of 'take 3 [1..]'?", [
    "[1, 2, 3]",
    "[1..3]",
    "Infinity",
    "Error",
  ]),
  Quiz(120, "Which function creates an infinite list by repeating a single value?", [
    "repeat",
    "cycle",
    "replicate",
    "infinite",
  ]),
  Quiz(121, "What does 'cycle [1, 2]' produce?", [
    "An infinite list: [1, 2, 1, 2, 1, 2...]",
    "A list with one pair: [[1, 2]]",
    "A list that goes backwards: [2, 1]",
    "Error",
  ]),

  // --- Topic 16: List Comprehensions ---
  Quiz(122, "What are the three main parts of a list comprehension?", [
    "Output expression, Generator, and Filter (Guard)",
    "Input, Process, and Output",
    "Function, Parameter, and Result",
    "Head, Tail, and Cons",
  ]),
  Quiz(123, "In '[x * 2 | x <- [1..5]]', what is 'x * 2'?", [
    "The output expression (transformation)",
    "The generator",
    "The filter",
    "The type signature",
  ]),
  Quiz(124, "What does 'x <- [1..10]' represent in a list comprehension?", [
    "The generator (drawing elements from a list)",
    "A boolean comparison",
    "The final result",
    "An assignment to a global variable",
  ]),
  Quiz(125, "How do you add a filter (guard) to a list comprehension?", [
    "By adding a comma followed by a boolean expression",
    "By using the 'if' keyword",
    "By using the 'filter' keyword",
    "By putting it in brackets",
  ]),
  Quiz(126, "What is the result of '[x | x <- [1..10], x < 5]'?", [
    "[1, 2, 3, 4]",
    "[1, 2, 3, 4, 5]",
    "[5, 6, 7, 8, 9, 10]",
    "[1..10]",
  ]),
  Quiz(127, "Can you use multiple generators in a single list comprehension?", [
    "Yes, it creates a Cartesian product of the lists",
    "No, only one generator is allowed",
    "Yes, but only if the lists are the same size",
    "Only for strings",
  ]),
  Quiz(128, "What is the result of '[x + y | x <- [1], y <- [10, 20]]'?", [
    "[11, 21]",
    "[11]",
    "[21]",
    "Error",
  ]),

  // --- Topic 17: Introduction to Tuples ---
  Quiz(129, "How are tuples represented in Haskell syntax?", [
    "Parentheses: (1, \"Apple\")",
    "Brackets: [1, \"Apple\"]",
    "Braces: {1, \"Apple\"}",
    "Angled brackets: <1, \"Apple\">",
  ]),
  Quiz(130, "What is the key difference between a List and a Tuple?", [
    "Lists are homogeneous; Tuples can be heterogeneous (store different types)",
    "Lists are faster than Tuples",
    "Tuples can be infinite; Lists cannot",
    "There is no difference",
  ]),
  Quiz(131, "Is a tuple of size 2 (pair) the same type as a tuple of size 3 (triple)?", [
    "No, the size of a tuple is part of its type definition",
    "Yes, they are both tuples",
    "Yes, as long as the data inside is the same",
    "Only in GHCi",
  ]),
  Quiz(132, "Which function returns the first element of a pair (tuple of size 2)?", [
    "fst",
    "head",
    "first",
    "get1",
  ]),
  Quiz(133, "Which function returns the second element of a pair?", [
    "snd",
    "tail",
    "last",
    "get2",
  ]),
  Quiz(134, "Can you use 'fst' and 'snd' on a triple like (1, 2, 3)?", [
    "No, they only work on pairs (2-tuples)",
    "Yes, 'fst' gets the first and 'snd' gets the rest",
    "Yes, they work on any tuple size",
    "Only if the types are Int",
  ]),
  Quiz(135, "What function pairs up elements from two lists into a list of tuples?", [
    "zip",
    "pair",
    "combine",
    "join",
  ]),
  Quiz(136, "What is the result of 'zip [1, 2] [\"A\", \"B\", \"C\"]'?", [
    "[(1, \"A\"), (2, \"B\")]",
    "[(1, \"A\"), (2, \"B\"), (0, \"C\")]",
    "Error due to different lengths",
    "[[1, \"A\"], [2, \"B\"]]",
  ]),

  // --- Topic 18: Pattern Matching Basics ---
  Quiz(137, "Where can pattern matching be used in Haskell?", [
    "In function definitions, let/where bindings, and case expressions",
    "Only in if-else statements",
    "Only for math calculations",
    "Only in the main function",
  ]),
  Quiz(138, "What does pattern matching do in a function definition?", [
    "It checks the structure of the data and binds parts of it to names",
    "It compares the speed of two functions",
    "It prints variables to the console",
    "It converts types automatically",
  ]),
  Quiz(139, "How does Haskell handle multiple patterns in a function?", [
    "It tries them from top to bottom and uses the first one that matches",
    "It tries them all and uses the best one",
    "It picks one at random",
    "It runs all of them in parallel",
  ]),
  Quiz(140, "What is the 'wildcard' character in pattern matching that matches anything?", [
    "_",
    "*",
    "?",
    "\$",
  ]),
  Quiz(141, "Why should you include a catch-all pattern (like _) at the end?", [
    "To prevent 'non-exhaustive pattern' errors if none of the specific patterns match",
    "To make the code look professional",
    "To clear the memory",
    "To allow the function to return multiple types",
  ]),
  Quiz(142, "In 'sayMe 1 = \"One\"', what is '1'?", [
    "A constant pattern matching the literal value 1",
    "A parameter named 1",
    "A type definition",
    "An error",
  ]),

  // --- Topic 19: List Pattern Matching (x:xs) ---
  Quiz(143, "In the list pattern '(x:xs)', what does 'x' represent?", [
    "The first element of the list (the head)",
    "The entire list",
    "The rest of the list",
    "An empty list",
  ]),
  Quiz(144, "In the list pattern '(x:xs)', what does 'xs' represent?", [
    "The rest of the list (the tail)",
    "The last element",
    "An extra list",
    "A string",
  ]),
  Quiz(145, "How would you pattern match a list that has exactly two elements?", [
    "[x, y] or (x:y:[])",
    "(x:xs)",
    "(_:_:_)",
    "[x..y]",
  ]),
  Quiz(146, "What pattern matches an empty list specifically?", [
    "[]",
    "()",
    "null",
    "_",
  ]),
  Quiz(147, "Can you use the pattern '(x:y:xs)' to match a list with only one element?", [
    "No, this pattern requires at least two elements",
    "Yes, y and xs will just be empty",
    "Yes, Haskell is lazy",
    "Only if you use brackets",
  ]),
  Quiz(148, "What does the pattern '(x:y:[])' match?", [
    "A list with exactly two elements",
    "A list with at least two elements",
    "A list with zero elements",
    "An error",
  ]),

  // --- Topic 20: As-Patterns (@) ---
  Quiz(149, "What is the purpose of an 'As-Pattern' (using @)?", [
    "To keep a reference to the whole structure while also matching its parts",
    "To assign an alias to a function",
    "To compare two lists quickly",
    "To define a global constant",
  ]),
  Quiz(150, "In 'all@(x:xs)', what does 'all' represent?", [
    "The entire original list",
    "The head of the list",
    "The tail of the list",
    "A function named all",
  ]),
  Quiz(151, "Which is the correct syntax for an as-pattern?", [
    "name@pattern",
    "name:pattern",
    "name=pattern",
    "name -> pattern",
  ]),
  Quiz(152, "What is the value of 'all' if 'all@(x:xs)' matches [1, 2, 3]?", [
    "[1, 2, 3]",
    "1",
    "[2, 3]",
    "Error",
  ]),

  // --- Deepening List Concepts ---
  Quiz(153, "Which function checks if a list is empty?", [
    "null",
    "isEmpty",
    "none",
    "isZero",
  ]),
  Quiz(154, "Which function reverses a list?", [
    "reverse",
    "flip",
    "backwards",
    "inv",
  ]),
  Quiz(155, "Which function sums all elements in a numeric list?", [
    "sum",
    "total",
    "addList",
    "count",
  ]),
  Quiz(156, "Which function multiplies all elements in a numeric list?", [
    "product",
    "multiply",
    "times",
    "total",
  ]),
  Quiz(157, "Which function checks if an element exists in a list?", [
    "elem",
    "contains",
    "has",
    "exists",
  ]),
  Quiz(158, "What is the result of '4 `elem` [1, 2, 3]'?", [
    "False",
    "True",
    "Error",
    "0",
  ]),
  Quiz(159, "How do you append an element to the END of a list?", [
    "[1, 2, 3] ++ [4]",
    "4 : [1, 2, 3]",
    "append 4 [1, 2, 3]",
    "[1, 2, 3] + 4",
  ]),
  Quiz(160, "Which function creates a list by repeating an element 'n' times?", [
    "replicate",
    "repeat",
    "cycle",
    "dup",
  ]),
  Quiz(161, "What is the result of 'replicate 3 5'?", [
    "[5, 5, 5]",
    "[3, 3, 3, 3, 3]",
    "[15]",
    "Error",
  ]),
  Quiz(162, "What does 'take 0 [1, 2, 3]' return?", [
    "[]",
    "[1]",
    "Error",
    "null",
  ]),
  Quiz(163, "Which function removes the first 'n' elements from a list?", [
    "drop",
    "remove",
    "skip",
    "delete",
  ]),
  Quiz(164, "What is the result of 'drop 2 [1, 2, 3, 4]'?", [
    "[3, 4]",
    "[1, 2]",
    "[2, 3, 4]",
    "[]",
  ]),
  Quiz(165, "Which function returns the maximum element in a list?", [
    "maximum",
    "max",
    "highest",
    "top",
  ]),
  Quiz(166, "Which function returns the minimum element in a list?", [
    "minimum",
    "min",
    "lowest",
    "bottom",
  ]),
  Quiz(167, "What happens if you use 'maximum' on an empty list?", [
    "It throws an exception",
    "It returns 0",
    "It returns Nothing",
    "It returns infinity",
  ]),
  Quiz(168, "What does 'splitAt 2 [1, 2, 3, 4]' return?", [
    "([1, 2], [3, 4])",
    "[[1, 2], [3, 4]]",
    "([1], [2, 3, 4])",
    "Error",
  ]),

  // --- Deepening Tuples and Pattern Matching ---
  Quiz(169, "Can tuples contain other tuples?", [
    "Yes, they can be nested",
    "No, tuples must be flat",
    "Only if they have the same size",
    "Only in Module 3",
  ]),
  Quiz(170, "What is the type of ('Sai', 25)?", [
    "(String, Int)",
    "[String, Int]",
    "Tuple String Int",
    "Pair",
  ]),
  Quiz(171, "What does 'zipWith (+) [1, 2] [10, 20]' produce?", [
    "[11, 22]",
    "[(1, 10), (2, 20)]",
    "33",
    "Error",
  ]),
  Quiz(172, "In pattern matching, can you use the same variable twice like 'isSame x x = True'?", [
    "No, variables in a pattern must be unique",
    "Yes, it's a common way to compare",
    "Only if x is a number",
    "Only if you use guards",
  ]),
  Quiz(173, "What is the result of 'head (tail [1, 2, 3])'?", [
    "2",
    "1",
    "3",
    "[2, 3]",
  ]),
  Quiz(174, "Which list comprehension generates squares of even numbers from 1 to 10?", [
    "[x*x | x <- [1..10], even x]",
    "[x*x | x <- [1..10], x*x]",
    "[x | x <- [1..10], even x*x]",
    "[x^2 | x <- [2, 4..10]]",
  ]),
  Quiz(175, "What is the result of 'take 5 (cycle [1, 2])'?", [
    "[1, 2, 1, 2, 1]",
    "[1, 2, 1, 2]",
    "[1, 2, 1, 2, 1, 2]",
    "Error",
  ]),
  Quiz(176, "Can you pattern match on a String?", [
    "Yes, because a String is just a list of characters",
    "No, you must use if-else",
    "Only if the string is empty",
    "Only using the case keyword",
  ]),
  Quiz(177, "What does 'head \"Haskell\"' return?", [
    "'H'",
    "\"H\"",
    "Error",
    "72",
  ]),
  Quiz(178, "What does the pattern '(x:y:z:[])' match?", [
    "A list with exactly 3 elements",
    "A list with at least 3 elements",
    "A triple (tuple of 3)",
    "Error",
  ]),
  Quiz(179, "Is '(1, 2)' the same as '[1, 2]'?", [
    "No, one is a tuple and the other is a list",
    "Yes, they both store two numbers",
    "Only if you use them in a loop",
    "Only in GHCi",
  ]),
  Quiz(180, "How do you get the third element of a triple (x, y, z)?", [
    "Using pattern matching: (_, _, z)",
    "Using the 'trd' function",
    "Using 'last'",
    "Using 'snd (snd triple)'",
  ]),

  // --- Logic and Miscellaneous List/Tuple ---
  Quiz(181, "What is 'String' an alias for?", [
    "[Char]",
    "Array Char",
    "Text",
    "List Char",
  ]),
  Quiz(182, "What is the result of '[1..5] ++ [6..10]'?", [
    "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]",
    "[[1..5], [6..10]]",
    "Error",
    "55",
  ]),
  Quiz(183, "What function turns a list of lists into a single list?", [
    "concat",
    "join",
    "flatten",
    "merge",
  ]),
  Quiz(184, "What is 'concat [[1, 2], [3]]'?", [
    "[1, 2, 3]",
    "[[1, 2, 3]]",
    "Error",
    "6",
  ]),
  Quiz(185, "Can you use ranges with characters like ['a'..'c']?", [
    "Yes, it returns ['a', 'b', 'c']",
    "No, ranges are for numbers only",
    "Only if they are uppercase",
    "Only in VS Code",
  ]),
  Quiz(186, "What is the result of 'length (zip [1, 2] [3, 4, 5])'?", [
    "2",
    "3",
    "5",
    "Error",
  ]),
  Quiz(187, "Which operator is more efficient for building lists?", [
    "The cons operator (:)",
    "The append operator (++)",
    "Both are equal",
    "The plus operator (+)",
  ]),
  Quiz(188, "Why is (:) more efficient than (++)?", [
    "Because it adds to the front instantly, whereas ++ must traverse the whole first list",
    "Because it is shorter to type",
    "Because Haskell doesn't like brackets",
    "It is actually less efficient",
  ]),
  Quiz(189, "What is the type of []?", [
    "[a] (a list of any type 'a')",
    "Int",
    "Void",
    "Error",
  ]),
  Quiz(190, "In a list comprehension, can you use local 'let' bindings?", [
    "Yes, to define helper values inside the comprehension",
    "No, you must use 'where'",
    "Only at the end",
    "No",
  ]),
  Quiz(191, "What is the result of '[x | x <- [1..3], let y = x * 2, y > 3]'?", [
    "[2, 3]",
    "[4, 6]",
    "[3]",
    "Error",
  ]),
  Quiz(192, "Does the order of patterns matter in Haskell?", [
    "Yes, more specific patterns must come before more general ones",
    "No, Haskell finds the best match automatically",
    "Yes, alphabetical order is required",
    "Only for numbers",
  ]),
  Quiz(193, "What happens if no patterns match in a function?", [
    "A 'Non-exhaustive patterns' exception is thrown",
    "The function returns Nothing",
    "The function returns 0",
    "The computer restarts",
  ]),
  Quiz(194, "What does '!!' do in Haskell?", [
    "Index access (e.g., [1, 2, 3] !! 1 returns 2)",
    "Factorial operator",
    "Logical NOT NOT",
    "Check for equality",
  ]),
  Quiz(195, "Is index access (!!) fast in Haskell lists?", [
    "No, it is O(n) because it must traverse the list",
    "Yes, lists are indexed like arrays",
    "Only for infinite lists",
    "Yes, it is O(1)",
  ]),
  Quiz(196, "What is the result of 'words \"I love Haskell\"'?", [
    "[\"I\", \"love\", \"Haskell\"]",
    "3",
    "\"IloveHaskell\"",
    "Error",
  ]),
  Quiz(197, "Which function combines a list of strings into one string with spaces?", [
    "unwords",
    "join",
    "concat",
    "toString",
  ]),
  Quiz(198, "What is 'unlines [\"A\", \"B\"]'?", [
    "\"A\\nB\\n\"",
    "\"AB\"",
    "Error",
    "[\"A\", \"B\"]",
  ]),
  Quiz(199, "Can pattern matching match on tuples inside lists?", [
    "Yes, e.g., [(a, b)] matches a list with one tuple",
    "No, you must extract them first",
    "Only if the tuple has Ints",
    "Only using case expressions",
  ]),
  Quiz(200, "What is the result of 'sum [x | x <- [1..10], odd x]'?", [
    "25",
    "30",
    "55",
    "Error",
  ]),
];
final List<Quiz> haskellQuizM3 = [
  // --- Topic 21: Thinking Recursively ---
  Quiz(201, "What is the primary way to achieve repetition in Haskell?", [
    "Recursion",
    "For-Loops",
    "While-Loops",
    "Do-While Statements",
  ]),
  Quiz(202, "What is 'Recursion' in programming?", [
    "A function that calls itself in its own definition",
    "A function that runs in the background",
    "A way to skip errors",
    "A type of math operator",
  ]),
  Quiz(203, "Why does Haskell use recursion instead of loops?", [
    "Because variables are immutable, so we can't increment a counter in a loop",
    "Because recursion is always faster than loops",
    "Because loops are not allowed in VS Code",
    "Because recursion uses less memory",
  ]),
  Quiz(204, "Which of these is a key benefit of recursion in FP?", [
    "It allows us to solve complex problems by breaking them into smaller, identical sub-problems",
    "It prevents the program from ever crashing",
    "It automatically handles file I/O",
    "It only works with numbers",
  ]),

  // --- Topic 22: Base Case vs Recursive Step ---
  Quiz(205, "What is the 'Base Case' in a recursive function?", [
    "The condition that stops the recursion (the simplest form of the problem)",
    "The first line of the function",
    "The part where the function calls itself",
    "The type signature",
  ]),
  Quiz(206, "What happens if a recursive function does not have a Base Case?", [
    "It will loop infinitely (and eventually cause a stack overflow)",
    "The compiler will fix it automatically",
    "It will return zero",
    "It will only run once",
  ]),
  Quiz(207, "What is the 'Recursive Step'?", [
    "The part where the function calls itself with a smaller version of the input",
    "The act of printing the result",
    "Defining the variable types",
    "The final line of the program",
  ]),
  Quiz(208, "In a factorial function 'fact n = n * fact (n-1)', what is 'fact (n-1)'?", [
    "The recursive call",
    "The base case",
    "An error",
    "A global constant",
  ]),
  Quiz(209, "For the factorial of n, what is a logical base case?", [
    "fact 0 = 1",
    "fact n = 0",
    "fact 10 = 100",
    "fact x = x",
  ]),

  // --- Topic 23: Recursion with Lists (Maximum and Sum) ---
  Quiz(210, "When recursing over a list, what is the most common base case?", [
    "An empty list []",
    "A list with one element [x]",
    "A list with 100 elements",
    "A null pointer",
  ]),
  Quiz(211, "How do we usually separate a list during recursion?", [
    "Using pattern matching like (x:xs)",
    "Using the splitAt function",
    "Using a for-loop index",
    "Using the 'init' function",
  ]),
  Quiz(212, "In 'sum [] = 0', what role does this line play?", [
    "The Base Case for the sum function",
    "The Recursive Step",
    "The type signature",
    "An unused definition",
  ]),
  Quiz(213, "What is the recursive step for summing a list?", [
    "sum (x:xs) = x + sum xs",
    "sum (x:xs) = x * sum xs",
    "sum (x:xs) = sum x",
    "sum x = x + 1",
  ]),
  Quiz(214, "To find the maximum of a list recursively, what do we compare the head (x) against?", [
    "The maximum of the rest of the list (xs)",
    "The number zero",
    "The length of the list",
    "The last element",
  ]),
  Quiz(215, "In 'maximum' recursion, why is 'maximum [x] = x' often used as a base case?", [
    "Because a list with one element has that element as its maximum",
    "To make the code longer",
    "To handle empty lists",
    "Because Int starts at 1",
  ]),

  // --- Topic 24: More List Recursion ---
  Quiz(216, "How would you recursively define 'replicate 3 5'?", [
    "5 : replicate 2 5",
    "3 : replicate 5 3",
    "3 * 5",
    "replicate 5 5 5",
  ]),
  Quiz(217, "What is the base case for 'replicate n x' when n <= 0?", [
    "An empty list []",
    "[x]",
    "0",
    "Error",
  ]),
  Quiz(218, "For 'take n (x:xs)', if n is 0, what is the result?", [
    "[]",
    "[x]",
    "xs",
    "Error",
  ]),
  Quiz(219, "Which function would you use to check if an element 'a' exists in a list recursively?", [
    "elem",
    "has",
    "find",
    "search",
  ]),
  Quiz(220, "What is the base case for 'elem a []'?", [
    "False",
    "True",
    "Nothing",
    "[]",
  ]),

  // --- Topic 25: QuickSort Algorithm ---
  Quiz(221, "How does Haskell's QuickSort implementation typically select a pivot?", [
    "It takes the first element of the list (the head)",
    "It picks a random number",
    "It takes the median of the list",
    "It takes the last element",
  ]),
  Quiz(222, "In QuickSort, what happens to elements smaller than the pivot?", [
    "They are sorted recursively and placed to the left of the pivot",
    "They are discarded",
    "They are placed to the right of the pivot",
    "They are added to the pivot",
  ]),
  Quiz(223, "In QuickSort, what happens to elements larger than the pivot?", [
    "They are sorted recursively and placed to the right of the pivot",
    "They are sorted recursively and placed to the left of the pivot",
    "They are ignored",
    "They become the new pivot",
  ]),
  Quiz(224, "Haskell's QuickSort often uses what feature to make the code readable?", [
    "List Comprehensions",
    "While-Loops",
    "Global variables",
    "If-else chains",
  ]),
  Quiz(225, "What is the base case for QuickSort?", [
    "quicksort [] = []",
    "quicksort [x] = [x]",
    "quicksort x = x + 1",
    "quicksort _ = [0]",
  ]),

  // --- Topic 26: Tail Recursion and Performance ---
  Quiz(226, "What is 'Tail Recursion'?", [
    "A recursive call that is the very last action performed by the function",
    "Recursion that starts from the end of a list",
    "Recursion without a base case",
    "A bug in the compiler",
  ]),
  Quiz(227, "Why is tail recursion often preferred for performance?", [
    "It can be optimized by the compiler to use a single stack frame (like a loop)",
    "It prevents the user from typing errors",
    "It makes the list shorter",
    "It uses more RAM for speed",
  ]),
  Quiz(228, "What is an 'Accumulator' in the context of recursion?", [
    "An extra parameter that carries the intermediate result through recursive calls",
    "A type of numeric list",
    "A keyword for loops",
    "The base case value",
  ]),
  Quiz(229, "Which function in Haskell's libraries often uses tail recursion internally?", [
    "foldl'",
    "foldr",
    "head",
    "init",
  ]),
  Quiz(230, "What does 'Stack Overflow' mean?", [
    "The computer ran out of memory allocated for recursive calls",
    "The list was too small",
    "The code was written in Python",
    "The compiler crashed during setup",
  ]),

  // --- Deepening Recursion Logic ---
  Quiz(231, "What is the result of 'reverse []' as a base case?", [
    "[]",
    "Nothing",
    "Error",
    "0",
  ]),
  Quiz(232, "What is the recursive step for 'reverse (x:xs)'?", [
    "reverse xs ++ [x]",
    "x : reverse xs",
    "reverse x + xs",
    "xs ++ x",
  ]),
  Quiz(233, "Which function would you use to repeat a list infinitely?", [
    "cycle",
    "repeat",
    "replicate",
    "forever",
  ]),
  Quiz(234, "Can recursion handle infinite lists in Haskell?", [
    "Yes, because of Lazy Evaluation",
    "No, it will always crash",
    "Only if the list contains Ints",
    "Only in GHCi",
  ]),
  Quiz(235, "What is 'zip [] _ = []'?", [
    "A base case for the zip function",
    "A recursive call",
    "A type signature",
    "An error",
  ]),
  Quiz(236, "In recursion, what is 'divide and conquer'?", [
    "Solving a problem by splitting it into smaller independent parts",
    "Using the / operator",
    "Deleting the code that doesn't work",
    "Adding more parameters",
  ]),
  Quiz(237, "What is the result of 'product [1, 2, 3, 4]' recursively?", [
    "24",
    "10",
    "12",
    "Error",
  ]),
  Quiz(238, "In 'elem _ [] = False', why is the result False?", [
    "Because you cannot find any element in an empty list",
    "Because the list is too small",
    "Because Haskell prefers False",
    "Because _ is a variable",
  ]),
  Quiz(239, "What is the result of 'take 2 [1, 2, 3, 4]' recursively?", [
    "[1, 2]",
    "[3, 4]",
    "2",
    "Error",
  ]),
  Quiz(240, "What is the result of 'replicate 0 \"Shan\"'?", [
    "[]",
    "[\"Shan\"]",
    "\"\"",
    "Error",
  ]),

  // --- Advanced Recursion & Patterns ---
  Quiz(241, "What does 'zipWith' do?", [
    "Combines two lists using a specific function for each pair of elements",
    "Zips two files together",
    "Multiplies two lists",
    "Returns the first element of two lists",
  ]),
  Quiz(242, "What is 'zipWith (+) [1, 2] [3, 4]'?", [
    "[4, 6]",
    "[(1, 3), (2, 4)]",
    "10",
    "Error",
  ]),
  Quiz(243, "In recursion, what does the term 'Recursive Call' mean?", [
    "The line where the function invokes itself",
    "Defining the function name",
    "Importing a module",
    "Evaluating the result",
  ]),
  Quiz(244, "Which function is used to apply a function to every element in a list?", [
    "map",
    "filter",
    "fold",
    "apply",
  ]),
  Quiz(245, "Is 'map' a recursive function?", [
    "Yes, it recurses through the list applying the function to the head",
    "No, it is a built-in loop",
    "Only for strings",
    "No, it uses while-loops",
  ]),
  Quiz(246, "What is the base case for 'map f []'?", [
    "[]",
    "Nothing",
    "0",
    "f",
  ]),
  Quiz(247, "Which function removes elements from a list based on a condition?", [
    "filter",
    "map",
    "drop",
    "remove",
  ]),
  Quiz(248, "What is 'filter (>5) [3, 6, 8, 2]'?", [
    "[6, 8]",
    "[3, 2]",
    "True",
    "Error",
  ]),
  Quiz(249, "What is the base case for 'filter f []'?", [
    "[]",
    "False",
    "Nothing",
    "Error",
  ]),
  Quiz(250, "What does the term 'Recursion Depth' refer to?", [
    "The number of times a function has called itself in a sequence",
    "The length of the function name",
    "The total lines of code",
    "The bit size of Int",
  ]),

  // --- Mathematical Recursion ---
  Quiz(251, "How would you define 'doubleAll' recursively?", [
    "doubleAll (x:xs) = (x * 2) : doubleAll xs",
    "doubleAll x = x * 2",
    "doubleAll (x:xs) = x * 2",
    "doubleAll xs = sum xs * 2",
  ]),
  Quiz(252, "What is the result of 'length [1..5]' calculated recursively?", [
    "5",
    "15",
    "1",
    "Error",
  ]),
  Quiz(253, "What is the base case for calculating the length of a list?", [
    "length [] = 0",
    "length [] = 1",
    "length [x] = 1",
    "length _ = 0",
  ]),
  Quiz(254, "What is the recursive step for 'length (x:xs)'?", [
    "1 + length xs",
    "x + length xs",
    "length x + 1",
    "length (xs + 1)",
  ]),
  Quiz(255, "Which function creates a list by applying a function repeatedly (f x, f(f x)...)?", [
    "iterate",
    "repeat",
    "cycle",
    "map",
  ]),
  Quiz(256, "What is 'take 3 (iterate (*2) 1)'?", [
    "[1, 2, 4]",
    "[2, 4, 8]",
    "[1, 3, 5]",
    "Error",
  ]),
  Quiz(257, "In recursion, what is a 'Guard'?", [
    "A boolean condition that decides which part of the function to execute",
    "A type of constant",
    "A way to protect against viruses",
    "A bracket syntax",
  ]),
  Quiz(258, "Which character is used to start a Guard in Haskell?", [
    "|",
    ":",
    "->",
    "@",
  ]),
  Quiz(259, "What does 'otherwise' represent in a Guard?", [
    "The default case (True)",
    "An error case",
    "The end of the loop",
    "A comment",
  ]),
  Quiz(260, "Can you use Guards with recursion?", [
    "Yes, it is common to use guards for the recursive step and base case",
    "No, only pattern matching is allowed",
    "Only for numeric calculations",
    "Only in Module 1",
  ]),

  // --- Comparison and Miscellaneous ---
  Quiz(261, "What is the main danger of deep recursion without tail call optimization?", [
    "Stack Overflow",
    "Hard drive failure",
    "Syntax error",
    "Slow compilation",
  ]),
  Quiz(262, "Is QuickSort in Haskell generally shorter than in Java?", [
    "Yes, due to functional syntax and list comprehensions",
    "No, Haskell is more verbose",
    "They are exactly the same",
    "Only if you use libraries",
  ]),
  Quiz(263, "What is 'any (>5) [1, 2, 6]'?", [
    "True",
    "False",
    "6",
    "Error",
  ]),
  Quiz(264, "What is the base case for 'any f []'?", [
    "False",
    "True",
    "Nothing",
    "[]",
  ]),
  Quiz(265, "What is 'all (>5) [6, 7, 8]'?", [
    "True",
    "False",
    "8",
    "Error",
  ]),
  Quiz(266, "What is the base case for 'all f []'?", [
    "True",
    "False",
    "Nothing",
    "[]",
  ]),
  Quiz(267, "Which function would you use to get the first element that matches a condition?", [
    "find",
    "filter",
    "head",
    "get",
  ]),
  Quiz(268, "What does 'find (>5) [1, 10, 20]' return?", [
    "Just 10",
    "10",
    "[10, 20]",
    "True",
  ]),
  Quiz(269, "If 'find' fails to find an element, what does it return?", [
    "Nothing",
    "[]",
    "0",
    "Error",
  ]),
  Quiz(270, "What is the recursive result of 'sum (1:[2, 3])'?", [
    "1 + sum [2, 3]",
    "1 : sum [2, 3]",
    "sum 6",
    "Error",
  ]),
  Quiz(271, "Can you use recursion to solve the Fibonacci sequence?", [
    "Yes, fib n = fib (n-1) + fib (n-2)",
    "No, Fibonacci requires a loop",
    "Only if you use a database",
    "Only for small numbers",
  ]),
  Quiz(272, "What is a 'mutual recursion'?", [
    "Two functions that call each other",
    "A function that calls itself twice",
    "A function that never stops",
    "Recursion inside a loop",
  ]),
  Quiz(273, "What is 'takeWhile (<5) [1, 2, 6, 3]'?", [
    "[1, 2]",
    "[1, 2, 3]",
    "True",
    "Error",
  ]),
  Quiz(274, "What is 'dropWhile (<5) [1, 2, 6, 3]'?", [
    "[6, 3]",
    "[6]",
    "[]",
    "Error",
  ]),
  Quiz(275, "What is the final goal of Module 3?", [
    "To master thinking in recursive structures instead of loops",
    "To learn how to use Windows",
    "To build a database",
    "To print 'Hello World'",
  ]),
];
final List<Quiz> haskellQuizM4 = [
  // --- Topic 27: Types and Typeclasses (The Big Picture) ---
  Quiz(276, "What is a 'Typeclass' in Haskell?", [
    "A set of types that support a common set of functions (like an interface)",
    "A way to group functions into a file",
    "A type of numeric list",
    "A template for building objects",
  ]),
  Quiz(277, "Which symbol is used to indicate a typeclass constraint (e.g., 'Eq a =>')?", [
    "=>",
    "->",
    "::",
    "=="
  ]),
  Quiz(278, "In 'f :: (Eq a) => a -> a -> Bool', what does '(Eq a)' mean?", [
    "The type 'a' must support equality comparisons",
    "The function 'f' must be equal to 'a'",
    "The function only works for Int",
    "It is a logical error",
  ]),
  Quiz(279, "What is a 'Type Variable' (like 'a' in [a])?", [
    "A placeholder that can represent any type",
    "A variable that only stores numbers",
    "A global constant",
    "A syntax error",
  ]),
  Quiz(280, "Haskell is 'Strongly Typed'. What does this mean?", [
    "The language prevents operations on incompatible types (no implicit casting)",
    "The compiler is very large",
    "You can change types at runtime",
    "It only supports one type of data",
  ]),

  // --- Topic 28: Common Typeclasses (Eq, Ord, Show, Read) ---
  Quiz(281, "What does the 'Eq' typeclass allow you to do?", [
    "Check if two values are equal (==) or not equal (/=)",
    "Sort a list of values",
    "Print values to the console",
    "Convert strings to numbers",
  ]),
  Quiz(282, "Which typeclass is required for values that can be ordered/sorted?", [
    "Ord",
    "Eq",
    "Show",
    "Read",
  ]),
  Quiz(283, "What does the 'Show' typeclass provide?", [
    "The 'show' function, which converts a value into a String",
    "A way to display images",
    "A way to read user input",
    "A loop for printing",
  ]),
  Quiz(284, "Which function does the 'Read' typeclass provide?", [
    "read",
    "show",
    "input",
    "parse",
  ]),
  Quiz(285, "What is the result of 'show 5'?", [
    "\"5\"",
    "5",
    "Error",
    "['5']",
  ]),
  Quiz(286, "What is the result of 'read \"True\" :: Bool'?", [
    "True",
    "true",
    "Error",
    "\"True\"",
  ]),
  Quiz(287, "Which operator is provided by 'Ord' for 'greater than'?", [
    ">",
    "==",
    "&&",
    "++",
  ]),
  Quiz(288, "What does 'compare 5 3' return (assuming Ord)?", [
    "GT (Greater Than)",
    "LT (Less Than)",
    "EQ (Equal)",
    "True",
  ]),

  // --- Topic 29: Numeric Typeclasses ---
  Quiz(289, "Which typeclass is the basic interface for all numbers?", [
    "Num",
    "Integral",
    "Floating",
    "Int",
  ]),
  Quiz(290, "What is the 'Integral' typeclass used for?", [
    "Whole numbers (Int and Integer)",
    "Floating point numbers",
    "Booleans",
    "Complex math",
  ]),
  Quiz(291, "Which typeclass includes types like 'Double' and 'Float'?", [
    "Floating",
    "Integral",
    "Num",
    "Ord",
  ]),
  Quiz(292, "Why can't you use 'div' on a Double?", [
    "Because 'div' is part of the Integral typeclass, and Double is Floating",
    "Because Double is too big",
    "Because Haskell doesn't like decimals",
    "You actually can",
  ]),
  Quiz(293, "Which function converts an Integral number to any other numeric type?", [
    "fromIntegral",
    "toNum",
    "read",
    "cast",
  ]),
  Quiz(294, "What is the result of 'fromIntegral (5 :: Int) + 2.5'?", [
    "7.5",
    "7",
    "Error",
    "5.0",
  ]),

  // --- Topic 30: Creating Your Own Types ---
  Quiz(295, "Which keyword is used to define a new data type in Haskell?", [
    "data",
    "type",
    "new",
    "struct",
  ]),
  Quiz(296, "In 'data Bool = False | True', what is '|' called?", [
    "A value constructor separator (means 'or')",
    "A pipe operator",
    "A logic symbol",
    "A list operator",
  ]),
  Quiz(297, "What is a 'Value Constructor'?", [
    "A function that creates a value of a specific type",
    "A variable that stores numbers",
    "A compiler error",
    "A way to delete data",
  ]),
  Quiz(298, "In 'data Shape = Circle Float | Rect Float Float', how many constructors are there?", [
    "Two (Circle and Rect)",
    "One (Shape)",
    "Four",
    "Zero",
  ]),
  Quiz(299, "What is the type of the 'Circle' constructor in the previous question?", [
    "Float -> Shape",
    "Shape -> Float",
    "Float",
    "Circle",
  ]),

  // --- Topic 31: Record Syntax ---
  Quiz(300, "What is 'Record Syntax' used for?", [
    "Creating data types with named fields for better readability",
    "Recording audio in Haskell",
    "Writing to a database",
    "Defining mathematical constants",
  ]),
  Quiz(301, "How do you access a field 'name' in a record 'Student' in Haskell?", [
    "name student (calling the field as a function)",
    "student.name",
    "student->name",
    "get(student, name)",
  ]),
  Quiz(302, "What is the correct syntax for a Record?", [
    "data Student = Student { name :: String, age :: Int }",
    "data Student = Student (name: String, age: Int)",
    "record Student { String name; Int age; }",
    "type Student = { name: String, age: Int }",
  ]),
  Quiz(303, "How do you update a record 's' to have a new age of 20?", [
    "s { age = 20 }",
    "s.age = 20",
    "update s age 20",
    "s(age: 20)",
  ]),
  Quiz(304, "In Record Syntax, field names must start with what?", [
    "A lowercase letter",
    "An uppercase letter",
    "A number",
    "Any symbol",
  ]),

  // --- Topic 32: Type Parameters (Generics) ---
  Quiz(305, "What is a 'Type Parameter'?", [
    "A variable in a data type definition that allows the type to be generic",
    "A number passed to a function",
    "A specific name for a list",
    "A setting in the GHC compiler",
  ]),
  Quiz(306, "In 'data Maybe a = Nothing | Just a', what is 'a'?", [
    "A type parameter",
    "A value",
    "A function name",
    "A boolean",
  ]),
  Quiz(307, "What is the type of 'Just 5'?", [
    "Maybe Int (or any Num type)",
    "Int",
    "Just",
    "Maybe a",
  ]),
  Quiz(308, "Why are type parameters useful?", [
    "They allow us to create containers (like lists or Maybe) that work for any type",
    "They make the program run faster",
    "They automatically fix bugs",
    "They are required for all math",
  ]),

  // --- Topic 33: Derived Instances ---
  Quiz(309, "What does the 'deriving' keyword do?", [
    "Automatically generates default implementations for typeclasses (like Eq, Show)",
    "Imports a library",
    "Calculates a math equation",
    "Deletes a data type",
  ]),
  Quiz(310, "Which typeclass should you derive if you want to print your custom type in GHCi?", [
    "Show",
    "Eq",
    "Read",
    "Num",
  ]),
  Quiz(311, "Which typeclass should you derive if you want to compare two values of your custom type using '=='?", [
    "Eq",
    "Ord",
    "Show",
    "Read",
  ]),
  Quiz(312, "Can you derive 'Ord' for a custom type?", [
    "Yes, it will use the order in which constructors were defined",
    "No, Ord must be written manually",
    "Only for numbers",
    "Only if you use the 'deriving' keyword twice",
  ]),

  // --- Topic 34: The Maybe Type ---
  Quiz(313, "What is the purpose of the 'Maybe' type?", [
    "To represent a value that might or might not exist (handling null-like cases safely)",
    "To create a loop",
    "To store two numbers",
    "To speed up the compiler",
  ]),
  Quiz(314, "What are the two constructors for 'Maybe a'?", [
    "Just a and Nothing",
    "True and False",
    "Right a and Left b",
    "Some a and None",
  ]),
  Quiz(315, "How do you handle a 'Maybe' value safely in a function?", [
    "Using pattern matching (Just x vs Nothing)",
    "Using an if-else statement on 'null'",
    "By ignoring it",
    "Using the '!' operator",
  ]),
  Quiz(316, "What is the result of 'head []' wrapped in a safe 'Maybe' function?", [
    "Nothing",
    "[]",
    "Error",
    "0",
  ]),
  Quiz(317, "What is the type of 'Nothing'?", [
    "Maybe a",
    "Null",
    "Void",
    "Int",
  ]),

  // --- Deepening Types and Classes ---
  Quiz(318, "Which function returns a list of all values in an 'Enum' typeclass?", [
    "[minBound..maxBound]",
    "allValues",
    "enumList",
    "listAll",
  ]),
  Quiz(319, "Which typeclass provides 'minBound' and 'maxBound'?", [
    "Bounded",
    "Enum",
    "Ord",
    "Show",
  ]),
  Quiz(320, "What is the result of '(5 :: Int) == (5 :: Int)'?", [
    "True",
    "False",
    "Error",
    "1",
  ]),
  Quiz(321, "Can a type be an instance of multiple typeclasses?", [
    "Yes, e.g., Int is an instance of Eq, Ord, Num, etc.",
    "No, only one typeclass per type",
    "Only in Module 5",
    "Only if you use the 'multi' keyword",
  ]),
  Quiz(322, "What does 'type' (keyword) do compared to 'data'?", [
    "It creates a 'Type Alias' (a new name for an existing type)",
    "It creates a brand new data type",
    "It is used for loops",
    "It defines a function",
  ]),
  Quiz(323, "What is 'type String = [Char]' an example of?", [
    "Type Alias",
    "Data Constructor",
    "Typeclass Instance",
    "Generic Type",
  ]),

  // --- Modeling Data with Student Profiles ---
  Quiz(324, "In the 'TMK' project, how would you represent a Student's Gender using a custom type?", [
    "data Gender = Male | Female | Other",
    "type Gender = String",
    "gender = [\"Male\", \"Female\"]",
    "let gender = True",
  ]),
  Quiz(325, "Why is 'data Gender = Male | Female' better than 'String'?", [
    "It prevents invalid input (like \"Apple\") at compile time",
    "It makes the program bigger",
    "It is faster to type",
    "It is required by VS Code",
  ]),
  Quiz(326, "How do you define a record 'Course' with 'title' and 'code'?", [
    "data Course = Course { title :: String, code :: String }",
    "data Course = { title, code }",
    "type Course = Course title code",
    "Course = Course String String",
  ]),
  Quiz(327, "Can a field in a record be another custom data type?", [
    "Yes, you can nest types (e.g., a Student record containing a Gender type)",
    "No, only Int and String are allowed",
    "Only if you use type parameters",
    "Only in Module 9",
  ]),

  // --- Advanced Type Concepts ---
  Quiz(328, "What is the result of 'read \"5\" + 2' if you don't provide a type signature for read?", [
    "An error (Ambiguous type variable)",
    "7",
    "52",
    "5",
  ]),
  Quiz(329, "Which typeclass provides 'succ' and 'pred' functions?", [
    "Enum",
    "Bounded",
    "Ord",
    "Num",
  ]),
  Quiz(330, "What is 'maxBound :: Int'?", [
    "The largest possible value for the Int type",
    "Infinity",
    "1000000",
    "0",
  ]),
  Quiz(331, "What does 'Either a b' represent?", [
    "A value that can be either type 'a' (Left) or type 'b' (Right)",
    "Two values at the same time",
    "A list of two items",
    "An error message only",
  ]),
  Quiz(332, "In 'Either String Int', 'Left' is commonly used for what?", [
    "Error messages",
    "Successful results",
    "Default values",
    "Loop counters",
  ]),
  Quiz(333, "Which function from 'Data.Maybe' provides a default value for a Maybe?", [
    "fromMaybe",
    "getMaybe",
    "default",
    "maybe",
  ]),
  Quiz(334, "What is the result of 'fromMaybe 0 (Just 5)'?", [
    "5",
    "0",
    "Just 5",
    "Error",
  ]),
  Quiz(335, "What is the result of 'fromMaybe 0 Nothing'?", [
    "0",
    "Nothing",
    "Error",
    "null",
  ]),

  // --- Miscellaneous Type Knowledge ---
  Quiz(336, "What is a 'Recursive Data Type'?", [
    "A data type that uses itself in its definition (like a List)",
    "A type that runs in a loop",
    "A function that returns a type",
    "A type that deletes itself",
  ]),
  Quiz(337, "In 'data List a = Empty | Cons a (List a)', what is this?", [
    "A recursive data type definition for a List",
    "A standard Haskell list",
    "An error",
    "A tuple",
  ]),
  Quiz(338, "Which keyword is used to create a type that is restricted to exactly one constructor with one field (for efficiency)?", [
    "newtype",
    "data",
    "type",
    "alias",
  ]),
  Quiz(339, "Why use 'newtype' over 'data'?", [
    "It has zero runtime overhead (faster)",
    "It allows multiple constructors",
    "It is easier to read",
    "It works with infinite lists",
  ]),
  Quiz(340, "What is the 'Unit' type represented as?", [
    "()",
    "[]",
    "Void",
    "None",
  ]),
  Quiz(341, "What does '()' represent?", [
    "A type with only one value, used when no information is needed (like void)",
    "An empty list",
    "An error",
    "A math operation",
  ]),
  Quiz(342, "Can you pattern match on value constructors?", [
    "Yes, it is the standard way to extract data from custom types",
    "No, only on strings and numbers",
    "Only if the type is derived from Show",
    "Only using if-else",
  ]),
  Quiz(343, "What is the result of 'not True' if Bool is defined as 'data Bool = False | True'?", [
    "False",
    "True",
    "Error",
    "0",
  ]),
  Quiz(344, "Which function checks if a Maybe is 'Just'?", [
    "isJust",
    "hasValue",
    "isNothing",
    "check",
  ]),
  Quiz(345, "Which function checks if a Maybe is 'Nothing'?", [
    "isNothing",
    "isEmpty",
    "isNull",
    "isJust",
  ]),
  Quiz(346, "What is 'listToMaybe [1, 2, 3]'?", [
    "Just 1",
    "Nothing",
    "[1]",
    "Error",
  ]),
  Quiz(347, "What is 'listToMaybe []'?", [
    "Nothing",
    "Just []",
    "0",
    "Error",
  ]),

  // --- Advanced Numeric Types ---
  Quiz(348, "Which type provides arbitrary precision floating point (very high precision)?", [
    "Rational",
    "Double",
    "Float",
    "Int",
  ]),
  Quiz(349, "How do you write the number 5 as a Rational in Haskell?", [
    "5 % 1",
    "5/1",
    "5.0",
    "Rational 5",
  ]),
  Quiz(350, "Which operator is used to create a Rational number (from Data.Ratio)?", [
    "%",
    "/",
    ":",
    "&",
  ]),
  Quiz(351, "What is '1 % 2 + 1 % 3'?", [
    "5 % 6",
    "2 % 5",
    "0.833",
    "Error",
  ]),
  Quiz(352, "Does Haskell have a type for 'Complex' numbers?", [
    "Yes, in the Data.Complex module",
    "No, you must use strings",
    "Only in GHCi",
    "Yes, it is a primitive type",
  ]),

  // --- Polymorphism and Type Safety ---
  Quiz(353, "What is 'Parametric Polymorphism'?", [
    "A function that works the same way for any type (e.g., length)",
    "A function that changes based on types",
    "A way to write logic using parameters",
    "An error in the type system",
  ]),
  Quiz(354, "What is 'Ad-hoc Polymorphism'?", [
    "Functions that behave differently for different types (using typeclasses)",
    "Functions that only work for one type",
    "A random function",
    "A type of recursion",
  ]),
  Quiz(355, "Which of these functions is Parametrically Polymorphic?", [
    "reverse",
    "sum",
    "sqrt",
    "not",
  ]),
  Quiz(356, "Which of these functions is Ad-hoc Polymorphic?", [
    "==",
    "head",
    "tail",
    "fst",
  ]),
  Quiz(357, "What is a 'Constraint'?", [
    "A limit on which types can be used for a generic variable (e.g., Num a =>)",
    "A bug in the code",
    "A way to stop a loop",
    "A file size limit",
  ]),
  Quiz(358, "What does 'show (read \"5\" :: Int)' do?", [
    "Converts \"5\" to an Int, then back to the string \"5\"",
    "Returns the number 5",
    "Throws a type error",
    "Prints 5 to console",
  ]),
  Quiz(359, "What happens if you try to compare a String and an Int using '=='?", [
    "A compilation error occurs (type mismatch)",
    "It returns False",
    "It returns True",
    "The program crashes at runtime",
  ]),

  // --- Final Review of Module 4 ---
  Quiz(360, "Is 'Maybe Int' the same type as 'Int'?", [
    "No, they are different types; you must extract the Int from the Maybe",
    "Yes, they are both numbers",
    "Yes, but only in Module 4",
    "Only if the value is Just",
  ]),
  Quiz(361, "Which keyword defines a Typeclass?", [
    "class",
    "typeclass",
    "interface",
    "instance",
  ]),
  Quiz(362, "Which keyword defines an implementation of a Typeclass for a type?", [
    "instance",
    "class",
    "implement",
    "data",
  ]),
  Quiz(363, "In 'instance Eq TrafficLight where', what are we doing?", [
    "Defining how the TrafficLight type behaves for equality comparisons",
    "Creating a new type",
    "Importing logic",
    "Deleting a class",
  ]),
  Quiz(364, "Can you use Record Syntax with multiple constructors?", [
    "Yes, but it can be dangerous if fields are not present in all constructors",
    "No, only one constructor allowed",
    "Only for strings",
    "Only in GHCi",
  ]),
  Quiz(365, "What is 'catMaybes' from Data.Maybe?", [
    "It takes a list of Maybes and returns only the Just values",
    "It deletes Nothing values",
    "It joins Maybes together",
    "It prints Maybes",
  ]),
  Quiz(366, "What is 'catMaybes [Just 1, Nothing, Just 2]'?", [
    "[1, 2]",
    "[Just 1, Just 2]",
    "3",
    "Error",
  ]),
  Quiz(367, "What is the result of 'length (Just 5)'?", [
    "1",
    "5",
    "Error (Maybe is not a list)",
    "0",
  ]),
  Quiz(368, "Can you have a List of Maybes? [Maybe Int]", [
    "Yes, e.g., [Just 1, Nothing, Just 5]",
    "No, types cannot be nested this way",
    "Only if they are all Just",
    "Only in Module 1",
  ]),
  Quiz(369, "What does 'kind' (* -> *) mean for Maybe?", [
    "Maybe takes one type argument to become a concrete type",
    "Maybe is a math function",
    "Maybe is an error",
    "Maybe is a pointer",
  ]),
  Quiz(370, "What is a 'Concrete Type'?", [
    "A type that can actually hold values (like Int, Bool, Maybe Int)",
    "A type that is hard to change",
    "A type for building houses",
    "A global variable",
  ]),
  Quiz(371, "Is 'Maybe' a concrete type?", [
    "No, it is a type constructor (it needs a type argument)",
    "Yes, it is",
    "Only in GHCi",
    "No, it's a function",
  ]),
  Quiz(372, "Is 'Maybe Bool' a concrete type?", [
    "Yes",
    "No",
    "Maybe",
    "Error",
  ]),
  Quiz(373, "What does 'deriving (Eq, Ord, Show)' do?", [
    "Implements all three typeclasses at once for a custom data type",
    "Nothing",
    "Causes an error",
    "Imports three libraries",
  ]),
  Quiz(374, "How do you handle 'Nothing' gracefully in the TMK project?", [
    "By providing a default message or skipping the action using pattern matching",
    "By letting the app crash",
    "By using a global try-catch",
    "By using the '!' symbol",
  ]),
  Quiz(375, "What is the main advantage of Haskell's type system?", [
    "It catches many logical errors at compile time before the program even runs",
    "It makes the code shorter",
    "It is easier for beginners",
    "It allows variables to change types",
  ]),
];
final List<Quiz> haskellQuizM5 = [
  // --- Topic 35: Currying and Partial Application ---
  Quiz(376, "What is 'Currying' in Haskell?", [
    "The process where a function with multiple arguments is treated as a series of functions with one argument",
    "Adding math operators to a function",
    "Combining two files together",
    "A way to skip error handling",
  ]),
  Quiz(377, "In Haskell, are all functions technically 'curried'?", [
    "Yes, every function officially takes only one argument",
    "No, only functions in Module 5",
    "Only if you use the 'curry' keyword",
    "Only for numeric functions",
  ]),
  Quiz(378, "What is 'Partial Application'?", [
    "Calling a function with fewer arguments than it expects, returning a new function",
    "A function that only works half the time",
    "A syntax error in GHCi",
    "Breaking a function into two files",
  ]),
  Quiz(379, "If 'add x y = x + y', what is the type of 'add 5'?", [
    "Num a => a -> a (A function that takes one more number)",
    "Int",
    "Error",
    "Maybe Int",
  ]),
  Quiz(380, "What is the result of '(+3) 10'?", [
    "13",
    "310",
    "Error",
    "7",
  ]),
  Quiz(381, "What does 'map (*2) [1..3]' demonstrate?", [
    "Partial application of the multiplication operator",
    "A list comprehension",
    "Currying a string",
    "An infinite loop",
  ]),

  // --- Topic 36: Higher-Order Basics ---
  Quiz(382, "What defines a 'Higher-Order Function'?", [
    "A function that takes other functions as parameters or returns a function",
    "A function that is written at the top of a file",
    "A function that uses complex math",
    "A function that runs faster than normal",
  ]),
  Quiz(383, "Which of these is a Higher-Order Function?", [
    "map",
    "not",
    "head",
    "abs",
  ]),
  Quiz(384, "What is the type signature of a function 'applyTwice' that takes a function (a -> a) and a value 'a'?", [
    "applyTwice :: (a -> a) -> a -> a",
    "applyTwice :: a -> a -> a",
    "applyTwice :: Function -> a",
    "applyTwice :: (a, a) -> a",
  ]),
  Quiz(385, "Why are Higher-Order Functions powerful?", [
    "They allow us to abstract common patterns of computation (like loops) into reusable tools",
    "They automatically fix bugs",
    "They are required for IO",
    "They prevent recursion",
  ]),

  // --- Topic 37: The 'Map' Function ---
  Quiz(386, "What does the 'map' function do?", [
    "Applies a transformation function to every element in a list",
    "Filters elements based on a condition",
    "Reduces a list to a single value",
    "Sorts a list",
  ]),
  Quiz(387, "What is the result of 'map (+1) [1, 2, 3]'?", [
    "[2, 3, 4]",
    "[1, 2, 3, 1]",
    "6",
    "Error",
  ]),
  Quiz(388, "What is 'map (head) [\"Sai\", \"Mao\"]'?", [
    "['S', 'M']",
    "\"SM\"",
    "Error",
    "[\"S\", \"M\"]",
  ]),
  Quiz(389, "Can you use 'map' on a list of lists?", [
    "Yes, it will apply the function to each inner list",
    "No, map only works on numbers",
    "Only if you use 'concatMap'",
    "Only in Module 1",
  ]),
  Quiz(390, "What is the type of 'map'?", [
    "(a -> b) -> [a] -> [b]",
    "[a] -> [b]",
    "a -> b -> [c]",
    "(a -> a) -> a",
  ]),

  // --- Topic 38: The 'Filter' Function ---
  Quiz(391, "What does the 'filter' function do?", [
    "Returns a new list containing only elements that satisfy a boolean condition",
    "Changes every element in a list",
    "Deletes the first element",
    "Calculates the sum",
  ]),
  Quiz(392, "What is the result of 'filter even [1..5]'?", [
    "[2, 4]",
    "[1, 3, 5]",
    "True",
    "Error",
  ]),
  Quiz(393, "What is 'filter (/= ' ') \"TMK Academy\"'?", [
    "\"TMKAcademy\"",
    "\"TMK Academy\"",
    "Error",
    "[\"TMK\", \"Academy\"]",
  ]),
  Quiz(394, "What is the type of 'filter'?", [
    "(a -> Bool) -> [a] -> [a]",
    "(a -> b) -> [a] -> [a]",
    "[a] -> Bool -> [a]",
    "a -> [a]",
  ]),
  Quiz(395, "Can 'filter' change the type of elements in a list?", [
    "No, the output list always has the same type as the input list",
    "Yes, it can convert Int to Bool",
    "Only if the list is empty",
    "Yes, using a lambda",
  ]),

  // --- Topic 39: Lambdas (Anonymous Functions) ---
  Quiz(396, "What is a 'Lambda' in Haskell?", [
    "An anonymous function (a function without a name defined on the fly)",
    "A type of math operator",
    "A global constant",
    "A syntax error",
  ]),
  Quiz(397, "What is the symbol used to start a Lambda in Haskell?", [
    "\\ (backslash)",
    "/ (slash)",
    "@ (at)",
    "~ (tilde)",
  ]),
  Quiz(398, "What is the correct syntax for a lambda that adds 1 to x?", [
    "\\x -> x + 1",
    "lambda x: x + 1",
    "(x) => x + 1",
    "x -> x + 1",
  ]),
  Quiz(399, "What is the result of '(\\x y -> x + y) 5 10'?", [
    "15",
    "510",
    "Error",
    "(\\5 10 -> 15)",
  ]),
  Quiz(400, "Why use a lambda instead of a named function?", [
    "For small, one-time-use logic that doesn't need to be reused elsewhere",
    "To make the code harder to read",
    "Because lambdas are faster than functions",
    "Because Haskell requires it for loops",
  ]),
  Quiz(401, "Can lambdas take multiple arguments?", [
    "Yes, e.g., \\x y z -> ...",
    "No, only one argument",
    "Only if they are numbers",
    "Only in Module 9",
  ]),

  // --- Topic 40: Folds (Foldl and Foldr) ---
  Quiz(402, "What is a 'Fold' used for?", [
    "To reduce a list of values into a single value (like sum or product)",
    "To create an infinite list",
    "To sort a list",
    "To print a list",
  ]),
  Quiz(403, "What are the three arguments required for a fold?", [
    "A function, a starting value (accumulator), and a list",
    "A list, a number, and a string",
    "A boolean, a list, and a result",
    "A function and two lists",
  ]),
  Quiz(404, "What is the difference between 'foldl' and 'foldr'?", [
    "foldl processes from the left (start); foldr processes from the right (end)",
    "foldl is only for numbers; foldr is for strings",
    "foldl is faster than foldr",
    "There is no difference",
  ]),
  Quiz(405, "What is the result of 'foldl (+) 0 [1, 2, 3]'?", [
    "6",
    "0",
    "[1, 2, 3]",
    "Error",
  ]),
  Quiz(406, "Which fold is usually safer to use with infinite lists (if the function is lazy)?", [
    "foldr",
    "foldl",
    "foldl'",
    "Neither",
  ]),
  Quiz(407, "What is 'foldl1'?", [
    "A fold that uses the first element of the list as the starting value",
    "A fold that only runs once",
    "A fold for empty lists",
    "A faster version of foldl",
  ]),
  Quiz(408, "What is 'foldr (:) [] [1, 2, 3]'?", [
    "[1, 2, 3]",
    "[3, 2, 1]",
    "6",
    "Error",
  ]),

  // --- Topic 41: Function Composition (.) ---
  Quiz(409, "What is the 'Function Composition' operator?", [
    ". (the dot)",
    "\$ (the dollar)",
    "->",
    "@",
  ]),
  Quiz(410, "What does '(f . g) x' mean?", [
    "Apply function g to x, then apply function f to the result",
    "Apply function f to x, then apply function g to the result",
    "Multiply f and g by x",
    "Combine f and g into a list",
  ]),
  Quiz(411, "What is 'map (negate . abs) [5, -10]'?", [
    "[-5, -10]",
    "[5, 10]",
    "[-5, 10]",
    "Error",
  ]),
  Quiz(412, "Why use function composition?", [
    "To create complex functions from simple ones without nested parentheses",
    "To make math faster",
    "To define a new data type",
    "To handle IO",
  ]),
  Quiz(413, "Function composition is 'Right-to-Left'. What does this mean?", [
    "The function on the far right is applied first",
    "The function on the left is applied first",
    "The code is read from right to left",
    "Only right-handers can write it",
  ]),

  // --- Topic 42: The $ Operator ---
  Quiz(414, "What is the primary purpose of the '\$' operator?", [
    "To reduce the number of parentheses in an expression",
    "To indicate a currency value",
    "To start a loop",
    "To define a global variable",
  ]),
  Quiz(415, "How does the '\$' operator work?", [
    "It has the lowest precedence and applies the function on the left to the entire expression on the right",
    "It multiplies two numbers",
    "It acts as a line break",
    "It converts types to String",
  ]),
  Quiz(416, "What is 'sum (map (*2) [1..5])' written using '\$'?", [
    "sum \$ map (*2) [1..5]",
    "sum map (*2) \$ [1..5]",
    "sum \$ map \$ (*2) \$ [1..5]",
    "\$ sum map (*2) [1..5]",
  ]),
  Quiz(417, "What is the result of 'sqrt \$ 3 * 3 + 7'?", [
    "4.0",
    "16.0",
    "10.0",
    "Error",
  ]),
  Quiz(418, "Which of these is the same as 'f (g (h x))'?", [
    "f . g . h \$ x",
    "f \$ g \$ h x",
    "Both are correct",
    "Neither is correct",
  ]),

  // --- Deepening Higher-Order Concepts ---
  Quiz(419, "Which function returns a list of intermediate values of a fold?", [
    "scanl / scanr",
    "map",
    "iterate",
    "foldl'",
  ]),
  Quiz(420, "What is 'scanl (+) 0 [1, 2, 3]'?", [
    "[0, 1, 3, 6]",
    "6",
    "[1, 3, 6]",
    "Error",
  ]),
  Quiz(421, "What is 'flip'?", [
    "A function that takes another function and reverses the order of its first two arguments",
    "A way to reverse a list",
    "A boolean toggle",
    "A math function for decimals",
  ]),
  Quiz(422, "What is the result of 'flip (-) 5 10'?", [
    "5 (calculated as 10 - 5)",
    "-5 (calculated as 5 - 10)",
    "Error",
    "15",
  ]),
  Quiz(423, "What is 'zipWith'?", [
    "A higher-order function that combines two lists using a function provided as an argument",
    "A way to compress files",
    "A list comprehension",
    "A type of tuple",
  ]),
  Quiz(424, "What is 'zipWith (*) [1, 2] [10, 20]'?", [
    "[10, 40]",
    "[(1, 10), (2, 20)]",
    "50",
    "Error",
  ]),
  Quiz(425, "What is 'takeWhile (<5) [1, 2, 8, 3]'?", [
    "[1, 2]",
    "[1, 2, 3]",
    "[8, 3]",
    "True",
  ]),
  Quiz(426, "What is 'dropWhile (<5) [1, 2, 8, 3]'?", [
    "[8, 3]",
    "[1, 2]",
    "[]",
    "Error",
  ]),
  Quiz(427, "Which higher-order function checks if ANY element satisfies a condition?", [
    "any",
    "all",
    "elem",
    "find",
  ]),
  Quiz(428, "Which higher-order function checks if ALL elements satisfy a condition?", [
    "all",
    "any",
    "filter",
    "map",
  ]),
  Quiz(429, "What is 'any odd [2, 4, 5]'?", [
    "True",
    "False",
    "5",
    "Error",
  ]),
  Quiz(430, "What is 'all (>0) [1..5]'?", [
    "True",
    "False",
    "1",
    "Error",
  ]),

  // --- Lambdas and Practical Patterns ---
  Quiz(431, "What is 'map (\\(x,y) -> x + y) [(1,2), (3,4)]'?", [
    "[3, 7]",
    "[1, 2, 3, 4]",
    "10",
    "Error",
  ]),
  Quiz(432, "Can you use pattern matching inside a lambda's arguments?", [
    "Yes, e.g., \\(x:xs) -> x",
    "No, only variables",
    "Only for numbers",
    "Only in GHCi",
  ]),
  Quiz(433, "Which function in 'Data.List' sorts a list based on a custom comparison function?", [
    "sortBy",
    "sortWith",
    "orderBy",
    "sort",
  ]),
  Quiz(434, "What is 'Point-free style'?", [
    "Writing functions by composing others without explicitly naming arguments",
    "Writing code without decimal points",
    "Code that doesn't use the '.' operator",
    "A way to write infinite loops",
  ]),
  Quiz(435, "Is 'sum = foldl (+) 0' written in point-free style?", [
    "Yes",
    "No",
    "Only if you use lambdas",
    "Error",
  ]),
  Quiz(436, "Which module must you import for most higher-order list functions like 'find' or 'sortBy'?", [
    "Data.List",
    "System.IO",
    "Control.Monad",
    "Math.Base",
  ]),

  // --- Currying & Types ---
  Quiz(437, "What is the type of the curried subtraction operator '(-)'?", [
    "Num a => a -> a -> a",
    "a -> a",
    "Num -> Num",
    "Error",
  ]),
  Quiz(438, "In 'f x y z = x + y + z', what is 'f 1 2'?", [
    "A function that takes one more argument (z)",
    "3",
    "Error",
    "6",
  ]),
  Quiz(439, "Why are all functions curried by default in Haskell?", [
    "It makes partial application and function composition easy and natural",
    "It is a bug that became a feature",
    "It is required by the CPU",
    "To make the code longer",
  ]),
  Quiz(440, "What is the result of 'map (3+) [1, 2]'?", [
    "[4, 5]",
    "[31, 32]",
    "6",
    "Error",
  ]),

  // --- Folds & Logic ---
  Quiz(441, "What happens if you use 'foldl1' on an empty list?", [
    "A runtime exception occurs",
    "It returns 0",
    "It returns Nothing",
    "It returns []",
  ]),
  Quiz(442, "Which fold should you use for performance to avoid stack overflows on large lists?", [
    "foldl' (from Data.List)",
    "foldl",
    "foldr",
    "Neither",
  ]),
  Quiz(443, "What does 'foldr' do when the accumulator function is lazy in its second argument?", [
    "It can stop processing early and handle infinite lists",
    "It crashes",
    "It waits forever",
    "It only works for numbers",
  ]),
  Quiz(444, "What is the result of 'foldr (&&) True [True, False, True]'?", [
    "False",
    "True",
    "Error",
    "1",
  ]),
  Quiz(445, "What is 'foldl (++) \"\" [\"H\", \"I\"]'?", [
    "\"HI\"",
    "\"IH\"",
    "[\"H\", \"I\"]",
    "Error",
  ]),
  Quiz(446, "What is 'foldr (++) \"\" [\"H\", \"I\"]'?", [
    "\"HI\"",
    "\"IH\"",
    "Error",
    "[\"H\", \"I\"]",
  ]),
  Quiz(447, "Which function repeats an application 'n' times recursively but is often replaced by 'iterate'?", [
    "replicate",
    "repeat",
    "times",
    "applyN",
  ]),
  Quiz(448, "What is 'product \$ filter odd [1..5]'?", [
    "15 (1 * 3 * 5)",
    "120",
    "8",
    "Error",
  ]),

  // --- Function Composition & Cleaning up ---
  Quiz(449, "What is 'head . reverse'?", [
    "A function that gets the last element of a list",
    "A function that reverses the head",
    "Error",
    "A way to delete a list",
  ]),
  Quiz(450, "Is '(f . g) x' exactly the same as 'f \$ g x'?", [
    "Yes",
    "No",
    "Only for numbers",
    "Only in Module 5",
  ]),
  Quiz(451, "What is 'length . words \$ \"Sai Mao\"'?", [
    "2",
    "7",
    "\"SaiMao\"",
    "Error",
  ]),
  Quiz(452, "Can you compose functions with different return types?", [
    "Only if the output of the first matches the input of the second",
    "Yes, always",
    "No, never",
    "Only using lambdas",
  ]),
  Quiz(453, "What is 'map (\$ 3) [(+1), (*2)]'?", [
    "[4, 6]",
    "[3, 3]",
    "10",
    "Error",
  ]),

  // --- Higher-Order Logic & Practical Projects ---
  Quiz(454, "In the 'TMK' project, which function helps display all student names?", [
    "map",
    "filter",
    "foldl",
    "sort",
  ]),
  Quiz(455, "How do you filter students whose age is above 18?", [
    "filter (\\s -> age s > 18) students",
    "map (>18) students",
    "students where age > 18",
    "if age > 18 then students",
  ]),
  Quiz(456, "Which function would you use to calculate the average grade of all students?", [
    "foldl (to sum) followed by division by length",
    "filter",
    "map",
    "sortBy",
  ]),
  Quiz(457, "What is the primary benefit of Point-free style?", [
    "It focuses on the transformation of data rather than the variables themselves",
    "It makes the program run faster",
    "It reduces memory usage",
    "It is required by VS Code",
  ]),

  // --- Miscellaneous & Advanced Module 5 ---
  Quiz(458, "What does the function 'id' do?", [
    "Returns its argument unchanged (Identity function)",
    "Returns the type of a variable",
    "Increments a number",
    "Deletes a variable",
  ]),
  Quiz(459, "What does the function 'const' do?", [
    "Returns its first argument and ignores its second",
    "Creates a global constant",
    "Defines a new type",
    "Returns an error",
  ]),
  Quiz(460, "What is 'map (const 1) [1..10]'?", [
    "A list of ten 1s",
    "[1..10]",
    "1",
    "Error",
  ]),
  Quiz(461, "What is 'curry' (the function)?", [
    "A function that takes a function on a tuple and makes it curried",
    "A way to add curry to food",
    "An error handler",
    "A loop",
  ]),
  Quiz(462, "What is 'uncurry'?", [
    "A function that takes a curried function and makes it take a tuple",
    "A way to reverse a list",
    "An identity function",
    "Error",
  ]),
  Quiz(463, "What is 'uncurry (+) (5, 10)'?", [
    "15",
    "510",
    "Error",
    "(5, 10)",
  ]),
  Quiz(464, "Which function converts a list of strings into one string with newlines?", [
    "unlines",
    "unwords",
    "concat",
    "show",
  ]),
  Quiz(465, "What is 'intercalate \", \" [\"Sai\", \"Mao\"]'?", [
    "\"Sai, Mao\"",
    "\"SaiMao\"",
    "[\"Sai\", \"Mao\"]",
    "Error",
  ]),
  Quiz(466, "What is the result of 'maximum . map length \$ [\"A\", \"BC\"]'?", [
    "2",
    "1",
    "3",
    "Error",
  ]),
  Quiz(467, "Is Haskell a 'Strict' or 'Non-Strict' language?", [
    "Non-Strict (Lazy)",
    "Strict",
    "Both",
    "Neither",
  ]),
  Quiz(468, "Why does 'head \$ map (*2) [1..]' work in Haskell?", [
    "Because map is lazy and only evaluates what is needed by head",
    "Because [1..] is actually finite",
    "Because head is a loop",
    "It doesn't work; it crashes",
  ]),
  Quiz(469, "What is 'foldr (+) 0 (take 5 [1..])'?", [
    "15",
    "10",
    "Infinite",
    "Error",
  ]),
  Quiz(470, "What is '(\\x -> x * x) . (\\x -> x + 1) \$ 2'?", [
    "9 (3 * 3)",
    "5 (2 * 2 + 1)",
    "Error",
    "4",
  ]),
  Quiz(471, "Which higher-order function is the 'inverse' of zip?", [
    "unzip",
    "unpair",
    "reverse",
    "split",
  ]),
  Quiz(472, "What is 'unzip [(1, 'a'), (2, 'b')]'?", [
    "([1, 2], ['a', 'b'])",
    "[(1, 2), ('a', 'b')]",
    "([1, 'a'], [2, 'b'])",
    "Error",
  ]),
  Quiz(473, "What is the goal of learning Module 5?", [
    "To learn how to process data structures elegantly using reusable functions",
    "To learn how to use a keyboard",
    "To learn how to install Linux",
    "To master printing 'Hello World'",
  ]),
  Quiz(474, "Is 'filter' a recursive function internally?", [
    "Yes",
    "No",
    "Only for numbers",
    "Only in Module 1",
  ]),
  Quiz(475, "What is '(\\) 5 2'?", [
    "Wait, \\ is for lambdas, but as an operator it doesn't exist. This is a trick question.",
    "3",
    "2.5",
    "Error",
  ]),
];
final List<Quiz> haskellQuizM6 = [
  // --- Topic 43: Defining Your Own Typeclasses (class) ---
  Quiz(476, "What is the purpose of the 'class' keyword in Haskell?", [
    "To define a new typeclass (a set of function signatures types must implement)",
    "To define a new data structure",
    "To create an object-oriented class",
    "To start a loop",
  ]),
  Quiz(477, "In 'class YesNo a where', what is 'a'?", [
    "A type variable representing any type that will implement the class",
    "A constant value",
    "A function name",
    "A list of characters",
  ]),
  Quiz(478, "Can a typeclass definition include default implementations for functions?", [
    "Yes, if a type doesn't provide its own version, the default is used",
    "No, it only contains signatures",
    "Only for numeric types",
    "Only in Module 9",
  ]),
  Quiz(479, "Which of these is a correctly started typeclass definition?", [
    "class Printable a where",
    "data Printable a = Printable a",
    "type Printable = String",
    "class Printable(a) { }",
  ]),

  // --- Topic 44: Making Instances (instance) ---
  Quiz(480, "What is the purpose of the 'instance' keyword?", [
    "To provide a specific implementation of a typeclass for a particular type",
    "To create a new variable",
    "To define a generic template",
    "To import a module",
  ]),
  Quiz(481, "In 'instance Eq TrafficLight where', what are we providing?", [
    "The definitions for == and /= specifically for TrafficLight",
    "A new data type",
    "A way to print TrafficLight",
    "A math operation",
  ]),
  Quiz(482, "What happens if you define an instance but forget to implement a required function?", [
    "The compiler will give a warning or error (depending on default implementations)",
    "It works normally",
    "It returns 0",
    "The program crashes at runtime",
  ]),
  Quiz(483, "Can you make a 'Maybe a' an instance of a typeclass?", [
    "Yes, but you usually need a constraint on 'a' (e.g., instance Eq a => Eq (Maybe a))",
    "No, only concrete types",
    "Only if 'a' is an Int",
    "Only in GHCi",
  ]),

  // --- Topic 45: Subclassing and Constraints ---
  Quiz(484, "What is a 'Subclass' in Haskell typeclasses?", [
    "A typeclass that requires another typeclass to be implemented first (e.g., Ord requires Eq)",
    "A data type inside another data type",
    "A private function",
    "A folder in the project",
  ]),
  Quiz(485, "Which syntax indicates that 'Ord' is a subclass of 'Eq'?", [
    "class (Eq a) => Ord a where",
    "class Ord a : Eq a where",
    "class Eq a -> Ord a where",
    "instance Eq a => Ord a",
  ]),
  Quiz(486, "Why is subclassing useful?", [
    "It allows us to assume certain behaviors are already present (like equality) before adding new ones (like ordering)",
    "It makes the code shorter",
    "It is required for IO",
    "It prevents errors",
  ]),

  // --- Topic 46: Parametric vs Ad-hoc Polymorphism ---
  Quiz(487, "What is 'Ad-hoc Polymorphism'?", [
    "Polymorphism where behavior changes based on the type (using typeclasses)",
    "Polymorphism where behavior is the same for all types",
    "A random function",
    "An error in the type system",
  ]),
  Quiz(488, "What is 'Parametric Polymorphism'?", [
    "Polymorphism where behavior is identical regardless of the type (e.g., length [a])",
    "A function with parameters",
    "Using numbers as types",
    "Only for lists",
  ]),
  Quiz(489, "Which function is an example of Ad-hoc Polymorphism?", [
    "==",
    "head",
    "reverse",
    "id",
  ]),
  Quiz(490, "Which function is an example of Parametric Polymorphism?", [
    "fst",
    "sum",
    "show",
    "abs",
  ]),

  // --- Topic 47: Functors (fmap) ---
  Quiz(491, "What is a 'Functor'?", [
    "A type that can be mapped over (a data structure that acts as a container/wrapper)",
    "A math function",
    "A type of list",
    "A global variable",
  ]),
  Quiz(492, "Which function is defined by the 'Functor' typeclass?", [
    "fmap",
    "map",
    "apply",
    "fold",
  ]),
  Quiz(493, "What is the infix operator for 'fmap'?", [
    "<\$>",
    "<*>",
    ">>=",
    ".",
  ]),
  Quiz(494, "What is 'fmap (+1) (Just 5)'?", [
    "Just 6",
    "6",
    "Nothing",
    "Error",
  ]),
  Quiz(495, "What is 'fmap (+1) Nothing'?", [
    "Nothing",
    "Just 1",
    "0",
    "Error",
  ]),
  Quiz(496, "Is a List a Functor?", [
    "Yes, fmap for lists is exactly the same as the map function",
    "No, only Maybe is a Functor",
    "Only if it contains numbers",
    "Only in Module 1",
  ]),
  Quiz(497, "What is the type signature of fmap?", [
    "(a -> b) -> f a -> f b",
    "a -> b -> f a",
    "f a -> f b",
    "(f a -> f b) -> a",
  ]),
  Quiz(498, "Functors must obey the Identity law. What is it?", [
    "fmap id == id",
    "fmap f == f",
    "fmap x == x",
    "id == Nothing",
  ]),

  // --- Topic 48: Applicative Functors ---
  Quiz(499, "What is an 'Applicative Functor'?", [
    "A functor that allows functions within a context to be applied to values in a context",
    "A faster version of a Functor",
    "A loop for lists",
    "A type of record",
  ]),
  Quiz(500, "Which operator is the core of Applicative application?", [
    "<*>",
    "<\$>",
    ">>=",
    "++",
  ]),
  Quiz(501, "What is the purpose of the 'pure' function in Applicative?", [
    "To take a normal value and put it into a default minimal context (like Just x)",
    "To delete side effects",
    "To convert types",
    "To stop recursion",
  ]),
  Quiz(502, "What is 'pure 5 :: Maybe Int'?", [
    "Just 5",
    "5",
    "Nothing",
    "Error",
  ]),
  Quiz(503, "What is 'Just (+1) <*> Just 5'?", [
    "Just 6",
    "6",
    "Just (+15)",
    "Error",
  ]),
  Quiz(504, "What is 'Just (+1) <*> Nothing'?", [
    "Nothing",
    "Just 1",
    "Error",
    "Just (+1)",
  ]),
  Quiz(505, "What is '[(*2), (+10)] <*> [1, 2]'?", [
    "[2, 4, 11, 12]",
    "[2, 12]",
    "24",
    "Error",
  ]),
  Quiz(506, "What is 'pure (+) <*> Just 3 <*> Just 2'?", [
    "Just 5",
    "5",
    "Error",
    "Nothing",
  ]),

  // --- Topic 49: Monoids ---
  Quiz(507, "What is a 'Monoid'?", [
    "A type with a binary associative operation and an identity element",
    "A type with only one value",
    "A type of recursive function",
    "A global setting",
  ]),
  Quiz(508, "Which function represents the identity element in a Monoid?", [
    "mempty",
    "mzero",
    "id",
    "empty",
  ]),
  Quiz(509, "Which function represents the associative operation in a Monoid?", [
    "mappend (or <>) ",
    "++",
    "+",
    "combine",
  ]),
  Quiz(510, "What is 'mempty' for the List monoid?", [
    "[]",
    "\"\"",
    "0",
    "Nothing",
  ]),
  Quiz(511, "What is '\"Hello\" <> \" \" <> \"World\"'?", [
    "\"Hello World\"",
    "\"HelloWorld\"",
    "Error",
    "[\"Hello\", \"World\"]",
  ]),
  Quiz(512, "For the 'Sum' monoid, what is mempty?", [
    "0",
    "1",
    "[]",
    "Nothing",
  ]),
  Quiz(513, "For the 'Product' monoid, what is mempty?", [
    "1",
    "0",
    "Error",
    "[]",
  ]),
  Quiz(514, "What does 'Associativity' mean for Monoids?", [
    "(a <> b) <> c == a <> (b <> c)",
    "a <> b == b <> a",
    "a <> mempty == a",
    "mempty <> a == a",
  ]),

  // --- Topic 50: Introduction to Monads ---
  Quiz(515, "What is the 'Monad' typeclass primarily used for?", [
    "Handling computations within a context (like failure, state, or IO) sequentially",
    "Sorting lists faster",
    "Defining new data types",
    "Printing to console",
  ]),
  Quiz(516, "Which operator is known as the 'Bind' operator in Monads?", [
    ">>=",
    "<\$>",
    "<*>",
    "->",
  ]),
  Quiz(517, "What is the purpose of 'return' (or 'pure') in a Monad?", [
    "To wrap a value into the monadic context",
    "To exit a function early",
    "To print a result",
    "To stop a loop",
  ]),
  Quiz(518, "The 'do' notation is syntactic sugar for which Monad operator?", [
    ">>=",
    "<\$>",
    "<>",
    "++",
  ]),
  Quiz(519, "What is the type signature of the bind operator (>>=)?", [
    "m a -> (a -> m b) -> m b",
    "(a -> b) -> m a -> m b",
    "m a -> m b -> m c",
    "a -> m a",
  ]),
  Quiz(520, "What is 'Just 5 >>= (\\x -> return (x + 1))'?", [
    "Just 6",
    "6",
    "Nothing",
    "Error",
  ]),
  Quiz(521, "What is 'Nothing >>= (\\x -> return (x + 1))'?", [
    "Nothing",
    "Just 1",
    "0",
    "Error",
  ]),

  // --- Deepening Module 6 ---
  Quiz(522, "Which typeclass is a prerequisite for Applicative?", [
    "Functor",
    "Monad",
    "Eq",
    "Show",
  ]),
  Quiz(523, "Which typeclass is a prerequisite for Monad?", [
    "Applicative",
    "Functor",
    "Ord",
    "Num",
  ]),
  Quiz(524, "What is 'mconcat'?", [
    "A function that collapses a list of monoid values into a single value using <>",
    "A way to concat strings only",
    "A type of monad",
    "A syntax error",
  ]),
  Quiz(525, "What is 'mconcat [\"A\", \"B\", \"C\"]'?", [
    "\"ABC\"",
    "[\"A\", \"B\", \"C\"]",
    "Error",
    "3",
  ]),
  Quiz(526, "Is 'Maybe' a Monoid?", [
    "Yes, if the internal type 'a' is also a Monoid",
    "No, never",
    "Only if it contains Ints",
    "Only in Module 6",
  ]),
  Quiz(527, "Which function in 'Data.Monoid' allows you to use numbers with multiplication as a monoid?", [
    "Product",
    "Sum",
    "Mult",
    "Any",
  ]),
  Quiz(528, "What is 'getSum \$ Sum 5 <> Sum 10'?", [
    "15",
    "50",
    "5",
    "Error",
  ]),
  Quiz(529, "What is 'getProduct \$ Product 5 <> Product 10'?", [
    "50",
    "15",
    "5",
    "Error",
  ]),
  Quiz(530, "The 'Any' monoid is for which logical operation?", [
    "OR (||)",
    "AND (&&)",
    "NOT (!)",
    "XOR",
  ]),
  Quiz(531, "The 'All' monoid is for which logical operation?", [
    "AND (&&)",
    "OR (||)",
    "NOT (!)",
    "IMPLY",
  ]),

  // --- Functor/Applicative Practical Logic ---
  Quiz(532, "What is the 'f' in 'Functor f'?", [
    "A type constructor that takes one type argument (like Maybe or [])",
    "A function",
    "A number",
    "A file",
  ]),
  Quiz(533, "Which operator is 'fmap' with the arguments flipped?", [
    "<&>",
    "<*>",
    ">>=",
    "!!",
  ]),
  Quiz(534, "What is '(+1) <\$> [1, 2, 3]'?", [
    "[2, 3, 4]",
    "6",
    "[1, 2, 3]",
    "Error",
  ]),
  Quiz(535, "What is '(*) <\$> Just 5 <*> Just 2'?", [
    "Just 10",
    "10",
    "Nothing",
    "Error",
  ]),
  Quiz(536, "In 'pure f <*> x', this is equivalent to what?", [
    "fmap f x (or f <\$> x)",
    "x <*> f",
    "f x",
    "Error",
  ]),
  Quiz(537, "What is 'liftA2'?", [
    "A function that takes a normal function of two arguments and applies it to two applicative values",
    "A way to lift weights",
    "A Monad operator",
    "A list comprehension",
  ]),
  Quiz(538, "What is 'liftA2 (+) (Just 5) (Just 10)'?", [
    "Just 15",
    "15",
    "Nothing",
    "Error",
  ]),
  Quiz(539, "What is '(*2) <\$> (Just 5)'?", [
    "Just 10",
    "10",
    "Nothing",
    "Error",
  ]),

  // --- Typeclass Instances and Rules ---
  Quiz(540, "Can you define an instance for a type you didn't create and a class you didn't create in the same file?", [
    "No, this is called an 'Orphan Instance' and is generally discouraged",
    "Yes, it is common",
    "Only for numeric types",
    "Only in GHCi",
  ]),
  Quiz(541, "What is the 'Default' implementation for 'Eq' if you define '/='?", [
    "x == y = not (x /= y)",
    "It has no default",
    "x == y = True",
    "It crashes",
  ]),
  Quiz(542, "How do you check if a type is an instance of a class in GHCi?", [
    ":i ClassName (or :info)",
    ":t ClassName",
    ":k ClassName",
    ":show",
  ]),
  Quiz(543, "Which typeclass handles 'failure' by having an empty value and a choice operation?", [
    "Alternative",
    "Functor",
    "Monad",
    "Eq",
  ]),
  Quiz(544, "What is 'Just 5 <|> Just 10'?", [
    "Just 5 (takes the first success)",
    "Just 10",
    "Just 15",
    "Nothing",
  ]),
  Quiz(545, "What is 'Nothing <|> Just 10'?", [
    "Just 10",
    "Nothing",
    "0",
    "Error",
  ]),

  // --- Monad and Sequential Logic ---
  Quiz(546, "What is the primary power of '>>='?", [
    "It feeds a wrapped value into a function that returns a wrapped value, allowing chaining",
    "It multiplies two lists",
    "It converts types",
    "It skips error handling",
  ]),
  Quiz(547, "What is the 'Anonymous Bind' operator (>>) used for?", [
    "Chaining monadic actions while ignoring the result of the first one",
    "Printing to console",
    "Comparing two monads",
    "Adding numbers",
  ]),
  Quiz(548, "What is 'putStrLn \"A\" >> putStrLn \"B\"'?", [
    "Prints A then B",
    "Prints B only",
    "Prints AB",
    "Error",
  ]),
  Quiz(549, "Does the order of lines in a 'do' block matter?", [
    "Yes, actions are executed sequentially from top to bottom",
    "No, it's functional",
    "Only if you use IO",
    "Only in Module 1",
  ]),
  Quiz(550, "What is 'fail' in a Monad?", [
    "A function used to handle pattern match failures in do-notation",
    "A way to crash the program",
    "A boolean value",
    "A type constructor",
  ]),

  // --- Monoid and Folding ---
  Quiz(551, "Which function in 'Data.Foldable' uses Monoids to reduce a structure?", [
    "fold",
    "sum",
    "any",
    "filter",
  ]),
  Quiz(552, "What is 'fold [\"A\", \"B\", \"C\"]' (using the string monoid)?", [
    "\"ABC\"",
    "[\"A\", \"B\", \"C\"]",
    "Error",
    "3",
  ]),
  Quiz(553, "Which module provides the 'First' and 'Last' monoids for Maybe?", [
    "Data.Monoid",
    "Data.List",
    "System.IO",
    "Control.Monad",
  ]),
  Quiz(554, "What is 'getFirst \$ First (Just 5) <> First (Just 10)'?", [
    "5",
    "10",
    "15",
    "Error",
  ]),
  Quiz(555, "What is 'getLast \$ Last (Just 5) <> Last (Just 10)'?", [
    "10",
    "5",
    "15",
    "Error",
  ]),

  // --- Hierarchy Knowledge ---
  Quiz(556, "What is the correct hierarchy from bottom to top?", [
    "Monad -> Applicative -> Functor",
    "Functor -> Applicative -> Monad",
    "Eq -> Ord -> Num",
    "Show -> Read -> Eq",
  ]),
  Quiz(557, "If a type is a Monad, must it also be an Applicative?", [
    "Yes, by definition",
    "No",
    "Only if it's IO",
    "Only in Module 8",
  ]),
  Quiz(558, "If a type is a Functor, must it also be a Monad?", [
    "No",
    "Yes",
    "Only for lists",
    "Only for Maybe",
  ]),

  // --- Miscellaneous Module 6 ---
  Quiz(559, "What is the result of 'fmap (*2) [1, 2]'?", [
    "[2, 4]",
    "6",
    "[1, 2]",
    "Error",
  ]),
  Quiz(560, "What is 'pure 10 :: [Int]'?", [
    "[10]",
    "10",
    "[]",
    "Error",
  ]),
  Quiz(561, "What is '[(+1), (*2)] <*> [10]'?", [
    "[11, 20]",
    "[10]",
    "21",
    "Error",
  ]),
  Quiz(562, "Which typeclass is used for types that can be converted to and from a String?", [
    "Show and Read",
    "Eq and Ord",
    "Functor",
    "Monoid",
  ]),
  Quiz(563, "Which operator is 'fmap'?", [
    "<\$>",
    "<*>",
    "<>",
    ">>=",
  ]),
  Quiz(564, "Which operator is 'mappend'?", [
    "<>",
    "++",
    "+",
    "."
  ]),
  Quiz(565, "What is 'mempty' for 'All'?", [
    "All True",
    "All False",
    "Nothing",
    "[]",
  ]),
  Quiz(566, "What is 'mempty' for 'Any'?", [
    "Any False",
    "Any True",
    "Nothing",
    "[]",
  ]),
  Quiz(567, "What is 'fmap length (Just \"Sai\")'?", [
    "Just 3",
    "3",
    "Nothing",
    "Error",
  ]),
  Quiz(568, "What is 'fmap length Nothing'?", [
    "Nothing",
    "Just 0",
    "Error",
    "0",
  ]),
  Quiz(569, "What is 'return 5 >>= (\\x -> return (x * 2))' in the Maybe monad?", [
    "Just 10",
    "10",
    "Nothing",
    "Error",
  ]),
  Quiz(570, "What is the 'Law of Identity' for Monads?", [
    "return x >>= f == f x",
    "m >>= return == m",
    "Both are Monad Laws",
    "Neither are Monad Laws",
  ]),
  Quiz(571, "What is the result of 'Sum 1 <> Sum 2 <> Sum 3'?", [
    "Sum {getSum = 6}",
    "Sum 123",
    "Error",
    "6",
  ]),
  Quiz(572, "Which function extracts the value from a 'Sum' wrapper?", [
    "getSum",
    "sum",
    "val",
    "extract",
  ]),
  Quiz(573, "Which function extracts the value from a 'Product' wrapper?", [
    "getProduct",
    "product",
    "val",
    "extract",
  ]),
  Quiz(574, "Is 'IO' a Monad?", [
    "Yes, it is the most famous Monad in Haskell",
    "No, it is a primitive",
    "Only in Module 9",
    "Only for main",
  ]),
  Quiz(575, "What is the goal of Module 6?", [
    "To understand abstraction layers like Functors and Monads for writing generic, powerful code",
    "To learn how to use Windows",
    "To write a web server",
    "To learn math",
  ]),
];
final List<Quiz> haskellQuizM7 = [
  // --- Topic 51: The Functor Laws (Identity and Composition) ---
  Quiz(576, "What is the 'Identity Law' for Functors?", [
    "fmap id == id",
    "fmap f == f",
    "fmap x == x",
    "fmap id == Nothing",
  ]),
  Quiz(577, "What does the Functor Identity Law ensure?", [
    "Mapping the identity function over a container shouldn't change the container at all",
    "The container must contain at least one element",
    "The function must be a number",
    "The program runs faster",
  ]),
  Quiz(578, "What is the 'Composition Law' for Functors?", [
    "fmap (f . g) == fmap f . fmap g",
    "fmap f . g == fmap g . f",
    "fmap f + fmap g == fmap (f + g)",
    "fmap f == fmap g",
  ]),
  Quiz(579, "Why are Functor laws important?", [
    "They guarantee that 'fmap' only transforms the values inside and doesn't change the structure of the container",
    "They are required for VS Code to work",
    "They make the code shorter",
    "They allow for infinite lists",
  ]),
  Quiz(580, "If a type 'f' breaks the Functor laws, can it officially be a Functor?", [
    "No, it is technically not a valid Functor even if it compiles",
    "Yes, laws are just suggestions",
    "Only if it's a List",
    "Only in GHCi",
  ]),

  // --- Topic 52: Applicative Laws ---
  Quiz(581, "What is the 'Identity Law' for Applicatives?", [
    "pure id <*> v == v",
    "pure v <*> id == v",
    "v <*> pure id == id",
    "pure id == id",
  ]),
  Quiz(582, "What is the 'Homomorphism Law'?", [
    "pure f <*> pure x == pure (f x)",
    "pure f == f",
    "f <*> x == x <*> f",
    "pure (f x) == f x",
  ]),
  Quiz(583, "What does the Homomorphism Law mean?", [
    "Applying a 'pure' function to a 'pure' value is the same as applying the function normally then wrapping the result",
    "Functions must be pure",
    "Types must be the same",
    "Recursion is required",
  ]),
  Quiz(584, "What is the 'Interchange Law'?", [
    "u <*> pure y == pure (\$ y) <*> u",
    "u <*> v == v <*> u",
    "pure x <*> y == y",
    "Error",
  ]),
  Quiz(585, "What is the primary purpose of Applicative Laws?", [
    "To ensure that the 'context' (like Just or []) behaves predictably and consistently",
    "To make the compiler faster",
    "To handle IO errors",
    "To allow for loops",
  ]),

  // --- Topic 53: fmap with Multiple Arguments ---
  Quiz(586, "What is the result of 'fmap (+) (Just 5)'?", [
    "Just ((+5)) (A function wrapped in a Maybe)",
    "Just 5",
    "10",
    "Error",
  ]),
  Quiz(587, "How do you apply a wrapped function 'Just (+5)' to another wrapped value 'Just 10'?", [
    "Using the applicative operator: Just (+5) <*> Just 10",
    "Using fmap: fmap (+5) (Just 10)",
    "Using the + operator directly",
    "Using a loop",
  ]),
  Quiz(588, "What is the result of '(+) <\$> Just 5 <*> Just 10'?", [
    "Just 15",
    "15",
    "Nothing",
    "Error",
  ]),
  Quiz(589, "The pattern 'f <\$> x <*> y' is equivalent to what?", [
    "Applying a normal function 'f' to two wrapped values 'x' and 'y'",
    "A nested if-else statement",
    "A list comprehension",
    "A syntax error",
  ]),
  Quiz(590, "What is the type of '(*) <\$> [1, 2] <*> [3, 4]'?", [
    "[Int]",
    "Int",
    "[[Int]]",
    "Error",
  ]),

  // --- Topic 54: liftA2 and sequenceA ---
  Quiz(591, "What does 'liftA2' do?", [
    "Combines two applicative values using a binary function",
    "Lifts a function to the third power",
    "Converts a list to a tuple",
    "Prints two strings",
  ]),
  Quiz(592, "What is 'liftA2 (+) (Just 5) (Just 10)'?", [
    "Just 15",
    "15",
    "Nothing",
    "Error",
  ]),
  Quiz(593, "What does 'sequenceA' do?", [
    "Transforms a list of applicative values into an applicative value containing a list",
    "Runs functions one by one",
    "Sorts a list of Maybes",
    "Deletes Nothing values",
  ]),
  Quiz(594, "What is 'sequenceA [Just 1, Just 2, Just 3]'?", [
    "Just [1, 2, 3]",
    "[1, 2, 3]",
    "Just 1",
    "Nothing",
  ]),
  Quiz(595, "What is 'sequenceA [Just 1, Nothing, Just 3]'?", [
    "Nothing",
    "Just [1, 3]",
    "Error",
    "[Nothing]",
  ]),
  Quiz(596, "What happens when you 'sequenceA' a list of lists: sequenceA [[1,2], [3,4]]?", [
    "It creates a Cartesian product: [[1,3],[1,4],[2,3],[2,4]]",
    "[[1,2,3,4]]",
    "[1,2,3,4]",
    "Error",
  ]),

  // --- Topic 55: IO as a Functor ---
  Quiz(597, "Can you use 'fmap' on an IO action?", [
    "Yes, it transforms the result of the IO action when it is executed",
    "No, IO is too complex",
    "Only for printing",
    "Only in Module 9",
  ]),
  Quiz(598, "What is 'fmap reverse getLine'?", [
    "An IO action that, when run, reads a line and returns it reversed",
    "A reversed string",
    "An error",
    "A way to delete input",
  ]),
  Quiz(599, "What is the type of 'fmap length getLine'?", [
    "IO Int",
    "Int",
    "IO String",
    "String",
  ]),
  Quiz(600, "Why is IO a Functor?", [
    "Because it is a container/wrapper for a value that will exist in the future",
    "Because it uses math",
    "Because GHC says so",
    "It isn't a Functor",
  ]),

  // --- Topic 56: Applicative IO ---
  Quiz(601, "What does '(++) <\$> getLine <*> getLine' do?", [
    "Reads two lines and concatenates them into one IO result",
    "Reads one line twice",
    "Prints two lines",
    "Error",
  ]),
  Quiz(602, "In Applicative IO, do the actions wait for each other?", [
    "Technically they run sequentially in the standard instance, but the syntax looks parallel",
    "Yes, always",
    "No, they run at the same time",
    "Only on Linux",
  ]),
  Quiz(603, "What is the result type of 'pure 5' in an IO context?", [
    "IO Int",
    "Int",
    "5",
    "Maybe Int",
  ]),

  // --- Topic 57: ZipLists ---
  Quiz(604, "What is a 'ZipList'?", [
    "A different Applicative instance for lists that zips elements instead of doing a Cartesian product",
    "A fast list",
    "A list of tuples",
    "A way to compress files",
  ]),
  Quiz(605, "By default, what does '[(*2), (+10)] <*> [1, 2]' do?", [
    "Cartesian product: [2, 4, 11, 12]",
    "Zipping: [2, 12]",
    "Error",
    "24",
  ]),
  Quiz(606, "What does 'getZipList \$ ZipList [(*2), (+10)] <*> ZipList [1, 2]' produce?", [
    "[2, 12]",
    "[2, 4, 11, 12]",
    "Error",
    "14",
  ]),
  Quiz(607, "Why do we need the 'ZipList' wrapper?", [
    "Because a type can only have one default instance for a typeclass (List already uses Cartesian product)",
    "To make it slower",
    "To handle IO",
    "To use numbers",
  ]),
  Quiz(608, "What module do you need to import for ZipList?", [
    "Control.Applicative",
    "Data.List",
    "System.IO",
    "Control.Monad",
  ]),

  // --- Topic 58: From Applicative to Monad ---
  Quiz(609, "What is the main limitation of Applicatives compared to Monads?", [
    "Applicatives cannot use the result of one action to decide what the next action should be",
    "Applicatives are slower",
    "Applicatives don't work with IO",
    "Applicatives only work for numbers",
  ]),
  Quiz(610, "In which situation would you NEED a Monad instead of an Applicative?", [
    "When the next step in a calculation depends on the value of the previous step",
    "When you want to add two numbers",
    "When you want to map a function",
    "When you are using a list",
  ]),
  Quiz(611, "Which operator signifies the 'Big Jump' into Monads?", [
    ">>=",
    "<*>",
    "<\$>",
    "++",
  ]),
  Quiz(612, "Is every Monad also an Applicative?", [
    "Yes",
    "No",
    "Only for lists",
    "Only in Module 8",
  ]),

  // --- Deepening Module 7 ---
  Quiz(613, "What is 'fmap id' for [1, 2, 3]?", [
    "[1, 2, 3]",
    "id",
    "6",
    "Error",
  ]),
  Quiz(614, "If 'fmap f (fmap g x)' is executed, what is it equivalent to by law?", [
    "fmap (f . g) x",
    "fmap (g . f) x",
    "fmap f x . fmap g x",
    "Error",
  ]),
  Quiz(615, "What does 'pure f <*> x' represent in the context of Applicative laws?", [
    "The Identity law (if f is id)",
    "The Homomorphism law",
    "The Interchange law",
    "The Composition law",
  ]),
  Quiz(616, "What is the result of 'liftA2 (,) [1, 2] ['a', 'b']'?", [
    "[(1,'a'), (1,'b'), (2,'a'), (2,'b')]",
    "[(1,'a'), (2,'b')]",
    "Error",
    "([1,2], ['a','b'])",
  ]),
  Quiz(617, "What is the result of 'sequenceA [ [1,2], [3] ]'?", [
    "[[1,3], [2,3]]",
    "[[1,2,3]]",
    "[1,2,3]",
    "Error",
  ]),
  Quiz(618, "Which function from 'Control.Applicative' is like a boolean choice between two applicatives?", [
    "<|>",
    "<*>",
    "<\$>",
    "**",
  ]),
  Quiz(619, "What is 'empty <|> Just 5' in the Alternative typeclass?", [
    "Just 5",
    "Nothing",
    "Error",
    "5",
  ]),
  Quiz(620, "What is 'ZipList (repeat 1) <*> ZipList [1, 2, 3]'?", [
    "ZipList [1, 2, 3]",
    "ZipList [1, 1, 1]",
    "Error",
    "ZipList [2, 3, 4]",
  ]),
  Quiz(621, "How do you extract a list from a 'ZipList' wrapper?", [
    "getZipList",
    "toList",
    "show",
    "runZip",
  ]),
  Quiz(622, "What is '(*) <\$> Just 2 <*> Just 3'?", [
    "Just 6",
    "6",
    "Nothing",
    "Error",
  ]),
  Quiz(623, "What is the type of 'pure'?", [
    "a -> f a",
    "f a -> a",
    "a -> b",
    "f a -> f b",
  ]),
  Quiz(624, "Does 'fmap' change the size of a list?", [
    "No, it always returns a list of the same length",
    "Yes, it can",
    "Only if the function returns Nothing",
    "Only in Module 1",
  ]),
  Quiz(625, "Can you use 'fmap' on a tuple?", [
    "Yes, it maps over the second element (the 'b' in (a, b))",
    "No, only lists",
    "Yes, it maps over both",
    "Only if they are Ints",
  ]),
  Quiz(626, "What is 'fmap (+1) (5, 10)'?", [
    "(5, 11)",
    "(6, 11)",
    "(6, 10)",
    "Error",
  ]),
  Quiz(627, "Is 'Either e' a Functor?", [
    "Yes, it maps over the Right value",
    "No",
    "Only if e is String",
    "Only for the Left value",
  ]),
  Quiz(628, "What is 'fmap (+1) (Left \"Error\")'?", [
    "Left \"Error\"",
    "Left \"Error1\"",
    "Right 1",
    "Error",
  ]),
  Quiz(629, "What is 'fmap (+1) (Right 10)'?", [
    "Right 11",
    "11",
    "Left \"Error\"",
    "Error",
  ]),
  Quiz(630, "The 'f' in 'fmap' stands for what?", [
    "Functor",
    "Function",
    "File",
    "First",
  ]),
  Quiz(631, "What is 'pure' for lists?", [
    "Wrapping a value in a single-element list: [x]",
    "An empty list []",
    "A loop",
    "Error",
  ]),
  Quiz(632, "What is 'sequenceA []' for any applicative?", [
    "pure []",
    "[]",
    "Nothing",
    "Error",
  ]),
  Quiz(633, "Which operator is used to discard the result of the second applicative action?", [
    "<*",
    "*>",
    "<*>",
    "<\$>",
  ]),
  Quiz(634, "Which operator is used to discard the result of the first applicative action?", [
    "*>",
    "<*",
    "<*>",
    "<\$>",
  ]),
  Quiz(635, "What is 'Just 1 *> Just 2'?", [
    "Just 2",
    "Just 1",
    "Just 3",
    "Nothing",
  ]),
  Quiz(636, "What is 'Just 1 <* Just 2'?", [
    "Just 1",
    "Just 2",
    "Just 3",
    "Nothing",
  ]),
  Quiz(637, "If any action in an applicative chain is 'Nothing', what is the result?", [
    "Nothing",
    "Just the remaining values",
    "Error",
    "0",
  ]),
  Quiz(638, "What is '(+) <\$> Just 5 <*> Nothing'?", [
    "Nothing",
    "Just 5",
    "Error",
    "0",
  ]),
  Quiz(639, "What is 'fmap (const 1) (Just 100)'?", [
    "Just 1",
    "1",
    "Nothing",
    "Error",
  ]),
  Quiz(640, "Which function is 'fmap (const x)'?", [
    "<\$",
    "\$>",
    "<\$>",
    "<*>",
  ]),
  Quiz(641, "What is '1 <\$ Just 100'?", [
    "Just 1",
    "Just 100",
    "1",
    "Error",
  ]),
  Quiz(642, "What is '1 <\$ [1, 2, 3]'?", [
    "[1, 1, 1]",
    "1",
    "[1, 2, 3]",
    "Error",
  ]),
  Quiz(643, "Does 'fmap' work on functions? ((->) r)?", [
    "Yes, it is equivalent to function composition (.)",
    "No",
    "Only for numbers",
    "Only in Module 5",
  ]),
  Quiz(644, "What is 'fmap (+1) (*2) 5'?", [
    "11 ( (5*2) + 1 )",
    "12 ( (5+1) * 2 )",
    "Error",
    "10",
  ]),
  Quiz(645, "Is 'Applicative' a subclass of 'Functor'?", [
    "Yes",
    "No",
    "Only for IO",
    "Only in Module 6",
  ]),
  Quiz(646, "What is 'pure' for the Maybe applicative?", [
    "Just",
    "Nothing",
    "id",
    "Error",
  ]),
  Quiz(647, "What is 'pure' for the IO applicative?", [
    "An action that does nothing and returns the value",
    "print",
    "getLine",
    "Error",
  ]),
  Quiz(648, "Which module provides 'liftA2'?", [
    "Control.Applicative",
    "Data.List",
    "System.IO",
    "Control.Monad",
  ]),
  Quiz(649, "Can 'fmap' change the type inside the Functor?", [
    "Yes, e.g., fmap show (Just 5) returns Just \"5\"",
    "No, it must stay the same type",
    "Only for lists",
    "Only if you use a lambda",
  ]),
  Quiz(650, "What is 'fmap' for the function type '((->) r)'?", [
    "(.)",
    "(+)",
    "(\$)",
    "Error",
  ]),
  Quiz(651, "Which law says: 'fmap id x == x'?", [
    "Functor Identity Law",
    "Applicative Identity Law",
    "Monad Identity Law",
    "Law of Nature",
  ]),
  Quiz(652, "What is 'fmap (\\x -> x)' equivalent to?", [
    "fmap id",
    "fmap length",
    "id",
    "Error",
  ]),
  Quiz(653, "How do you apply a function of 3 arguments to 3 Maybes?", [
    "f <\$> x <*> y <*> z",
    "f x y z",
    "liftA3 f x y z",
    "Both A and C are correct",
  ]),
  Quiz(654, "What is the result of 'liftA3 (,,) (Just 1) (Just 2) (Just 3)'?", [
    "Just (1, 2, 3)",
    "(1, 2, 3)",
    "Nothing",
    "Error",
  ]),
  Quiz(655, "What is 'sequenceA [Just \"Sai\", Just \"Mao\"]'?", [
    "Just [\"Sai\", \"Mao\"]",
    "[\"Sai\", \"Mao\"]",
    "Nothing",
    "Error",
  ]),
  Quiz(656, "What is 'sequenceA [Just 1, Nothing]'?", [
    "Nothing",
    "Just [1]",
    "Error",
    "[Nothing]",
  ]),
  Quiz(657, "Is 'Maybe' an instance of Alternative?", [
    "Yes",
    "No",
    "Only in Module 6",
    "Only for Strings",
  ]),
  Quiz(658, "What is 'Nothing <|> Nothing'?", [
    "Nothing",
    "Just Nothing",
    "Error",
    "[]",
  ]),
  Quiz(659, "What is 'Just 1 <|> Nothing'?", [
    "Just 1",
    "Nothing",
    "Error",
    "1",
  ]),
  Quiz(660, "What is 'fmap' on a Triple (a, b, c)?", [
    "Maps over the third element 'c'",
    "Maps over the first element 'a'",
    "Maps over all three",
    "Error",
  ]),
  Quiz(661, "What is 'fmap (+1) (1, 2, 3)'?", [
    "(1, 2, 4)",
    "(2, 3, 4)",
    "(2, 2, 3)",
    "Error",
  ]),
  Quiz(662, "The Functor law 'fmap (f . g) == fmap f . fmap g' prevents what?", [
    "The functor from re-organizing or changing its structure during mapping",
    "Infinite loops",
    "Typing errors",
    "Math errors",
  ]),
  Quiz(663, "Is 'Functor' used for error handling in 'Either'?", [
    "Yes, it maps over the success (Right) branch",
    "No",
    "Only for Left",
    "Only in GHCi",
  ]),
  Quiz(664, "What is 'show <\$> Just 5'?", [
    "Just \"5\"",
    "\"Just 5\"",
    "Error",
    "5",
  ]),
  Quiz(665, "What is 'pure 10 <*> [(*2), (+1)]'?", [
    "Error (pure value must be on the left of <*>, or use flipped operator)",
    "[20, 11]",
    "20",
    "11",
  ]),
  Quiz(666, "Which operator is 'apply' flipped?", [
    "<**>",
    "<*>",
    "<\$>",
    ">>=",
  ]),
  Quiz(667, "What is 'Just 10 <**> Just (+1)'?", [
    "Just 11",
    "11",
    "Nothing",
    "Error",
  ]),
  Quiz(668, "What is the return type of 'sequenceA' if the input is [IO a]?", [
    "IO [a]",
    "[a]",
    "IO a",
    "Error",
  ]),
  Quiz(669, "In 'f <\$> x <*> y', if 'f' takes 2 arguments, what is the type of 'f <\$> x'?", [
    "An applicative containing a function: f (a -> b)",
    "A value: f b",
    "A function: a -> b",
    "Error",
  ]),
  Quiz(670, "What is 'mempty' for ZipLists?", [
    "An infinite list of empty values (ZipList (repeat ...))",
    "ZipList []",
    "ZipList [0]",
    "Error",
  ]),
  Quiz(671, "What happens to the longer list in 'zipWith' or ZipList?", [
    "It is truncated to the length of the shorter list",
    "It causes an error",
    "It is padded with zeros",
    "It is ignored",
  ]),
  Quiz(672, "Is 'Functor' a concept from Category Theory?", [
    "Yes",
    "No",
    "Only in Haskell",
    "Only in Module 7",
  ]),
  Quiz(673, "What is 'fmap (+1) [1..3]'?", [
    "[2, 3, 4]",
    "6",
    "[1, 2, 3]",
    "Error",
  ]),
  Quiz(674, "What is 'pure' for the 'Either e' applicative?", [
    "Right",
    "Left",
    "id",
    "Error",
  ]),
  Quiz(675, "What is the final goal of Module 7?", [
    "To understand the rigorous laws and advanced patterns of Functors and Applicatives before moving to Monads",
    "To build a UI",
    "To write to a file",
    "To learn Python",
  ]),
];
final List<Quiz> haskellQuizM8 = [
  // --- Topic 59: The Monad Laws ---
  Quiz(676, "What is the 'Left Identity' law for Monads?", [
    "return x >>= f == f x",
    "m >>= return == m",
    "(m >>= f) >>= g == m >>= (\\x -> f x >>= g)",
    "return x == x"
  ]),
  Quiz(677, "What is the 'Right Identity' law for Monads?", [
    "m >>= return == m",
    "return x >>= f == f x",
    "m >>= f == f m",
    "return == id"
  ]),
  Quiz(678, "What is the 'Associativity' law for Monads?", [
    "(m >>= f) >>= g == m >>= (\\x -> f x >>= g)",
    "m >>= (f >>= g) == (m >>= f) >>= g",
    "f . g == g . f",
    "m1 >>= m2 == m2 >>= m1"
  ]),
  Quiz(679, "Why are Monad laws important?", [
    "They ensure that 'do' notation and chaining with '>>=' behave predictably",
    "They make the code run in parallel",
    "They are required for the IO type",
    "They allow for infinite lists"
  ]),
  Quiz(680, "Which operator is the 'Kleisli Composition' operator (>=>)?", [
    "A way to compose two functions that return monadic values",
    "A way to compare two monads",
    "A syntax for list comprehensions",
    "An error handler"
  ]),

  // --- Topic 60: The Maybe Monad ---
  Quiz(681, "In the 'Maybe' monad, what happens if a 'Nothing' value is encountered in a chain?", [
    "The entire chain immediately results in 'Nothing'",
    "The program crashes",
    "It skips to the next 'Just' value",
    "It returns 0"
  ]),
  Quiz(682, "What is 'Just 5 >>= (\\x -> return (x * 2))'?", [
    "Just 10",
    "10",
    "Nothing",
    "Error"
  ]),
  Quiz(683, "What is 'Nothing >>= (\\x -> return (x + 1))'?", [
    "Nothing",
    "Just 1",
    "0",
    "Error"
  ]),
  Quiz(684, "The 'Maybe' monad is best suited for representing what?", [
    "Computations that can fail without a specific error message",
    "Infinite loops",
    "Shared global state",
    "Parallel processing"
  ]),

  // --- Topic 61: The Either Monad ---
  Quiz(685, "What is the primary advantage of 'Either' over 'Maybe' for error handling?", [
    "It allows you to provide an error message or data in the 'Left' constructor",
    "It is faster than Maybe",
    "It only works with Strings",
    "It is a primitive type"
  ]),
  Quiz(686, "In 'Either String Int', which constructor typically represents success?", [
    "Right",
    "Left",
    "Just",
    "Return"
  ]),
  Quiz(687, "What is 'Right 10 >>= (\\x -> return (x + 5))'?", [
    "Right 15",
    "15",
    "Left \"Error\"",
    "Error"
  ]),
  Quiz(688, "What is 'Left \"Fail\" >>= (\\x -> return (x + 1))'?", [
    "Left \"Fail\"",
    "Right 1",
    "Nothing",
    "Error"
  ]),

  // --- Topic 62: The List Monad ---
  Quiz(689, "What concept does the 'List' monad represent?", [
    "Non-determinism (computations that can have multiple possible results)",
    "Sequential execution only",
    "Error handling",
    "Mutable state"
  ]),
  Quiz(690, "What is '[1, 2] >>= (\\x -> [x, -x])'?", [
    "[1, -1, 2, -2]",
    "[1, 2, -1, -2]",
    "[[1, -1], [2, -2]]",
    "Error"
  ]),
  Quiz(691, "How does the List monad relate to List Comprehensions?", [
    "List comprehensions are syntactic sugar for the List monad's bind and guard operations",
    "They are completely unrelated",
    "List comprehensions are faster",
    "Only for numeric lists"
  ]),
  Quiz(692, "What function from 'Control.Monad' acts like a filter within 'do' notation?", [
    "guard",
    "filter",
    "when",
    "unless"
  ]),

  // --- Topic 63: The Writer Monad ---
  Quiz(693, "What is the 'Writer' monad used for?", [
    "Attaching a log or side-accumulation to a computation (e.g., logging steps)",
    "Writing to a physical file on disk",
    "Managing user input",
    "Defining new types"
  ]),
  Quiz(694, "Which function is used to add a value to the log in a Writer monad?", [
    "tell",
    "write",
    "log",
    "add"
  ]),
  Quiz(695, "What type must the 'log' part of a Writer monad be?", [
    "A Monoid (so it can be combined using <>)",
    "A String",
    "A List",
    "An Integer"
  ]),
  Quiz(696, "Which function is used to run a Writer computation and get the result and log?", [
    "runWriter",
    "execWriter",
    "evalWriter",
    "print"
  ]),

  // --- Topic 64: The Reader Monad ---
  Quiz(697, "What is the 'Reader' monad used for?", [
    "Representing a computation that can read from a shared environment (Dependency Injection)",
    "Reading files from disk",
    "Reading user input from the keyboard",
    "Printing data"
  ]),
  Quiz(698, "Which function is used to retrieve the environment in a Reader monad?", [
    "ask",
    "get",
    "read",
    "fetch"
  ]),
  Quiz(699, "Which function allows you to run a computation with a modified environment?", [
    "local",
    "asks",
    "runReader",
    "update"
  ]),
  Quiz(700, "What is the type of 'runReader'?", [
    "Reader r a -> r -> a",
    "Reader r a -> a",
    "r -> a",
    "IO a"
  ]),

  // --- Topic 65: The State Monad ---
  Quiz(701, "What is the 'State' monad used for?", [
    "Modeling computations that have a 'mutable' state in a purely functional way",
    "Tracking the state of the US",
    "Handling IO failure",
    "Defining constants"
  ]),
  Quiz(702, "Which function is used to retrieve the current state?", [
    "get",
    "ask",
    "read",
    "fetch"
  ]),
  Quiz(703, "Which function is used to replace the current state with a new one?", [
    "put",
    "set",
    "write",
    "tell"
  ]),
  Quiz(704, "Which function applies a function to the current state to update it?", [
    "modify",
    "update",
    "change",
    "exec"
  ]),
  Quiz(705, "What does 'runState' return?", [
    "A pair (tuple) of the result and the final state",
    "Only the result",
    "Only the final state",
    "An IO action"
  ]),

  // --- Topic 66: Monad Transformers ---
  Quiz(706, "What is a 'Monad Transformer'?", [
    "A type that allows you to combine the features of multiple monads into one (e.g., State + Maybe)",
    "A way to convert a Monad to a Functor",
    "A tool for refactoring code",
    "A high-speed compiler plugin"
  ]),
  Quiz(707, "What is the naming convention for monad transformers (e.g., for 'Maybe')?", [
    "MaybeT",
    "TMaybe",
    "TransMaybe",
    "MaybeMonad"
  ]),
  Quiz(708, "Which function is used to 'lift' a computation from an inner monad to the transformer level?", [
    "lift",
    "wrap",
    "up",
    "return"
  ]),
  Quiz(709, "If you have 'MaybeT (State s) a', what is the outer monad?", [
    "MaybeT",
    "State",
    "Both",
    "Neither"
  ]),

  // --- Monad Deepening ---
  Quiz(710, "Which operator is 'bind' with the arguments flipped?", [
    "=<<",
    ">>=",
    "<\$>",
    "<*>"
  ]),
  Quiz(711, "What is 'fmap' in the context of Monads?", [
    "liftM",
    "bind",
    "return",
    "join"
  ]),
  Quiz(712, "What does the 'join' function do?", [
    "Flattens a nested monad (m (m a) -> m a)",
    "Joins two strings",
    "Concatenates two lists",
    "Exits a do block"
  ]),
  Quiz(713, "What is 'join [[1, 2], [3, 4]]' in the List monoid?", [
    "[1, 2, 3, 4]",
    "[[1, 2, 3, 4]]",
    "10",
    "Error"
  ]),
  Quiz(714, "What is the 'fish' operator (>=>) also known as?", [
    "Kleisli composition",
    "Monadic join",
    "Arrow application",
    "Pipe operator"
  ]),
  Quiz(715, "Is 'IO' a Monad?", [
    "Yes, it handles the state of the real world",
    "No",
    "Only for strings",
    "Only in Module 9"
  ]),
  Quiz(716, "What is 'm >>= f' equivalent to in terms of 'join' and 'fmap'?", [
    "join (fmap f m)",
    "fmap (join m) f",
    "return (f m)",
    "Error"
  ]),

  // --- Maybe and Either Logic ---
  Quiz(717, "What is the result of 'do { x <- Just 5; y <- Nothing; return (x+y) }'?", [
    "Nothing",
    "Just 5",
    "Error",
    "0"
  ]),
  Quiz(718, "Which function handles 'Either' by providing two functions for Left and Right?", [
    "either",
    "maybe",
    "case",
    "fold"
  ]),
  Quiz(719, "What is 'either (const 0) id (Right 5)'?", [
    "5",
    "0",
    "Right 5",
    "Error"
  ]),
  Quiz(720, "What is 'either length (const 0) (Left \"Hi\")'?", [
    "2",
    "0",
    "Error",
    "\"Hi\""
  ]),

  // --- List Monad and Non-determinism ---
  Quiz(721, "What is 'do { x <- [1,2]; y <- [10,20]; return (x+y) }'?", [
    "[11, 21, 12, 22]",
    "[11, 21]",
    "[12, 22]",
    "33"
  ]),
  Quiz(722, "How do you 'fail' a computation in the List monad to trigger filtering?", [
    "By returning an empty list []",
    "By using the error function",
    "By using Nothing",
    "By exiting the program"
  ]),
  Quiz(723, "What does 'guard (x > 5)' do in a list monad do-block?", [
    "If x <= 5, it returns [], effectively 'stopping' that branch of computation",
    "It throws an error",
    "It prints a warning",
    "It doubles the value of x"
  ]),

  // --- Writer, Reader, State (Side Effects) ---
  Quiz(724, "In 'Writer [String] Int', what does the [String] represent?", [
    "The log",
    "The result",
    "The state",
    "The error"
  ]),
  Quiz(725, "What is the result of 'execWriter (tell \"Hello\")'?", [
    "\"Hello\"",
    "()",
    "Error",
    "Nothing"
  ]),
  Quiz(726, "What is the result of 'evalWriter (tell \"Hello\" >> return 5)'?", [
    "5",
    "\"Hello\"",
    "(5, \"Hello\")",
    "()"
  ]),
  Quiz(727, "Can you change the environment 'r' in a Reader monad permanently?", [
    "No, it is read-only (though 'local' can change it for a sub-computation)",
    "Yes, using put",
    "Yes, using modify",
    "Only in Module 9"
  ]),
  Quiz(728, "In 'State s a', what does 's' represent?", [
    "The type of the state being managed",
    "The result of the function",
    "The string log",
    "The success/failure status"
  ]),
  Quiz(729, "What is 'evalState (get >> return 5) 10'?", [
    "5",
    "10",
    "(5, 10)",
    "Error"
  ]),
  Quiz(730, "What is 'execState (put 20) 10'?", [
    "20",
    "10",
    "30",
    "Error"
  ]),
  Quiz(731, "What is 'modify (+1)' equivalent to?", [
    "do { s <- get; put (s + 1) }",
    "put (get + 1)",
    "return (s + 1)",
    "Error"
  ]),

  // --- Monad Transformers & Composition ---
  Quiz(732, "Which module provides standard Monad Transformers?", [
    "Control.Monad.Trans",
    "Data.List.Trans",
    "System.IO.Trans",
    "Control.Applicative"
  ]),
  Quiz(733, "Why can't we just 'compose' two monads like functions?", [
    "Monads do not compose generally; you need Transformers to layer them",
    "Because monads are too big",
    "Because GHC doesn't allow it",
    "They actually do compose like functions"
  ]),
  Quiz(734, "What does 'liftIO' do?", [
    "Lifts an IO action into any monad stack that has IO at the bottom",
    "Lifts a number to IO",
    "Prints a monad",
    "Handles errors"
  ]),
  Quiz(735, "What is the result of 'runMaybeT (return 5)'?", [
    "Just 5 (wrapped in the inner monad)",
    "5",
    "Nothing",
    "Error"
  ]),

  // --- Monad Laws and Properties ---
  Quiz(736, "Does 'return' in Haskell work like 'return' in Java/C++?", [
    "No, it just wraps a value in a context; it does not exit the function",
    "Yes, it exits immediately",
    "Only in IO",
    "Only in loops"
  ]),
  Quiz(737, "Which law is broken if 'return x >>= f' does not equal 'f x'?", [
    "Left Identity",
    "Right Identity",
    "Associativity",
    "Functor Identity"
  ]),
  Quiz(738, "Which law is broken if 'm >>= return' does not equal 'm'?", [
    "Right Identity",
    "Left Identity",
    "Associativity",
    "Functor Composition"
  ]),
  Quiz(739, "Is the 'Monad' typeclass a subclass of 'Applicative'?", [
    "Yes",
    "No",
    "Only in old Haskell versions",
    "Only for lists"
  ]),

  // --- Practical Monadic Functions ---
  Quiz(740, "What does 'mapM' do?", [
    "Applies a monadic function to each element of a list and collects results",
    "Maps a normal function over a monad",
    "Prints a list",
    "Deletes a list"
  ]),
  Quiz(741, "What is 'mapM_ (underscore)' used for?", [
    "Executing monadic actions for their side effects while discarding results",
    "Mapping over underscores",
    "A faster version of mapM",
    "Error handling"
  ]),
  Quiz(742, "What does 'forever' do in 'Control.Monad'?", [
    "Repeats a monadic action infinitely",
    "Prints 'Forever'",
    "Sets a constant",
    "Checks for errors"
  ]),
  Quiz(743, "What does 'when' do?", [
    "Executes a monadic action only if a boolean condition is True",
    "Starts a loop",
    "Checks time",
    "Error handling"
  ]),
  Quiz(744, "What is 'sequence' for monads?", [
    "Takes a list of monadic actions and runs them to produce a list of results",
    "Sorts a list",
    "Joins two strings",
    "Reverses a list"
  ]),
  Quiz(745, "What is 'replicateM 3 (Just 1)'?", [
    "Just [1, 1, 1]",
    "[Just 1, Just 1, Just 1]",
    "Just 3",
    "Error"
  ]),

  // --- Specific Monad Scenarios ---
  Quiz(746, "Which monad is useful for building a 'Parser'?", [
    "State (or a combination of State and Either)",
    "Reader",
    "Writer",
    "IO"
  ]),
  Quiz(747, "Which monad would you use to implement a 'Global Configuration' object?", [
    "Reader",
    "State",
    "Writer",
    "Maybe"
  ]),
  Quiz(748, "Which monad is best for a 'Calculator' that needs to track the current total?", [
    "State",
    "Reader",
    "Either",
    "IO"
  ]),
  Quiz(749, "Which monad is best for an 'Undo/Redo' history log?", [
    "Writer (or State to manage the list)",
    "Reader",
    "Maybe",
    "IO"
  ]),

  // --- Advanced Monad Transformer Questions ---
  Quiz(750, "What does 'runStateT' return?", [
    "m (a, s) (The result and state wrapped in the inner monad)",
    "(a, s)",
    "m a",
    "s"
  ]),
  Quiz(751, "How do you access 'ask' if you are inside 'ReaderT r Maybe a'?", [
    "Just call 'ask' directly (thanks to MonadReader instance)",
    "Use lift ask",
    "Use runMaybeT",
    "Error"
  ]),
  Quiz(752, "What is the 'Identity' monad?", [
    "The simplest monad that does nothing but wrap a value",
    "A monad for ID cards",
    "The IO monad",
    "A math constant"
  ]),
  Quiz(753, "Why is 'State s a' often defined as 'StateT s Identity a'?", [
    "To reuse the transformer logic for the base non-transformer version",
    "To make it slower",
    "Because GHC requires it",
    "For IO support"
  ]),

  // --- Monadic Patterns and Syntax ---
  Quiz(754, "What is 'return ()' used for?", [
    "Returning a successful 'Unit' result, often at the end of an IO or State block",
    "Exiting the program",
    "Clearing memory",
    "An error"
  ]),
  Quiz(755, "Can you use 'let' inside a 'do' block without 'in'?", [
    "Yes, it defines a local pure value within the scope of the do block",
    "No, 'in' is mandatory",
    "Only in Module 1",
    "Only for IO"
  ]),
  Quiz(756, "What is 'x <- action' in a do-block?", [
    "Extracting the value 'x' from the monadic context of 'action'",
    "Assigning a global variable",
    "Comparing x and action",
    "A math operation"
  ]),
  Quiz(757, "If you write 'action' without '<-' in a do-block, what happens?", [
    "The action is executed but its result is discarded",
    "The program crashes",
    "It returns an error",
    "It is a syntax error"
  ]),

  // --- Theoretical Monads ---
  Quiz(758, "Is a Monad a Functor?", [
    "Yes, always",
    "No",
    "Only for Maybe",
    "Only for List"
  ]),
  Quiz(759, "Which function can you use to change the result type of a monad: m a -> m b?", [
    "fmap (or liftM)",
    "join",
    "return",
    "ask"
  ]),
  Quiz(760, "What is 'void' from Control.Monad?", [
    "An action that executes a monad but replaces the result with ()",
    "A type for empty lists",
    "A way to delete data",
    "An error handler"
  ]),
  Quiz(761, "What is 'filterM'?", [
    "A monadic version of filter where the predicate returns a monad (e.g., Maybe Bool)",
    "A way to filter monads",
    "A faster filter",
    "Error handling"
  ]),

  // --- Reader/Writer/State Mechanics ---
  Quiz(762, "What does 'asks f' do in a Reader monad?", [
    "Retrieves the environment and applies function f to it",
    "Asks the user for input",
    "Checks if f is true",
    "Error"
  ]),
  Quiz(763, "What does 'gets f' do in a State monad?", [
    "Retrieves the state and applies function f to it",
    "Gets a file",
    "Checks a boolean",
    "Error"
  ]),
  Quiz(764, "In Writer, what is 'censor'?", [
    "A function that modifies the log of a computation",
    "A way to delete bad words",
    "An error handler",
    "A type of monad"
  ]),
  Quiz(765, "What happens if you use 'foldM'?", [
    "It's a monadic version of foldl that threads a monadic state through",
    "It folds a monad",
    "It crashes",
    "It joins lists"
  ]),

  // --- Monad Law Re-check ---
  Quiz(766, "Which law ensures that 'do { x <- m; return x }' is the same as 'm'?", [
    "Right Identity",
    "Left Identity",
    "Associativity",
    "Composition"
  ]),
  Quiz(767, "Which law ensures that nested do-blocks can be flattened predictably?", [
    "Associativity",
    "Identity",
    "Commutativity",
    "Purity"
  ]),

  // --- Error Handling Monads ---
  Quiz(768, "Which module provides the 'ExceptT' transformer for error handling?", [
    "Control.Monad.Except",
    "System.Error",
    "Data.Either.Trans",
    "Control.Monad.Maybe"
  ]),
  Quiz(769, "What is 'throwError' used for?", [
    "Triggering a failure in an ExceptT or Either monad",
    "Crashing the CPU",
    "Printing 'Error'",
    "A syntax error"
  ]),
  Quiz(770, "What is 'catchError' used for?", [
    "Handling a failure and continuing computation",
    "Catching a ball",
    "Stopping a loop",
    "Printing errors"
  ]),

  // --- Final Module 8 Review ---
  Quiz(771, "What is the result of 'Just 1 >>= \\x -> Just 2 >>= \\y -> return (x+y)'?", [
    "Just 3",
    "3",
    "Nothing",
    "Error"
  ]),
  Quiz(772, "Is 'State' thread-safe by default?", [
    "No, it is a pure mathematical model of state, not a concurrent one",
    "Yes",
    "Only on Linux",
    "Only for Ints"
  ]),
  Quiz(773, "Does 'return 5' perform any IO?", [
    "No, it just wraps 5 in a context",
    "Yes, it prints 5",
    "Only in GHCi",
    "Only if you use VS Code"
  ]),
  Quiz(774, "Which Monad is implicit in the 'do' notation for IO in 'main'?", [
    "The IO Monad",
    "The State Monad",
    "The Identity Monad",
    "The List Monad"
  ]),
  Quiz(775, "What is the ultimate goal of Module 8?", [
    "To master handling complex logic and side-effects within Haskell's pure functional framework",
    "To learn how to buy a computer",
    "To write Python scripts",
    "To understand math"
  ]),
];
final List<Quiz> haskellQuizM9 = [
  // --- Topic 67: Understanding the IO Monad ---
  Quiz(776, "Why is the IO Monad often called a 'One-way Street'?", [
    "Because you can take pure values into IO, but you cannot extract a value from IO into a pure function",
    "Because it only runs from top to bottom",
    "Because it only works for printing",
    "Because it cannot be reversed"
  ]),
  Quiz(777, "What is the type of 'getLine'?", [
    "IO String",
    "String",
    "Char",
    "Maybe String"
  ]),
  Quiz(778, "What does 'putStrLn' return?", [
    "IO () (An IO action that returns Unit)",
    "String",
    "Nothing",
    "Int"
  ]),
  Quiz(779, "In Haskell, why is the 'main' function always of type 'IO ()'?", [
    "Because it is the entry point where all side effects (I/O) are executed",
    "Because it is a requirement of the VS Code editor",
    "Because main cannot return numbers",
    "Because Haskell doesn't have a return keyword"
  ]),
  Quiz(780, "What is the difference between 'putStr' and 'putStrLn'?", [
    "putStrLn adds a newline character at the end; putStr does not",
    "putStr is for numbers; putStrLn is for strings",
    "putStr is faster",
    "There is no difference"
  ]),

  // --- Topic 68: Reading and Writing Files ---
  Quiz(781, "Which function is used to read the entire contents of a file as a String?", [
    "readFile",
    "getFile",
    "openFile",
    "read"
  ]),
  Quiz(782, "Which function writes a String to a file, overwriting any existing content?", [
    "writeFile",
    "appendFile",
    "saveFile",
    "print"
  ]),
  Quiz(783, "Which function adds a String to the end of an existing file?", [
    "appendFile",
    "writeFile",
    "addToFile",
    "putStr"
  ]),
  Quiz(784, "What is a potential issue with 'readFile' due to Lazy Evaluation?", [
    "The file might remain 'open' and locked if the entire content isn't consumed immediately",
    "It is too slow",
    "It only reads the first line",
    "It deletes the file after reading"
  ]),
  Quiz(785, "Which module provides functions like 'doesFileExist'?", [
    "System.Directory",
    "System.IO",
    "Data.List",
    "Control.Monad"
  ]),

  // --- Topic 69: Command Line Arguments ---
  Quiz(786, "Which function retrieves the arguments passed to a program via the terminal?", [
    "getArgs",
    "getLine",
    "getEnv",
    "input"
  ]),
  Quiz(787, "What is the return type of 'getArgs'?", [
    "IO [String]",
    "[String]",
    "String",
    "IO String"
  ]),
  Quiz(788, "Which function returns the name of the program being executed?", [
    "getProgName",
    "getArgs",
    "mainName",
    "whoami"
  ]),
  Quiz(789, "In 'myprog add \"Task\"', what is the first element in the list returned by 'getArgs'?", [
    "\"add\"",
    "\"myprog\"",
    "\"Task\"",
    "\"\""
  ]),

  // --- Topic 70: Exception Handling ---
  Quiz(790, "Which module is primarily used for handling runtime I/O exceptions in Haskell?", [
    "Control.Exception",
    "System.Error",
    "Data.Maybe",
    "Control.Monad"
  ]),
  Quiz(791, "Which function allows you to try an IO action and catch any exceptions as an 'Either'?", [
    "try",
    "catch",
    "maybe",
    "guard"
  ]),
  Quiz(792, "What is the purpose of the 'finally' function?", [
    "To ensure a piece of code (like closing a file) runs regardless of whether an exception occurred",
    "To end the program",
    "To print the final result",
    "To clear the memory"
  ]),
  Quiz(793, "Which type is commonly used to represent I/O errors in Haskell?", [
    "IOError",
    "Exception",
    "String",
    "Maybe Error"
  ]),

  // --- Topic 71: Concurrency ---
  Quiz(794, "What is 'forkIO' used for?", [
    "Starting a new lightweight thread to run an IO action in the background",
    "Splitting a list into two",
    "Exiting the program",
    "Handling errors"
  ]),
  Quiz(795, "What is an 'MVar'?", [
    "A synchronized variable used for communication between threads",
    "A mutable variable for loops",
    "A math constant",
    "A type of list"
  ]),
  Quiz(796, "Which function is used to put a value into an MVar (blocking if it's full)?", [
    "putMVar",
    "takeMVar",
    "newMVar",
    "write"
  ]),
  Quiz(797, "Which function is used to take a value from an MVar (blocking if it's empty)?", [
    "takeMVar",
    "putMVar",
    "readMVar",
    "get"
  ]),
  Quiz(798, "What does 'threadDelay' do?", [
    "Suspends the current thread for a specified number of microseconds",
    "Stops the program forever",
    "Slows down the internet",
    "Prints a delay message"
  ]),

  // --- Topic 72: Architecture of the Todo App ---
  Quiz(799, "What is the benefit of keeping the Todo App logic separate from IO functions?", [
    "It makes the core logic 'pure', easier to test, and reusable",
    "It makes the app faster",
    "It is required by the Haskell compiler",
    "It allows the app to run without a CPU"
  ]),
  Quiz(800, "In our Todo App, which type represents the database state in memory?", [
    "[Task] (A list of Task records)",
    "String",
    "IO String",
    "Int"
  ]),
  Quiz(801, "Why do we use 'Record Syntax' for the Task data type?", [
    "To easily access fields like 'id', 'description', and 'isDone'",
    "Because it is shorter to type",
    "To handle infinite tasks",
    "To use the \$ operator"
  ]),
  Quiz(802, "Which Haskell feature is best for 'routing' different CLI commands like 'add' or 'list'?", [
    "Pattern Matching on the argument list",
    "If-else statements",
    "Recursion",
    "Functors"
  ]),

  // --- Topic 73: Implementing Features with Monads ---
  Quiz(803, "How do we store the Todo list permanently?", [
    "By serializing the [Task] list to a String and writing it to a file",
    "In a global mutable variable",
    "It is stored in the CPU cache only",
    "Haskell cannot store files permanently"
  ]),
  Quiz(804, "Which function converts our [Task] list into a String for saving?", [
    "show",
    "read",
    "print",
    "toString"
  ]),
  Quiz(805, "Which function converts the String from the file back into a [Task] list?", [
    "read",
    "show",
    "parse",
    "toInt"
  ]),
  Quiz(806, "How do we handle a user trying to mark a non-existent Task ID as done?", [
    "By using pattern matching and returning an error message instead of crashing",
    "By letting the program crash",
    "By deleting the file",
    "By restarting the computer"
  ]),

  // --- Topic 74: Compiling and Packaging ---
  Quiz(807, "What is the command to compile 'Main.hs' into an executable named 'tmk'?", [
    "ghc --make Main.hs -o tmk",
    "ghc Main.hs",
    "runhaskell Main.hs",
    "compile Main.hs"
  ]),
  Quiz(808, "What is the purpose of the '-O2' flag during compilation?", [
    "To enable high-level optimizations for better performance",
    "To set the output version to 2",
    "To ignore all errors",
    "To format the code"
  ]),
  Quiz(809, "What is 'Cabal' or 'Stack' in the Haskell ecosystem?", [
    "Build tools and package managers for managing projects and dependencies",
    "Text editors",
    "Versions of the Haskell compiler",
    "Math libraries"
  ]),
  Quiz(810, "Once compiled, can the Haskell program run without the source code file?", [
    "Yes, it is a standalone binary executable",
    "No, it needs the .hs file",
    "Only in GHCi",
    "Only if you install Haskell on every machine"
  ]),

  // --- Final Logic & Review ---
  Quiz(811, "Which of these is a side effect?", [
    "Printing 'Hello' to the terminal",
    "Adding 5 + 5",
    "Reversing a list",
    "Checking if a number is even"
  ]),
  Quiz(812, "Can a pure function call 'getLine'?", [
    "No, pure functions cannot perform IO",
    "Yes, always",
    "Only if it returns a String",
    "Only in Module 1"
  ]),
  Quiz(813, "What does 'mapM_ putStrLn [\"A\", \"B\"]' do?", [
    "Prints 'A' and 'B' on separate lines",
    "Returns [\"A\", \"B\"]",
    "Returns ()",
    "Error"
  ]),
  Quiz(814, "What does 'interact' do?", [
    "Takes a function of type (String -> String) and applies it to all standard input",
    "Starts a chat with the user",
    "Checks for errors",
    "Clears the screen"
  ]),
  Quiz(815, "Which module provides 'hPutStrLn' to write to specific file handles?", [
    "System.IO",
    "Data.Char",
    "Control.Monad",
    "System.Environment"
  ]),
  Quiz(816, "What is 'stdin'?", [
    "The standard input stream (usually the keyboard)",
    "A type of number",
    "A file handle for output",
    "A Haskell keyword"
  ]),
  Quiz(817, "What is 'stdout'?", [
    "The standard output stream (usually the screen)",
    "A function to read files",
    "A way to crash the program",
    "An error message"
  ]),
  Quiz(818, "Which function reads a single character from input?", [
    "getChar",
    "getLine",
    "readChar",
    "fetch"
  ]),
  Quiz(819, "Which function prints a single character to output?", [
    "putChar",
    "putStr",
    "write",
    "print"
  ]),
  Quiz(820, "What is the result of 'print 5'?", [
    "Prints '5' and returns IO ()",
    "Returns 5",
    "Error",
    "Prints 'Int'"
  ]),
  Quiz(821, "How do you combine multiple IO actions into one?", [
    "By using a 'do' block",
    "By adding them with +",
    "By nesting them in parentheses",
    "By using recursion"
  ]),
  Quiz(822, "What happens if the last line of a 'do' block is 'let x = 5'?", [
    "It will cause a syntax error; the last line must be an expression/action",
    "It returns 5",
    "It works fine",
    "It prints 5"
  ]),
  Quiz(823, "Can you use '<-' to get a value from a pure function?", [
    "No, '<-' is for unwrapping monadic/IO values; use 'let' for pure values",
    "Yes",
    "Only for numbers",
    "Only in Module 5"
  ]),
  Quiz(824, "What is 'System.Exit' used for?", [
    "Terminating the program with a specific exit code (Success/Failure)",
    "Exiting a loop",
    "Closing a file",
    "Deleting a variable"
  ]),
  Quiz(825, "What is the result of 'exitSuccess'?", [
    "Stops the program immediately and reports no error to the OS",
    "Restarts the program",
    "Prints 'Success'",
    "Error"
  ]),
  Quiz(826, "What does 'hClose' do?", [
    "Closes an open file handle",
    "Closes the VS Code window",
    "Ends the main function",
    "Deletes a file"
  ]),
  Quiz(827, "Which function reads the rest of the input as a single string?", [
    "getContents",
    "getLine",
    "readFile",
    "readAll"
  ]),
  Quiz(828, "Is 'getContents' lazy?", [
    "Yes, it reads the input as it is needed",
    "No, it reads everything into memory at once",
    "Only on Windows",
    "Only for numbers"
  ]),
  Quiz(829, "What is the primary benefit of Haskell's 'Strict' IO versions (like in Data.Text.IO)?", [
    "To avoid memory issues or file-lock issues caused by lazy IO",
    "To make the code shorter",
    "To enable parallel processing",
    "To ignore exceptions"
  ]),
  Quiz(830, "What is the return type of 'forkIO'?", [
    "IO ThreadId",
    "ThreadId",
    "IO ()",
    "Int"
  ]),
  Quiz(831, "What is 'killThread' used for?", [
    "Terminating a specific background thread using its ThreadId",
    "Shutting down the computer",
    "Ending the main function",
    "Deleting a task"
  ]),
  Quiz(832, "What is a 'Race Condition'?", [
    "A bug where the outcome depends on the unpredictable timing of threads",
    "A fast type of loop",
    "A sorting algorithm",
    "An error in the math"
  ]),
  Quiz(833, "Why is Haskell generally safer for Concurrency?", [
    "Because most data is immutable, so threads don't accidentally change each other's variables",
    "Because it is slower",
    "Because it doesn't use RAM",
    "Because it only runs one thread at a time"
  ]),
  Quiz(834, "What does 'withFile' do differently than 'openFile'?", [
    "It automatically closes the file handle after the action is finished (safe handling)",
    "It opens the file faster",
    "It only allows reading",
    "It deletes the file after use"
  ]),
  Quiz(835, "In 'main = do { line <- getLine; putStrLn line }', what is the type of 'line'?", [
    "String",
    "IO String",
    "Char",
    "()"
  ]),
  Quiz(836, "What is the result of 'pure \"Hello\" >>= putStrLn'?", [
    "Prints 'Hello'",
    "\"Hello\"",
    "Error",
    "()"
  ]),
  Quiz(837, "Does 'return' at the end of an IO block stop the rest of the block?", [
    "No, it is not an exit statement; it just wraps a value",
    "Yes, it exits immediately",
    "Only in Module 1",
    "Only for math"
  ]),
  Quiz(838, "Which function in 'Control.Monad' allows you to repeat an IO action 'n' times?", [
    "replicateM_",
    "repeat",
    "times",
    "loop"
  ]),
  Quiz(839, "What does 'replicateM_ 3 (putStrLn \"Hi\")' do?", [
    "Prints 'Hi' three times",
    "Prints 'Hi' once",
    "Returns [\"Hi\", \"Hi\", \"Hi\"]",
    "Error"
  ]),
  Quiz(840, "Which operator can you use to 'sequence' two IO actions and keep only the second result?", [
    ">>",
    ">>=",
    "<\$>",
    "<*>"
  ]),
  Quiz(841, "What is 'putStr \"A\" >> putStr \"B\"'?", [
    "Prints 'AB'",
    "Prints 'B' only",
    "Error",
    "Prints 'A' then 'B' on separate lines"
  ]),
  Quiz(842, "How do you check for environment variables (like 'PATH') in Haskell?", [
    "getEnv",
    "lookupEnv",
    "Both are valid",
    "Haskell cannot access environment variables"
  ]),
  Quiz(843, "What happens if 'getEnv' fails to find the variable?", [
    "An exception is thrown",
    "It returns Nothing",
    "It returns an empty string",
    "The program restarts"
  ]),
  Quiz(844, "What does 'lookupEnv' return?", [
    "IO (Maybe String)",
    "IO String",
    "Maybe String",
    "String"
  ]),
  Quiz(845, "Is the 'IO' type abstract?", [
    "Yes, you cannot see its implementation or create your own IO values without built-in primitives",
    "No, it is a normal record",
    "Only in Module 9",
    "Only for numbers"
  ]),
  Quiz(846, "What is the 'RealWorld' state in GHC's internal IO representation?", [
    "A conceptual state of the entire universe that IO actions 'transform'",
    "A game engine",
    "A type of list",
    "A database"
  ]),
  Quiz(847, "What is 'unsafePerformIO'?", [
    "A dangerous function that runs IO inside a pure function (should be avoided)",
    "A way to make the program faster",
    "A required function for main",
    "A way to fix bugs"
  ]),
  Quiz(848, "Which function reads a file and returns a list of its lines?", [
    "fmap lines (readFile path)",
    "readLines path",
    "getFileLines",
    "Error"
  ]),
  Quiz(849, "What is the 'Grand Finale' of the TMK Haskell Course?", [
    "Building a fully functional CLI Todo Application",
    "Writing a math exam",
    "Installing Haskell",
    "Printing 'Hello State'"
  ]),
  Quiz(850, "What is the most important rule when working with IO in Haskell?", [
    "Keep your pure logic pure and only use IO at the edges of your program",
    "Use IO for everything",
    "Never use files",
    "Always use global variables"
  ]),
];
final List<List<Quiz>> haskellQuizzes = [
  haskellQuizM1,
  haskellQuizM2,
  haskellQuizM3,
  haskellQuizM4,
  haskellQuizM5,
  haskellQuizM6,
  haskellQuizM7,
  haskellQuizM8,
  haskellQuizM9,
];
