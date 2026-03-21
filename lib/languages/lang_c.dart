import 'package:tmkacademy/utils/quiz.dart';
import 'package:tmkacademy/utils/utils.dart';

const Map<int, String> cTopics = {
  1: "Introduction to C",
  2: "Variables & Data Types",
  3: "Operators & Expressions",
  4: "Control Flow & Logic Gates",
  5: "Data Architecture (Arrays & Structs)",
  6: "Memory & Pointers: Under the Hood",
  7: "Functions & Dynamic Power",
  8: "File I/O",
};

const Map<int, Map<int, String>> cModules = {
  1: {
    1: "The World of C: History & Philosophy",
    2: "Setting Up Your Forge: Compilers & IDEs",
    3: "Anatomy of a C Program: Structure & Syntax",
    4: "The Compilation Pipeline: From Code to Binary",
    5: "Errors & Debugging: Finding the Bugs",
    6: "Coding Standards: Writing Clean & Readable Code", // New
  },
  2: {
    7: "Memory Architecture: How Variables Work",
    8: "Primitive Data Types: The Java vs. C Gap",
    9: "Modifiers: Signed, Unsigned, Short & Long",
    10: "Constants & Literals: Fixed Data in Memory", // New
    11: "The Unicode Challenge: Storing Shan Script",
    12: "Interacting with the User: I/O & Buffers",
    13: "Advanced Formatting: Professional CLI Output", // New
  },
  3: {
    14: "Arithmetic & Assignment: The Basics",
    15: "Relational & Logical: Making Decisions",
    16: "Bitwise Operators: Thinking in Binary",
    17: "Bit Manipulation: Flags & Masks", // New
    18: "Operator Precedence: The Order of Power",
    19: "Type Casting & Promotion: Mixing Data Types",
    20: "The Ternary Operator: Short-hand Logic", // New
  },
  4: {
    21: "The if-else Empire: Decision Making",
    22: "Switch Case: The Multi-way Branch",
    23: "while & do-while: Condition-first Loops",
    24: "for Loops: The Powerhouse",
    25: "Break & Continue: The Flow Controllers",
    26: "Nested Loops: Pattern Printing",
    27: "The goto Statement: Proceed with Caution",
  },
  5: {
    28: "Introduction to Arrays: Homogeneous Collections",
    29: "Multidimensional Arrays: Matrices & Grids",
    30: "Strings in C: Character Arrays & The Null Terminator",
    31: "String Handling Functions: <string.h> Deep Dive",
    32: "Introduction to Structs: Heterogeneous Data",
    33: "Nested Structs & Arrays of Structs: Database Basics",
    34: "Typedef & Enums: Creating Custom Data Types", // New
  },
  6: {
    35: "Memory Addresses: The & Operator",
    36: "Pointer Basics: The * Operator",
    37: "Pointer Arithmetic: Moving in Memory",
    38: "Pointers & Arrays: The Secret Relationship",
    39: "Call by Value vs. Call by Reference",
    40: "Dynamic Memory Allocation: malloc, calloc & free",
    41: "Void Pointers & Pointers to Pointers",
    42: "Dangling Pointers & Memory Leaks: The Dark Side", // New
    43: "Pointers to Structs: The -> Arrow Operator", // New
    44: "Function Pointers: Code as Data", // New
    45: "The Stack vs. The Heap: Memory Layout", // New
  },
  7: {
    46: "Function Basics: Defining Your Own Tools",
    47: "Parameters & Arguments: Passing Data by Value",
    48: "Call by Reference: Giving Functions 'Real' Power",
    49: "Returning Values & Pointers: Getting Results Back",
    50: "Dynamic Memory in Functions: Using malloc with Tools",
    51: "Array Parameters: Functions Handling Data Lists",
    52: "Structs as Arguments: Processing Complex Data",
    53: "Function Prototypes & Header Files: Professional Organization",
    54: "Recursion: The Function That Calls Itself",
    55: "Function Pointers as Callbacks: High-Order Logic",
    56: "Variable Arguments: Creating Your Own printf",
    57: "Memory Management Strategy: Avoiding Leaks in Functions",
  },
  8: {
    58: "Introduction to File Streams: FILE Pointer",
    59: "Opening & Closing Files: fopen & fclose",
    60: "Writing Text Data: fputs, fprintf & fputc",
    61: "Reading Text Data: fgets, fscanf & fgetc",
    62: "Binary Files vs. Text Files: Why Binary is Better for Data",
    63: "Working with Structs: fwrite & fread (Direct Database)",
    64: "File Positioning: fseek, ftell & rewind",
    65: "Error Handling in Files: ferror & feof",
    66: "Mini-Project: Saving & Loading TMK Student Records",
    67: "Command Line Arguments (argc, argv)", // Bonus
  },
};

final Map<int, Lesson> cLessons = {
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
  20: Lesson(3, 20),
  21: Lesson(4, 21),
  22: Lesson(4, 22),
  23: Lesson(4, 23),
  24: Lesson(4, 24),
  25: Lesson(4, 25),
  26: Lesson(4, 26),
  27: Lesson(4, 27),
  28: Lesson(5, 28),
  29: Lesson(5, 29),
  30: Lesson(5, 30),
  31: Lesson(5, 31),
  32: Lesson(5, 32),
  33: Lesson(5, 33),
  34: Lesson(5, 34),
  35: Lesson(6, 35),
  36: Lesson(6, 36),
  37: Lesson(6, 37),
  38: Lesson(6, 38),
  39: Lesson(6, 39),
  40: Lesson(6, 40),
  41: Lesson(6, 41),
  42: Lesson(6, 42),
  43: Lesson(6, 43),
  44: Lesson(6, 44),
  45: Lesson(6, 45),
  46: Lesson(7, 46),
  47: Lesson(7, 47),
  48: Lesson(7, 48),
  49: Lesson(7, 49),
  50: Lesson(7, 50),
  51: Lesson(7, 51),
  52: Lesson(7, 52),
  53: Lesson(7, 53),
  54: Lesson(7, 54),
  55: Lesson(7, 55),
  56: Lesson(7, 56),
  57: Lesson(7, 57),
  58: Lesson(8, 58),
  59: Lesson(8, 59),
  60: Lesson(8, 60),
  61: Lesson(8, 61),
  62: Lesson(8, 62),
  63: Lesson(8, 63),
  64: Lesson(8, 64),
  65: Lesson(8, 65),
  66: Lesson(8, 66),
  67: Lesson(8, 67),
};

final List<Quiz> cQuizM1 = [
  // --- Topic 1: The World of C: History & Philosophy ---
  Quiz(1, "Who is the original creator of the C programming language?", [
    "Dennis Ritchie",
    "Bjarne Stroustrup",
    "James Gosling",
    "Guido van Rossum",
  ]),
  Quiz(2, "In which year was the C language first developed?", [
    "1972",
    "1985",
    "1991",
    "1969",
  ]),
  Quiz(3, "C is often referred to as a 'Mother Language' because...", [
    "Many modern languages like Java and C++ borrowed their syntax from it",
    "It is the only language used to write web browsers",
    "It was the first language ever created in history",
    "It cannot be compiled into machine code",
  ]),
  Quiz(4, "What operating system was C originally designed to develop?", [
    "Unix",
    "Windows",
    "MS-DOS",
    "Android",
  ]),
  Quiz(5, "Which philosophy best describes the design of C?", [
    "Trust the programmer and provide low-level hardware access",
    "Prevent the programmer from accessing memory directly",
    "Automate all memory management via garbage collection",
    "Require a virtual machine to execute code",
  ]),
  Quiz(6, "C is considered a 'Procedural' language, which means...", [
    "It follows a step-by-step sequence of instructions and functions",
    "It treats everything as an object with properties and methods",
    "It only runs on server-side hardware",
    "It does not support the use of variables",
  ]),
  Quiz(7, "What does 'Portability' mean in the context of C?", [
    "Code written for one system can be compiled on another with little change",
    "The code can be executed without a compiler",
    "The language is small enough to fit on a floppy disk",
    "Programs automatically translate themselves into Python",
  ]),

  // --- Topic 2: Setting Up Your Forge: Compilers & IDEs ---
  Quiz(8, "What is the primary role of a C compiler?", [
    "To translate source code into machine-readable binary",
    "To provide a text editor for writing code",
    "To manage the computer's internet connection",
    "To host the application on a cloud server",
  ]),
  Quiz(9, "Which of the following is a widely used open-source C compiler?", [
    "GCC (GNU Compiler Collection)",
    "Microsoft Word",
    "Adobe Reader",
    "Python Interpreter",
  ]),
  Quiz(10, "What does 'IDE' stand for?", [
    "Integrated Development Environment",
    "Internal Data Engine",
    "Instructional Design Element",
    "Integrated Desktop Entry",
  ]),
  Quiz(11, "Which of these is a popular IDE used for C development?", [
    "Code::Blocks",
    "Android Studio",
    "IntelliJ IDEA",
    "PyCharm",
  ]),
  Quiz(12, "When using GCC in a terminal, which command compiles 'main.c' into an executable?", [
    "gcc main.c -o myprogram",
    "run main.c",
    "compile main.c",
    "gcc -read main.c",
  ]),

  // --- Topic 3: Anatomy of a C Program: Structure & Syntax ---
  Quiz(13, "Every C program must contain which function to start execution?", [
    "main()",
    "start()",
    "init()",
    "print()",
  ]),
  Quiz(14, "What is the purpose of '#include <stdio.h>'?", [
    "To include the Standard Input/Output library for functions like printf",
    "To define the mathematical formulas used in the program",
    "To tell the computer which operating system to use",
    "To close the program after it runs once",
  ]),
  Quiz(15, "Which character is used to end a statement in C?", [
    "; (Semicolon)",
    ": (Colon)",
    ". (Period)",
    ", (Comma)",
  ]),
  Quiz(16, "What symbol is used to start a single-line comment in C?", [
    "//",
    "#",
    "--",
    "/*",
  ]),
  Quiz(17, "What is a 'Block' of code in C defined by?", [
    "{ } (Curly braces)",
    "( ) (Parentheses)",
    "[ ] (Square brackets)",
    "< > (Angle brackets)",
  ]),
  Quiz(18, "Which of the following is a valid 'Header File' extension?", [
    ".h",
    ".c",
    ".exe",
    ".txt",
  ]),

  // --- Topic 4: The Compilation Pipeline: From Code to Binary ---
  Quiz(19, "What is the first stage of the compilation process?", [
    "Preprocessing",
    "Linking",
    "Assembly",
    "Execution",
  ]),
  Quiz(20, "What happens during the 'Preprocessing' stage?", [
    "Header files are included and macros are expanded",
    "The code is turned into binary 0s and 1s",
    "The program is checked for logic errors",
    "Different object files are combined into one",
  ]),
  Quiz(21, "Which file type is produced after the 'Compilation' stage but before 'Linking'?", [
    "Object file (.o or .obj)",
    "Executable file (.exe)",
    "Source file (.c)",
    "Library file (.dll)",
  ]),
  Quiz(22, "What is the role of the 'Linker'?", [
    "Combining object files and libraries into a final executable",
    "Checking the syntax of the code",
    "Converting Assembly code into Machine code",
    "Removing comments from the source file",
  ]),
  Quiz(23, "What is 'Machine Code'?", [
    "Binary instructions that the CPU can execute directly",
    "Text-based code that humans can read easily",
    "A specialized language for factory robots",
    "Code that only runs on a virtual machine",
  ]),

  // --- Topic 5: Errors & Debugging: Finding the Bugs ---
  Quiz(24, "What is a 'Syntax Error'?", [
    "A violation of the language's grammatical rules",
    "An error that happens only while the program is running",
    "A mistake in the math logic of the program",
    "An error caused by the computer running out of RAM",
  ]),
  Quiz(25, "What is a 'Runtime Error'?", [
    "An error that occurs during program execution (e.g., dividing by zero)",
    "An error found by the compiler before the program runs",
    "A typo in a variable name",
    "A missing semicolon at the end of a line",
  ]),
  Quiz(26, "A 'Logical Error' is characterized by...", [
    "The program running but producing the wrong output",
    "The compiler refusing to build the executable",
    "The computer crashing immediately on start",
    "The source code being deleted accidentally",
  ]),
  Quiz(27, "What is 'Debugging'?", [
    "The process of finding and fixing errors in a program",
    "The process of writing code faster",
    "The process of installing a new compiler",
    "The process of converting C code to Java",
  ]),
  Quiz(28, "What does a 'Debugger' allow a programmer to do?", [
    "Pause execution and inspect variable values line by line",
    "Automatically write the code for the programmer",
    "Speed up the execution of the program",
    "Connect the program to the internet",
  ]),
  Quiz(29, "What is a 'Breakpoint'?", [
    "A marker set to pause the program at a specific line during debugging",
    "A physical crack in the computer's hardware",
    "A special type of loop that never ends",
    "The command used to delete a file",
  ]),

  // --- Topic 6: Coding Standards: Writing Clean & Readable Code ---
  Quiz(30, "Why is 'Indentation' important in C?", [
    "It makes the code readable and shows the structure of blocks",
    "The compiler requires it to run the program",
    "It reduces the size of the executable file",
    "It prevents the CPU from overheating",
  ]),
  Quiz(31, "Which variable name follows the 'CamelCase' convention?", [
    "studentGrades",
    "student_grades",
    "STUDENTGRADES",
    "student-grades",
  ]),
  Quiz(32, "Which variable name follows the 'Snake Case' convention?", [
    "total_score",
    "totalScore",
    "TOTALSCORE",
    "TotalScore",
  ]),
  Quiz(33, "What is the purpose of 'Comments' in code?", [
    "To explain the logic to human readers",
    "To tell the compiler how to optimize the code",
    "To increase the speed of the program",
    "To provide secret instructions to the OS",
  ]),
  Quiz(34, "Meaningful variable names should be...", [
    "Descriptive of the data they hold (e.g., 'userAge')",
    "As short as possible (e.g., 'a', 'b', 'c')",
    "Random strings of characters",
    "Named after the programmer's favorite foods",
  ]),
  Quiz(35, "What is 'Refactoring'?", [
    "Improving the internal structure of code without changing its behavior",
    "Deleting all the code and starting over",
    "Converting a program from C to Python",
    "Installing a new version of the IDE",
  ]),

  // --- Mixed Review (Module 1) ---
  Quiz(36, "Which function is used to output text to the console?", [
    "printf()",
    "scanf()",
    "main()",
    "output()",
  ]),
  Quiz(37, "What does the 'return 0;' statement usually signify in main()?", [
    "The program executed successfully",
    "The program failed with an error",
    "The program should restart immediately",
    "The program has no variables",
  ]),
  Quiz(38, "Which type of language is C?", [
    "High-level with low-level features",
    "Purely Visual language",
    "Natural language like English",
    "Scripting language like Bash",
  ]),
  Quiz(39, "The Standard Library in C provides...", [
    "Pre-written functions for common tasks",
    "The hardware for the computer",
    "A way to bypass the compiler",
    "The physical monitor and keyboard",
  ]),
  Quiz(40, "Which of the following is NOT a phase of the C pipeline?", [
    "Interpretation",
    "Preprocessing",
    "Compilation",
    "Linking",
  ]),
  Quiz(41, "An 'Executable' file is...", [
    "A file that the computer can run as a program",
    "A file containing only comments",
    "A file that can only be opened in Notepad",
    "A list of instructions for the programmer",
  ]),
  Quiz(42, "What is a 'Macro' in C?", [
    "A rule that defines how text is substituted by the preprocessor",
    "A very large function that takes up a lot of memory",
    "A specialized hardware component",
    "A type of virus that affects C programs",
  ]),
  Quiz(43, "Which of these is a valid comment style in C?", [
    "/* comment */",
    "",
    "''' comment '''",
    "(comment)",
  ]),
  Quiz(44, "What is the 'Linker's' output?", [
    "The final executable program",
    "The preprocessed source code",
    "The assembly language file",
    "The error report",
  ]),
  Quiz(45, "What is an 'Algorithm'?", [
    "A logical step-by-step procedure for solving a problem",
    "The name of a specific C compiler",
    "A type of variable that stores numbers",
    "The physical casing of a computer",
  ]),
  Quiz(46, "A program that cannot find a library it needs will fail during...", [
    "Linking",
    "Preprocessing",
    "Editing",
    "Typing",
  ]),
  Quiz(47, "Which part of the IDE is used to see error messages?", [
    "Output/Console window",
    "Code Editor",
    "File Explorer",
    "Tool Bar",
  ]),
  Quiz(48, "Which of the following is a 'Low-Level' language?", [
    "Assembly",
    "Python",
    "Java",
    "Ruby",
  ]),
  Quiz(49, "C was developed at...", [
    "AT&T Bell Labs",
    "Microsoft Headquarters",
    "Google Plex",
    "Stanford University",
  ]),
  Quiz(50, "Why is 'Clean Code' important?", [
    "It reduces maintenance costs and makes collaboration easier",
    "It makes the program run 100 times faster",
    "It is required by the compiler to produce binary",
    "It changes the logic of the program automatically",
  ]),
];
final List<Quiz> cQuizM2 = [
  // --- Topic 7: Memory Architecture: How Variables Work ---
  Quiz(51, "What does a variable represent in the computer's hardware?", [
    "A labeled location in RAM (Random Access Memory)",
    "A physical wire inside the CPU",
    "A file stored on the Hard Drive",
    "A pixel on the computer screen",
  ]),
  Quiz(52, "What is a 'Memory Address'?", [
    "A unique hexadecimal number identifying a specific byte in RAM",
    "The name given to a variable by the programmer",
    "The path to the folder where the code is saved",
    "The IP address of the computer",
  ]),
  Quiz(53, "In C, what happens to a variable that is declared but not initialized?", [
    "It contains a 'Garbage Value' from previous memory usage",
    "It is automatically set to zero by the compiler",
    "It causes a 'Variable Not Found' error",
    "It is assigned a random prime number",
  ]),
  Quiz(54, "Which operator is used to find the memory size of a data type in C?", [
    "sizeof()",
    "memoryof()",
    "len()",
    "bits()",
  ]),
  Quiz(55, "Which area of memory is typically used for local variables inside a function?", [
    "The Stack",
    "The Heap",
    "The Global Segment",
    "The Read-Only Segment",
  ]),

  // --- Topic 8: Primitive Data Types: The Java vs. C Gap ---
  Quiz(56, "Which C data type is used to store a single character?", [
    "char",
    "String",
    "byte",
    "letter",
  ]),
  Quiz(57, "Unlike Java's fixed sizes, the size of an 'int' in C is...", [
    "Platform-dependent (varies by CPU architecture)",
    "Always exactly 32 bits on all machines",
    "Determined by the number of digits in the value",
    "Always the same as a 'double'",
  ]),
  Quiz(58, "Which data type is used for a decimal number with single precision?", [
    "float",
    "int",
    "double",
    "long",
  ]),
  Quiz(59, "Which data type offers the highest precision for floating-point numbers?", [
    "long double",
    "float",
    "short",
    "int",
  ]),
  Quiz(60, "In C, how are boolean (true/false) values traditionally represented?", [
    "Integers (0 for false, non-zero for true)",
    "Using the 'boolean' keyword",
    "Using 'yes' and 'no' keywords",
    "Using the strings 'true' and 'false'",
  ]),

  // --- Topic 9: Modifiers: Signed, Unsigned, Short & Long ---
  Quiz(61, "What is the effect of the 'unsigned' modifier on an integer?", [
    "It allows the variable to store only positive values (and zero)",
    "It makes the variable take up twice as much memory",
    "It prevents the variable from being modified",
    "It allows the variable to store decimal points",
  ]),
  Quiz(62, "Which modifier increases the memory size (and range) of an integer?", [
    "long",
    "short",
    "signed",
    "unsigned",
  ]),
  Quiz(63, "By default, if no modifier is used, a C integer is...", [
    "signed",
    "unsigned",
    "short",
    "const",
  ]),
  Quiz(64, "What happens during an 'Integer Overflow' in C?", [
    "The value wraps around (e.g., exceeds max and becomes min)",
    "The program stops and shows an error message",
    "The computer automatically adds more RAM",
    "The compiler deletes the variable",
  ]),
  Quiz(65, "Which modifier would you use to store a very small integer to save memory?", [
    "short",
    "long",
    "double",
    "unsigned",
  ]),

  // --- Topic 10: Constants & Literals: Fixed Data in Memory ---
  Quiz(66, "Which keyword is used to declare a variable whose value cannot be changed?", [
    "const",
    "fixed",
    "static",
    "final",
  ]),
  Quiz(67, "What is a 'String Literal' in C?", [
    "Text enclosed in double quotes (e.g., \"Hello\")",
    "A variable that stores numbers",
    "A comment at the top of the file",
    "A function that returns a character",
  ]),
  Quiz(68, "What is the difference between '10' and 10 in C code?", [
    "'10' is a character literal, while 10 is an integer literal",
    "There is no difference between them",
    "'10' is a variable name, 10 is a value",
    "'10' is a floating point number",
  ]),
  Quiz(69, "The #define preprocessor directive is often used to create...", [
    "Symbolic constants (Macros)",
    "New data types",
    "Loops that never end",
    "Links to external websites",
  ]),
  Quiz(70, "Why are constants used in professional C programming?", [
    "To prevent 'Magic Numbers' and make code easier to maintain",
    "To make the program run faster on the CPU",
    "To allow the user to change the values while running",
    "To bypass the need for a compiler",
  ]),

  // --- Topic 11: The Unicode Challenge: Storing Shan Script ---
  Quiz(71, "A standard 'char' in C is usually 1 byte. How many bytes does a Shan character (Unicode) typically require?", [
    "2 to 3 bytes (UTF-8)",
    "Exactly 1 byte",
    "Exactly 1 bit",
    "10 bytes",
  ]),
  Quiz(72, "Which standard is used to represent modern scripts like Shan or Myanmar in C?", [
    "UTF-8 / Unicode",
    "ASCII",
    "Binary",
    "Hexadecimal",
  ]),
  Quiz(73, "When printing Shan script to a console, the console must support...", [
    "UTF-8 Encoding",
    "ASCII-only mode",
    "Only English text",
    "Binary output",
  ]),
  Quiz(74, "Which header file is often used for wide-character support in C?", [
    "<wchar.h>",
    "<stdio.h>",
    "<math.h>",
    "<string.h>",
  ]),

  // --- Topic 12: Interacting with the User: I/O & Buffers ---
  Quiz(75, "Which function is used to read formatted input from the user?", [
    "scanf()",
    "printf()",
    "gets()",
    "input()",
  ]),
  Quiz(76, "What does the '&' symbol do when used in 'scanf(&age)'?", [
    "It passes the memory address of the variable",
    "It tells the computer to print the variable",
    "It clears the screen",
    "It adds 1 to the variable",
  ]),
  Quiz(77, "What is the 'Input Buffer'?", [
    "A temporary storage area in RAM for keystrokes",
    "A physical button on the keyboard",
    "A type of error in the code",
    "The speed of the processor",
  ]),
  Quiz(78, "Why does scanf() sometimes skip input if there is a leftover newline (\\n)?", [
    "The newline character remains in the buffer from a previous entry",
    "The keyboard is broken",
    "The compiler does not like newlines",
    "The program ran out of memory",
  ]),
  Quiz(79, "Which function is safer than gets() for reading strings?", [
    "fgets()",
    "scanf()",
    "read()",
    "getc()",
  ]),

  // --- Topic 13: Advanced Formatting: Professional CLI Output ---
  Quiz(80, "In printf(), what does '%.2f' signify?", [
    "Display a float with 2 decimal places",
    "Display a float with 2 total digits",
    "Add 2 to the float value",
    "Multiply the float by 2",
  ]),
  Quiz(81, "What is the purpose of the escape sequence '\\t'?", [
    "To insert a horizontal tab (space)",
    "To start a new line",
    "To terminate the program",
    "To trigger a sound alert",
  ]),
  Quiz(82, "Which format specifier is used for an 'unsigned int'?", [
    "%u",
    "%d",
    "%f",
    "%s",
  ]),
  Quiz(83, "What does the format specifier '%p' display?", [
    "A memory address (pointer)",
    "A percentage sign",
    "A password",
    "A private variable",
  ]),
  Quiz(84, "In printf('%5d', x), what does the '5' do?", [
    "Sets a minimum field width of 5 characters",
    "Multiplies the number by 5",
    "Adds 5 spaces after the number",
    "Prints the number 5 times",
  ]),

  // --- Mixed Review (Module 2) ---
  Quiz(85, "Which data type consumes the most memory?", [
    "double",
    "float",
    "char",
    "int",
  ]),
  Quiz(86, "Which of these is a 'literal'?", [
    "3.14",
    "float",
    "const",
    "scanf",
  ]),
  Quiz(87, "Which function clears the output buffer manually?", [
    "fflush(stdout)",
    "clear()",
    "printf()",
    "return 0",
  ]),
  Quiz(88, "A 'hexadecimal' literal in C starts with...", [
    "0x",
    "1x",
    "h",
    "#",
  ]),
  Quiz(89, "What happens if you assign a double to an int variable?", [
    "The decimal part is truncated (cut off)",
    "The program crashes",
    "The number is rounded to the nearest integer",
    "The compiler stops with a fatal error",
  ]),
  Quiz(90, "Which format specifier is used for a single character?", [
    "%c",
    "%s",
    "%d",
    "%f",
  ]),
  Quiz(91, "Which of these allows storing the largest possible whole number?", [
    "unsigned long long",
    "short int",
    "float",
    "char",
  ]),
  Quiz(92, "To use the 'bool' type in C99, you must include...", [
    "<stdbool.h>",
    "<stdio.h>",
    "<math.h>",
    "<bool.h>",
  ]),
  Quiz(93, "What is the escape sequence for a newline?", [
    "\\n",
    "\\t",
    "\\b",
    "\\r",
  ]),
  Quiz(94, "Which function displays formatted output to the console?", [
    "printf()",
    "scanf()",
    "main()",
    "write()",
  ]),
  Quiz(95, "An 'integer literal' without a decimal point is treated as...", [
    "int",
    "float",
    "double",
    "char",
  ]),
  Quiz(96, "In printf('%04d', 7), what will be printed?", [
    "0007",
    "7000",
    "7",
    "    7",
  ]),
  Quiz(97, "Which size is usually larger: long or short?", [
    "long",
    "short",
    "They are the same",
    "Neither, char is largest",
  ]),
  Quiz(98, "What does 'scanf' stand for?", [
    "Scan Formatted",
    "Scan File",
    "Scan Function",
    "Scanner",
  ]),
  Quiz(99, "What is the 'ASCII' value of 'A'?", [
    "65",
    "1",
    "97",
    "0",
  ]),
  Quiz(100, "Why is 'sizeof(int)' better than assuming 4 bytes?", [
    "It ensures the code is portable across different systems",
    "It makes the computer run faster",
    "It prevents the user from seeing the code",
    "It is required for mathematical formulas",
  ]),

  // --- Continuation for Module 2 extra slots (reaching 125 total for M1+M2) ---
  Quiz(101, "What is the escape sequence for a double quote inside a string?", [
    "\\\"",
    "\"",
    "''",
    "//\"",
  ]),
  Quiz(102, "Which data type should be used for scientific calculations requiring 15 digits of precision?", [
    "double",
    "float",
    "int",
    "long",
  ]),
  Quiz(103, "The '%s' specifier is used for...", [
    "Strings (arrays of characters)",
    "Single characters",
    "Signed integers",
    "Scientific notation",
  ]),
  Quiz(104, "Which keyword helps in defining own data type names?", [
    "typedef",
    "struct",
    "enum",
    "union",
  ]),
  Quiz(105, "What is the range of a standard 'unsigned char'?", [
    "0 to 255",
    "-128 to 127",
    "0 to 65535",
    "-32768 to 32767",
  ]),
  Quiz(106, "Which header provides limits like INT_MAX and CHAR_MIN?", [
    "<limits.h>",
    "<float.h>",
    "<stdio.h>",
    "<math.h>",
  ]),
  Quiz(107, "A 'float' literal in C code must end with...", [
    "f (e.g., 3.14f)",
    "d",
    "s",
    "l",
  ]),
  Quiz(108, "What is the default return type of main() if not specified?", [
    "int",
    "void",
    "float",
    "char",
  ]),
  Quiz(109, "Which of the following is a valid 'const' declaration?", [
    "const int MAX = 100;",
    "int const MAX = 100;",
    "Both are valid",
    "Neither is valid",
  ]),
  Quiz(110, "Which escape sequence sounds a bell/beep?", [
    "\\a",
    "\\b",
    "\\n",
    "\\v",
  ]),
  Quiz(111, "Reading a character using 'getchar()' returns an...", [
    "int (to accommodate EOF)",
    "char",
    "string",
    "float",
  ]),
  Quiz(112, "In printf('%x', 255), what is displayed?", [
    "ff",
    "255",
    "11111111",
    "x255",
  ]),
  Quiz(113, "What is 'Precision' in floating point numbers?", [
    "The number of digits after the decimal point",
    "The total number of digits",
    "The memory address of the number",
    "The speed of calculation",
  ]),
  Quiz(114, "Which operator is used to 'cast' a variable to another type?", [
    "(type)",
    "->",
    "&",
    "*",
  ]),
  Quiz(115, "A 'literal' that is written as 012 (starts with 0) is...", [
    "Octal (Base 8)",
    "Decimal (Base 10)",
    "Hexadecimal (Base 16)",
    "Binary (Base 2)",
  ]),
  Quiz(116, "What does 'RAM' stand for?", [
    "Random Access Memory",
    "Read Always Memory",
    "Real Access Module",
    "Rapid Access Memory",
  ]),
  Quiz(117, "When using 'scanf', spaces in the input usually act as...", [
    "Delimiters (separators)",
    "Part of the string",
    "Error triggers",
    "Invisible characters",
  ]),
  Quiz(118, "The range of a 'signed' variable compared to 'unsigned' is...", [
    "Shifted (includes negative numbers but same total capacity)",
    "Twice as large",
    "Half as large",
    "Exactly the same",
  ]),
  Quiz(119, "Which specifier is used for 'long double'?", [
    "%Lf",
    "%f",
    "%ld",
    "%d",
  ]),
  Quiz(120, "What is the 'null character' used to end strings in C?", [
    "\\0",
    "\\n",
    "NULL",
    "EOF",
  ]),
  Quiz(121, "Why is 'fflush(stdin)' considered bad practice?", [
    "It is undefined behavior in the C standard",
    "It makes the program too fast",
    "It deletes the source code",
    "It is only for Windows",
  ]),
  Quiz(122, "Which format specifier is used for 'long int'?", [
    "%ld",
    "%d",
    "%f",
    "%li",
  ]),
  Quiz(123, "What is the memory size of 'double' usually?", [
    "8 bytes",
    "4 bytes",
    "1 byte",
    "16 bytes",
  ]),
  Quiz(124, "In C, a 'byte' is always at least...", [
    "8 bits",
    "1 bit",
    "4 bits",
    "16 bits",
  ]),
  Quiz(125, "Variables declared outside any function are...", [
    "Global variables",
    "Local variables",
    "Constants",
    "Invalid",
  ]),
];
final List<Quiz> cQuizM3 = [
  // --- Topic 14: Arithmetic & Assignment: The Basics ---
  Quiz(126, "Which operator is used to find the remainder of a division?", [
    "% (Modulo)",
    "/ (Division)",
    "* (Multiplication)",
    "& (Address-of)",
  ]),
  Quiz(127, "What is the result of '5 / 2' in C if both are integers?", [
    "2",
    "2.5",
    "3",
    "2.0",
  ]),
  Quiz(128, "Which of these is a 'Compound Assignment' operator?", [
    "+=",
    "==",
    "++",
    "&&",
  ]),
  Quiz(129, "What does 'x++' do compared to '++x' in an expression?", [
    "x++ uses the current value then increments; ++x increments first",
    "++x uses the current value then increments; x++ increments first",
    "x++ adds 2 to the value; ++x adds 1",
    "There is no difference between them",
  ]),
  Quiz(130, "What is the result of '10 % 3'?", [
    "1",
    "3",
    "0",
    "3.33",
  ]),
  Quiz(131, "Which operator has the lowest precedence among arithmetic operators?", [
    "+ and -",
    "* and /",
    "%",
    "++ and --",
  ]),

  // --- Topic 15: Relational & Logical: Making Decisions ---
  Quiz(132, "Which operator is used to check if two values are exactly equal?", [
    "==",
    "=",
    "!=",
    "===",
  ]),
  Quiz(133, "What does the logical operator '&&' represent?", [
    "Logical AND",
    "Logical OR",
    "Logical NOT",
    "Bitwise AND",
  ]),
  Quiz(134, "In C, what is the result of '5 > 3 && 2 > 4'?", [
    "0 (False)",
    "1 (True)",
    "5",
    "Error",
  ]),
  Quiz(135, "What is 'Short-circuit Evaluation' in logical OR (||)?", [
    "If the first condition is true, the second condition is not evaluated",
    "If the first condition is false, the program crashes",
    "Both conditions are always evaluated regardless of the values",
    "The program skips the entire if-block",
  ]),
  Quiz(136, "Which operator represents 'Not Equal'?", [
    "!=",
    "<>",
    "~=",
    "not=",
  ]),
  Quiz(137, "What is the result of '!0' in C?", [
    "1 (True)",
    "0 (False)",
    "-1",
    "Error",
  ]),

  // --- Topic 16: Bitwise Operators: Thinking in Binary ---
  Quiz(138, "Which operator performs a bitwise 'AND'?", [
    "&",
    "&&",
    "|",
    "^",
  ]),
  Quiz(139, "What is the result of '5 & 3' (Binary: 101 & 011)?", [
    "1 (Binary: 001)",
    "7 (Binary: 111)",
    "5",
    "0",
  ]),
  Quiz(140, "Which operator is used for a bitwise 'XOR' (Exclusive OR)?", [
    "^",
    "|",
    "&",
    "~",
  ]),
  Quiz(141, "What does the left-shift operator '<<' effectively do to an integer?", [
    "Multiplies it by powers of 2",
    "Divides it by powers of 2",
    "Sets all bits to zero",
    "Reverses the bits",
  ]),
  Quiz(142, "Which operator is the bitwise 'NOT' (One's Complement)?", [
    "~",
    "!",
    "^",
    "|",
  ]),
  Quiz(143, "What is the result of '1 | 2' (Binary: 01 | 10)?", [
    "3 (Binary: 11)",
    "0 (Binary: 00)",
    "1",
    "2",
  ]),

  // --- Topic 17: Bit Manipulation: Flags & Masks ---
  Quiz(144, "What is a 'Bit Mask'?", [
    "A pattern of bits used to isolate or modify specific bits in a variable",
    "A type of security password for C programs",
    "A way to hide variable names from the compiler",
    "A function that deletes bits",
  ]),
  Quiz(145, "How do you 'Set' (turn on) a specific bit using a mask?", [
    "Using the bitwise OR (|) operator",
    "Using the bitwise AND (&) operator",
    "Using the bitwise NOT (~) operator",
    "Using the assignment (=) operator",
  ]),
  Quiz(146, "How do you 'Clear' (turn off) a specific bit using a mask?", [
    "Using bitwise AND (&) with the NOT (~) of the mask",
    "Using bitwise OR (|) with the mask",
    "Using the bitwise XOR (^) operator",
    "Deleting the variable",
  ]),
  Quiz(147, "Which operator is used to 'Toggle' (flip) a bit?", [
    "^ (XOR)",
    "& (AND)",
    "| (OR)",
    "<< (Shift)",
  ]),
  Quiz(148, "Why is bit manipulation common in Shan font/typing tools?", [
    "To handle specific character encodings and memory-efficient flags",
    "To make the text appear in different colors",
    "To connect the keyboard to the internet",
    "To prevent the user from typing in English",
  ]),

  // --- Topic 18: Operator Precedence: The Order of Power ---
  Quiz(149, "Which operator has the highest precedence in C?", [
    "( ) (Parentheses)",
    "* (Multiplication)",
    "+ (Addition)",
    "= (Assignment)",
  ]),
  Quiz(150, "What is the result of '5 + 2 * 10'?", [
    "25",
    "70",
    "50",
    "17",
  ]),
  Quiz(151, "Which direction does 'Assignment (=)' associate?", [
    "Right-to-Left",
    "Left-to-Right",
    "Top-to-Bottom",
    "It has no associativity",
  ]),
  Quiz(152, "What is the result of 'x = y = 5;'?", [
    "Both x and y become 5",
    "Only y becomes 5",
    "It causes a syntax error",
    "x becomes 0, y becomes 5",
  ]),
  Quiz(153, "Which operator is evaluated first: '&&' or '||'?", [
    "&& (AND)",
    "|| (OR)",
    "They have equal precedence",
    "It depends on the compiler",
  ]),

  // --- Topic 19: Type Casting & Promotion: Mixing Data Types ---
  Quiz(154, "What is 'Implicit Type Conversion' (Promotion)?", [
    "The compiler automatically converts a smaller type to a larger type",
    "The programmer manually changes the data type",
    "The program deletes data to save space",
    "The user chooses the data type at runtime",
  ]),
  Quiz(155, "Which of these is an example of an 'Explicit Cast'?", [
    "(float)x",
    "x + 0.5",
    "int x = 5.5",
    "printf(\"%f\", x)",
  ]),
  Quiz(156, "What happens if you divide an integer by a float (e.g., 5 / 2.0)?", [
    "The result is promoted to a float (2.5)",
    "The result is truncated to an integer (2)",
    "The program crashes",
    "The result is rounded to 3",
  ]),
  Quiz(157, "Why would a programmer use an explicit cast?", [
    "To force a specific type of calculation (e.g., floating-point division)",
    "To make the code run slower",
    "To rename a variable",
    "To hide the value from the user",
  ]),
  Quiz(158, "Converting a 'double' to an 'int' results in...", [
    "Data loss (truncation of the decimal part)",
    "The number being rounded up",
    "Automatic memory allocation",
    "A larger memory address",
  ]),

  // --- Topic 20: The Ternary Operator: Short-hand Logic ---
  Quiz(159, "What is the syntax of the Ternary Operator?", [
    "condition ? expression1 : expression2",
    "condition : expression1 ? expression2",
    "if (condition) ? expression1",
    "expression1 ? expression2 : condition",
  ]),
  Quiz(160, "How many operands does the ternary operator take?", [
    "3",
    "2",
    "1",
    "4",
  ]),
  Quiz(161, "The ternary operator is a shorter version of which structure?", [
    "if-else",
    "for loop",
    "switch-case",
    "while loop",
  ]),
  Quiz(162, "What is the result of '(5 > 3) ? 10 : 20'?", [
    "10",
    "20",
    "1",
    "0",
  ]),
  Quiz(163, "Where is the ternary operator most commonly used?", [
    "In simple variable assignments based on a condition",
    "To replace large complex loops",
    "To include header files",
    "To define new data types",
  ]),

  // --- Mixed Review (Module 3) ---
  Quiz(164, "Which operator is used to access the address of a variable?", [
    "&",
    "*",
    "%",
    "!",
  ]),
  Quiz(165, "What is the result of '1 << 3'?", [
    "8",
    "4",
    "3",
    "1",
  ]),
  Quiz(166, "Which logical operator has the highest precedence?", [
    "! (NOT)",
    "&& (AND)",
    "|| (OR)",
    "==",
  ]),
  Quiz(167, "What is '8 >> 1'?", [
    "4",
    "16",
    "7",
    "9",
  ]),
  Quiz(168, "What is the result of 'sizeof(char)' in C?", [
    "1",
    "4",
    "8",
    "2",
  ]),
  Quiz(169, "Which operator is used to combine multiple expressions in a 'for' loop?", [
    ", (Comma operator)",
    "; (Semicolon)",
    "& (AND)",
    "| (OR)",
  ]),
  Quiz(170, "What is the bitwise result of '7 ^ 7'?", [
    "0",
    "7",
    "14",
    "1",
  ]),
  Quiz(171, "Which operator is used for pointers to access the value at an address?", [
    "* (Dereference)",
    "&",
    "->",
    ".",
  ]),
  Quiz(172, "What is the output of 'printf(\"%d\", 5 == 5);'?", [
    "1",
    "True",
    "5",
    "0",
  ]),
  Quiz(173, "Which operator is used to access members of a structure through a pointer?", [
    "->",
    ".",
    "*",
    "&",
  ]),
  Quiz(174, "What is the result of '(int)3.9'?", [
    "3",
    "4",
    "3.9",
    "0",
  ]),
  Quiz(175, "What is the bitwise 'NOT' of 0 in an 8-bit unsigned integer?", [
    "255",
    "1",
    "0",
    "-1",
  ]),
  Quiz(176, "What is the result of '10 / 4.0'?", [
    "2.5",
    "2",
    "2.0",
    "3",
  ]),
  Quiz(177, "The result of a relational operator (like < or >) is always...", [
    "Either 0 or 1",
    "Any integer",
    "A character",
    "A floating-point number",
  ]),
  Quiz(178, "What does the expression 'x *= 2' do?", [
    "Multiplies x by 2 and stores the result back in x",
    "Checks if x is equal to 2",
    "Sets x to 2",
    "Multiplies x by itself twice",
  ]),
  Quiz(179, "Which operator checks if the left operand is greater than or equal to the right?", [
    ">=",
    "=<",
    "=>",
    ">",
  ]),
  Quiz(180, "What is the result of '!!5'?", [
    "1",
    "5",
    "0",
    "True",
  ]),
  Quiz(181, "Which of these is NOT a bitwise operator?", [
    "&&",
    "&",
    "|",
    "~",
  ]),
  Quiz(182, "In binary, '7' is 0111. What is '7 << 1'?", [
    "14 (Binary: 1110)",
    "3 (Binary: 0011)",
    "7",
    "1",
  ]),
  Quiz(183, "Precedence of '+' is higher than...", [
    "<",
    "*",
    "( )",
    "++",
  ]),
  Quiz(184, "The operator used for string concatenation in C is...", [
    "None (Must use strcat function)",
    "+",
    "&",
    ".",
  ]),
  Quiz(185, "What is '10.0 / 3' result type?", [
    "double",
    "int",
    "float",
    "char",
  ]),
  Quiz(186, "Which operator allows checking multiple conditions but stops if one fails?", [
    "&&",
    "&",
    "|",
    "!",
  ]),
  Quiz(187, "What is the value of 'a' if: 'int a = (5, 10);'?", [
    "10",
    "5",
    "15",
    "Error",
  ]),
  Quiz(188, "Which bitwise operator is often used to check if a number is odd?", [
    "& (x & 1)",
    "|",
    "^",
    "~",
  ]),
  Quiz(189, "What is the result of '5 + 2 * 3 - 1'?", [
    "10",
    "20",
    "11",
    "12",
  ]),
  Quiz(190, "Which operator is used to decrease a value by 1?", [
    "--",
    "++",
    "-=",
    "!!",
  ]),
  Quiz(191, "In bitwise XOR, '1 ^ 1' results in...", [
    "0",
    "1",
    "2",
    "True",
  ]),
  Quiz(192, "The expression 'x = 5' returns which value?", [
    "5",
    "1 (True)",
    "0 (False)",
    "void",
  ]),
  Quiz(193, "Which operator is used to group arithmetic operations to change precedence?", [
    "( )",
    "[ ]",
    "{ }",
    "< >",
  ]),
  Quiz(194, "What is '0 || 0'?", [
    "0",
    "1",
    "False",
    "NULL",
  ]),
  Quiz(195, "Which operator is used to separate expressions in a statement but return the last one?", [
    ", (Comma)",
    "; (Semicolon)",
    ": (Colon)",
    "? (Question mark)",
  ]),
  Quiz(196, "In binary '10' is 2. What is '2 << 2'?", [
    "8",
    "4",
    "2",
    "16",
  ]),
  Quiz(197, "The modulo operator (%) can only be used with which type?", [
    "integers",
    "floats",
    "doubles",
    "pointers",
  ]),
  Quiz(198, "Which operator has the right-to-left associativity?", [
    "++ (Prefix)",
    "+ (Binary)",
    "* (Binary)",
    "&&",
  ]),
  Quiz(199, "What is '2 * 3 / 2' in C?", [
    "3",
    "2",
    "1",
    "4",
  ]),
  Quiz(200, "Operators like +, -, *, / are known as...", [
    "Binary operators",
    "Unary operators",
    "Ternary operators",
    "Logical operators",
  ]),
];
final List<Quiz> cQuizM4 = [
  // --- Topic 21: The if-else Empire: Decision Making ---
  Quiz(201, "What is the basic purpose of an 'if' statement?", [
    "To execute a block of code only if a specific condition is true",
    "To repeat a block of code 10 times",
    "To define a new variable",
    "To include a header file"
  ]),
  Quiz(202, "Which keyword is used to provide an alternative if the 'if' condition is false?", [
    "else",
    "other",
    "then",
    "otherwise"
  ]),
  Quiz(203, "What is an 'else if' ladder used for?", [
    "To check multiple conditions in sequence",
    "To create a loop that never ends",
    "To skip the first line of code",
    "To multiply two numbers"
  ]),
  Quiz(204, "In C, what value is considered 'true' in an if-condition?", [
    "Any non-zero value",
    "Only the number 1",
    "Only positive numbers",
    "Only the text 'true'"
  ]),
  Quiz(205, "What happens if an 'if' statement has no curly braces `{}`?", [
    "Only the single next line of code is considered part of the if-block",
    "The program will not compile",
    "The entire program becomes part of the if-block",
    "The if-statement is ignored"
  ]),
  Quiz(206, "Can you nest an 'if' statement inside another 'if' statement?", [
    "Yes, this is called a Nested If",
    "No, C does not allow this",
    "Only if you use a switch case",
    "Only inside the main() function"
  ]),

  // --- Topic 22: Switch Case: The Multi-way Branch ---
  Quiz(207, "Which keyword starts a switch-case structure?", [
    "switch",
    "select",
    "case",
    "choose"
  ]),
  Quiz(208, "The expression in a switch statement must evaluate to...", [
    "An integer or character constant",
    "A floating-point number (float/double)",
    "A string of text",
    "An entire array"
  ]),
  Quiz(209, "What is the purpose of the 'break' keyword in a switch case?", [
    "To exit the switch block after a match is found",
    "To pause the program for 1 second",
    "To restart the switch from the beginning",
    "To delete the variable being checked"
  ]),
  Quiz(210, "What happens if you omit the 'break' in a switch case?", [
    "Fall-through (execution continues into the next case)",
    "The program crashes immediately",
    "The compiler shows a syntax error",
    "The default case is executed instead"
  ]),
  Quiz(211, "Which keyword handles values that do not match any 'case'?", [
    "default",
    "else",
    "otherwise",
    "none"
  ]),
  Quiz(212, "Is the 'default' case mandatory in a switch statement?", [
    "No, it is optional",
    "Yes, every switch needs one",
    "Only if there are more than 5 cases",
    "Only in C++"
  ]),

  // --- Topic 23: while & do-while: Condition-first Loops ---
  Quiz(213, "What is the main difference between 'while' and 'do-while' loops?", [
    "do-while executes at least once even if the condition is false",
    "while executes at least once even if the condition is false",
    "do-while is faster than while",
    "while loops cannot use integers"
  ]),
  Quiz(214, "Which loop is considered an 'entry-controlled' loop?", [
    "while",
    "do-while",
    "switch",
    "if-else"
  ]),
  Quiz(215, "In a 'while(condition)' loop, when is the condition checked?", [
    "Before every iteration",
    "After every iteration",
    "Only at the very end",
    "Only once at the beginning"
  ]),
  Quiz(216, "What symbol must follow the condition in a 'do { ... } while(cond);' loop?", [
    "; (Semicolon)",
    ": (Colon)",
    "{ } (Braces)",
    "Nothing"
  ]),
  Quiz(217, "What is an 'Infinite Loop'?", [
    "A loop that never meets its exit condition and runs forever",
    "A loop that counts to infinity",
    "A loop that takes up zero memory",
    "A loop that runs only once"
  ]),

  // --- Topic 24: for Loops: The Powerhouse ---
  Quiz(218, "A 'for' loop header usually contains three parts. What are they?", [
    "Initialization, Condition, and Increment/Decrement",
    "Start, Middle, and End",
    "Input, Logic, and Output",
    "Variable, Data, and Type"
  ]),
  Quiz(219, "Which part of the 'for' loop runs only once at the beginning?", [
    "Initialization",
    "Condition",
    "Increment",
    "Body"
  ]),
  Quiz(220, "In 'for( ; ; )', what kind of loop is created?", [
    "An infinite loop",
    "A loop that never runs",
    "A syntax error",
    "A loop that runs exactly 10 times"
  ]),
  Quiz(221, "Which loop is best used when you know the exact number of iterations in advance?", [
    "for",
    "while",
    "do-while",
    "goto"
  ]),
  Quiz(222, "Can you initialize multiple variables in a single 'for' loop header?", [
    "Yes, by using the comma operator",
    "No, only one variable is allowed",
    "Only if they are both floats",
    "Only in the main function"
  ]),

  // --- Topic 25: Break & Continue: The Flow Controllers ---
  Quiz(223, "What does the 'break' statement do inside a loop?", [
    "Terminates the loop entirely and moves to the next section of code",
    "Skips the current iteration and goes to the next one",
    "Restarts the current iteration",
    "Shuts down the computer"
  ]),
  Quiz(224, "What does the 'continue' statement do inside a loop?", [
    "Skips the remaining code in the current iteration and jumps to the next iteration",
    "Terminates the loop entirely",
    "Pauses the loop for 5 seconds",
    "Exits the entire program"
  ]),
  Quiz(225, "Where can the 'break' statement be used?", [
    "Inside loops (for, while, do-while) and switch statements",
    "Only inside an if-statement",
    "Only at the end of a file",
    "Inside every function"
  ]),
  Quiz(226, "In a 'for' loop, does 'continue' skip the increment/update part?", [
    "No, the increment part still executes",
    "Yes, the increment is skipped",
    "It depends on the compiler",
    "Only if it is a nested loop"
  ]),

  // --- Topic 26: Nested Loops: Pattern Printing ---
  Quiz(227, "What is a 'Nested Loop'?", [
    "A loop inside another loop",
    "A loop that contains an if-statement",
    "A loop that is broken",
    "A loop used to calculate birds' nests"
  ]),
  Quiz(228, "In nested loops, for every one iteration of the outer loop, the inner loop runs...", [
    "All its iterations until completion",
    "Only once",
    "Twice",
    "In reverse"
  ]),
  Quiz(229, "Nested loops are most commonly used for...", [
    "Processing 2D grids/matrices and pattern printing",
    "Reading a single integer from the user",
    "Adding two numbers",
    "Clearing the screen"
  ]),
  Quiz(230, "If an outer loop runs 5 times and an inner loop runs 3 times, how many times does the innermost code execute?", [
    "15",
    "8",
    "5",
    "3"
  ]),

  // --- Topic 27: The goto Statement: Proceed with Caution ---
  Quiz(231, "What is the 'goto' statement used for?", [
    "Unconditional jump to a labeled part of the program",
    "To start a new loop",
    "To include another C file",
    "To define a constant"
  ]),
  Quiz(232, "Why is 'goto' generally discouraged in professional C programming?", [
    "It leads to 'Spaghetti Code' which is hard to track and debug",
    "It makes the program run slower",
    "It consumes too much RAM",
    "It is not supported by GCC"
  ]),
  Quiz(233, "A label for a 'goto' statement is defined by...", [
    "A name followed by a colon (e.g., myLabel:)",
    "A number in parentheses",
    "A hashtag symbol",
    "A semicolon"
  ]),

  // --- Mixed Review (Module 4 Logic) ---
  Quiz(234, "Which loop checks the condition at the end of the loop body?", [
    "do-while",
    "while",
    "for",
    "if"
  ]),
  Quiz(235, "What is the output of: `if (5 < 2) printf(\"A\"); else printf(\"B\");`?", [
    "B",
    "A",
    "AB",
    "Nothing"
  ]),
  Quiz(236, "A loop that never terminates is called...", [
    "Infinite loop",
    "Dead loop",
    "Static loop",
    "Void loop"
  ]),
  Quiz(237, "Which operator is used to check multiple conditions in an 'if'?", [
    "Logical operators (&&, ||)",
    "Arithmetic operators (+, -)",
    "Assignment operators (=)",
    "Bitwise operators (&, |)"
  ]),
  Quiz(238, "What is the output of: `for(int i=0; i<3; i++) printf(\"%d\", i);`?", [
    "012",
    "123",
    "000",
    "321"
  ]),
  Quiz(239, "How many times will a 'do-while' loop run if the condition is false from the start?", [
    "Exactly 1",
    "0",
    "Infinite",
    "Twice"
  ]),
  Quiz(240, "Which statement is used to skip the rest of the current loop iteration?", [
    "continue",
    "break",
    "goto",
    "return"
  ]),
  Quiz(241, "Can you use a 'float' value in a switch case?", [
    "No",
    "Yes",
    "Only if it is 0.0",
    "Only with a cast"
  ]),
  Quiz(242, "What is the correct syntax for an 'if' condition?", [
    "if (x == 0)",
    "if x = 0",
    "if [x == 0]",
    "if {x == 0}"
  ]),
  Quiz(243, "Which keyword is used to jump out of a switch statement?", [
    "break",
    "continue",
    "exit",
    "return"
  ]),
  Quiz(244, "What is 'Dangling Else'?", [
    "Confusion when an 'else' is not properly matched with an 'if' in nested logic",
    "An else statement without an if",
    "A loop that has an else",
    "A variable named else"
  ]),
  Quiz(245, "What happens in a 'while(1)' loop?", [
    "It creates an infinite loop",
    "It runs once",
    "It is a syntax error",
    "It runs zero times"
  ]),
  Quiz(246, "Which control structure is used to handle many specific integer values efficiently?", [
    "switch",
    "if-else ladder",
    "for loop",
    "goto"
  ]),
  Quiz(247, "What is the output of: `int x=1; switch(x){ case 1: printf(\"1\"); case 2: printf(\"2\"); }`?", [
    "12 (due to missing break)",
    "1",
    "2",
    "Error"
  ]),
  Quiz(248, "Which control flow statement is often used to exit a program entirely?", [
    "exit()",
    "break",
    "return",
    "goto"
  ]),
  Quiz(249, "In `for(i=1; i<=10; i++)`, how many times does the loop run?", [
    "10",
    "9",
    "11",
    "Infinite"
  ]),
  Quiz(250, "What is the result of `!(5 > 3)`?", [
    "0 (False)",
    "1 (True)",
    "5",
    "3"
  ],),

  // --- Slots 251 - 300 (Detailed logic and specific cases) ---
  Quiz(251, "Which structure is best for a menu-driven program?", [
    "switch",
    "while",
    "if",
    "for"
  ]),
  Quiz(252, "What happens if the loop condition is never false?", [
    "The program hangs in an infinite loop",
    "The compiler detects it and stops",
    "The loop runs once and quits",
    "The computer restarts"
  ]),
  Quiz(253, "Can a 'switch' statement be nested?", [
    "Yes",
    "No",
    "Only in C99",
    "Only with integers"
  ]),
  Quiz(254, "What is the default value of a condition if it's not a boolean?", [
    "Non-zero is true, zero is false",
    "Zero is true, non-zero is false",
    "C only accepts 1 or 0",
    "It must be a comparison"
  ]),
  Quiz(255, "Which loop is best for reading a file until the end?", [
    "while",
    "for",
    "do-while",
    "switch"
  ]),
  Quiz(256, "What is 'Short-circuiting' in C logic?", [
    "Stopping evaluation once the final result is certain",
    "A hardware failure",
    "A break statement",
    "Using goto"
  ]),
  Quiz(257, "What does `for( ; ; )` translate to in assembly/logic?", [
    "A jump back to the start without condition",
    "A break statement",
    "A nop instruction",
    "A return"
  ]),
  Quiz(258, "Which control flow statement is used in the 'TMK Student Manager' to repeat the main menu?", [
    "while or do-while",
    "if-else",
    "goto",
    "for"
  ]),
  Quiz(259, "What is the output of: `int a=5; if(a=0) printf(\"T\"); else printf(\"F\");`?", [
    "F (Assignment a=0 evaluates to 0, which is false)",
    "T",
    "Error",
    "Nothing"
  ]),
  Quiz(260, "Which statement can be used inside a 'while' loop but NOT inside a 'switch'?", [
    "continue",
    "break",
    "return",
    "exit"
  ]),
  Quiz(261, "A 'case' label in a switch must be a...", [
    "Constant expression",
    "Variable",
    "Function call",
    "Floating point"
  ]),
  Quiz(262, "What is a 'Compound Statement'?", [
    "A set of statements enclosed in { }",
    "A statement with two if-conditions",
    "An infinite loop",
    "A line with multiple assignments"
  ]),
  Quiz(263, "In a nested loop, the 'break' statement exits...", [
    "Only the innermost loop",
    "All loops",
    "Only the outer loop",
    "The function"
  ]),
  Quiz(264, "Which keyword is used to skip the current iteration of a loop?", [
    "continue",
    "break",
    "skip",
    "pass"
  ]),
  Quiz(265, "What is the scope of a variable declared inside a for loop `for(int i...)`?", [
    "Only within the for loop",
    "The entire function",
    "The entire file",
    "Global"
  ]),
  Quiz(266, "How do you evaluate 'A OR B' in C?", [
    "A || B",
    "A && B",
    "A ! B",
    "A | B"
  ]),
  Quiz(267, "In a 'for' loop, if the condition is omitted, it is assumed to be...", [
    "True",
    "False",
    "Zero",
    "An error"
  ]),
  Quiz(268, "Which control statement is useful for error handling to jump to a cleanup section?", [
    "goto",
    "break",
    "continue",
    "if"
  ]),
  Quiz(269, "What is the output of `if(-1) printf(\"True\");`?", [
    "True",
    "False",
    "Nothing",
    "Error"
  ]),
  Quiz(270, "What is the value of 'i' after `for(i=0; i<5; i++);`?", [
    "5",
    "4",
    "0",
    "6"
  ]),
  Quiz(271, "Can an 'if' statement exist without an 'else'?", [
    "Yes",
    "No",
    "Only in C11",
    "Only if nested"
  ]),
  Quiz(272, "What is a 'Boolean Expression' in C?", [
    "Any expression that evaluates to an integer",
    "A special type of string",
    "A function name",
    "A comment"
  ]),
  Quiz(273, "Which operator is evaluated first in `if (a > b && c > d)`?", [
    ">",
    "&&",
    "if",
    "()"
  ]),
  Quiz(274, "How many 'else' statements can correspond to a single 'if'?", [
    "Exactly 1",
    "Infinite",
    "None",
    "Depends on the loop"
  ]),
  Quiz(275, "What does `break` do in a `while` loop?", [
    "Exits the loop",
    "Starts the loop over",
    "Exits the program",
    "Skips one line"
  ]),
  Quiz(276, "What is the logical 'NOT' of 10 in C?", [
    "0",
    "1",
    "-10",
    "True"
  ]),
  Quiz(277, "The `condition` in `for(init; condition; update)` is checked...", [
    "Before every iteration",
    "After every iteration",
    "Only at the start",
    "Only at the end"
  ]),
  Quiz(278, "Which loop is best for a 'Press any key to continue' prompt?", [
    "do-while",
    "for",
    "while",
    "if"
  ]),
  Quiz(279, "Which part of a 'for' loop is optional?", [
    "All three parts",
    "Only initialization",
    "Only update",
    "Only condition"
  ]),
  Quiz(280, "What is the output of `int x=5; if(x > 0) { x--; } printf(\"%d\", x);`?", [
    "4",
    "5",
    "0",
    "1"
  ]),
  Quiz(281, "Which statement is used to execute code based on a variable matching several constants?", [
    "switch",
    "while",
    "if",
    "for"
  ]),
  Quiz(282, "What is a 'Loop Counter'?", [
    "A variable used to keep track of the number of iterations",
    "A specialized hardware device",
    "The break statement",
    "A function that returns 1"
  ]),
  Quiz(283, "What is the effect of `while(0)`?", [
    "The loop never runs",
    "The loop runs once",
    "The loop runs infinitely",
    "Syntax error"
  ]),
  Quiz(284, "Can you have an 'if' inside a 'case' in a 'switch'?", [
    "Yes",
    "No",
    "Only if you use break",
    "Only in C++"
  ]),
  Quiz(285, "The expression `a || b && c` is evaluated as...", [
    "a || (b && c)",
    "(a || b) && c",
    "Left to right",
    "Right to left"
  ]),
  Quiz(286, "In pattern printing, the outer loop usually controls the...", [
    "Rows",
    "Columns",
    "Values",
    "Colors"
  ]),
  Quiz(287, "Which operator is used for 'Logical NOT'?", [
    "!",
    "~",
    "not",
    "^"
  ]),
  Quiz(288, "A `switch` statement is generally faster than an `if-else` ladder because...", [
    "Compilers can optimize it using a jump table",
    "It uses less RAM",
    "It skips the compiler",
    "It is a preprocessor directive"
  ]),
  Quiz(289, "What happens if a loop has no update statement (like `i++`)?", [
    "It may become an infinite loop",
    "The compiler adds one automatically",
    "The program crashes",
    "It runs once"
  ]),
  Quiz(290, "What is the value of `i` after: `for(i=0; i<10; i+=2);`?", [
    "10",
    "8",
    "12",
    "0"
  ]),
  Quiz(291, "Which statement terminates only the current iteration of the loop?", [
    "continue",
    "break",
    "exit",
    "goto"
  ]),
  Quiz(292, "Is the following valid: `if(1) if(2) printf(\"3\");`?", [
    "Yes (Nested If)",
    "No",
    "Only with braces",
    "Only in the main function"
  ]),
  Quiz(293, "What is the output of `int i=1; do { printf(\"%d\", i); i++; } while(i < 1);`?", [
    "1",
    "0",
    "Nothing",
    "Infinite"
  ]),
  Quiz(294, "Which loop structure is usually translated into 'Init, Label, If-Condition, Body, Update, Jump-Label'?", [
    "for",
    "while",
    "do-while",
    "switch"
  ]),
  Quiz(295, "What is the keyword to define a branch destination for `goto`?", [
    "A Label (e.g. name:)",
    "case",
    "default",
    "target"
  ]),
  Quiz(296, "The 'body' of a loop refers to...", [
    "The statements that are repeated",
    "The condition checking",
    "The header file",
    "The variable declaration"
  ]),
  Quiz(297, "Which logical operator is 'inclusive OR'?", [
    "||",
    "&&",
    "!",
    "^"
  ]),
  Quiz(298, "What is the output of `if(0.5) printf(\"A\");`?", [
    "A (Any non-zero is true)",
    "Nothing",
    "Error",
    "B"
  ]),
  Quiz(299, "Can you use a 'string' as a case label in C?", [
    "No",
    "Yes",
    "Only if double quoted",
    "Only with strcmp"
  ]),
  Quiz(300, "What is the 'Condition' part of a loop primarily for?", [
    "Determining when to stop repeating",
    "Storing the data",
    "Outputting text",
    "Resetting the RAM"
  ]),
];
final List<Quiz> cQuizM5 = [
  // --- Topic 28: Introduction to Arrays: Homogeneous Collections ---
  Quiz(301, "What is an 'Array' in C?", [
    "A collection of multiple items of the same data type stored in contiguous memory",
    "A collection of items of different data types",
    "A function that returns multiple values",
    "A type of loop used for printing"
  ]),
  Quiz(302, "In C, what is the index of the first element in an array?", [
    "0",
    "1",
    "-1",
    "Any number chosen by the programmer"
  ]),
  Quiz(303, "What happens if you try to access an index outside the array's bounds (e.g., index 10 in an array of size 5)?", [
    "Undefined behavior (the program may crash or read 'garbage' data)",
    "The compiler automatically expands the array size",
    "The program shows a 'OutOfBoundsException' like Java",
    "The index is reset to 0"
  ]),
  Quiz(304, "How is the total memory size of an array calculated?", [
    "Number of elements multiplied by the size of the data type",
    "It is always 1024 bytes",
    "It is the size of the first element only",
    "The compiler decides it randomly"
  ]),
  Quiz(305, "If you initialize an array as 'int arr[5] = {1, 2};', what are the values of the remaining elements?", [
    "0",
    "Garbage values",
    "1 and 2 are repeated",
    "The program results in a syntax error"
  ]),
  Quiz(306, "Which symbol is used to declare an array in C?", [
    "[ ] (Square brackets)",
    "{ } (Curly braces)",
    "( ) (Parentheses)",
    "< > (Angle brackets)"
  ]),

  // --- Topic 29: Multidimensional Arrays: Matrices & Grids ---
  Quiz(307, "What is a 2D array typically used to represent?", [
    "Tables, matrices, or grids",
    "A simple list of names",
    "A single integer value",
    "A connection to a database"
  ]),
  Quiz(308, "How do you access the element in the 2nd row and 3rd column of 'int matrix[3][4]'?", [
    "matrix[1][2]",
    "matrix[2][3]",
    "matrix[2,3]",
    "matrix(2)(3)"
  ]),
  Quiz(309, "In memory, how are 2D arrays stored in C?", [
    "Row-major order (one row after another in a single line)",
    "Column-major order",
    "In different parts of the RAM",
    "On the hard drive"
  ]),
  Quiz(310, "Which loop structure is best for traversing a 2D array?", [
    "Nested for loops",
    "A single while loop",
    "A switch-case statement",
    "An if-else ladder"
  ]),
  Quiz(311, "What is the total number of elements in 'char grid[5][10]'?", [
    "50",
    "15",
    "5",
    "10"
  ]),

  // --- Topic 30: Strings in C: Character Arrays & The Null Terminator ---
  Quiz(312, "In C, what is a 'String'?", [
    "An array of characters ending with a null terminator (\\0)",
    "A primitive data type like int",
    "A special object with built-in methods",
    "A pointer to a floating-point number"
  ]),
  Quiz(313, "What is the purpose of the null terminator '\\0'?", [
    "To mark the end of the string in memory",
    "To clear the string data",
    "To add a space between words",
    "To capitalize the first letter"
  ]),
  Quiz(314, "If a string 'Hello' is stored in an array, what is the minimum array size needed?", [
    "6 (5 for characters + 1 for \\0)",
    "5",
    "4",
    "10"
  ]),
  Quiz(315, "Which format specifier is used in printf() to display a string?", [
    "%s",
    "%c",
    "%d",
    "%str"
  ]),
  Quiz(316, "What happens if you forget the null terminator in a character array?", [
    "Functions like printf() will keep reading adjacent memory until they find a zero",
    "The compiler adds it automatically during execution",
    "The program converts the array into an integer",
    "The text is automatically translated to ASCII"
  ]),

  // --- Topic 31: String Handling Functions: <string.h> Deep Dive ---
  Quiz(317, "Which function is used to find the length of a string (excluding the null terminator)?", [
    "strlen()",
    "sizeof()",
    "strlength()",
    "length()"
  ]),
  Quiz(318, "Which function is used to copy one string into another?", [
    "strcpy()",
    "strcp()",
    "memcpy()",
    "assign()"
  ]),
  Quiz(319, "What does 'strcmp(s1, s2)' return if the two strings are identical?", [
    "0",
    "1",
    "-1",
    "True"
  ]),
  Quiz(320, "Which function is used to append (concatenate) one string to the end of another?", [
    "strcat()",
    "stradd()",
    "strappend()",
    "combine()"
  ]),
  Quiz(321, "Why is 'strncpy()' considered safer than 'strcpy()'?", [
    "It allows you to specify the maximum number of characters to copy, preventing overflow",
    "It works faster on older CPUs",
    "It automatically translates text to lowercase",
    "It encrypts the string data"
  ]),

  // --- Topic 32: Introduction to Structs: Heterogeneous Data ---
  Quiz(322, "What is a 'struct' (Structure) in C?", [
    "A user-defined data type that groups variables of different types under one name",
    "A type of array that only stores integers",
    "A function that returns a structure",
    "A reserved block of memory for loops"
  ]),
  Quiz(323, "Which keyword is used to define a structure?", [
    "struct",
    "type",
    "class",
    "group"
  ]),
  Quiz(324, "The variables inside a structure are called...", [
    "Members (or fields)",
    "Elements",
    "Methods",
    "Parameters"
  ]),
  Quiz(325, "Which operator is used to access a member of a structure variable?", [
    ". (Dot operator)",
    "-> (Arrow operator)",
    ": (Colon)",
    "* (Asterisk)"
  ]),
  Quiz(326, "How much memory does a structure occupy?", [
    "At least the sum of the sizes of its members (plus padding)",
    "Always 4 bytes",
    "The size of the largest member only",
    "It varies every time the program runs"
  ]),

  // --- Topic 33: Nested Structs & Arrays of Structs: Database Basics ---
  Quiz(327, "What is an 'Array of Structs'?", [
    "A collection where each element is a structure (ideal for databases)",
    "A structure that contains only arrays",
    "A way to link two different files",
    "A loop that iterates through a structure"
  ]),
  Quiz(328, "In the TMK Student Manager, how would you store 50 students?", [
    "struct Student students[50];",
    "struct Student[50] students;",
    "array<Student, 50> students;",
    "int students[50];"
  ]),
  Quiz(329, "What is a 'Nested Struct'?", [
    "A structure that contains another structure as a member",
    "A structure defined inside a function",
    "A structure with no members",
    "A structure used only for math"
  ]),
  Quiz(330, "How do you access a member of a nested structure (e.g., student.birthday.year)?", [
    "Using multiple dot operators (student.birthday.year)",
    "Using a comma (student, birthday, year)",
    "Using a pointer only",
    "You cannot access it directly"
  ]),

  // --- Topic 34: Typedef & Enums: Creating Custom Data Types ---
  Quiz(331, "What is the purpose of the 'typedef' keyword?", [
    "To create an alias (nickname) for an existing data type",
    "To define a new mathematical constant",
    "To allocate memory on the heap",
    "To include a library"
  ]),
  Quiz(332, "How does 'typedef struct' help in C programming?", [
    "It allows you to use the struct without typing the 'struct' keyword every time",
    "It makes the structure run faster",
    "It prevents the structure from being modified",
    "It converts the structure into an array"
  ]),
  Quiz(333, "What is an 'enum' (Enumeration)?", [
    "A user-defined type consisting of a set of named integer constants",
    "A function that counts the number of variables",
    "A way to encrypt text data",
    "A type of loop for arrays"
  ]),
  Quiz(334, "By default, what is the integer value assigned to the first element of an enum?", [
    "0",
    "1",
    "-1",
    "A random number"
  ]),
  Quiz(335, "Which keyword is used to define an enumeration?", [
    "enum",
    "list",
    "define",
    "const"
  ]),

  // --- Mixed Review (Module 5) ---
  Quiz(336, "Which of these is used to store a list of student names?", [
    "A 2D character array (char names[10][50])",
    "A single char variable",
    "An integer array",
    "A float array"
  ]),
  Quiz(337, "To use 'strlen()', which header must be included?", [
    "<string.h>",
    "<stdio.h>",
    "<stdlib.h>",
    "<ctype.h>"
  ]),
  Quiz(338, "What is the result of 'sizeof' on a char array 'char s[] = \"Hi\";'?", [
    "3 (H, i, and \\0)",
    "2",
    "1",
    "8"
  ]),
  Quiz(339, "Which function compares two strings for equality?", [
    "strcmp()",
    "strcpy()",
    "strlen()",
    "strtok()"
  ]),
  Quiz(340, "What is the index of the last element in an array of size 'N'?", [
    "N - 1",
    "N",
    "0",
    "1"
  ]),
  Quiz(341, "Can a structure contain a pointer to itself?", [
    "Yes (Self-referential structure, used in linked lists)",
    "No, this causes a recursive error",
    "Only in C++",
    "Only if it is a global variable"
  ]),
  Quiz(342, "What is 'Padding' in a structure?", [
    "Extra bytes added by the compiler to align members in memory",
    "Extra comments added for readability",
    "The null terminator at the end of a struct",
    "Space between two different arrays"
  ]),
  Quiz(343, "Which of the following correctly initializes a 2D array?", [
    "int a[2][2] = {{1, 2}, {3, 4}};",
    "int a[2,2] = {1, 2, 3, 4};",
    "int a(2)(2) = {1, 2, 3, 4};",
    "int a{2}{2} = {1, 2, 3, 4};"
  ]),
  Quiz(344, "What does 'strrev()' do (in non-standard libraries)?", [
    "Reverses a string",
    "Reviews a string for errors",
    "Removes a string from memory",
    "Returns a string"
  ]),
  Quiz(345, "How do you declare a structure named 'Book'?", [
    "struct Book { ... };",
    "Book struct { ... };",
    "define struct Book { ... }",
    "type Book { ... }"
  ]),
  Quiz(346, "An array name acts as a...", [
    "Constant pointer to the first element",
    "Variable integer",
    "Function call",
    "String literal"
  ]),
  Quiz(347, "What is the value of 'SUN' in 'enum Days {MON=1, TUE, WED, THU, FRI, SAT, SUN};'?", [
    "7",
    "6",
    "0",
    "1"
  ]),
  Quiz(348, "Which function is used to find a character within a string?", [
    "strchr()",
    "strstr()",
    "strcmp()",
    "strtok()"
  ]),
  Quiz(349, "When passing an array to a function, what is actually passed?", [
    "The address of the first element (pointer)",
    "A copy of the entire array",
    "The size of the array",
    "The last element"
  ]),
  Quiz(350, "What is 'Structure Tag'?", [
    "The name given to a structure (e.g., 'Student' in 'struct Student')",
    "A comment at the end of a struct",
    "A special byte for security",
    "A pointer to the struct"
  ]),
  Quiz(351, "Which keyword is used to access members of a structure through its pointer?", [
    "->",
    ".",
    "*",
    "&"
  ]),
  Quiz(352, "What is the output of 'printf(\"%s\", \"Shan\" + 1);'?", [
    "han",
    "Shan1",
    "S",
    "Error"
  ]),
  Quiz(353, "What is 'Column-Major' storage?", [
    "Storing array elements column by column (Not used in C)",
    "Storing array elements row by row",
    "Storing only the first column",
    "Storing elements in reverse"
  ]),
  Quiz(354, "How do you initialize a string 'name' with 'Mao'?", [
    "char name[] = \"Mao\";",
    "char name = \"Mao\";",
    "string name = \"Mao\";",
    "char name[] = 'Mao';"
  ]),
  Quiz(355, "What is the difference between 'char a[] = \"Hi\";' and 'char *b = \"Hi\";'?", [
    "'a' is a modifiable array; 'b' is a pointer to a constant string literal",
    "'a' is a pointer; 'b' is an array",
    "There is no difference",
    "'a' is stored on the heap; 'b' is on the stack"
  ]),
  Quiz(356, "Which string function finds a string within another string?", [
    "strstr()",
    "strchr()",
    "strpbrk()",
    "strspn()"
  ]),
  Quiz(357, "What is the maximum number of dimensions an array can have in C?", [
    "Theoretically unlimited (limited by memory)",
    "Exactly 3",
    "Exactly 2",
    "Exactly 255"
  ]),
  Quiz(358, "How do you clear a string in C?", [
    "Set the first character to '\\0' (str[0] = '\\0';)",
    "Delete the array",
    "Use clear(str);",
    "Set all elements to 1"
  ]),
  Quiz(359, "What is a 'Buffer Overflow'?", [
    "Writing more data to an array than it can hold",
    "The CPU running too fast",
    "A type of memory allocation",
    "A function returning a large value"
  ]),
  Quiz(360, "The 'dot operator' has higher precedence than the 'asterisk' operator.", [
    "True",
    "False",
    "They are equal",
    "It depends on brackets"
  ]),
  Quiz(361, "Which of the following is a way to initialize a structure?", [
    "struct Student s = {101, \"Sai\", 3.5};",
    "struct Student s = (101, \"Sai\", 3.5);",
    "struct Student s = [101, \"Sai\", 3.5];",
    "struct Student s = 101, \"Sai\", 3.5;"
  ]),
  Quiz(362, "What does 'toupper()' do (from <ctype.h>)?", [
    "Converts a character to uppercase",
    "Converts a string to uppercase",
    "Checks if a character is uppercase",
    "Capitalizes the first letter of a sentence"
  ]),
  Quiz(363, "In an array 'int a[10]', what is 'a[10]'?", [
    "Out of bounds (invalid access)",
    "The 10th element",
    "The 11th element",
    "The first element"
  ]),
  Quiz(364, "What is an 'Enumerated Constant'?", [
    "One of the names inside an enum (e.g., 'MON' in enum Days)",
    "A number in an array",
    "A string literal",
    "A global variable"
  ]),
  Quiz(365, "Can you assign one structure variable to another (e.g., s1 = s2;)?", [
    "Yes (It performs a member-by-member copy)",
    "No, you must copy each member manually",
    "Only if they are pointers",
    "Only in C++"
  ]),
  Quiz(366, "What is the size of an enum variable?", [
    "Typically the same as an 'int'",
    "Always 1 byte",
    "Depends on the number of elements",
    "8 bytes"
  ]),
  Quiz(367, "Which function splits a string into tokens based on delimiters?", [
    "strtok()",
    "strchr()",
    "strstr()",
    "strsplit()"
  ]),
  Quiz(368, "What does 'sizeof(matrix)' return for 'int matrix[2][3]' (assuming 4-byte int)?", [
    "24 (2 * 3 * 4)",
    "6",
    "4",
    "2"
  ]),
  Quiz(369, "The 'null character' has an ASCII value of...", [
    "0",
    "32",
    "48",
    "1"
  ]),
  Quiz(370, "What is 'Sparse Matrix'?", [
    "A matrix where most of the elements are zero",
    "A matrix with no elements",
    "A 1D array",
    "A matrix stored on the heap"
  ]),
  Quiz(371, "Which character is used to continue a long string literal on the next line?", [
    "\\ (Backslash)",
    "/ (Forward slash)",
    "; (Semicolon)",
    "+ (Plus)"
  ]),
  Quiz(372, "What is 'Base Address' of an array?", [
    "The address of the first element (index 0)",
    "The address of the last element",
    "The size of the array",
    "The name of the array"
  ]),
  Quiz(373, "Which function converts a string to an integer?", [
    "atoi()",
    "itoa()",
    "strint()",
    "intval()"
  ]),
  Quiz(374, "How do you pass a structure to a function by reference?", [
    "Pass the address of the structure using '&'",
    "Pass the name of the structure directly",
    "Structures cannot be passed to functions",
    "Use the 'typedef' keyword"
  ]),
  Quiz(375, "What is the primary benefit of using 'structs'?", [
    "They organize related data of different types into a single unit",
    "They make the program run faster",
    "They reduce the memory usage",
    "They replace the need for loops"
  ]),
];
final List<Quiz> cQuizM6 = [
  // --- Topic 35: Memory Addresses: The & Operator ---
  Quiz(376, "What is a 'Memory Address' in C?", [
    "A unique numerical location in RAM where a variable is stored",
    "The name of a variable",
    "The value stored inside a variable",
    "A line number in the source code"
  ]),
  Quiz(377, "Which operator is used to find the address of a variable?", [
    "& (Address-of operator)",
    "* (Dereference operator)",
    "% (Modulo operator)",
    "sizeof"
  ]),
  Quiz(378, "In what format are memory addresses usually displayed?", [
    "Hexadecimal (e.g., 0x7ffd...)",
    "Binary (0 and 1)",
    "Decimal (1, 2, 3...)",
    "Plain text strings"
  ]),
  Quiz(379, "Which format specifier is used in printf() to display a pointer/address?", [
    "%p",
    "%d",
    "%x",
    "%s"
  ]),
  Quiz(380, "What is the result of '&variable'?", [
    "The memory address where the variable starts",
    "The value of the variable",
    "The size of the variable",
    "A copy of the variable"
  ]),

  // --- Topic 36: Pointer Basics: The * Operator ---
  Quiz(381, "What is a 'Pointer' in C?", [
    "A variable that stores the memory address of another variable",
    "A tool used to draw on the screen",
    "A special type of loop",
    "A way to skip lines of code"
  ]),
  Quiz(382, "Which symbol is used to declare a pointer variable?", [
    "* (Asterisk)",
    "& (Ampersand)",
    "# (Hashtag)",
    "^ (Caret)"
  ]),
  Quiz(383, "What is 'Dereferencing' a pointer?", [
    "Accessing the value stored at the address the pointer is holding",
    "Deleting the pointer from memory",
    "Changing the pointer's address to zero",
    "Finding the size of the pointer"
  ]),
  Quiz(384, "If 'ptr' is a pointer to an integer 'x', what does '*ptr = 10;' do?", [
    "Changes the value of 'x' to 10",
    "Changes the address of 'ptr' to 10",
    "Creates a new variable named 10",
    "It is a syntax error"
  ]),
  Quiz(385, "What is a 'NULL Pointer'?", [
    "A pointer that points to nothing (address 0)",
    "A pointer that has been deleted",
    "A pointer that points to a random location",
    "A pointer used only for strings"
  ]),

  // --- Topic 37: Pointer Arithmetic: Moving in Memory ---
  Quiz(386, "What happens when you perform 'ptr++' on an integer pointer (4-byte int)?", [
    "The address increases by 4 bytes",
    "The address increases by 1 byte",
    "The value at the address increases by 1",
    "The pointer is deleted"
  ]),
  Quiz(387, "Which of the following is a valid pointer arithmetic operation?", [
    "Subtracting an integer from a pointer",
    "Multiplying two pointers",
    "Adding two pointers together",
    "Dividing a pointer by two"
  ]),
  Quiz(388, "What does 'ptr2 - ptr1' return if both point to elements in the same array?", [
    "The number of elements between the two pointers",
    "The physical distance in millimeters",
    "The sum of the values at those addresses",
    "A NULL pointer"
  ]),
  Quiz(389, "Pointer arithmetic depends heavily on...", [
    "The data type the pointer is pointing to",
    "The name of the variable",
    "The speed of the CPU",
    "The version of the compiler"
  ]),
  Quiz(390, "Can you perform arithmetic on a 'void' pointer?", [
    "No, because the size of the data type is unknown",
    "Yes, it defaults to 1 byte",
    "Only if you use GCC",
    "Only in the main function"
  ]),

  // --- Topic 38: Pointers & Arrays: The Secret Relationship ---
  Quiz(391, "In C, the name of an array acts as a...", [
    "Constant pointer to its first element",
    "Variable that stores the array size",
    "Function that returns an address",
    "String literal"
  ]),
  Quiz(392, "How is 'arr[i]' internally evaluated by the compiler?", [
    "*(arr + i)",
    "arr + (i * sizeof(int))",
    "&arr + i",
    "i[arr]"
  ]),
  Quiz(393, "If 'ptr' points to the start of an array, how do you access the 3rd element?", [
    "*(ptr + 2)",
    "ptr + 3",
    "*ptr + 3",
    "&ptr[3]"
  ]),
  Quiz(394, "What is the difference between an array name and a pointer?", [
    "An array name is a constant pointer; it cannot be reassigned",
    "A pointer is always 4 bytes; an array is always 100 bytes",
    "There is no difference",
    "An array name can be incremented using ++"
  ]),
  Quiz(395, "Which expression is equivalent to 'ptr[0]'?", [
    "*ptr",
    "&ptr",
    "ptr",
    "sizeof(ptr)"
  ]),

  // --- Topic 39: Call by Value vs. Call by Reference ---
  Quiz(396, "What is 'Call by Value'?", [
    "Passing a copy of the variable's value to a function",
    "Passing the original variable to a function",
    "Passing the address of a variable",
    "Passing only the variable name"
  ]),
  Quiz(397, "What is 'Call by Reference' in C?", [
    "Passing the memory address (pointer) of a variable to a function",
    "Passing a nickname of the variable",
    "Using global variables only",
    "Passing a string version of the data"
  ]),
  Quiz(398, "Why would you use Call by Reference?", [
    "To allow a function to modify the original variable in the caller's scope",
    "To make the code run slower for debugging",
    "To prevent the function from changing anything",
    "To use less CPU cache"
  ]),
  Quiz(399, "Which is more memory-efficient for passing large structures?", [
    "Call by Reference (passing a pointer)",
    "Call by Value (passing a copy)",
    "Both are exactly the same",
    "Neither, use global variables"
  ]),
  Quiz(400, "In 'void swap(int *a, int *b)', what are 'a' and 'b'?", [
    "Pointer parameters that receive addresses",
    "Integer variables that receive values",
    "Global constants",
    "Function names"
  ]),

  // --- Topic 40: Dynamic Memory Allocation: malloc, calloc & free ---
  Quiz(401, "Where is dynamic memory allocated?", [
    "The Heap",
    "The Stack",
    "The CPU Registers",
    "The Hard Drive"
  ]),
  Quiz(402, "Which function allocates a block of memory but does NOT initialize it?", [
    "malloc()",
    "calloc()",
    "realloc()",
    "alloc()"
  ]),
  Quiz(403, "What does 'malloc()' return if it fails to allocate memory?", [
    "NULL",
    "0",
    "-1",
    "A random address"
  ]),
  Quiz(404, "Which function allocates memory and initializes all bits to zero?", [
    "calloc()",
    "malloc()",
    "memset()",
    "zero_alloc()"
  ]),
  Quiz(405, "What is the purpose of the 'free()' function?", [
    "To release dynamically allocated memory back to the system",
    "To delete the source code file",
    "To make the program free to download",
    "To clear the console screen"
  ]),
  Quiz(406, "Which function is used to change the size of an existing dynamic memory block?", [
    "realloc()",
    "resize()",
    "malloc()",
    "update()"
  ]),

  // --- Topic 41: Void Pointers & Pointers to Pointers ---
  Quiz(407, "What is a 'void pointer' (void *)?", [
    "A generic pointer that can hold the address of any data type",
    "A pointer that points to a function returning nothing",
    "A pointer that has no memory address",
    "An invalid pointer"
  ]),
  Quiz(408, "Before dereferencing a void pointer, you must...", [
    "Typecast it to a specific pointer type",
    "Set it to NULL",
    "Multiply it by sizeof(int)",
    "Pass it to a function"
  ]),
  Quiz(409, "What is a 'Double Pointer' (int **ptr)?", [
    "A pointer that stores the address of another pointer",
    "A pointer that points to a 'double' data type",
    "A pointer that is twice as large as a normal pointer",
    "A pointer used only for 2D arrays"
  ]),
  Quiz(410, "Double pointers are commonly used to...", [
    "Modify a pointer's address inside a function",
    "Speed up mathematical operations",
    "Access the hard drive directly",
    "Calculate square roots"
  ]),

  // --- Topic 42: Dangling Pointers & Memory Leaks: The Dark Side ---
  Quiz(411, "What is a 'Dangling Pointer'?", [
    "A pointer that points to a memory location that has been freed",
    "A pointer that is declared but not initialized",
    "A pointer that points to the NULL address",
    "A pointer that points to a large array"
  ]),
  Quiz(412, "How do you prevent a dangling pointer after calling 'free(ptr)'?", [
    "Immediately set the pointer to NULL (ptr = NULL;)",
    "Re-allocate the pointer immediately",
    "Delete the variable declaration",
    "The system handles it automatically"
  ]),
  Quiz(413, "What is a 'Memory Leak'?", [
    "Failing to free dynamically allocated memory after it is no longer needed",
    "When a pointer points to the wrong variable",
    "When the RAM physically breaks",
    "When the program crashes due to a syntax error"
  ]),
  Quiz(414, "What is the result of a continuous memory leak in a long-running program?", [
    "The program eventually consumes all available RAM and crashes",
    "The program runs faster over time",
    "The hard drive fills up with text files",
    "The CPU temperature decreases"
  ]),
  Quiz(415, "Which tool is commonly used to detect memory leaks in C programs?", [
    "Valgrind",
    "GDB",
    "GCC",
    "Visual Studio Code"
  ]),

  // --- Topic 43: Pointers to Structs: The -> Arrow Operator ---
  Quiz(416, "How do you access a struct member if you have a pointer to that struct?", [
    "Using the arrow operator (->)",
    "Using the dot operator (.)",
    "Using the plus operator (+)",
    "Using brackets [ ]"
  ]),
  Quiz(417, "If 'ptr' points to a struct 'Student', 'ptr->name' is equivalent to...", [
    "(*ptr).name",
    "*(ptr.name)",
    "&ptr.name",
    "ptr.name"
  ]),
  Quiz(418, "Why is the arrow operator used?", [
    "It combines dereferencing and member access into one step",
    "It makes the program run on mobile devices",
    "It is required by the preprocessor",
    "It only works with strings"
  ]),
  Quiz(419, "To allocate a struct dynamically, you would use...", [
    "struct MyStruct *ptr = malloc(sizeof(struct MyStruct));",
    "struct MyStruct ptr = malloc(sizeof(ptr));",
    "malloc(struct MyStruct);",
    "new struct MyStruct;"
  ]),

  // --- Topic 44: Function Pointers: Code as Data ---
  Quiz(420, "What is a 'Function Pointer'?", [
    "A variable that stores the memory address of a function's code",
    "A pointer that points to a variable inside a function",
    "A function that returns a pointer",
    "A pointer that is only used for math functions"
  ]),
  Quiz(421, "What is the correct syntax to declare a pointer to a function returning int and taking one int parameter?", [
    "int (*ptr)(int);",
    "int *ptr(int);",
    "(*int)ptr(int);",
    "int ptr*(int);"
  ]),
  Quiz(422, "Function pointers are primarily used for...", [
    "Implementing 'Callbacks' and dynamic behavior",
    "Reducing the size of the executable",
    "Replacing for-loops",
    "Accessing the keyboard"
  ]),
  Quiz(423, "Can you pass a function pointer as an argument to another function?", [
    "Yes",
    "No",
    "Only if the function is global",
    "Only in C++"
  ]),

  // --- Topic 45: The Stack vs. The Heap: Memory Layout ---
  Quiz(424, "Which memory area is managed automatically (LIFO) for local variables?", [
    "The Stack",
    "The Heap",
    "The Data Segment",
    "The BSS Segment"
  ]),
  Quiz(425, "Which memory area must be managed manually by the programmer?", [
    "The Heap",
    "The Stack",
    "The Code Segment",
    "The CPU Cache"
  ]),
  Quiz(426, "What is a 'Stack Overflow'?", [
    "Exceeding the stack memory limit, usually due to deep recursion",
    "A website for programmers",
    "When the heap grows too large",
    "When you use too many pointers"
  ]),
  Quiz(427, "Memory in the Heap is persistent until...", [
    "It is explicitly freed or the program terminates",
    "The function it was created in finishes",
    "The user closes the laptop",
    "The next variable is declared"
  ]),

  // --- Mixed Review & Edge Cases (Module 6) ---
  Quiz(428, "What is 'Pointer to Pointer to Pointer' (int ***ptr)?", [
    "A valid C construct (triple pointer)",
    "A syntax error in all C versions",
    "Only used in AI programming",
    "A way to allocate memory on the GPU"
  ]),
  Quiz(429, "What happens if you free the same pointer twice?", [
    "Undefined behavior (Double free error, usually a crash)",
    "The memory is freed twice as much",
    "Nothing, it is safe",
    "The pointer is set to NULL automatically"
  ]),
  Quiz(430, "What is the size of a pointer variable on a 64-bit system?", [
    "8 bytes",
    "4 bytes",
    "1 byte",
    "It depends on the data type it points to"
  ]),
  Quiz(431, "Which keyword prevents a pointer from pointing to a different address?", [
    "int * const ptr;",
    "const int * ptr;",
    "static int * ptr;",
    "volatile int * ptr;"
  ]),
  Quiz(432, "In 'int *ptr = &x;', what is the 'r-value' of ptr?", [
    "The memory address of 'x'",
    "The value of 'x'",
    "The address of 'ptr' itself",
    "The size of 'int'"
  ]),
  Quiz(433, "A 'Generic Pointer' is another name for...", [
    "void *",
    "int *",
    "char *",
    "NULL"
  ]),
  Quiz(434, "Can you return the address of a local variable from a function?", [
    "No, it leads to a dangling pointer because local memory is cleared after return",
    "Yes, it is the best way to return data",
    "Only if the variable is a float",
    "Only if you use a double pointer"
  ]),
  Quiz(435, "What is 'Memory Fragmentation'?", [
    "Small gaps of unused memory in the heap that cannot be allocated",
    "Breaking a pointer into smaller bits",
    "Dividing an array into two halves",
    "A type of hard drive error"
  ]),
  Quiz(436, "Which function in <stdlib.h> is used to allocate memory for an array?", [
    "calloc()",
    "malloc()",
    "Both can be used",
    "None of the above"
  ]),
  Quiz(437, "The '*' operator in 'int *ptr' and '*ptr = 5' represents...", [
    "Declaration and Dereference respectively",
    "Multiplication and Addition",
    "Both are Dereference",
    "Both are Declaration"
  ]),
  Quiz(438, "What is the pointer equivalent of 'arr[0]'?", [
    "*arr",
    "arr",
    "&arr",
    "arr[0]"
  ]),
  Quiz(439, "What happens if you dereference a NULL pointer?", [
    "Segmentation Fault (Program crashes)",
    "It returns 0",
    "It returns a random value",
    "The program skips that line"
  ]),
  Quiz(440, "Which is faster: Accessing data from the Stack or the Heap?", [
    "The Stack",
    "The Heap",
    "Both are exactly the same",
    "Accessing from the Hard Drive"
  ]),
  Quiz(441, "What is the result of 'sizeof(char *)'?", [
    "The size of a pointer (usually 4 or 8 bytes)",
    "1 byte (size of char)",
    "100 bytes",
    "It is a syntax error"
  ]),
  Quiz(442, "Which operator has higher precedence: '*' or '++'?", [
    "++ (Post-increment/Decrement)",
    "* (Dereference)",
    "They are the same",
    "It depends on the parentheses"
  ]),
  Quiz(443, "A pointer variable itself is stored in...", [
    "Memory (usually on the Stack)",
    "The CPU core",
    "A text file",
    "Inside the variable it points to"
  ]),
  Quiz(444, "What is 'Wild Pointer'?", [
    "An uninitialized pointer pointing to an unknown memory location",
    "A pointer that points to a function",
    "A pointer used in games",
    "A pointer that points to 'void'"
  ]),
  Quiz(445, "How do you access the value of a double pointer?", [
    "**ptr",
    "*ptr",
    "ptr",
    "&ptr"
  ]),
  Quiz(446, "Dynamic memory allocation is done at...", [
    "Runtime",
    "Compile time",
    "Preprocessing time",
    "Editing time"
  ]),
  Quiz(447, "Which function can both allocate and free memory (if passed size 0)?", [
    "realloc()",
    "malloc()",
    "calloc()",
    "free()"
  ]),
  Quiz(448, "What is the output of 'void *p; printf(\"%d\", sizeof(p));'?", [
    "Size of a pointer (4 or 8)",
    "0",
    "1",
    "Error"
  ]),
  Quiz(449, "When using 'malloc(n * sizeof(int))', what is 'n'?", [
    "The number of elements you want to store",
    "The total size in bytes",
    "The address of the array",
    "A pointer to the heap"
  ]),
  Quiz(450, "Why is 'free(ptr)' important in the TMK Student Manager?", [
    "To ensure memory is cleared when students are deleted or the program closes",
    "To make the student's name appear in uppercase",
    "To save the data to the hard drive",
    "To sort the list of students"
  ]),
  Quiz(451, "What is the memory size of a pointer on a 32-bit system?", [
    "4 bytes",
    "8 bytes",
    "2 bytes",
    "1 byte"
  ]),
  Quiz(452, "Can you assign a pointer of one type to another (e.g., int* to float*)?", [
    "Yes, but it requires an explicit cast and is dangerous",
    "No, it is strictly forbidden",
    "Only if they are both NULL",
    "Only in the main function"
  ]),
  Quiz(453, "Which is the correct way to free a 2D dynamic array?", [
    "Free each row first, then free the pointer to rows",
    "Just free the main pointer",
    "Use free_2d() function",
    "It cannot be freed"
  ]),
  Quiz(454, "What does '*(ptr++)' do?", [
    "Dereferences the pointer then increments the pointer address",
    "Increments the value at the address then dereferences",
    "Dereferences and adds 1 to the value",
    "It is a syntax error"
  ]),
  Quiz(455, "What is the value of an uninitialized global pointer?", [
    "NULL (0)",
    "Garbage value",
    "1",
    "-1"
  ]),
  Quiz(456, "Pointers are the basis for which data structure?", [
    "Linked Lists, Trees, and Graphs",
    "Simple integers",
    "Single characters",
    "Switch cases"
  ]),
  Quiz(457, "If 'p' is a pointer, what is '&p'?", [
    "The address of the pointer variable itself",
    "The address the pointer is pointing to",
    "The value of the variable p",
    "An error"
  ]),
  Quiz(458, "What is 'Opaque Pointer'?", [
    "A pointer to a data type whose structure is not visible in the header",
    "A pointer that points to NULL",
    "A pointer to a void function",
    "A hidden variable"
  ]),
  Quiz(459, "Which area grows towards the other in many memory models?", [
    "Stack and Heap",
    "Code and Data",
    "BSS and Stack",
    "Registers and RAM"
  ]),
  Quiz(460, "The 'malloc' function is defined in which header?", [
    "<stdlib.h>",
    "<stdio.h>",
    "<string.h>",
    "<memory.h>"
  ]),
  Quiz(461, "What does 'const int *p' mean?", [
    "The value pointed to is constant (read-only)",
    "The address stored in p is constant",
    "Both are constant",
    "None are constant"
  ]),
  Quiz(462, "What does 'int * const p' mean?", [
    "The address stored in p is constant (cannot point elsewhere)",
    "The value pointed to is constant",
    "Both are constant",
    "None are constant"
  ]),
  Quiz(463, "In C, 'pass by reference' is simulated using...", [
    "Pointers",
    "References (like in C++)",
    "Global variables",
    "The '&' operator in the function header"
  ]),
  Quiz(464, "Which function is used to copy a block of memory?", [
    "memcpy()",
    "strcpy()",
    "strcat()",
    "malloc()"
  ]),
  Quiz(465, "Can you add a float to a pointer?", [
    "No",
    "Yes",
    "Only if you cast it to int",
    "Only in GCC"
  ]),
  Quiz(466, "What is 'Memory Alignment'?", [
    "Placing data in memory at addresses that are multiples of the data size",
    "Sorting an array",
    "Using pointers to access strings",
    "Clearing the RAM"
  ]),
  Quiz(467, "In 'int a[5];', what is 'sizeof(a)'?", [
    "20 (assuming 4-byte int)",
    "5",
    "4",
    "8"
  ]),
  Quiz(468, "In 'int *p = malloc(20);', what is 'sizeof(p)'?", [
    "Size of the pointer (4 or 8)",
    "20",
    "5",
    "4"
  ]),
  Quiz(469, "What is 'Near Pointer' and 'Far Pointer'?", [
    "Legacy terms from 16-bit systems regarding memory segments",
    "Pointers used in 64-bit systems",
    "Pointers to local vs global variables",
    "Pointers to internal vs external files"
  ]),
  Quiz(470, "What is 'Self-referential Struct'?", [
    "A struct that contains a pointer to a struct of the same type",
    "A struct that only contains integers",
    "A struct that points to the main function",
    "A struct used for mathematical constants"
  ]),
  Quiz(471, "Which of the following creates a dangling pointer?", [
    "int *p = malloc(4); free(p);",
    "int *p = NULL;",
    "int *p = &x;",
    "int *p = malloc(4);"
  ]),
  Quiz(472, "A pointer to a function can be called using...", [
    "(*ptr)(args); or ptr(args);",
    "&ptr(args);",
    "ptr->(args);",
    "call ptr(args);"
  ]),
  Quiz(473, "What happens if you use 'free()' on a pointer that was not returned by malloc/calloc?", [
    "Undefined behavior (usually a crash)",
    "Nothing, it is safe",
    "The pointer becomes NULL",
    "The computer restarts"
  ]),
  Quiz(474, "How do you access the last element of an array 'a[n]' using a pointer 'p'? ", [
    "*(p + n - 1)",
    "*(p + n)",
    "p + n",
    "p[n]"
  ]),
  Quiz(475, "What is the primary goal of the 'Module 6' lessons?", [
    "To understand memory management and pointers to build efficient C programs",
    "To learn how to use a mouse",
    "To design graphics for websites",
    "To install a new operating system"
  ]),
  Quiz(476, "What does 'offsetof' macro do?", [
    "Returns the offset in bytes of a member from the start of its struct",
    "Deletes a member from a struct",
    "Finds the address of the first member",
    "Calculates the total size of a struct"
  ]),
  Quiz(477, "Which operator is used to get the value at the address held by a pointer?", [
    "* (Indirection)",
    "&",
    "->",
    "."
  ]),
  Quiz(478, "What is 'Pointer Decay'?", [
    "The process where an array is treated as a pointer to its first element",
    "When a pointer loses its data over time",
    "A memory leak",
    "A segmentation fault"
  ]),
  Quiz(479, "Which function initializes a block of memory to a specific value?", [
    "memset()",
    "malloc()",
    "memcpy()",
    "calloc()"
  ]),
  Quiz(480, "In 'int *p[10]', what is 'p'?", [
    "An array of 10 pointers to integers",
    "A pointer to an array of 10 integers",
    "A 2D array",
    "A syntax error"
  ]),
  Quiz(481, "In 'int (*p)[10]', what is 'p'?", [
    "A pointer to an array of 10 integers",
    "An array of 10 pointers to integers",
    "A pointer to a pointer",
    "A function pointer"
  ]),
  Quiz(482, "What is the output of 'int x=5; int *p=&x; *p=10; printf(\"%d\", x);'?", [
    "10",
    "5",
    "Address of x",
    "Error"
  ]),
  Quiz(483, "Which is a characteristic of Stack memory?", [
    "Fixed size, fast allocation, and local scope",
    "Slow, manual allocation, and global scope",
    "Stored on the GPU",
    "Never overflows"
  ]),
  Quiz(484, "The 'realloc' function can move data to a new location if needed.", [
    "True",
    "False",
    "Only if the memory is smaller",
    "Only in Windows"
  ]),
  Quiz(485, "What does 'p = p + 1' do to a pointer?", [
    "Moves it to the next memory location based on its data type size",
    "Increments the value at the address",
    "Increases the pointer's own memory size",
    "Nothing"
  ]),
  Quiz(486, "Which check is essential after calling 'malloc'?", [
    "Checking if the pointer is NULL",
    "Checking the variable name",
    "Printing the address",
    "Clearing the screen"
  ]),
  Quiz(487, "What is 'Endianness'?", [
    "The order of bytes in a multi-byte data type in memory (Big vs Little)",
    "A type of pointer",
    "The name of the first C compiler",
    "A way to sort strings"
  ]),
  Quiz(488, "Most modern PCs (Intel/AMD) use which endianness?", [
    "Little-endian",
    "Big-endian",
    "Mixed-endian",
    "No-endian"
  ]),
  Quiz(489, "Can a pointer point to another pointer?", [
    "Yes",
    "No",
    "Only if they are the same type",
    "Only in C99"
  ]),
  Quiz(490, "What is the return type of 'free()'? ", [
    "void",
    "int",
    "NULL",
    "bool"
  ]),
  Quiz(491, "Which of these is used to define a custom type name for a function pointer?", [
    "typedef",
    "struct",
    "define",
    "enum"
  ]),
  Quiz(492, "What happens if you lose the address of a malloc'd block?", [
    "A memory leak occurs because you can no longer free it",
    "The computer automatically frees it",
    "The program crashes immediately",
    "The data is saved to a file"
  ]),
  Quiz(493, "Which operator is used to find the size of a pointer in bytes?", [
    "sizeof",
    "length",
    "addrsize",
    "bits"
  ]),
  Quiz(494, "What is the address of the 'first' element of 'arr[5]'?", [
    "&arr[0] or arr",
    "&arr[1]",
    "arr[5]",
    "sizeof(arr)"
  ]),
  Quiz(495, "What is 'Segmented Memory'?", [
    "A memory model where RAM is divided into segments (common in old x86)",
    "Dividing an array into parts",
    "A type of memory leak",
    "Using multiple hard drives"
  ]),
  Quiz(496, "A function name without parentheses is a...", [
    "Pointer to the function",
    "Call to the function",
    "Syntax error",
    "Variable"
  ]),
  Quiz(497, "What is the result of 'void *v; int *i = (int *)v;'?", [
    "Type casting a void pointer to an int pointer",
    "A syntax error",
    "Deleting the pointer v",
    "Accessing the value of v"
  ]),
  Quiz(498, "The heap grows 'up' and the stack grows 'down' in memory.", [
    "Commonly true (Platform dependent)",
    "Always false",
    "Only for float variables",
    "Only in Java"
  ]),
  Quiz(499, "What is the value of 'p' after 'int *p = malloc(0);'?", [
    "Implementation-defined (either NULL or a unique pointer to be freed)",
    "Always NULL",
    "Always an error",
    "100 bytes"
  ]),
  Quiz(500, "Which concept allows C to 'simulate' objects from other languages?", [
    "Structures combined with Function Pointers",
    "Arrays and Loops",
    "The printf function",
    "Header files"
  ]),
];
final List<Quiz> cQuizM7 = [
  // --- Topic 46: Function Basics: Defining Your Own Tools ---
  Quiz(501, "What is the primary purpose of a function in C?", [
    "To break a large program into smaller, reusable, and manageable blocks",
    "To store data permanently on the hard drive",
    "To increase the speed of the CPU",
    "To declare global variables only"
  ]),
  Quiz(502, "Which part of a function defines what the function does?", [
    "Function Body (enclosed in { })",
    "Function Header",
    "Function Prototype",
    "Function Call"
  ]),
  Quiz(503, "What does the 'void' keyword mean when used as a return type?", [
    "The function does not return any value",
    "The function is empty",
    "The function can return any type of data",
    "The function is a main() function"
  ]),
  Quiz(504, "Every C program starts execution from which function?", [
    "main()",
    "start()",
    "init()",
    "run()"
  ]),

  // --- Topic 47: Parameters & Arguments: Passing Data by Value ---
  Quiz(505, "What is a 'Formal Parameter'?", [
    "A variable defined in the function header to receive input",
    "The actual value passed during a function call",
    "A global variable used by all functions",
    "The return value of a function"
  ]),
  Quiz(506, "What is an 'Actual Argument'?", [
    "The real value or variable passed to a function when it is called",
    "The name of the function",
    "The data type of the return value",
    "A comment inside the function"
  ]),
  Quiz(507, "In 'Call by Value', what happens to the original variable in the caller?", [
    "It remains unchanged because the function works on a copy",
    "It is updated automatically",
    "It is deleted from memory",
    "It becomes a pointer"
  ]),
  Quiz(508, "What is the limit on the number of parameters a function can have?", [
    "Theoretically unlimited (limited by system resources)",
    "Exactly 3",
    "Exactly 10",
    "Only 1"
  ]),

  // --- Topic 48: Call by Reference: Giving Functions 'Real' Power ---
  Quiz(509, "How do you implement 'Call by Reference' in C?", [
    "By passing the address of a variable using pointers",
    "By using the 'ref' keyword",
    "By making all variables global",
    "By returning two values"
  ]),
  Quiz(510, "What is the benefit of Call by Reference?", [
    "It allows a function to modify the caller's variables directly",
    "It makes the function run faster",
    "It prevents any changes to the data",
    "It is required for mathematical functions"
  ]),
  Quiz(511, "Which operator is used in a function call to pass a variable by reference?", [
    "& (Address-of)",
    "* (Dereference)",
    "-> (Arrow)",
    "sizeof"
  ]),

  // --- Topic 49: Returning Values & Pointers: Getting Results Back ---
  Quiz(512, "How many values can a standard C function return using the 'return' keyword?", [
    "Only one",
    "Two",
    "As many as needed",
    "None"
  ]),
  Quiz(513, "Can a function return a pointer?", [
    "Yes, it can return the address of a variable or a memory block",
    "No, pointers can only be parameters",
    "Only if it is a void pointer",
    "Only in C++"
  ]),
  Quiz(514, "Is it safe to return the address of a local variable from a function?", [
    "No, it leads to a dangling pointer because local memory is cleared",
    "Yes, it is common practice",
    "Only if the variable is an integer",
    "Only if the function is called once"
  ]),

  // --- Topic 50: Dynamic Memory in Functions: Using malloc with Tools ---
  Quiz(515, "Why is dynamic memory allocation useful inside functions?", [
    "It allows the function to return data that persists after the function ends",
    "It clears the stack automatically",
    "It makes the function private",
    "It replaces the need for parameters"
  ]),
  Quiz(516, "If a function calls 'malloc()', who is responsible for calling 'free()'?", [
    "The caller (or whatever part of the code finishes with the data)",
    "The function itself before it returns",
    "The operating system automatically",
    "The compiler"
  ]),
  Quiz(517, "What is the return type of 'malloc()'?", [
    "void * (Generic pointer)",
    "int *",
    "char *",
    "NULL"
  ]),

  // --- Topic 51: Array Parameters: Functions Handling Data Lists ---
  Quiz(518, "When an array is passed to a function, it is always passed by...", [
    "Reference (The address of the first element is passed)",
    "Value (A full copy is made)",
    "Pointer to pointer",
    "Constant value"
  ]),
  Quiz(519, "Which syntax is valid for a function accepting an integer array?", [
    "void func(int arr[]) or void func(int *arr)",
    "void func(int arr[10]) only",
    "void func(array int)",
    "void func(int &arr)"
  ]),
  Quiz(520, "How does a function know the size of an array passed to it?", [
    "The size must be passed as an additional parameter",
    "It uses sizeof(arr) inside the function",
    "C arrays automatically store their size",
    "It checks for a null terminator"
  ]),

  // --- Topic 52: Structs as Arguments: Processing Complex Data ---
  Quiz(521, "What happens when you pass a 'struct' by value to a function?", [
    "A full copy of the entire structure is made and passed",
    "Only the address is passed",
    "The program crashes",
    "It is converted into an array"
  ]),
  Quiz(522, "Which operator is used to access struct members inside a function if passed by reference?", [
    "-> (Arrow operator)",
    ". (Dot operator)",
    "* (Asterisk)",
    "& (Ampersand)"
  ]),
  Quiz(523, "Why is passing a pointer to a struct preferred over passing by value?", [
    "It is much faster and saves memory for large structures",
    "It is the only way to read struct data",
    "It prevents the function from changing the data",
    "It is required for the TMK Student Manager"
  ]),

  // --- Topic 53: Function Prototypes & Header Files: Professional Organization ---
  Quiz(524, "What is a 'Function Prototype'?", [
    "A declaration that tells the compiler about the function before it is used",
    "The actual code inside the function",
    "A special type of variable",
    "A comment at the start of the file"
  ]),
  Quiz(525, "Where are function prototypes usually placed?", [
    "In a header file (.h) or at the top of the .c file",
    "Inside the main() function",
    "At the very end of the program",
    "In a separate text file"
  ]),
  Quiz(526, "What is the purpose of a Header Guard (#ifndef, #define, #endif)?", [
    "To prevent a header file from being included multiple times",
    "To make the code run on Windows",
    "To hide the code from other programmers",
    "To speed up the compiler"
  ]),

  // --- Topic 54: Recursion: The Function That Calls Itself ---
  Quiz(527, "What is 'Recursion'?", [
    "A process where a function calls itself to solve smaller sub-problems",
    "A loop that never ends",
    "A function that returns a pointer to itself",
    "A way to rename a function"
  ]),
  Quiz(528, "What is the 'Base Case' in recursion?", [
    "The condition that stops the recursion and prevents infinite calls",
    "The first line of the function",
    "The largest possible input",
    "The part that calls the function again"
  ]),
  Quiz(529, "What happens if a recursive function lacks a base case?", [
    "It causes a Stack Overflow and the program crashes",
    "The program runs perfectly",
    "The compiler fixes it automatically",
    "It turns into a for-loop"
  ]),

  // --- Topic 55: Function Pointers as Callbacks: High-Order Logic ---
  Quiz(530, "What is a 'Callback Function'?", [
    "A function passed as an argument to another function to be executed later",
    "A function that calls the main() function",
    "A function that only returns 0",
    "A function used to delete files"
  ]),
  Quiz(531, "Which symbol is used to declare a function pointer?", [
    "int (*ptr)(int);",
    "int *ptr(int);",
    "int ptr*(int);",
    "&int ptr(int);"
  ]),
  Quiz(532, "Function pointers allow for...", [
    "Dynamic and flexible code behavior at runtime",
    "Faster mathematical calculations",
    "Higher security in passwords",
    "Reduced memory usage on the stack"
  ]),

  // --- Topic 56: Variable Arguments: Creating Your Own printf ---
  Quiz(533, "Which header file is required to create a function with variable arguments?", [
    "<stdarg.h>",
    "<stdio.h>",
    "<stdlib.h>",
    "<vararg.h>"
  ]),
  Quiz(534, "What symbol is used in a function header to indicate variable arguments?", [
    "... (Ellipsis)",
    "***",
    "&&&",
    "???"
  ]),
  Quiz(535, "Which macro is used to start processing variable arguments?", [
    "va_start",
    "va_begin",
    "va_init",
    "va_arg"
  ]),

  // --- Topic 57: Memory Management Strategy: Avoiding Leaks in Functions ---
  Quiz(536, "What is a 'Memory Leak' in the context of functions?", [
    "Allocating memory with malloc() but never calling free()",
    "A variable name that is too long",
    "Returning a local variable's address",
    "Using too many parameters"
  ]),
  Quiz(537, "What is the 'Dangling Pointer' risk in functions?", [
    "Keeping a pointer to a local variable after the function has finished",
    "Using a pointer before it is initialized",
    "Setting a pointer to NULL",
    "Allocating more than 1GB of RAM"
  ]),
  Quiz(538, "Which area of memory is used for function call information and local variables?", [
    "The Stack",
    "The Heap",
    "The Data Segment",
    "The Hard Drive"
  ]),

  // --- Mixed Review (Module 7 Logic) ---
  Quiz(539, "Which keyword is used to exit a function and return a value?", [
    "return",
    "exit",
    "break",
    "stop"
  ]),
  Quiz(540, "What is 'Function Overloading'?", [
    "Not supported in C; it is the ability to have functions with the same name but different parameters",
    "A function that uses too much RAM",
    "A function that calls itself too many times",
    "A syntax error in the header file"
  ]),
  Quiz(541, "The 'static' keyword for a local variable inside a function...", [
    "Preserves its value even after the function finishes execution",
    "Makes the variable constant",
    "Deletes the variable after the first call",
    "Allows other files to access the variable"
  ]),
  Quiz(542, "What is the result of 'return;' in a function with a return type of 'int'?", [
    "Compilation error",
    "Returns 0",
    "Returns a garbage value",
    "Restarts the function"
  ]),
  Quiz(543, "A 'Library' in C is essentially...", [
    "A collection of pre-compiled functions and header files",
    "A physical book about C",
    "A type of array",
    "The computer's memory"
  ]),
  Quiz(544, "Which function is used to stop the entire program immediately?", [
    "exit()",
    "return",
    "break",
    "abort()"
  ]),
  Quiz(545, "What is the scope of a local variable?", [
    "Only within the function where it is defined",
    "Throughout the entire .c file",
    "Global to the whole program",
    "Inside the compiler only"
  ]),
  Quiz(546, "How do you pass a multi-dimensional array to a function?", [
    "The first dimension can be empty, but others must be specified (e.g., arr[][10])",
    "All dimensions must be empty",
    "You can only pass it as a 1D pointer",
    "It cannot be passed"
  ]),
  Quiz(547, "Which operator is used to call a function through a function pointer?", [
    "() (Parentheses)",
    "* (Asterisk)",
    "-> (Arrow)",
    ". (Dot)"
  ]),
  Quiz(548, "What is 'Tail Recursion'?", [
    "A recursive call that is the very last action in a function",
    "Recursion that only runs twice",
    "Recursion that uses the heap",
    "A bug in the compiler"
  ]),
  Quiz(549, "The 'inline' keyword is a suggestion to the compiler to...", [
    "Replace the function call with the actual function code to save time",
    "Move the function to the heap",
    "Delete the function after use",
    "Make the function private"
  ]),
  Quiz(550, "What is 'Scope'?", [
    "The region of a program where a variable is visible and accessible",
    "The size of a variable in bytes",
    "The time it takes to run a function",
    "The number of lines in a file"
  ]),

  // --- Slots 551 - 600 (Specific concepts and review) ---
  Quiz(551, "Which of these is a valid function name?", [
    "calculate_total",
    "123calculate",
    "calculate-total",
    "float"
  ]),
  Quiz(552, "Can a function have no parameters?", [
    "Yes, use (void) or empty parentheses ()",
    "No",
    "Only the main function",
    "Only if it returns int"
  ]),
  Quiz(553, "What does 'pass by value' protect?", [
    "The original data in the caller's variable",
    "The function's memory",
    "The CPU registers",
    "The hard drive"
  ]),
  Quiz(554, "Which macro retrieves the next argument in a variadic function?", [
    "va_arg",
    "va_next",
    "va_get",
    "va_start"
  ]),
  Quiz(555, "What is 'Stack Frame'?", [
    "A block of stack memory that contains a function's local variables and return address",
    "A physical part of the RAM",
    "The window of the IDE",
    "A type of global array"
  ]),
  Quiz(556, "Which storage class makes a variable global across multiple files?", [
    "extern",
    "static",
    "auto",
    "register"
  ]),
  Quiz(557, "What is 'Modular Programming'?", [
    "Dividing a program into separate modules (files) for better organization",
    "Writing code in a single long file",
    "Using only one function",
    "A type of mathematical logic"
  ]),
  Quiz(558, "What is the return type of 'printf'?", [
    "int (the number of characters printed)",
    "void",
    "char *",
    "float"
  ]),
  Quiz(559, "What happens to 'static' local variables between function calls?", [
    "They retain their last value",
    "They are reset to 0",
    "They are deleted",
    "They become NULL"
  ]),
  Quiz(560, "The 'const' keyword in a parameter declaration 'void f(const int *p)' means...", [
    "The function cannot modify the value pointed to by p",
    "The pointer p itself is constant",
    "The function runs faster",
    "The function returns a constant"
  ]),
  Quiz(561, "Which of these is the most common use of recursion?", [
    "Tree traversals and mathematical sequences like Fibonacci",
    "Printing a simple 'Hello World'",
    "Adding two integers",
    "Clearing the screen"
  ]),
  Quiz(562, "What is a 'Pure Function'?", [
    "A function that always returns the same output for the same input and has no side effects",
    "A function with no code",
    "A function that only uses floats",
    "A function in a header file"
  ]),
  Quiz(563, "In C, parameters are separated by which character?", [
    ", (Comma)",
    "; (Semicolon)",
    ": (Colon)",
    "| (Pipe)"
  ]),
  Quiz(564, "Which function can be used to compare two memory blocks?", [
    "memcmp()",
    "strcmp()",
    "malloc()",
    "check()"
  ]),
  Quiz(565, "What is the 'Implicit Return' in C?", [
    "There is none; functions with a return type must use the 'return' keyword",
    "It always returns 1",
    "It returns the last calculated value",
    "It returns NULL"
  ]),
  Quiz(566, "What is 'Function Scope'?", [
    "The fact that local variables exist only while the function is active",
    "The size of the function in bytes",
    "The number of parameters a function has",
    "The speed of the function"
  ]),
  Quiz(567, "When using recursion, why is memory usage higher?", [
    "Each call creates a new stack frame on the stack",
    "It uses more heap memory",
    "It creates new files",
    "The compiler is inefficient"
  ]),
  Quiz(568, "Which keyword indicates a variable is stored in a CPU register for speed?", [
    "register",
    "auto",
    "static",
    "volatile"
  ]),
  Quiz(569, "The 'va_end' macro must be called to...", [
    "Clean up the va_list after processing",
    "Start the function",
    "Return the value",
    "Stop the compiler"
  ]),
  Quiz(570, "What is a 'Nullary Function'?", [
    "A function that takes zero arguments",
    "A function that returns NULL",
    "A function that is not defined",
    "A function that is deleted"
  ]),
  Quiz(571, "Which operator is used to get the value from a function pointer?", [
    "* (Dereference)",
    "&",
    "->",
    "."
  ]),
  Quiz(572, "A function declared 'static' in a .c file is...", [
    "Private to that file only",
    "Accessible by all files",
    "Constant",
    "Deleted after use"
  ]),
  Quiz(573, "What is the 'Signature' of a function?", [
    "The combination of its name and parameter types",
    "The programmer's name",
    "The total number of lines",
    "The header guard"
  ]),
  Quiz(574, "How do you pass a struct pointer to a function?", [
    "func(&myStruct);",
    "func(myStruct);",
    "func(*myStruct);",
    "func(struct myStruct);"
  ]),
  Quiz(575, "What is 'Side Effect' in a function?", [
    "When a function modifies a state outside of its local environment (e.g., global variables)",
    "A syntax error",
    "A recursive call",
    "A feature of the IDE"
  ]),
  Quiz(576, "Which function converts a string to a long integer?", [
    "atol()",
    "atoi()",
    "atof()",
    "strint()"
  ]),
  Quiz(577, "The return type of 'sizeof' is usually...", [
    "size_t (unsigned integer)",
    "int",
    "float",
    "double"
  ]),
  Quiz(578, "What is 'Reentrancy'?", [
    "A property where a function can be safely interrupted and called again",
    "Calling a function from another file",
    "Using recursion",
    "A function with many returns"
  ]),
  Quiz(579, "Which macro is used to check if a pointer is NULL safely?", [
    "assert()",
    "check()",
    "test()",
    "verify()"
  ]),
  Quiz(580, "The '...' in variadic functions must be...", [
    "The last parameter in the list",
    "The first parameter",
    "The only parameter",
    "Anywhere in the list"
  ]),
  Quiz(581, "What is a 'Wrapper Function'?", [
    "A function whose main purpose is to call another function with specific settings",
    "A function that uses strings",
    "A function in a header file",
    "A function that clears memory"
  ]),
  Quiz(582, "Which storage class is the default for local variables?", [
    "auto",
    "static",
    "extern",
    "register"
  ]),
  Quiz(583, "What is 'Shadowing'?", [
    "When a local variable has the same name as a global variable, hiding it",
    "Deleting a variable",
    "A type of memory leak",
    "A bug in the display"
  ]),
  Quiz(584, "In C, functions are by default...", [
    "Extern (visible to other files)",
    "Static (private)",
    "Auto",
    "Inline"
  ]),
  Quiz(585, "What is the result of 'return 1.5;' in an 'int' function?", [
    "1 (The value is truncated)",
    "2 (Rounded)",
    "Error",
    "1.5"
  ]),
  Quiz(586, "Which header defines the 'exit()' function?", [
    "<stdlib.h>",
    "<stdio.h>",
    "<signal.h>",
    "<unistd.h>"
  ]),
  Quiz(587, "A function that calls itself infinitely will eventually cause...", [
    "Stack Overflow",
    "Heap Overflow",
    "Disk Full",
    "CPU Burnout"
  ]),
  Quiz(588, "What is 'Forward Declaration'?", [
    "Defining a function's prototype before its actual implementation",
    "Using the 'goto' statement",
    "A recursive call",
    "A global variable"
  ]),
  Quiz(589, "Can a function return another function?", [
    "No, but it can return a pointer to a function",
    "Yes",
    "Only in C++",
    "Only if it is static"
  ]),
  Quiz(590, "Which operator allows accessing struct members when using a pointer?", [
    "->",
    ".",
    "*",
    "&"
  ]),
  Quiz(591, "The 'main' function returns an integer to...", [
    "The Operating System",
    "The compiler",
    "The user",
    "The hardware"
  ]),
  Quiz(592, "What is 'Dereferencing' a function pointer?", [
    "Calling the function it points to",
    "Finding the size of the function",
    "Deleting the function",
    "Renaming the function"
  ]),
  Quiz(593, "Which of these is NOT a valid return type?", [
    "array",
    "int",
    "void *",
    "struct Student"
  ]),
  Quiz(594, "What is 'Pass by Pointer'?", [
    "Another name for 'Pass by Reference' in C",
    "A syntax error",
    "Using arrays only",
    "A type of loop"
  ]),
  Quiz(595, "Which function calculates the absolute value of an integer?", [
    "abs()",
    "fabs()",
    "sqrt()",
    "val()"
  ]),
  Quiz(596, "The 'void *' type is often used for...", [
    "Generic data handling in functions",
    "Strings only",
    "Errors only",
    "Mathematical constants"
  ]),
  Quiz(597, "What is 'Argument' vs 'Parameter'?", [
    "Argument is the value sent; Parameter is the variable receiving it",
    "They are the same",
    "Argument is in the header; Parameter is in the call",
    "Argument is for floats; Parameter is for ints"
  ]),
  Quiz(598, "Which C standard introduced the 'inline' keyword?", [
    "C99",
    "C89",
    "C11",
    "K&R C"
  ]),
  Quiz(599, "What is the primary benefit of 'Prototypes'?", [
    "They allow the compiler to check for argument type mismatches",
    "They make the program run faster",
    "They save RAM",
    "They are required by the Operating System"
  ]),
  Quiz(600, "In the TMK Student Manager, functions help to...", [
    "Organize features like 'Add', 'Delete', and 'Display' student data",
    "Connect the app to a printer",
    "Translate the app to English",
    "Change the background color"
  ]),
];
final List<Quiz> cQuizM8 = [
  // --- Topic 58: Introduction to File Streams: FILE Pointer ---
  Quiz(601, "What is a 'File Stream' in C?", [
    "A logical interface or 'tunnel' that connects the program to a file on disk",
    "A type of fast RAM",
    "A specific line of code that deletes files",
    "A video format used in C"
  ]),
  Quiz(602, "Which structure is used to represent a file stream in C?", [
    "FILE",
    "STREAM",
    "DOCUMENT",
    "DATA"
  ]),
  Quiz(603, "Why is 'FILE *fp' declared as a pointer?", [
    "Because the FILE structure is managed by the OS and we only need its address",
    "Because it points to the programmer's name",
    "Because it makes the file smaller",
    "Because pointers are faster than integers"
  ]),
  Quiz(604, "Which header file is required for File I/O operations?", [
    "<stdio.h>",
    "<stdlib.h>",
    "<file.h>",
    "<string.h>"
  ]),

  // --- Topic 59: Opening & Closing Files: fopen & fclose ---
  Quiz(605, "Which function is used to open a file in C?", [
    "fopen()",
    "openFile()",
    "startFile()",
    "fileOpen()"
  ]),
  Quiz(606, "What does 'fopen()' return if the file cannot be opened?", [
    "NULL",
    "0",
    "-1",
    "An empty string"
  ]),
  Quiz(607, "Which mode is used to open a file for 'Reading' only?", [
    "\"r\"",
    "\"w\"",
    "\"a\"",
    "\"rb\""
  ]),
  Quiz(608, "What happens if you open a file in 'w' (write) mode if it already exists?", [
    "The existing content is overwritten (erased)",
    "The new content is added to the end",
    "The program crashes",
    "The compiler shows a warning"
  ]),
  Quiz(609, "Which mode allows you to add data to the 'end' of an existing file?", [
    "\"a\" (Append)",
    "\"w\" (Write)",
    "\"r\" (Read)",
    "\"x\" (Extract)"
  ]),
  Quiz(610, "Why is 'fclose()' essential after finishing file operations?", [
    "To ensure all buffered data is written to disk and resources are released",
    "To delete the file from the hard drive",
    "To encrypt the data for security",
    "To make the program run on mobile"
  ]),

  // --- Topic 60: Writing Text Data: fputs, fprintf & fputc ---
  Quiz(611, "Which function allows formatted writing to a file (like printf)?", [
    "fprintf()",
    "fputs()",
    "fputc()",
    "printf()"
  ]),
  Quiz(612, "What is the purpose of 'fputs()'?", [
    "To write a simple string to a file",
    "To write a single character",
    "To read a string from a file",
    "To format a decimal number"
  ]),
  Quiz(613, "Which function writes a single character to a file?", [
    "fputc()",
    "fputs()",
    "fprintf()",
    "putc()"
  ]),
  Quiz(614, "What is the first argument of the 'fprintf()' function?", [
    "The FILE pointer (fp)",
    "The string to be written",
    "The variable name",
    "The file name"
  ]),

  // --- Topic 61: Reading Text Data: fgets, fscanf & fgetc ---
  Quiz(615, "Which function is best for reading an entire line of text safely?", [
    "fgets()",
    "fscanf()",
    "fgetc()",
    "gets()"
  ]),
  Quiz(616, "What does 'fscanf()' return when it reaches the end of the file?", [
    "EOF (End Of File)",
    "NULL",
    "0",
    "1"
  ]),
  Quiz(617, "What is the advantage of 'fgets()' over 'fscanf()' for strings?", [
    "It can read strings with spaces",
    "It converts strings to integers",
    "It is faster for numbers",
    "It deletes the file after reading"
  ]),
  Quiz(618, "Which function reads a single character at a time from a file?", [
    "fgetc()",
    "fgets()",
    "fscanf()",
    "getc()"
  ]),

  // --- Topic 62: Binary Files vs. Text Files ---
  Quiz(619, "How is data stored in a 'Binary' file?", [
    "As raw bits and bytes (0s and 1s), exactly as it appears in RAM",
    "As plain ASCII text",
    "As a series of images",
    "As a PDF document"
  ]),
  Quiz(620, "Why are binary files often better for large databases?", [
    "They are more compact and faster because no text translation is needed",
    "They can be read by Notepad",
    "They are automatically encrypted",
    "They never take up disk space"
  ]),
  Quiz(621, "Which character is added to the mode string to open a file in binary mode?", [
    "b (e.g., \"rb\" or \"wb\")",
    "bin",
    "2",
    "x"
  ]),
  Quiz(622, "What happens if you open a binary file in a standard text editor?", [
    "You see unreadable, 'garbage' characters",
    "The computer crashes",
    "The text is automatically translated to English",
    "It looks the same as a text file"
  ]),

  // --- Topic 63: Working with Structs: fwrite & fread ---
  Quiz(623, "Which function is used to write a whole structure or array to a binary file?", [
    "fwrite()",
    "fprintf()",
    "fputs()",
    "write()"
  ]),
  Quiz(624, "What are the four arguments of 'fwrite() / fread()'?", [
    "Address, size of element, number of elements, FILE pointer",
    "File name, mode, size, data",
    "Pointer, string, integer, float",
    "Header, body, footer, end"
  ]),
  Quiz(625, "Which function is used to read a structure back from a binary file?", [
    "fread()",
    "fscanf()",
    "fgets()",
    "read()"
  ]),
  Quiz(626, "Using 'fwrite' with 'sizeof(struct Student)' ensures...", [
    "The correct number of bytes for the structure is written on any system",
    "The file is saved as a PDF",
    "The student's name is capitalized",
    "The program runs 10 times faster"
  ]),

  // --- Topic 64: File Positioning: fseek, ftell & rewind ---
  Quiz(627, "What is the purpose of 'fseek()'?", [
    "To move the file pointer to a specific location in the file",
    "To search for a word in the text",
    "To delete a specific line",
    "To rename the file"
  ]),
  Quiz(628, "What does 'ftell()' return?", [
    "The current position of the file pointer (in bytes)",
    "The name of the file",
    "The total size of the hard drive",
    "The number of lines in the file"
  ]),
  Quiz(629, "Which 'fseek' constant moves the pointer relative to the 'start' of the file?", [
    "SEEK_SET",
    "SEEK_CUR",
    "SEEK_END",
    "SEEK_START"
  ]),
  Quiz(630, "What does 'rewind(fp)' do?", [
    "Moves the file pointer back to the beginning of the file",
    "Deletes the entire file content",
    "Plays the file in reverse",
    "Closes and re-opens the file"
  ]),

  // --- Topic 65: Error Handling in Files: ferror & feof ---
  Quiz(631, "What does 'feof(fp)' check for?", [
    "Whether the end-of-file indicator has been reached",
    "Whether the file is empty",
    "Whether the file name is correct",
    "Whether the file is a binary file"
  ]),
  Quiz(632, "Which function checks if an error occurred during a file operation?", [
    "ferror()",
    "perror()",
    "feof()",
    "errorCheck()"
  ]),
  Quiz(633, "What does 'perror()' do?", [
    "Prints a human-readable description of the last error to stderr",
    "Deletes the error from the log",
    "Restarts the program after an error",
    "Asks the user to fix the code"
  ]),
  Quiz(634, "When is 'feof()' typically called in a loop?", [
    "After an attempted read operation",
    "Before the file is opened",
    "Only when the file is empty",
    "Inside the main() function only"
  ]),

  // --- Topic 66: Mini-Project: Saving & Loading TMK Student Records ---
  Quiz(635, "In the TMK Student Manager, why is 'wb' mode used for saving?", [
    "To save student structures as a permanent binary database",
    "To make the file readable in Notepad",
    "To prevent others from reading the data",
    "To speed up the internet connection"
  ]),
  Quiz(636, "How do you load 100 students from a file into an array 'students[100]'?", [
    "fread(students, sizeof(struct Student), 100, fp);",
    "fscanf(students, 100, fp);",
    "fgets(students, 100, fp);",
    "load(students, 100);"
  ]),
  Quiz(637, "If 'fread' returns 0 when trying to load data, it usually means...", [
    "The end of the file has been reached or an error occurred",
    "The student list is full",
    "The program is working perfectly",
    "The file is encrypted"
  ]),

  // --- Topic 67: Command Line Arguments (argc, argv) ---
  Quiz(638, "What does 'argc' represent in the main function?", [
    "The count of arguments passed via the command line",
    "The name of the argument",
    "The size of the computer's RAM",
    "The number of lines in the code"
  ]),
  Quiz(639, "What is 'argv'?", [
    "An array of strings (pointers to char) containing the command line arguments",
    "A single integer value",
    "The name of the compiler",
    "A type of file stream"
  ]),
  Quiz(640, "What is stored in 'argv[0]'?", [
    "The name of the program being executed",
    "The first data argument",
    "The date and time",
    "The total number of files"
  ]),
  Quiz(641, "If you run 'tmk.exe students.dat', what is the value of 'argc'?", [
    "2",
    "1",
    "0",
    "3"
  ]),

  // --- Final Review & Mixed Logic ---
  Quiz(642, "Which function in <stdlib.h> is used to convert a command line string to an integer?", [
    "atoi()",
    "itoa()",
    "strint()",
    "val()"
  ]),
  Quiz(643, "What is a 'Buffer' in File I/O?", [
    "A temporary area in RAM used to store data before it is written to disk",
    "A physical part of the hard drive",
    "A type of security software",
    "The speed of the file transfer"
  ]),
  Quiz(644, "Which function flushes any remaining data in the buffer to the file?", [
    "fflush()",
    "fclean()",
    "fsave()",
    "fupdate()"
  ]),
  Quiz(645, "A 'text file' usually translates '\\n' into...", [
    "The platform-specific newline character (e.g., \\r\\n on Windows)",
    "A space",
    "Nothing (it stays \\n)",
    "A binary 0"
  ]),
  Quiz(646, "Binary files do NOT translate newline characters.", [
    "True",
    "False",
    "Only in Linux",
    "Only in C99"
  ]),
  Quiz(647, "Which operator is used to access struct members through a pointer returned by fread?", [
    "->",
    ".",
    "*",
    "&"
  ]),
  Quiz(648, "What is 'Random Access' in files?", [
    "The ability to jump directly to any part of the file using fseek",
    "Generating random numbers in a file",
    "Opening a random file from the disk",
    "A type of memory error"
  ]),
  Quiz(649, "Which function closes all open file streams?", [
    "fcloseall() (in some compilers) or individual fclose()",
    "closeAll()",
    "exit()",
    "stop()"
  ]),
  Quiz(650, "What is the result of 'fseek(fp, 0, SEEK_END)' followed by 'ftell(fp)'?", [
    "It returns the total size of the file in bytes",
    "It deletes the file",
    "It returns 0",
    "It returns the number of students"
  ]),

  // --- Extra Slots to reach 100 for M8 ---
  Quiz(651, "Which constant in fseek refers to the current position?", [
    "SEEK_CUR",
    "SEEK_SET",
    "SEEK_END",
    "SEEK_HERE"
  ]),
  Quiz(652, "Can you open a file for both reading and writing?", [
    "Yes, using modes like \"r+\", \"w+\", or \"a+\"",
    "No",
    "Only for binary files",
    "Only in the main function"
  ]),
  Quiz(653, "What is the difference between \"w\" and \"w+\"?", [
    "\"w\" is for write only; \"w+\" is for both read and write",
    "\"w+\" does not delete the file",
    "\"w\" is faster",
    "There is no difference"
  ]),
  Quiz(654, "Which function reads a single word (until a space) from a text file?", [
    "fscanf(fp, \"%s\", buffer);",
    "fgets(buffer, 100, fp);",
    "fgetc(fp);",
    "read(buffer);"
  ]),
  Quiz(655, "Which is more portable across different OS: Text or Binary files?", [
    "Text files (because they handle newline differences automatically)",
    "Binary files",
    "Both are exactly the same",
    "Neither"
  ]),
  Quiz(656, "What is 'stdout'?", [
    "A standard file pointer for output (usually the console)",
    "The name of a C library",
    "A variable stored on disk",
    "A type of error"
  ]),
  Quiz(657, "What is 'stdin'?", [
    "A standard file pointer for input (usually the keyboard)",
    "A way to save files",
    "The name of the compiler",
    "A pointer to the heap"
  ]),
  Quiz(658, "What is 'stderr'?", [
    "A standard file pointer for error messages",
    "A syntax error",
    "A type of binary file",
    "The file name"
  ]),
  Quiz(659, "Can you use printf/scanf logic with files?", [
    "Yes, by using fprintf and fscanf",
    "No",
    "Only for integers",
    "Only in C++"
  ]),
  Quiz(660, "Which function deletes a file from the disk?", [
    "remove()",
    "delete()",
    "erase()",
    "unlink()"
  ]),
  Quiz(661, "Which function renames a file on the disk?", [
    "rename()",
    "move()",
    "change()",
    "name()"
  ]),
  Quiz(662, "What happens if you 'fseek' beyond the end of a file?", [
    "The file size may be extended with zero bytes when you write",
    "The program crashes immediately",
    "The computer restarts",
    "It is a syntax error"
  ]),
  Quiz(663, "In command line arguments, 'argv' is an array of...", [
    "Character pointers (strings)",
    "Integers",
    "FILE pointers",
    "Floating point numbers"
  ]),
  Quiz(664, "What is the return type of 'fgetc()'? ", [
    "int (to handle EOF)",
    "char",
    "void",
    "FILE"
  ]),
  Quiz(665, "A file opened in \"a\" mode starts the file pointer at...", [
    "The end of the file",
    "The beginning of the file",
    "The middle",
    "A random position"
  ]),
  Quiz(666, "What is 'tmpfile()' used for?", [
    "Creating a temporary file that is automatically deleted when closed",
    "Downloading files from the internet",
    "Speeding up the hard drive",
    "Printing the screen"
  ]),
  Quiz(667, "Which function checks the status of a file stream?", [
    "fgetpos()",
    "fstatus()",
    "check()",
    "info()"
  ]),
  Quiz(668, "Binary I/O (fwrite/fread) is 'unformatted'. What does this mean?", [
    "Data is copied byte-for-byte without any translation or human-readable conversion",
    "The code is messy",
    "The computer decides the format randomly",
    "The file is always empty"
  ]),
  Quiz(669, "Can 'fscanf' read a string with spaces like 'Sai Mao'?", [
    "No, it stops at the first space",
    "Yes",
    "Only if you use %s",
    "Only in binary mode"
  ]),
  Quiz(670, "Which function creates a file if it doesn't exist and opens it for writing?", [
    "fopen() with \"w\" or \"a\" mode",
    "create()",
    "newFile()",
    "init()"
  ]),
  Quiz(671, "What is the 'Path' of a file?", [
    "The location of the file in the directory structure (e.g., C:/data/file.txt)",
    "The size of the file",
    "The speed of the file access",
    "The name of the author"
  ]),
  Quiz(672, "What is 'Buffer Underflow'?", [
    "Reading more data than available in the buffer (less common than overflow)",
    "A hardware failure",
    "Deleting the file",
    "A type of pointer"
  ]),
  Quiz(673, "Which of these is a correct binary mode for 'Append'?", [
    "\"ab\"",
    "\"ba\"",
    "\"append_bin\"",
    "\"binary_a\""
  ]),
  Quiz(674, "What is the main advantage of 'Command Line Arguments'?", [
    "Allows the user to control the program's behavior without changing the code",
    "Makes the program run on a browser",
    "Reduces the size of the RAM used",
    "It is required for mathematical functions"
  ]),
  Quiz(675, "What is the maximum value of 'argc'?", [
    "Limited by the operating system's command line length",
    "Exactly 10",
    "Exactly 255",
    "Exactly 1"
  ]),
  Quiz(676, "Can you pass a file pointer to a function?", [
    "Yes, as 'FILE *fp'",
    "No",
    "Only in the main function",
    "Only for text files"
  ]),
  Quiz(677, "The 'feof' function only becomes true *after* a read fails at the end.", [
    "True",
    "False",
    "Only in binary mode",
    "Only in Windows"
  ]),
  Quiz(678, "Which of these is used to 'clear' the error flags of a file stream?", [
    "clearerr()",
    "reset()",
    "fclean()",
    "start()"
  ]),
  Quiz(679, "What happens if you 'fclose' a pointer that is already NULL?", [
    "Usually results in undefined behavior or a crash",
    "Nothing, it is safe",
    "The pointer is created",
    "The computer restarts"
  ]),
  Quiz(680, "Which function reads a block of data into an array?", [
    "fread()",
    "fscanf()",
    "fgets()",
    "getblock()"
  ]),
  Quiz(681, "What is 'Sequential Access'?", [
    "Reading data one by one from start to end (default behavior)",
    "Jumping randomly",
    "Deleting data",
    "Using multiple files"
  ]),
  Quiz(682, "Which escape sequence is 'Backspace'?", [
    "\\b",
    "\\n",
    "\\t",
    "\\v"
  ]),
  Quiz(683, "What does 'r+' mode do?", [
    "Opens an existing file for both reading and writing",
    "Creates a new file for reading",
    "Deletes the file and re-opens it",
    "Only for binary files"
  ]),
  Quiz(684, "The 'fseek' function returns 0 if successful.", [
    "True",
    "False",
    "Only in C99",
    "Only in Linux"
  ]),
  Quiz(685, "Which function can be used to read a whole file into a large buffer in one go?", [
    "fread() with the file's total size",
    "fscanf()",
    "fgets()",
    "readall()"
  ]),
  Quiz(686, "In C, 'stderr' is unbuffered by default. Why?", [
    "So that error messages appear immediately even if the program crashes",
    "To save memory",
    "To make errors harder to find",
    "Because errors are small"
  ]),
  Quiz(687, "What is 'File Descriptor'?", [
    "A low-level integer used by the OS to track open files (related to FILE *)",
    "A comment about the file",
    "The file size",
    "The author's name"
  ]),
  Quiz(688, "Which function maps a file into the process's memory (Advanced)?", [
    "mmap() (in Unix/Linux)",
    "fopen()",
    "fread()",
    "map()"
  ]),
  Quiz(689, "In C, the end-of-file constant 'EOF' is usually defined as...", [
    "-1",
    "0",
    "1",
    "NULL"
  ]),
  Quiz(690, "Which function gets the current file position and stores it in an fpos_t object?", [
    "fgetpos()",
    "ftell()",
    "fseek()",
    "pos()"
  ]),
  Quiz(691, "What is 'CSV' file?", [
    "Comma Separated Values (a common text format easily processed in C)",
    "A binary database",
    "A C source file",
    "A type of compiler"
  ]),
  Quiz(692, "How do you check if a file 'data.txt' exists without opening it?", [
    "Use 'access()' function (header <unistd.h>)",
    "Check with printf",
    "It is impossible",
    "Ask the user"
  ]),
  Quiz(693, "In command line arguments, 'argv[argc]' is always...", [
    "NULL",
    "0",
    "The program name",
    "An error"
  ]),
  Quiz(694, "Which function writes a string to a file and adds a newline?", [
    "None (you must add '\\n' manually in C)",
    "fputs()",
    "puts() (only to stdout)",
    "writeline()"
  ]),
  Quiz(695, "What is 'Metadata' in a file?", [
    "Information about the file (size, date, permissions) stored by the OS",
    "The actual text data",
    "The C code",
    "The compiler's name"
  ]),
  Quiz(696, "Binary files are 'endian-dependent'. What does this mean?", [
    "A binary file saved on a Big-endian machine might be read wrongly on a Little-endian one",
    "They only run on Windows",
    "They always use 8 bits",
    "They are only for integers"
  ]),
  Quiz(697, "Which function creates a unique name for a temporary file?", [
    "tmpnam()",
    "tmpfile()",
    "newname()",
    "name()"
  ]),
  Quiz(698, "What happens if you call 'fseek' on a stream that doesn't support it (like a keyboard)?", [
    "It fails and returns a non-zero value",
    "The keyboard breaks",
    "The computer restarts",
    "It works perfectly"
  ]),
  Quiz(699, "Which function converts a float to a string (not standard, use sprintf)?", [
    "sprintf(buffer, \"%f\", val);",
    "ftoa()",
    "atof()",
    "strfloat()"
  ]),
  Quiz(700, "The final goal of Module 8 is to...", [
    "Master File I/O to create a permanent database for the TMK Student Manager",
    "Play video games in C",
    "Write a new operating system",
    "Learn how to type faster"
  ]),
];
final List<List<Quiz>> cQuizzes = [
  cQuizM1,
  cQuizM2,
  cQuizM3,
  cQuizM4,
  cQuizM5,
  cQuizM6,
  cQuizM7,
  cQuizM8,
];

