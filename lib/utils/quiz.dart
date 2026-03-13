class Quiz {
  int id;
  String question;
  List<String> options;

  Quiz(
    this.id,
    this.question,
    this.options,
  ); // 1st index will always be the correct answer
}

final List<Quiz> javaQuizM1 = [
  // --- Topic 1 & 2: Installation & Basics ---
  Quiz(1, "What does JDK stand for?", [
    "Java Development Kit",
    "Java Design Kit",
    "Java Deployment Kit",
    "Java Desktop Kit",
  ]),
  Quiz(2, "What is required to write and compile Java code?", [
    "JDK",
    "JRE only",
    "JVM only",
    "Python SDK",
  ]),
  Quiz(3, "What is IntelliJ IDEA?", [
    "IDE",
    "Operating System",
    "Compiler",
    "Data type",
  ]),
  Quiz(4, "What does JVM stand for?", [
    "Java Virtual Machine",
    "Java Variable Method",
    "Java Visual Machine",
    "Java Version Manager",
  ]),
  Quiz(5, "What is the file extension for Java source code?", [
    ".java",
    ".class",
    ".exe",
    ".txt",
  ]),

  // --- Topic 3: Variables & Data Types ---
  Quiz(6, "What is a Variable?", [
    "A container for storing data",
    "A method",
    "A class",
    "An operator",
  ]),
  Quiz(7, "Java is which type of programming language?", [
    "Strongly Typed",
    "Weakly Typed",
    "No Type",
    "Scripting",
  ]),
  Quiz(8, "Where do data types come from?", [
    "Keywords in Java",
    "Strings",
    "Variable names",
    "Comments",
  ]),
  Quiz(9, "Which is the standard naming convention for variables in Java?", [
    "camelCase",
    "PascalCase",
    "UPPERCASE",
    "kebab-case",
  ]),
  Quiz(10, "In 'int x = 10;', what is 'x'?", [
    "Variable name",
    "Data type",
    "Value",
    "Operator",
  ]),

  // --- Topic 4: Integer Data Types ---
  Quiz(11, "How many bits is a 'byte' type?", [
    "8 bits",
    "16 bits",
    "32 bits",
    "64 bits",
  ]),
  Quiz(12, "How many bits is an 'int' type?", [
    "32 bits",
    "8 bits",
    "16 bits",
    "64 bits",
  ]),
  Quiz(13, "How many bits is a 'long' type?", [
    "64 bits",
    "32 bits",
    "16 bits",
    "8 bits",
  ]),
  Quiz(14, "How many bits is a 'short' type?", [
    "16 bits",
    "32 bits",
    "64 bits",
    "8 bits",
  ]),
  Quiz(15, "Which is the largest Integer data type?", [
    "long",
    "int",
    "short",
    "byte",
  ]),
  Quiz(16, "What is the range of a 'byte'?", [
    "-128 to 127",
    "0 to 255",
    "-32768 to 32767",
    "No limit",
  ]),
  Quiz(17, "What letter is added to the end of a 'long' value?", [
    "L",
    "F",
    "D",
    "S",
  ]),
  Quiz(18, "Which Integer type is the default for whole numbers?", [
    "int",
    "long",
    "short",
    "byte",
  ]),
  Quiz(19, "What happens if you write 'byte b = 130;'?", [
    "Compile Error",
    "Correct",
    "Warning",
    "Overflow",
  ]),
  Quiz(20, "What is the default value of an 'int' instance variable?", [
    "0",
    "1",
    "null",
    "-1",
  ]),

  // --- Topic 5: Floating, Char, Boolean, Comments ---
  Quiz(21, "Which type is used to store decimal numbers?", [
    "double",
    "int",
    "long",
    "boolean",
  ]),
  Quiz(22, "How many bits is a 'float'?", [
    "32 bits",
    "64 bits",
    "128 bits",
    "16 bits",
  ]),
  Quiz(23, "How many bits is a 'double'?", [
    "64 bits",
    "32 bits",
    "16 bits",
    "128 bits",
  ]),
  Quiz(24, "What are the possible values for a 'boolean'?", [
    "true, false",
    "0, 1",
    "yes, no",
    "null",
  ]),
  Quiz(25, "How many characters can a 'char' store?", [
    "1 character",
    "2 characters",
    "10 characters",
    "No limit",
  ]),
  Quiz(26, "How do you write a single-line comment?", ["//", "/*", "--", "#"]),
  Quiz(27, "How do you write a multi-line comment?", ["/* */", "//", "", "##"]),
  Quiz(28, "What symbol is used to wrap a 'char' value?", [
    "' ' (Single quote)",
    "\" \" (Double quote)",
    "{ }",
    "[ ]",
  ]),
  Quiz(29, "Is 'double d = 10.5;' valid?", [
    "Yes, it is valid",
    "No, it is false",
    "Warning",
    "Error",
  ]),
  Quiz(30, "What is the result of 'boolean isJavaFun = \"true\";'?", [
    "Compile Error",
    "Correct",
    "Warning",
    "None",
  ]),

  // --- Topic 6: Arithmetic Operators ---
  Quiz(31, "Which operator is used to find the remainder (modulo)?", [
    "%",
    "/",
    "*",
    "+",
  ]),
  Quiz(32, "What is the result of '10 % 3'?", ["1", "3", "0", "3.33"]),
  Quiz(33, "What is the result of '5 + 2 * 3'?", ["11", "21", "10", "15"]),
  Quiz(34, "What is the '/' operator used for?", [
    "Division",
    "Modulo",
    "Multiplication",
    "Addition",
  ]),
  Quiz(35, "What is the result of '10 / 4' in integer division?", [
    "2",
    "2.5",
    "3",
    "0",
  ]),

  // --- Topic 7: Assignment Operators ---
  Quiz(36, "What does '=' represent in Java?", [
    "Assignment",
    "Equal to",
    "Comparison",
    "Logical",
  ]),
  Quiz(37, "What does 'x += 5;' mean?", [
    "x = x + 5",
    "x = 5",
    "x + 5 = x",
    "Error",
  ]),
  Quiz(38, "What does 'x *= 2;' mean?", [
    "x = x * 2",
    "x = 2",
    "x * 2 = x",
    "None",
  ]),
  Quiz(39, "What does 'x -= 3;' mean?", [
    "x = x - 3",
    "x = 3",
    "x - 3 = x",
    "Error",
  ]),
  Quiz(40, "What does 'x /= 2;' mean?", [
    "x = x / 2",
    "x = 2",
    "x / 2 = x",
    "None",
  ]),

  // --- Topic 8: Unary Operators ---
  Quiz(41, "What is '++x'?", [
    "Pre-increment",
    "Post-increment",
    "Decrement",
    "Addition",
  ]),
  Quiz(42, "What is 'x++'?", [
    "Post-increment",
    "Pre-increment",
    "Decrement",
    "None",
  ]),
  Quiz(43, "What is '--x'?", [
    "Pre-decrement",
    "Post-decrement",
    "Increment",
    "Subtraction",
  ]),
  Quiz(44, "If int x=5; int y=++x; what is y?", ["6", "5", "4", "7"]),
  Quiz(45, "If int x=5; int y=x++; what is y?", ["5", "6", "4", "7"]),

  // --- Topic 9: Relational Operators ---
  Quiz(46, "What is '==' used for?", [
    "Comparing if values are equal",
    "Assigning a value",
    "Not equal",
    "Greater than",
  ]),
  Quiz(47, "What does '!=' mean?", [
    "Not equal to",
    "Equal to",
    "Greater than",
    "Less than",
  ]),
  Quiz(48, "What result type do relational operators return?", [
    "boolean",
    "int",
    "String",
    "double",
  ]),
  Quiz(49, "What is the result of '10 > 5'?", [
    "true",
    "false",
    "null",
    "Error",
  ]),
  Quiz(50, "What is the result of '5 <= 5'?", [
    "true",
    "false",
    "null",
    "Error",
  ]),

  // --- Topic 10: Logical Operators ---
  Quiz(51, "What does '&&' represent?", [
    "Logical AND",
    "Logical OR",
    "Logical NOT",
    "Assignment",
  ]),
  Quiz(52, "What does '||' represent?", [
    "Logical OR",
    "Logical AND",
    "Logical NOT",
    "Bitwise",
  ]),
  Quiz(53, "What does '!' represent?", [
    "Logical NOT",
    "Logical AND",
    "Logical OR",
    "Factorial",
  ]),
  Quiz(54, "What is the result of '(true && false)'?", [
    "false",
    "true",
    "null",
    "Error",
  ]),
  Quiz(55, "What is the result of '(true || false)'?", [
    "true",
    "false",
    "null",
    "Error",
  ]),

  // --- Topic 11: Ternary Operator ---
  Quiz(56, "What is the syntax for the Ternary operator?", [
    "? :",
    "if else",
    "switch",
    "&& ||",
  ]),
  Quiz(57, "In 'condition ? x : y;', if condition is true, what is returned?", [
    "x",
    "y",
    "true",
    "false",
  ]),
  Quiz(58, "What is the result of 'int x = (5 > 2) ? 10 : 20;'?", [
    "10",
    "20",
    "5",
    "2",
  ]),

  // --- Topic 12: String Class ---
  Quiz(59, "What is a String in Java?", [
    "Class/Object",
    "Primitive type",
    "Operator",
    "Method",
  ]),
  Quiz(60, "What symbols wrap a String value?", [
    "\" \" (Double quote)",
    "' ' (Single quote)",
    "{ }",
    "< >",
  ]),
  Quiz(61, "Which operator is used for String concatenation?", [
    "+",
    "*",
    "&",
    "concat",
  ]),
  Quiz(62, "What is the result of '\"Hi\".length()'?", ["2", "1", "0", "3"]),
  Quiz(63, "What does it mean that Strings are 'Immutable'?", [
    "They cannot be changed after creation",
    "They can be changed",
    "They are numbers",
    "They cannot be deleted",
  ]),

  // --- Topic 13: Scanner (Input) ---
  Quiz(64, "Which class is used to receive user input?", [
    "Scanner",
    "System",
    "String",
    "Input",
  ]),
  Quiz(65, "In which package is the Scanner class located?", [
    "java.util",
    "java.lang",
    "java.io",
    "java.net",
  ]),
  Quiz(66, "Which method reads a full line of text?", [
    "nextLine()",
    "nextInt()",
    "nextDouble()",
    "nextChar()",
  ]),
  Quiz(67, "Which method reads an integer input?", [
    "nextInt()",
    "nextLine()",
    "nextFloat()",
    "next()",
  ]),
  Quiz(
    68,
    "What goes in the parentheses of 'new Scanner(____)' for console input?",
    ["System.in", "System.out", "Runtime", "File"],
  ),

  // --- Mixed Logic (69 - 100) ---
  Quiz(69, "Java keywords are written in which case?", [
    "All lowercase",
    "All Uppercase",
    "Mixed case",
    "PascalCase",
  ]),
  Quiz(70, "Result of 'int a = 10, b = 20; a == b'?", [
    "false",
    "true",
    "null",
    "Error",
  ]),
  Quiz(71, "What is 'short s = 50; int i = s;' an example of?", [
    "Widening Casting",
    "Narrowing Casting",
    "Error",
    "None",
  ]),
  Quiz(72, "What is 'int i = 10; short s = (short)i;' an example of?", [
    "Narrowing Casting",
    "Widening Casting",
    "Error",
    "Implicit",
  ]),
  Quiz(73, "Does boolean represent a 0 value?", [
    "No",
    "false",
    "true",
    "null",
  ]),
  Quiz(74, "What convention is used for Class names in Java?", [
    "PascalCase",
    "camelCase",
    "snake_case",
    "kebab-case",
  ]),
  Quiz(75, "What is 'System.out.println()' used for?", [
    "Displaying output",
    "Input",
    "Comments",
    "Variables",
  ]),
  Quiz(76, "Where must the main method be located?", [
    "Inside a Class",
    "Inside a Variable",
    "Inside a Package",
    "Inside a Library",
  ]),
  Quiz(77, "What does 'Platform Independent' mean?", [
    "Runs on any Operating System",
    "Runs on Windows only",
    "Runs on Mac only",
    "Compile error",
  ]),
  Quiz(78, "What does JRE stand for?", [
    "Java Runtime Environment",
    "Java Real Environment",
    "Java Run Engine",
    "Java Rapid Entry",
  ]),
  Quiz(79, "Which of the following is NOT a Primitive Data Type?", [
    "String",
    "int",
    "char",
    "double",
  ]),
  Quiz(80, "Is Java 'Case Sensitive'?", ["Yes", "No", "Sometimes", "None"]),
  Quiz(81, "Which keyword creates a constant (unchangeable value)?", [
    "final",
    "static",
    "const",
    "fixed",
  ]),
  Quiz(82, "What is the result of 'String x = \"10\" + 20;'?", [
    "1020",
    "30",
    "Error",
    "10 20",
  ]),
  Quiz(83, "Which expression is equivalent to 'x = x + 1;'?", [
    "x++",
    "x--",
    "x",
    "x+1",
  ]),
  Quiz(84, "How many bits does 'char' use for Unicode in Java?", [
    "16 bits",
    "8 bits",
    "32 bits",
    "64 bits",
  ]),
  Quiz(85, "A variable name cannot start with what?", [
    "A number",
    "A letter",
    "Underscore (_)",
    "Dollar sign (\$)",
  ]),
  Quiz(86, "What is the result of 'int x = 10 / 3;'?", ["3", "3.33", "4", "0"]),
  Quiz(87, "What is the result of 'double y = 10 / 3.0;'?", [
    "3.3333333333333335",
    "3.0",
    "3",
    "0.0",
  ]),
  Quiz(88, "Which method prints text and then moves to a new line?", [
    "println()",
    "print()",
    "printf()",
    "next()",
  ]),
  Quiz(89, "Which operator checks the type of an Object?", [
    "instanceof",
    "is",
    "typeof",
    "extends",
  ]),
  Quiz(90, "What happens with 'byte a=10, b=20; byte c = a+b;'?", [
    "Compile Error (result is int)",
    "30",
    "Correct",
    "None",
  ]),
  Quiz(91, "Result of 'String s = null; s.length();'?", [
    "NullPointerException",
    "0",
    "null",
    "Error",
  ]),
  Quiz(92, "What is a variable defined inside a method called?", [
    "Local variable",
    "Global variable",
    "Instance variable",
    "Static variable",
  ]),
  Quiz(93, "Which command is used to compile Java code?", [
    "javac",
    "java",
    "run",
    "compile",
  ]),
  Quiz(94, "Which command is used to run a Java class?", [
    "java",
    "javac",
    "run",
    "execute",
  ]),
  Quiz(95, "Which is a valid character literal?", ["'A'", "\"A\"", "A", "65"]),
  Quiz(96, "What is the result of '!(5 > 2)'?", [
    "false",
    "true",
    "Error",
    "5",
  ]),
  Quiz(97, "Does the Scanner class need to be imported?", [
    "Yes",
    "No",
    "Automatic",
    "Only in Windows",
  ]),
  Quiz(98, "In 'int x = 010;', what is the decimal value of x (Octal)?", [
    "8",
    "10",
    "16",
    "Error",
  ]),
  Quiz(99, "In 'int x = 0x10;', what is the decimal value of x (Hex)?", [
    "16",
    "10",
    "8",
    "Error",
  ]),
  Quiz(100, "In what year was Java first released?", [
    "1995",
    "1991",
    "2000",
    "1985",
  ]),
];
final List<Quiz> javaQuizM2 = [
  // --- Topic 14, 15, 16: Arrays & Multi-Dimensional Arrays ---
  Quiz(101, "What is the starting index of an Array in Java?", [
    "0",
    "1",
    "-1",
    "None of the above",
  ]),
  Quiz(102, "Which property is used to find the length of an Array?", [
    "length",
    "size()",
    "count",
    "length()",
  ]),
  Quiz(103, "How many elements can 'int[] arr = new int[5];' store?", [
    "5",
    "4",
    "6",
    "0",
  ]),
  Quiz(104, "Can an Array store different data types at once?", [
    "No",
    "Yes",
    "Sometimes",
    "Only if it is a String",
  ]),
  Quiz(105, "What is a Multi-dimensional array?", [
    "An Array within an Array",
    "An Array containing Strings",
    "An Array with multiple numbers",
    "A normal variable",
  ]),
  Quiz(106, "How many elements are in 'int[][] x = new int[2][3];'?", [
    "6",
    "5",
    "2",
    "3",
  ]),
  Quiz(
    107,
    "Which symbols are used to initialize an Array with values immediately?",
    ["{ }", "[ ]", "( )", "< >"],
  ),
  Quiz(108, "What is the result of 'String s = \"A,B,C\"; s.split(\",\");'?", [
    "A String Array",
    "A single String",
    "An int Array",
    "Error",
  ]),
  Quiz(109, "What is the highest index in an Array?", [
    "length - 1",
    "length",
    "100",
    "0",
  ]),
  Quiz(110, "What happens if you access an index beyond the Array's length?", [
    "ArrayIndexOutOfBoundsException",
    "null",
    "0",
    "Compile time error",
  ]),

  // --- Topic 17, 18, 19: If Conditionals ---
  Quiz(111, "What is a Conditional Statement used for?", [
    "To choose a path of execution",
    "To count numbers",
    "To store data",
    "To loop code",
  ]),
  Quiz(112, "What result type is required inside an 'if (condition)'?", [
    "boolean",
    "int",
    "String",
    "double",
  ]),
  Quiz(
    113,
    "Which keyword is used to provide an alternative if the 'if' condition is false?",
    ["else", "then", "switch", "while"],
  ),
  Quiz(
    114,
    "Which keyword is used to check another condition if the first 'if' is false?",
    ["else if", "if only", "if else", "while"],
  ),
  Quiz(115, "What is the result of 'if (x = 10)' in Java?", [
    "Error (should use ==)",
    "Correct",
    "True",
    "False",
  ]),
  Quiz(116, "Will the block inside 'if (5 > 2) { ... }' execute?", [
    "Yes (True)",
    "No (False)",
    "Error",
    "None",
  ]),

  // --- Topic 20: Switch Statement ---
  Quiz(117, "What can a Switch statement replace?", [
    "if-else-if",
    "for loop",
    "variable",
    "Array",
  ]),
  Quiz(118, "Which keyword stops the execution of a switch case?", [
    "break",
    "stop",
    "exit",
    "return",
  ]),
  Quiz(119, "Where does execution go if no switch cases match?", [
    "default",
    "else",
    "break",
    "Error",
  ]),
  Quiz(120, "Which data types are allowed in a switch statement?", [
    "String, int, char, enum",
    "boolean, double",
    "float only",
    "boolean only",
  ]),

  // --- Topic 21, 22, 23: Looping (While, Do-While) ---
  Quiz(121, "What is a Loop used for?", [
    "Executing tasks repeatedly",
    "Testing conditions",
    "Inputting data",
    "Displaying Strings",
  ]),
  Quiz(122, "When does a While loop execute?", [
    "When the condition is true",
    "When the condition is false",
    "Only once",
    "Until it reaches 10",
  ]),
  Quiz(123, "What is the minimum number of times a Do-While loop executes?", [
    "1 time",
    "0 times",
    "Infinitely",
    "10 times",
  ]),
  Quiz(124, "What is the main difference between While and Do-While?", [
    "Do-While runs before checking the condition",
    "While runs first",
    "They are identical",
    "While is faster",
  ]),
  Quiz(125, "What is an Infinite loop?", [
    "A loop that never ends",
    "A loop that runs 10 times",
    "A loop with an error",
    "A loop that does not run",
  ]),

  // --- Topic 24, 25: For Loop & Enhanced For ---
  Quiz(126, "What are the parts of a For loop?", [
    "initialization, condition, update",
    "if, else, break",
    "start, stop",
    "only condition",
  ]),
  Quiz(127, "What is the Enhanced for loop (For-each) used for?", [
    "Iterating through Arrays/Collections",
    "Looping through numbers",
    "Creating arrays",
    "Breaking loops",
  ]),
  Quiz(128, "How many times will 'for (int i=0; i<5; i++)' run?", [
    "5",
    "4",
    "6",
    "0",
  ]),
  Quiz(129, "What is the syntax for an Enhanced for loop?", [
    "for (Type item : array)",
    "for (Type item in array)",
    "for (array : item)",
    "for (i to array)",
  ]),
  Quiz(130, "What is a loop written as 'for(;;)'?", [
    "Infinite loop",
    "Error",
    "1 Loop",
    "None",
  ]),

  // --- Topic 26, 27: Nested If & Nested For ---
  Quiz(131, "What is a Nested If?", [
    "An If statement inside another If",
    "An If inside a For loop",
    "Multiple If statements",
    "Else if",
  ]),
  Quiz(132, "What is a Nested For loop used for?", [
    "Loops within loops (like a Matrix)",
    "A single loop",
    "Looping Strings",
    "Looping constants",
  ]),
  Quiz(133, "How does a Nested for loop execute?", [
    "Inner loop finishes before Outer loop updates",
    "Outer loop runs first",
    "They run independently",
    "Error",
  ]),

  // --- Topic 28, 29, 30: String Methods & Casting ---
  Quiz(134, "What is 's.toUpperCase()' used for?", [
    "Converting to uppercase",
    "Converting to lowercase",
    "Counting length",
    "Deleting",
  ]),
  Quiz(135, "What is 's.trim()' used for?", [
    "Removing spaces from both ends",
    "Cutting a String",
    "Replacing",
    "Concatenating",
  ]),
  Quiz(136, "What is 's.replace('a', 'b')' used for?", [
    "Changing 'a' to 'b'",
    "Deleting 'a'",
    "Adding 'b'",
    "Finding 'a'",
  ]),
  Quiz(137, "How do you convert a String to an int?", [
    "Integer.parseInt()",
    "String.toInt()",
    "(int)s",
    "parseInt.String()",
  ]),
  Quiz(138, "Which characters are returned by 's.substring(0, 2)'?", [
    "Index 0 to 1",
    "Index 0 to 2",
    "Index 1 to 2",
    "0 and 2",
  ]),
  Quiz(139, "What is the difference between 's.equals(s2)' and 's == s2'?", [
    "equals compares values; == compares references",
    "They are identical",
    "== is faster",
    "equals is incorrect",
  ]),
  Quiz(140, "What is the result type of 's.contains(\"Java\")'?", [
    "boolean",
    "int",
    "String",
    "char",
  ]),

  // --- Mixed & Logic Questions (141-200) ---
  Quiz(141, "int[] a = {1,2}; int[] b = a; b[0]=5; What is a[0]?", [
    "5",
    "1",
    "0",
    "Error",
  ]),
  Quiz(142, "Which Array initialization is correct?", [
    "int[] a = {1, 2, 3};",
    "int a = {1, 2};",
    "int[] a = new int(3);",
    "int a[] = new int[3]()",
  ]),
  Quiz(
    143,
    "What is the default value of 'String[] s = new String[2]; s[0]'?",
    ["null", "\"\"", "0", "Error"],
  ),
  Quiz(144, "Where can 'if (true) break;' be used?", [
    "Inside any loop",
    "Inside an If statement alone",
    "Inside a Method",
    "Inside a Variable",
  ]),
  Quiz(145, "What does the 'continue' keyword do?", [
    "Skips the current loop iteration",
    "Ends the loop",
    "Exits the method",
    "Error",
  ]),
  Quiz(146, "int i = 0; for(; i<3; i++); What is the final value of i?", [
    "3",
    "2",
    "0",
    "4",
  ]),
  Quiz(147, "What happens if a Switch case has no 'break'?", [
    "Fall-through (executes next cases)",
    "Error",
    "Stop",
    "Infinite loop",
  ]),
  Quiz(148, "What is the result of 'boolean b = true; switch(b)'?", [
    "Error (boolean not allowed in switch)",
    "Correct",
    "True",
    "False",
  ]),
  Quiz(149, "How do you check if a String is empty?", [
    "Both s.isEmpty() and s.length() == 0",
    "s.isEmpty()",
    "s.length() == 0",
    "s == \"\"",
  ]),
  Quiz(150, "What is the starting index of a String?", [
    "0",
    "1",
    "-1",
    "None",
  ]),
  Quiz(151, "How many times will 'for(int i=10; i>0; i--)' run?", [
    "10",
    "11",
    "9",
    "Infinite",
  ]),
  Quiz(152, "What is the result of 'Integer.valueOf(\"100\")'?", [
    "100 (Integer object)",
    "100 (primitive)",
    "Error",
    "null",
  ]),
  Quiz(153, "int[][] x = {{1}, {2,3}}; What is x[1][1]?", [
    "3",
    "2",
    "1",
    "Error",
  ]),
  Quiz(154, "Is an Array in Java considered an Object?", [
    "Yes",
    "No",
    "Primitive type",
    "None",
  ]),
  Quiz(155, "What does 's.charAt(0)' do?", [
    "Returns the character at index 0",
    "Deletes index 0",
    "Finds 0",
    "None",
  ]),
  Quiz(156, "Does 's.toLowerCase()' return a new String?", [
    "Yes (Strings are immutable)",
    "No (changes original)",
    "Error",
    "None",
  ]),
  Quiz(157, "How many times will 'for (;;) { if(true) break; }' run?", [
    "1",
    "0",
    "Infinite",
    "Error",
  ]),
  Quiz(158, "int x = 5; if(x > 0) { x = 10; } else { x = 0; } What is x?", [
    "10",
    "5",
    "0",
    "Error",
  ]),
  Quiz(159, "Can an Array have a length of 0?", [
    "Yes (new int[0])",
    "No",
    "Compile error",
    "None",
  ]),
  Quiz(160, "What does 's.indexOf('a')' return?", [
    "The index of 'a'",
    "boolean",
    "String",
    "Error",
  ]),
  Quiz(161, "How do you convert an int to a String?", [
    "String.valueOf(i)",
    "i.toString()",
    "(String)i",
    "Integer.parseString(i)",
  ]),
  Quiz(162, "Result of '(true && false || true)'?", [
    "true",
    "false",
    "null",
    "Error",
  ]),
  Quiz(163, "Which loop checks the condition at the end?", [
    "do-while",
    "while",
    "for",
    "for-each",
  ]),
  Quiz(164, "Is Array 'length' a variable or a method?", [
    "Variable (final field)",
    "Method",
    "Class",
    "Constructor",
  ]),
  Quiz(165, "Is String 'length()' a variable or a method?", [
    "Method",
    "Variable",
    "Class",
    "Field",
  ]),
  Quiz(166, "Which operator is 's.concat(\" \")' equivalent to?", [
    "+",
    "*",
    "/",
    "==",
  ]),
  Quiz(167, "What is the result type of 's.startsWith(\"J\")'?", [
    "boolean",
    "int",
    "String",
    "char",
  ]),
  Quiz(168, "Are 3 levels of Nested For loops allowed?", [
    "Yes",
    "No",
    "Only 2 levels allowed",
    "Error",
  ]),
  Quiz(169, "int i = 5; do { i++; } while(i < 5); What is i?", [
    "6",
    "5",
    "0",
    "4",
  ]),
  Quiz(170, "What happens with 'int[] n = new int[3]; n[3] = 10;'?", [
    "ArrayIndexOutOfBoundsException",
    "Correct",
    "n[2]=10",
    "Compile error",
  ]),
  Quiz(171, "What is the result of '\"Java\".substring(2)'?", [
    "\"va\"",
    "\"ja\"",
    "\"va\"",
    "\"a\"",
  ]),
  Quiz(172, "String s = \"apple\"; s.replace(\"p\", \"b\"); What is s?", [
    "\"apple\" (Strings are immutable)",
    "\"abble\"",
    "\"p\"",
    "\"b\"",
  ]),
  Quiz(173, "When can you use '->' in Switch expressions?", [
    "Java 12/14+",
    "Java 8",
    "Java 7",
    "Not possible",
  ]),
  Quiz(174, "Which is the easiest way to loop from 1 to 10?", [
    "for loop",
    "while",
    "do-while",
    "if-else",
  ]),
  Quiz(175, "What is 'while(true) { }'?", [
    "Infinite loop",
    "Error",
    "1 Loop",
    "Stop",
  ]),
  Quiz(
    176,
    "Result of 'int x = 1; switch(x) { case 1: System.out.print(1); }'?",
    ["1", "Error", "null", "0"],
  ),
  Quiz(177, "What does 's.isBlank()' return for a space \" \" (Java 11)?", [
    "true",
    "false",
    "Error",
    "null",
  ]),
  Quiz(178, "What does 's.isEmpty()' return for a space \" \"?", [
    "false",
    "true",
    "Error",
    "null",
  ]),
  Quiz(179, "Is 'int[][] m = new int[2][];' allowed?", [
    "Yes (Jagged array)",
    "No",
    "Compile error",
    "None",
  ]),
  Quiz(180, "Can you change Array values using 'for(int i : array)'?", [
    "No (read only)",
    "Yes",
    "Only if it is an Object",
    "Error",
  ]),
  Quiz(181, "int i=1; while(i <= 3) { i++; } What is i?", ["4", "3", "1", "2"]),
  Quiz(182, "How many times does a Nested 2x2 loop run?", ["4", "2", "6", "8"]),
  Quiz(183, "What is the result of 'if (5 == 5.0)'?", [
    "true",
    "false",
    "Error",
    "None",
  ]),
  Quiz(
    184,
    "String s = \"ABC\"; char[] c = s.toCharArray(); What is c.length?",
    ["3", "2", "4", "0"],
  ),
  Quiz(185, "int x = 10; if(x > 5) if(x > 8) x=1; else x=2; What is x?", [
    "1",
    "2",
    "10",
    "5",
  ]),
  Quiz(186, "Must the 'default' keyword be at the end of a switch?", [
    "No (can be anywhere)",
    "Yes",
    "Must be at the front",
    "Error",
  ]),
  Quiz(187, "Where does 's.lastIndexOf('a')' start searching from?", [
    "The end of the string",
    "The beginning",
    "Finds only 1 character",
    "Error",
  ]),
  Quiz(188, "String s = null; if (s != null && s.length() > 0) What happens?", [
    "false (no error due to short-circuit)",
    "Error",
    "true",
    "null",
  ]),
  Quiz(189, "String s = null; if (s != null & s.length() > 0) What happens?", [
    "Error (NullPointerException)",
    "false",
    "true",
    "null",
  ]),
  Quiz(190, "What is 'break label;' used for?", [
    "Breaking an outer loop",
    "Exiting a method",
    "Exiting the app",
    "Going to a specific line",
  ]),
  Quiz(191, "int[] n = {1, 2}; for(int x : n) System.out.print(x); Result?", [
    "12",
    "1 2",
    "Error",
    "n",
  ]),
  Quiz(192, "Does Array 'length' use parentheses ()?", [
    "No",
    "Yes",
    "Sometimes",
    "Error",
  ]),
  Quiz(193, "What is the result of 'String.join(\"-\", \"A\", \"B\")'?", [
    "A-B",
    "AB",
    "A B",
    "Error",
  ]),
  Quiz(194, "What does 's.equalsIgnoreCase(s2)' check?", [
    "Value equality ignoring case",
    "Case sensitivity",
    "Length equality",
    "Error",
  ]),
  Quiz(195, "Result of loop 0 to 3 with 'if(i==1) continue;'?", [
    "02",
    "012",
    "12",
    "0",
  ]),
  Quiz(196, "Result of 'do { System.out.print(1); } while(false);'?", [
    "1",
    "0",
    "Infinite",
    "Error",
  ]),
  Quiz(197, "What data type are index 0 elements in an Array?", [
    "Same as Array type",
    "int",
    "String",
    "Object",
  ]),
  Quiz(198, "int[] a = new int[2]; a = new int[3]; What is a[0]?", [
    "0 (reset by new array)",
    "1",
    "2",
    "Error",
  ]),
  Quiz(199, "What is the result of '\"Java\" + \"17\"'?", [
    "Java17",
    "Java",
    "17",
    "Error",
  ]),
  Quiz(200, "Which Java loop is the fastest?", [
    "They are generally equal",
    "for",
    "while",
    "do-while",
  ]),
];
final List<Quiz> javaQuizM3 = [
  // --- Topic 31, 32: Class & Objects ---
  Quiz(201, "What is a Class in Java?", [
    "A blueprint for creating objects",
    "A type of variable",
    "A specific method",
    "A package",
  ]),
  Quiz(202, "Which keyword is used to declare a Class?", [
    "class",
    "Object",
    "new",
    "struct",
  ]),
  Quiz(
    203,
    "Which keyword is used to create an instance (Object) of a Class?",
    ["new", "create", "make", "instance"],
  ),
  Quiz(204, "Which symbol is used to access an Object's attribute or field?", [
    ". (Dot operator)",
    ", (Comma)",
    ": (Colon)",
    "-> (Arrow)",
  ]),
  Quiz(205, "What is the standard naming convention for Classes in Java?", [
    "PascalCase",
    "camelCase",
    "snake_case",
    "kebab-case",
  ]),
  Quiz(206, "What are the two main components of an Object?", [
    "State (Fields) and Behavior (Methods)",
    "Only Methods",
    "Only Variables",
    "Only Packages",
  ]),
  Quiz(207, "How many objects can be created from a single Class?", [
    "Unlimited (as much as RAM allows)",
    "Only one",
    "Exactly 10",
    "Only 255",
  ]),
  Quiz(208, "Which class is the root (parent) of all classes in Java?", [
    "Object class",
    "String class",
    "Main class",
    "System class",
  ]),
  Quiz(209, "What are attributes declared inside a Class called?", [
    "Fields / Instance Variables",
    "Local variables",
    "Parameters",
    "Methods",
  ]),
  Quiz(210, "In 'Car myCar = new Car();', what is 'myCar'?", [
    "Object Reference Variable",
    "Class name",
    "Method",
    "Constructor",
  ]),

  // --- Topic 33, 34, 35: Methods & Return Types ---
  Quiz(211, "What is a Method?", [
    "A block of code representing a behavior/action",
    "A storage for data",
    "The name of a class",
    "An error log",
  ]),
  Quiz(
    212,
    "Which keyword is used for a method that does not return a value?",
    ["void", "int", "null", "empty"],
  ),
  Quiz(213, "Which keyword is used to send a value back from a method?", [
    "return",
    "get",
    "give",
    "back",
  ]),
  Quiz(
    214,
    "What are the variables defined inside a method's parentheses () called?",
    ["Parameters", "Arguments", "Return type", "Modifiers"],
  ),
  Quiz(
    215,
    "What are the actual values passed to a method when it is called?",
    ["Arguments", "Parameters", "Fields", "Local variables"],
  ),
  Quiz(216, "In 'public int sum(int a, int b)', what is the return type?", [
    "int",
    "sum",
    "public",
    "void",
  ]),
  Quiz(217, "How many parameters can one method have?", [
    "Multiple/As many as needed",
    "Only one",
    "Exactly two",
    "None",
  ]),
  Quiz(218, "Can you use the 'return;' statement in a void method?", [
    "Yes (to exit the method)",
    "No",
    "Only if it returns 0",
    "Compile Error",
  ]),
  Quiz(219, "What is the standard naming convention for Methods in Java?", [
    "camelCase",
    "PascalCase",
    "UPPERCASE",
    "snake_case",
  ]),
  Quiz(220, "What is a non-static method inside a class called?", [
    "Instance Method",
    "Static Variable",
    "Local Method",
    "Global Action",
  ]),

  // --- Topic 36: Method Overloading ---
  Quiz(221, "What is Method Overloading?", [
    "Same method name with different parameters",
    "Different method names",
    "Methods with the same return type",
    "Calling methods recursively",
  ]),
  Quiz(222, "What must be different to achieve Method Overloading?", [
    "Parameter count or type",
    "Only the return type",
    "Only the access modifier",
    "Nothing",
  ]),
  Quiz(
    223,
    "If only the return type is different (parameters are same), does it count as Overloading?",
    ["No (it causes a compile error)", "Yes", "Sometimes", "Only in old Java"],
  ),
  Quiz(224, "What is Method Overloading also known as?", [
    "Compile-time Polymorphism",
    "Runtime Polymorphism",
    "Inheritance",
    "Abstraction",
  ]),
  Quiz(225, "What is the main purpose of Method Overloading?", [
    "Readability and using the same name for similar tasks",
    "To make RAM faster",
    "To make code longer",
    "It is required by the JVM",
  ]),

  // --- Topic 37: Constructors ---
  Quiz(226, "What is a Constructor?", [
    "A special method called when an object is created",
    "A type of variable",
    "An anonymous method",
    "A loop structure",
  ]),
  Quiz(227, "What must the name of a Constructor match?", [
    "The Class name",
    "The Method name",
    "The Variable name",
    "The Package name",
  ]),
  Quiz(228, "What is the return type of a Constructor?", [
    "None (not even void)",
    "void",
    "int",
    "String",
  ]),
  Quiz(229, "What happens if you don't write a constructor in your class?", [
    "Java provides a Default Constructor",
    "Compile Error",
    "Object cannot be created",
    "Nothing",
  ]),
  Quiz(230, "What is a constructor with parameters called?", [
    "Parameterized Constructor",
    "Default Constructor",
    "Method",
    "Overloaded Method",
  ]),
  Quiz(231, "Having multiple constructors in the same class is called?", [
    "Constructor Overloading",
    "Method Overloading",
    "Inheritance",
    "Object Copying",
  ]),
  Quiz(232, "When is a constructor executed?", [
    "When the 'new' keyword is used",
    "When a method is called",
    "During compilation",
    "When the program closes",
  ]),
  Quiz(233, "What values does the Default Constructor assign to variables?", [
    "0 (numbers) / null (Objects)",
    "1",
    "-1",
    "Error",
  ]),
  Quiz(234, "Can a Constructor be declared as static?", [
    "No",
    "Yes",
    "Sometimes",
    "It is static by default",
  ]),
  Quiz(
    235,
    "Which keyword is used to call one constructor from another in the same class?",
    ["this()", "super()", "new()", "constructor()"],
  ),

  // --- Topic 38: Global (Instance) vs Local Variables ---
  Quiz(236, "What is a Local Variable?", [
    "A variable defined inside a method",
    "A variable defined across the whole class",
    "A variable defined in a package",
    "A static variable",
  ]),
  Quiz(237, "What is an Instance Variable (Global)?", [
    "A variable defined in a class but outside any method",
    "A variable inside a method",
    "A variable inside a loop",
    "A constant",
  ]),
  Quiz(238, "Must a Local Variable be initialized before use?", [
    "Yes (otherwise compile error)",
    "No",
    "Java initializes it automatically",
    "Only if it is a String",
  ]),
  Quiz(239, "Do Instance Variables have default values?", [
    "Yes (0, false, null)",
    "No",
    "You must assign them first",
    "Compile Error",
  ]),
  Quiz(240, "When does a Local Variable's life cycle end?", [
    "When the method finishes execution",
    "When the program ends",
    "When the object is destroyed",
    "Never",
  ]),
  Quiz(241, "When does an Instance Variable's life cycle end?", [
    "When the object is destroyed (Garbage Collected)",
    "When the method finishes",
    "When the computer shuts down",
    "During compilation",
  ]),
  Quiz(
    242,
    "What happens if a Local and Instance variable have the same name?",
    [
      "The Local variable takes priority (Shadowing)",
      "The Instance variable takes priority",
      "Compile Error",
      "Both are used simultaneously",
    ],
  ),
  Quiz(
    243,
    "Which keyword helps access an Instance variable when a Local variable has the same name?",
    ["this", "super", "static", "new"],
  ),
  Quiz(
    244,
    "Can you apply Access Modifiers (public, private) to Local Variables?",
    ["No", "Yes", "Only public", "Compile Error"],
  ),
  Quiz(245, "Where are Local Variables stored in memory?", [
    "Stack",
    "Heap",
    "Both",
    "Register",
  ]),
  Quiz(246, "Where are Instance Variables stored in memory?", [
    "Heap (inside the Object)",
    "Stack",
    "Method Area",
    "Disk",
  ]),

  // --- Topic 39: Java Packages ---
  Quiz(247, "What is a Package in Java?", [
    "A folder used to group related classes",
    "A single file",
    "A specific method",
    "A standalone library",
  ]),
  Quiz(248, "Which keyword is used to use a class from another package?", [
    "import",
    "package",
    "include",
    "use",
  ]),
  Quiz(249, "Where must the 'package' declaration be written in a code file?", [
    "The very first line",
    "The last line",
    "Inside a method",
    "Outside the class at the bottom",
  ]),
  Quiz(250, "Which package is automatically imported by Java by default?", [
    "java.lang",
    "java.util",
    "java.io",
    "java.net",
  ]),
  Quiz(251, "Which symbol imports all classes within a package?", [
    "*",
    "#",
    "+",
    "&",
  ]),
  Quiz(252, "What is the naming convention for Packages?", [
    "All lowercase",
    "PascalCase",
    "UPPERCASE",
    "Mixed case",
  ]),
  Quiz(
    253,
    "Which keyword is used to define which package a class belongs to?",
    ["package", "import", "class", "namespace"],
  ),
  Quiz(254, "In which package is the 'Scanner' class located?", [
    "java.util",
    "java.lang",
    "java.io",
    "java.math",
  ]),
  Quiz(
    255,
    "How do you handle two classes with the same name from different packages?",
    [
      "Use the Fully Qualified Name (package.ClassName)",
      "Compile Error",
      "Import both and pray",
      "Rename the classes",
    ],
  ),

  // --- Mixed & Logic (256 - 300) ---
  Quiz(256, "How many constructors can a class have?", [
    "Multiple (through Overloading)",
    "Only one",
    "None",
    "Exactly two",
  ]),
  Quiz(257, "What is another name for a Static Variable?", [
    "Class variable",
    "Instance variable",
    "Local variable",
    "Constant",
  ]),
  Quiz(258, "Which keyword is used to create a constant value?", [
    "final",
    "static",
    "const",
    "fixed",
  ]),
  Quiz(259, "What is Heap Memory?", [
    "RAM space used for storing Objects",
    "Storage for source code",
    "Storage for methods",
    "Storage for integers only",
  ]),
  Quiz(260, "What is the role of Garbage Collection (GC) in Java?", [
    "To destroy unused objects and free up RAM",
    "To compile code",
    "To check for syntax errors",
    "To run the main program",
  ]),
  Quiz(261, "What does the 'this' keyword refer to?", [
    "The current instance of the object",
    "The parent class",
    "A new variable",
    "A new method",
  ]),
  Quiz(262, "What does 'null' mean in Java?", [
    "The reference does not point to any object",
    "0",
    "False",
    "Error",
  ]),
  Quiz(263, "Where is an Object Reference stored?", [
    "Stack",
    "Heap",
    "Disk",
    "Monitor",
  ]),
  Quiz(264, "What is a data type that is based on a Class called?", [
    "Reference Type",
    "Primitive Type",
    "Basic Type",
    "Method Type",
  ]),
  Quiz(265, "If a class is 'public class Main', what must the file name be?", [
    "Main.java",
    "main.java",
    "Class.java",
    "File.java",
  ]),
  Quiz(266, "Can a Static Method access an Instance Variable directly?", [
    "No",
    "Yes",
    "Only if it is public",
    "Only if it is final",
  ]),
  Quiz(267, "Can an Instance Method access a Static Variable?", [
    "Yes",
    "No",
    "Compile Error",
    "Sometimes",
  ]),
  Quiz(268, "What is an Anonymous Object?", [
    "An object created without a variable name",
    "An object with no class",
    "A destroyed object",
    "null",
  ]),
  Quiz(269, "Which Access Modifier is fundamental for Encapsulation?", [
    "private",
    "public",
    "protected",
    "default",
  ]),
  Quiz(270, "What is Abstraction?", [
    "Hiding implementation details and showing only functionality",
    "Class inheritance",
    "Creating an object",
    "Importing packages",
  ]),
  Quiz(271, "Which class provides the object needed to read keyboard input?", [
    "Scanner",
    "System",
    "String",
    "PrintStream",
  ]),
  Quiz(272, "What makes up a Method Signature?", [
    "Method name + Parameter list",
    "Return type + Name",
    "Modifier + Name",
    "The code inside",
  ]),
  Quiz(273, "How can you copy one object's data to another?", [
    "Copy Constructor or clone()",
    "The = operator",
    "new Object()",
    "copy() method",
  ]),
  Quiz(274, "What is a Final Class?", [
    "A class that cannot be inherited",
    "A class that cannot create objects",
    "A class with no methods",
    "The last class in a file",
  ]),
  Quiz(275, "What does a Package structure resemble?", [
    "Hierarchical folders",
    "A linear list",
    "A circular queue",
    "A graph",
  ]),
  Quiz(276, "Does 'import java.util.*;' import all sub-packages of java?", [
    "No (it only imports classes in util)",
    "Yes",
    "Compile Error",
    "None",
  ]),
  Quiz(277, "Is Java a Pure Object-Oriented language?", [
    "No (due to primitive types like int, char)",
    "Yes",
    "Partially",
    "None",
  ]),
  Quiz(278, "Which operator checks if an object belongs to a specific class?", [
    "instanceof",
    "typeof",
    "is",
    "equal",
  ]),
  Quiz(279, "Can a memory leak occur in Java?", [
    "Yes (e.g., if static references aren't cleared)",
    "No (due to GC)",
    "Only in Strings",
    "None",
  ]),
  Quiz(280, "What is the Method Body?", [
    "The code inside the { } braces",
    "The method name",
    "The return type",
    "The parameters",
  ]),
  Quiz(281, "What is Constructor Chaining?", [
    "Calling one constructor from another",
    "Using a loop in a constructor",
    "Destroying an object",
    "Error",
  ]),
  Quiz(282, "What is the purpose of Getter and Setter methods?", [
    "To access and update private fields safely",
    "To compile code",
    "To delete objects",
    "To import packages",
  ]),
  Quiz(283, "What does POJO stand for?", [
    "Plain Old Java Object",
    "Public Object Java Only",
    "Private Object",
    "Package of Java Object",
  ]),
  Quiz(284, "When does Variable Shadowing occur?", [
    "When a local variable has the same name as an instance variable",
    "When a variable disappears",
    "During an error",
    "When creating an object",
  ]),
  Quiz(285, "What does 'this.name = name;' inside a constructor do?", [
    "Assigns the parameter value to the instance variable",
    "Creates a new variable",
    "Compile Error",
    "None",
  ]),
  Quiz(286, "How are arguments passed to methods in Java?", [
    "Pass by value",
    "Pass by reference",
    "Both",
    "None",
  ]),
  Quiz(287, "What is passed when an Object is sent to a Method?", [
    "The reference value (copy of address)",
    "The actual object itself",
    "A string",
    "Error",
  ]),
  Quiz(288, "How can you call a 'static' method?", [
    "ClassName.methodName()",
    "new Class()",
    "this.method()",
    "You cannot",
  ]),
  Quiz(289, "Which Access Modifier allows access from anywhere?", [
    "public",
    "private",
    "protected",
    "default",
  ]),
  Quiz(
    290,
    "Which Access Modifier restricts access to only within the same class?",
    ["private", "public", "protected", "default"],
  ),
  Quiz(291, "What is the access level if no modifier is specified?", [
    "default (Package-private)",
    "private",
    "public",
    "protected",
  ]),
  Quiz(292, "What is the 'toString()' method used for?", [
    "Representing an object as a String",
    "Converting to int",
    "Deleting objects",
    "Compiling code",
  ]),
  Quiz(293, "What is a Java Bean?", [
    "A class with private fields, a no-arg constructor, and getters/setters",
    "Coffee",
    "A library",
    "A compiler",
  ]),
  Quiz(294, "How many copies of a Static Variable exist in memory?", [
    "Only one (Shared by all objects)",
    "One per object",
    "None",
    "Error",
  ]),
  Quiz(295, "Can a 'final' variable be reassigned?", [
    "No",
    "Yes",
    "Sometimes",
    "Only if it is an int",
  ]),
  Quiz(296, "What is a method with no parameters called?", [
    "No-arg method",
    "Empty method",
    "Void method",
    "Main method",
  ]),
  Quiz(297, "How do you define a constant object reference?", [
    "final",
    "static",
    "const",
    "None",
  ]),
  Quiz(298, "In Java, is a String a Primitive or an Object?", [
    "Object (Class)",
    "Primitive",
    "Array",
    "Method",
  ]),
  Quiz(299, "What is the recommended Java Package naming style?", [
    "Reverse domain name (com.example.app)",
    "app.example.com",
    "AppExample",
    "None",
  ]),
  Quiz(300, "What is the biggest benefit of OOP?", [
    "Code Reusability",
    "Speed",
    "RAM efficiency",
    "Eliminating all errors",
  ]),
];
final List<Quiz> javaQuizM4 = [
  // --- Inheritance (extends, super) ---
  Quiz(301, "Which keyword is used for Inheritance in Java?", [
    "extends",
    "implements",
    "inherits",
    "includes",
  ]),
  Quiz(302, "What is the parent class in an inheritance relationship called?", [
    "Superclass",
    "Subclass",
    "Child class",
    "Base Object",
  ]),
  Quiz(303, "What is the class that inherits from a parent called?", [
    "Subclass",
    "Superclass",
    "Root class",
    "Main class",
  ]),
  Quiz(304, "Does Java support Multiple Inheritance for classes?", [
    "No (Only single inheritance for classes)",
    "Yes",
    "Only for String types",
    "Supported in newer versions",
  ]),
  Quiz(305, "Which keyword is used to call the constructor of a Superclass?", [
    "super()",
    "this()",
    "parent()",
    "base()",
  ]),
  Quiz(306, "Where must the super() call be placed inside a constructor?", [
    "The first statement",
    "The last statement",
    "Anywhere",
    "Outside the constructor",
  ]),
  Quiz(307, "Are private members of a Superclass inherited by the Subclass?", [
    "No",
    "Yes",
    "Only if public",
    "Only if protected",
  ]),
  Quiz(
    308,
    "Which access modifier allows a subclass to access members even in a different package?",
    ["protected", "private", "default", "none"],
  ),
  Quiz(309, "Inheritance represents which type of relationship?", [
    "IS-A relationship",
    "Composition",
    "Aggregation",
    "Method",
  ]),
  Quiz(310, "Is the 'Object' class the superclass of every class in Java?", [
    "Yes",
    "No",
    "Sometimes",
    "Only for String",
  ]),

  // --- Polymorphism & Overriding ---
  Quiz(311, "What is Method Overriding?", [
    "Subclass provides a specific implementation for a method already defined in its Superclass",
    "Same method name in the same class",
    "Creating an Object",
    "Deleting a method",
  ]),
  Quiz(
    312,
    "Which annotation is used to ensure a method is correctly overridden?",
    ["@Override", "@Overload", "@Inherit", "@Static"],
  ),
  Quiz(313, "Can a static method be overridden?", [
    "No (This is called Method Hiding)",
    "Yes",
    "Only if public",
    "Only in interfaces",
  ]),
  Quiz(314, "Can a final method be overridden?", [
    "No",
    "Yes",
    "Sometimes",
    "Only in the same package",
  ]),
  Quiz(315, "Dynamic Method Dispatch is associated with which concept?", [
    "Runtime Polymorphism",
    "Compile-time Polymorphism",
    "Static binding",
    "Inheritance",
  ]),
  Quiz(316, "What happens if a Subclass does not override a parent's method?", [
    "It uses the Superclass's method",
    "Compile Error",
    "Returns null",
    "Nothing happens",
  ]),
  Quiz(317, "Does Method Overriding require identical parameters?", [
    "Yes (Same method signature)",
    "No",
    "Can change one type",
    "Must be different",
  ]),
  Quiz(318, "Can you override a private method?", [
    "No (Because it is not visible to the subclass)",
    "Yes",
    "Maybe",
    "Runtime Error",
  ]),
  Quiz(319, "What does Polymorphism mean?", [
    "Many forms (One interface, many implementations)",
    "One class",
    "One variable",
    "Inheritance only",
  ]),
  Quiz(320, "Which technique is used for Runtime Polymorphism?", [
    "Method Overriding",
    "Method Overloading",
    "Constructor",
    "Variables",
  ]),

  // --- Abstraction (Abstract Class) ---
  Quiz(321, "What is an Abstract Class?", [
    "A class that cannot be instantiated (must be inherited)",
    "A class that runs faster",
    "A class with no methods",
    "An Interface",
  ]),
  Quiz(322, "What is an Abstract Method?", [
    "A method with only a signature and no body { }",
    "A method with complex code",
    "A static method",
    "A final method",
  ]),
  Quiz(
    323,
    "If a class contains at least one abstract method, what must the class be?",
    ["Abstract Class", "Normal Class", "Interface", "Final Class"],
  ),
  Quiz(324, "Can you create an object using 'new' on an Abstract Class?", [
    "No",
    "Yes",
    "Sometimes",
    "Compile Error",
  ]),
  Quiz(325, "Can an Abstract Class have a constructor?", [
    "Yes (Used by subclasses during instantiation)",
    "No",
    "Only one",
    "Error",
  ]),
  Quiz(
    326,
    "Can an Abstract Class contain normal (concrete) methods with a body?",
    ["Yes", "No", "Only static ones", "Error"],
  ),
  Quiz(
    327,
    "What must a concrete subclass do when it inherits an Abstract Class?",
    ["Override all abstract methods", "Nothing", "Delete the methods", "Error"],
  ),
  Quiz(328, "Can an abstract method be declared as private?", [
    "No (Because it must be overridden)",
    "Yes",
    "Default only",
    "None",
  ]),
  Quiz(329, "Can an abstract class be declared as final?", [
    "No (Because final prevents inheritance)",
    "Yes",
    "Maybe",
    "None",
  ]),
  Quiz(330, "What is a major benefit of Abstraction?", [
    "Reduces complexity by hiding details",
    "Increases code length",
    "Fills up RAM",
    "Checks for syntax errors",
  ]),

  // --- Interfaces ---
  Quiz(331, "Which keyword is used to define an Interface?", [
    "interface",
    "class",
    "abstract",
    "extends",
  ]),
  Quiz(332, "Which keyword is used by a class to use an Interface?", [
    "implements",
    "extends",
    "uses",
    "includes",
  ]),
  Quiz(333, "Can a class implement multiple interfaces?", [
    "Yes (Multiple inheritance via interfaces)",
    "No",
    "Only one",
    "Error",
  ]),
  Quiz(334, "Variables defined in an interface are implicitly?", [
    "public static final (Constants)",
    "private",
    "local",
    "instance variables",
  ]),
  Quiz(335, "Methods in an interface (by default) are?", [
    "public abstract",
    "private",
    "protected",
    "static",
  ]),
  Quiz(336, "Can you instantiate an Interface directly?", [
    "No",
    "Yes",
    "Sometimes",
    "Error",
  ]),
  Quiz(337, "As of Java 8, can interfaces have methods with a body?", [
    "Yes (using the 'default' keyword)",
    "No",
    "Compile Error",
    "None",
  ]),
  Quiz(338, "What is a Marker Interface?", [
    "An interface with no methods (e.g., Serializable)",
    "An interface with many methods",
    "An abstract class",
    "None",
  ]),
  Quiz(339, "Can an Interface extend another Interface?", [
    "Yes",
    "No",
    "Only using implements",
    "Error",
  ]),
  Quiz(340, "The use of Interfaces helps achieve what in design?", [
    "Loose Coupling",
    "Tight Coupling",
    "Runtime Error",
    "Slower code",
  ]),

  // --- Encapsulation & Access Modifiers ---
  Quiz(341, "What is Encapsulation?", [
    "Wrapping data and code together (Data hiding)",
    "Inheritance",
    "Object creation",
    "Importing",
  ]),
  Quiz(342, "To achieve Encapsulation, variables should be declared as?", [
    "private",
    "public",
    "static",
    "final",
  ]),
  Quiz(
    343,
    "How do you access or update a private field in an encapsulated class?",
    [
      "Getter and Setter methods",
      "Directly with = operator",
      "Direct access",
      "Only via Constructor",
    ],
  ),
  Quiz(344, "Which access modifier is the most restrictive?", [
    "private",
    "default",
    "protected",
    "public",
  ]),
  Quiz(
    345,
    "Which access modifier allows access from any class in any package?",
    ["public", "private", "protected", "default"],
  ),
  Quiz(346, "What is Default access (no modifier)?", [
    "Accessible only within the same package",
    "Accessible everywhere",
    "Accessible only in class",
    "Error",
  ]),
  Quiz(347, "Where can 'protected' members be accessed?", [
    "Inside the package and by subclasses in other packages",
    "Only in the same package",
    "Only in other packages",
    "Error",
  ]),
  Quiz(348, "What is the benefit of Encapsulation?", [
    "Data Security / Better control",
    "Faster code execution",
    "Uses less RAM",
    "No more errors",
  ]),
  Quiz(349, "How do you create a read-only class?", [
    "Provide only Getters (no Setters)",
    "Provide only Setters",
    "Make everything private only",
    "Error",
  ]),
  Quiz(350, "Encapsulation makes your code more?", [
    "Maintainable",
    "Unsafe",
    "Complex",
    "None",
  ]),

  // --- Static Keyword ---
  Quiz(351, "Where are Static variables stored in memory?", [
    "Method area (Shared memory)",
    "Individual Heap space",
    "Stack",
    "Disk",
  ]),
  Quiz(352, "Can a Static method be called without creating an object?", [
    "Yes (ClassName.method())",
    "No",
    "Sometimes",
    "Error",
  ]),
  Quiz(353, "What is another name for a Static variable?", [
    "Class variable",
    "Instance variable",
    "Local variable",
    "Global variable",
  ]),
  Quiz(354, "Can the 'this' keyword be used inside a static method?", [
    "No",
    "Yes",
    "Only in constructor",
    "Error",
  ]),
  Quiz(355, "What is a Static block used for?", [
    "Initializing static variables",
    "Running loops",
    "Deleting objects",
    "Importing classes",
  ]),
  Quiz(356, "When is a Static block executed?", [
    "When the class is loaded into memory",
    "When an object is created",
    "When a method is called",
    "When the program closes",
  ]),
  Quiz(357, "How many copies of a static variable exist in a class?", [
    "Only one (shared by all objects)",
    "One per object",
    "Exactly 10",
    "None",
  ]),
  Quiz(358, "Why must the main method be static?", [
    "So the JVM can call it without creating an object instance",
    "To make it faster",
    "To make it changeable",
    "Error",
  ]),
  Quiz(359, "Can a static method access a non-static variable directly?", [
    "No",
    "Yes",
    "Only if public",
    "Error",
  ]),
  Quiz(360, "Can an instance method call a static method?", [
    "Yes",
    "No",
    "Sometimes",
    "Error",
  ]),

  // --- Final Keyword ---
  Quiz(361, "What is a Final Variable?", [
    "A variable whose value cannot be changed (Constant)",
    "A variable that disappears",
    "A changeable variable",
    "Error",
  ]),
  Quiz(362, "What is a Final Method?", [
    "A method that cannot be overridden by subclasses",
    "A closed method",
    "A fast method",
    "Error",
  ]),
  Quiz(363, "What is a Final Class?", [
    "A class that cannot be inherited",
    "A class that cannot create objects",
    "An abstract class",
    "None",
  ]),
  Quiz(364, "Where must a Blank Final Variable be initialized?", [
    "In the Constructor",
    "In the Main method",
    "In a static block",
    "None",
  ]),
  Quiz(
    365,
    "Can a final parameter in a method be modified inside that method?",
    ["No", "Yes", "Sometimes", "Error"],
  ),

  // --- Intermediate Mix (366 - 400) ---
  Quiz(366, "What is Upcasting?", [
    "Casting a Subclass object to a Superclass reference",
    "Superclass to Subclass",
    "Error",
    "None",
  ]),
  Quiz(367, "How is Downcasting performed?", [
    "Explicitly using (Subclass)obj",
    "Implicitly by Java",
    "No action needed",
    "Error",
  ]),
  Quiz(368, "What exception is thrown if Downcasting is invalid at runtime?", [
    "ClassCastException",
    "NullPointerException",
    "ArithmeticException",
    "None",
  ]),
  Quiz(369, "What relationship does Composition represent?", [
    "HAS-A relationship",
    "IS-A relationship",
    "Inheritance",
    "Method",
  ]),
  Quiz(370, "What relationship does Aggregation represent?", [
    "Weak HAS-A relationship",
    "Strong IS-A",
    "Inheritance",
    "Polymorphism",
  ]),
  Quiz(
    371,
    "Which operator is used to check if an object is an instance of a specific class?",
    ["instanceof", "==", "equals()", "typeof"],
  ),
  Quiz(372, "Method Overloading is which type of Polymorphism?", [
    "Compile-time",
    "Runtime",
    "Dynamic",
    "None",
  ]),
  Quiz(373, "Method Overriding is which type of Polymorphism?", [
    "Runtime",
    "Compile-time",
    "Static",
    "None",
  ]),
  Quiz(374, "Can an Interface have private methods (Java 9+)?", [
    "Yes",
    "No",
    "Error",
    "None",
  ]),
  Quiz(375, "What is a Nested Class?", [
    "A class declared inside another class",
    "A class in a method",
    "A package in a package",
    "None",
  ]),
  Quiz(376, "What is a benefit of an Inner Class (Non-static)?", [
    "It can access private members of the Outer class",
    "Faster code",
    "Uses more RAM",
    "Error",
  ]),
  Quiz(377, "When is an Anonymous Inner Class typically used?", [
    "To override a method quickly without creating a named class",
    "During compilation",
    "During deletion",
    "None",
  ]),
  Quiz(378, "What is the 'super' keyword used to access?", [
    "Members or constructors of the Superclass",
    "Local variables",
    "Static fields",
    "None",
  ]),
  Quiz(
    379,
    "Can this() and super() be used together in the same constructor?",
    ["No (Both must be the first statement)", "Yes", "Error", "None"],
  ),
  Quiz(380, "Which interface is used for Object Cloning?", [
    "Cloneable",
    "Serializable",
    "Remote",
    "None",
  ]),
  Quiz(381, "In which class is the clone() method defined?", [
    "Object class",
    "String class",
    "System class",
    "Clone class",
  ]),
  Quiz(382, "What is a Shallow Copy?", [
    "Copies only the reference, not the nested objects",
    "Copies everything",
    "Error",
    "None",
  ]),
  Quiz(383, "What is a Deep Copy?", [
    "Copies the object and all objects it references",
    "Copies only the reference",
    "Error",
    "None",
  ]),
  Quiz(
    384,
    "What is the default access modifier for members in an Interface?",
    ["public", "private", "protected", "default"],
  ),
  Quiz(385, "Why doesn't Java support multiple inheritance with classes?", [
    "To avoid the Diamond Problem (ambiguity)",
    "RAM limits",
    "Slow speed",
    "Complexity",
  ]),
  Quiz(386, "Are Constructors inherited?", ["No", "Yes", "Sometimes", "Error"]),
  Quiz(387, "Can an Interface have static methods (Java 8+)?", [
    "Yes",
    "No",
    "Error",
    "None",
  ]),
  Quiz(388, "What is a Functional Interface?", [
    "An interface with exactly one abstract method",
    "An interface with no methods",
    "An abstract class",
    "None",
  ]),
  Quiz(389, "What is the purpose of the @FunctionalInterface annotation?", [
    "To check if the interface strictly has only one abstract method",
    "Faster code",
    "Compile error",
    "None",
  ]),
  Quiz(390, "Lambda Expressions are used with what?", [
    "Functional Interfaces",
    "Abstract Classes",
    "Normal Classes",
    "Method Overloading",
  ]),
  Quiz(
    391,
    "What must the access level of an overridden method in a Subclass be?",
    [
      "Same as or broader than the Superclass",
      "Narrower than the Superclass",
      "private only",
      "None",
    ],
  ),
  Quiz(392, "What is the main benefit of Inheritance?", [
    "Code Reusability",
    "Security",
    "Speed",
    "None",
  ]),
  Quiz(393, "What are types of Inheritance supported in Java?", [
    "Single, Multilevel, Hierarchical",
    "Multiple, Hybrid",
    "Only Single",
    "All of the above (except multiple with classes)",
  ]),
  Quiz(
    394,
    "If Class A extends B, and Class B extends C, what is this called?",
    [
      "Multilevel Inheritance",
      "Single Inheritance",
      "Hierarchical",
      "Multiple",
    ],
  ),
  Quiz(
    395,
    "If Class B extends A, and Class C extends A, what is this called?",
    ["Hierarchical Inheritance", "Multilevel", "Single", "Hybrid"],
  ),
  Quiz(
    396,
    "To compare if two objects have the same values, which should you use?",
    ["equals() method", "==", "!=", "instanceof"],
  ),
  Quiz(397, "What does the == operator compare in objects?", [
    "Memory Address (Reference)",
    "Content / Value",
    "Class name",
    "None",
  ]),
  Quiz(398, "Is the String class a Final Class?", [
    "Yes (It cannot be inherited)",
    "No",
    "Sometimes",
    "None",
  ]),
  Quiz(399, "Can an Abstract class exist without any Abstract methods?", [
    "Yes",
    "No",
    "Error",
    "None",
  ]),
  Quiz(400, "What is Method Overriding also known as?", [
    "Late Binding (Dynamic Binding)",
    "Early Binding",
    "Static Binding",
    "None",
  ]),
  // --- Interfaces & Advanced Abstraction (401-430) ---
  Quiz(401, "How many interfaces can a single interface extend?", [
    "Multiple (Interfaces support multiple inheritance)",
    "Only one",
    "None",
    "Exactly two",
  ]),
  Quiz(402, "In Java 8, which methods in an interface can have a body { }?", [
    "Default and Static methods",
    "Abstract methods",
    "Only private methods",
    "None",
  ]),
  Quiz(
    403,
    "Which keyword is used to define a default method in an interface?",
    ["default", "static", "void", "public"],
  ),
  Quiz(404, "How do you call a static method defined within an interface?", [
    "InterfaceName.methodName()",
    "ClassName.methodName()",
    "new Interface()",
    "this.method()",
  ]),
  Quiz(405, "How many abstract methods does a Functional Interface have?", [
    "Exactly one",
    "None",
    "Two",
    "Unlimited",
  ]),
  Quiz(406, "Which annotation is used to mark a Functional Interface?", [
    "@FunctionalInterface",
    "@Interface",
    "@Override",
    "@Abstract",
  ]),
  Quiz(
    407,
    "What does it mean when we say Interfaces achieve 'Loose Coupling'?",
    [
      "Classes are less dependent on specific implementations",
      "Classes are tightly connected",
      "Code runs faster",
      "More errors occur",
    ],
  ),
  Quiz(408, "Can an Interface have a constructor?", [
    "No",
    "Yes",
    "Only if it is static",
    "Error",
  ]),
  Quiz(409, "What is another name for a Tagging Interface?", [
    "Marker Interface",
    "Functional Interface",
    "Default Interface",
    "None",
  ]),
  Quiz(410, "The 'Serializable' interface is an example of what?", [
    "Marker Interface",
    "Functional Interface",
    "Abstract Interface",
    "None",
  ]),

  // --- Static vs Instance Memory (431-450) ---
  Quiz(411, "How many copies of a static field exist in memory?", [
    "Only one (Shared by all instances)",
    "Ten",
    "One per object instance",
    "None",
  ]),
  Quiz(412, "If Object A changes a static variable, what will Object B see?", [
    "The updated value (Shared state)",
    "The old value",
    "Nothing",
    "Error",
  ]),
  Quiz(413, "Can a static method use the 'super' keyword?", [
    "No",
    "Yes",
    "Only in the constructor",
    "Error",
  ]),
  Quiz(414, "Why is the main() method static?", [
    "To allow the JVM to call it without creating a class instance",
    "To speed up compilation",
    "It is just a Java rule",
    "None",
  ]),
  Quiz(415, "What is the purpose of a Static Import?", [
    "To use static members without the class name prefix",
    "To import a whole package",
    "To speed up RAM",
    "None",
  ]),
  Quiz(416, "How many static blocks can a single class have?", [
    "Multiple (They run in order)",
    "Only one",
    "None",
    "Exactly two",
  ]),
  Quiz(417, "Which runs first: a Static block or a Constructor?", [
    "Static block",
    "Constructor",
    "They run simultaneously",
    "None",
  ]),
  Quiz(418, "In which memory area are static variables kept?", [
    "Method Area (Permanent Generation/Metaspace)",
    "Stack",
    "Individual Heap space",
    "Disk",
  ]),
  Quiz(419, "Can a static method call an instance method directly?", [
    "No (It must create an object first)",
    "Yes, directly",
    "Sometimes",
    "Error",
  ]),
  Quiz(420, "Can an instance method access a static variable?", [
    "Yes",
    "No",
    "Error",
    "None",
  ]),

  // --- Final Keyword Edge Cases (421-440) ---
  Quiz(421, "Can a final object reference be reassigned to a new object?", [
    "No",
    "Yes",
    "Only if it's a String",
    "None",
  ]),
  Quiz(
    422,
    "Can you modify the data (state) inside an object pointed to by a final reference?",
    [
      "Yes (The state can change, only the reference cannot)",
      "No",
      "Error",
      "None",
    ],
  ),
  Quiz(423, "Where must a 'blank final' variable be initialized?", [
    "In the Constructor",
    "In the main method",
    "In a loop",
    "In a static block",
  ]),
  Quiz(424, "Where must a static final variable (Constant) be initialized?", [
    "Static block or at the time of declaration",
    "Constructor",
    "Method",
    "None",
  ]),
  Quiz(425, "Can a final class extend another (non-final) class?", [
    "Yes (It can be a subclass)",
    "No",
    "Error",
    "None",
  ]),
  Quiz(426, "Can you have a final method in an interface?", [
    "No (Because interface methods must be implemented/overridden)",
    "Yes",
    "Error",
    "None",
  ]),
  Quiz(427, "Can an abstract class have a final method?", [
    "Yes (To prevent subclasses from overriding it)",
    "No",
    "Error",
    "None",
  ]),
  Quiz(428, "Can a Constructor be declared as final?", [
    "No",
    "Yes",
    "Error",
    "None",
  ]),
  Quiz(429, "Are private methods implicitly final?", [
    "Yes (Because they are not visible for overriding)",
    "No",
    "Sometimes",
    "None",
  ]),
  Quiz(430, "What is the primary benefit of the final keyword?", [
    "Security and Immutability (Consistency)",
    "Faster execution",
    "Less RAM usage",
    "None",
  ]),

  // --- Encapsulation & Access Control (431-450) ---
  Quiz(
    431,
    "Which access modifier allows a subclass in a different package to access a member?",
    ["protected", "default", "private", "none"],
  ),
  Quiz(432, "What is another name for 'Default Access'?", [
    "Package-private",
    "Public-access",
    "Hidden",
    "Local",
  ]),
  Quiz(433, "Can an outer class be declared as private?", [
    "No",
    "Yes",
    "Only inside a package",
    "Error",
  ]),
  Quiz(434, "Can a nested class be declared as private?", [
    "Yes",
    "No",
    "Sometimes",
    "Error",
  ]),
  Quiz(435, "Encapsulation ensures that data is?", [
    "Hidden and protected",
    "Publicly accessible",
    "Deleted",
    "None",
  ]),
  Quiz(436, "What is a major advantage of using a Setter method?", [
    "Validating data before storing it",
    "Deleting data",
    "Compiling",
    "None",
  ]),
  Quiz(437, "By convention, how does a getter method name start?", [
    "get",
    "set",
    "is",
    "Both 'get' and 'is'",
  ]),
  Quiz(438, "For a boolean variable, what is the standard getter prefix?", [
    "is",
    "get",
    "has",
    "can",
  ]),
  Quiz(439, "Data Hiding is a core part of which OOP pillar?", [
    "Encapsulation",
    "Inheritance",
    "Polymorphism",
    "Abstraction",
  ]),
  Quiz(
    440,
    "What is the default access modifier for a class member if none is specified?",
    ["default (package-private)", "public", "private", "protected"],
  ),

  // --- Polymorphism & Casting (441-460) ---
  Quiz(441, "Which type of casting is performed automatically by Java?", [
    "Upcasting",
    "Downcasting",
    "Both",
    "None",
  ]),
  Quiz(442, "Which type of casting requires manual syntax ( )?", [
    "Downcasting",
    "Upcasting",
    "None",
    "Both",
  ]),
  Quiz(443, "What is 'Parent p = new Child();' an example of?", [
    "Upcasting",
    "Downcasting",
    "Error",
    "Overriding",
  ]),
  Quiz(444, "What is 'Child c = (Child)p;' an example of?", [
    "Downcasting",
    "Upcasting",
    "Error",
    "Overriding",
  ]),
  Quiz(445, "When does a ClassCastException occur?", [
    "During invalid downcasting to an incorrect type",
    "During upcasting",
    "When a variable is null",
    "None",
  ]),
  Quiz(446, "Method Overloading is an example of what?", [
    "Compile-time Polymorphism",
    "Runtime Polymorphism",
    "Casting",
    "None",
  ]),
  Quiz(447, "Method Overriding is an example of what?", [
    "Runtime Polymorphism",
    "Compile-time Polymorphism",
    "Casting",
    "None",
  ]),
  Quiz(448, "What is the result type of the 'instanceof' operator?", [
    "boolean",
    "int",
    "Class",
    "String",
  ]),
  Quiz(449, "What does 'Early Binding' refer to?", [
    "Static Binding (Compile-time)",
    "Dynamic Binding (Runtime)",
    "Error",
    "None",
  ]),
  Quiz(450, "What does 'Late Binding' refer to?", [
    "Dynamic Binding (Runtime)",
    "Static Binding",
    "Error",
    "None",
  ]),

  // --- Inheritance Theory (461-480) ---
  Quiz(461, "In which scenario does the 'Diamond Problem' occur?", [
    "Multiple Inheritance with Classes",
    "Single Inheritance",
    "Interface usage",
    "None",
  ]),
  Quiz(462, "How does Java resolve the Diamond Problem?", [
    "By using Interfaces instead of multiple classes",
    "By using Abstract classes",
    "By using 'super'",
    "None",
  ]),
  Quiz(463, "What type of relationship is Aggregation?", [
    "Weak HAS-A (Independent life cycles)",
    "Strong HAS-A",
    "IS-A",
    "None",
  ]),
  Quiz(464, "What type of relationship is Composition?", [
    "Strong HAS-A (Dependent life cycles)",
    "Weak HAS-A",
    "IS-A",
    "None",
  ]),
  Quiz(465, "If Class B cannot exist without Class A, this is called?", [
    "Composition",
    "Aggregation",
    "Inheritance",
    "None",
  ]),
  Quiz(
    466,
    "If Class B can exist even if Class A is destroyed, this is called?",
    ["Aggregation", "Composition", "Inheritance", "None"],
  ),
  Quiz(467, "Inheritance creates what kind of coupling between classes?", [
    "Tight Coupling",
    "Loose Coupling",
    "Error",
    "None",
  ]),
  Quiz(468, "In which package is the root 'Object' class located?", [
    "java.lang",
    "java.util",
    "java.io",
    "java.net",
  ]),
  Quiz(469, "Does a subclass constructor call super() by default?", [
    "Yes (The default no-arg super() is called)",
    "No",
    "Sometimes",
    "Error",
  ]),
  Quiz(470, "What is Hierarchical Inheritance?", [
    "One superclass with multiple subclasses",
    "One subclass with multiple superclasses",
    "A single chain of classes",
    "None",
  ]),

  // --- Nested & Inner Classes (481-500) ---
  Quiz(
    471,
    "Can you instantiate a Static Nested Class without an outer class object?",
    [
      "Yes (Outer.Nested n = new Outer.Nested())",
      "No",
      "Only if it is private",
      "Error",
    ],
  ),
  Quiz(472, "How do you instantiate an Inner Class (Non-static)?", [
    "You must create an Outer class object first",
    "Directly with new",
    "You cannot",
    "Error",
  ]),
  Quiz(473, "Where is a Local Inner Class defined?", [
    "Inside a Method",
    "Inside a Class only",
    "Inside a Package",
    "None",
  ]),
  Quiz(474, "Does an Anonymous Inner Class have a name?", [
    "No",
    "Yes",
    "Only during compilation",
    "None",
  ]),
  Quiz(475, "Can an Outer class access private members of its Inner class?", [
    "Yes",
    "No",
    "Sometimes",
    "Error",
  ]),
  Quiz(476, "Can an Inner class access private members of its Outer class?", [
    "Yes",
    "No",
    "Error",
    "None",
  ]),
  Quiz(477, "Are nested interfaces implicitly static?", [
    "Yes",
    "No",
    "Sometimes",
    "Error",
  ]),
  Quiz(478, "Can an Abstract Class contain an Inner class?", [
    "Yes",
    "No",
    "Error",
    "None",
  ]),
  Quiz(479, "What access modifiers can a nested interface have?", [
    "Any (public, private, protected, default)",
    "public only",
    "private only",
    "Error",
  ]),
  Quiz(480, "What is the syntax for creating an Inner class object?", [
    "outerObj.new Inner()",
    "new Inner()",
    "Outer.new Inner()",
    "None",
  ]),

  // --- Final Wrap-up (481-500) ---
  Quiz(481, "Method Overriding in Java is an example of?", [
    "Late Binding",
    "Early Binding",
    "Static Binding",
    "None",
  ]),
  Quiz(482, "Which OOP concept best supports Extensibility?", [
    "Polymorphism",
    "Security",
    "RAM management",
    "None",
  ]),
  Quiz(483, "Are variables in an interface implicitly static?", [
    "Yes",
    "No",
    "Sometimes",
    "Error",
  ]),
  Quiz(484, "When does 'Method Hiding' occur?", [
    "When a subclass defines a static method with the same signature as the superclass",
    "When overriding a normal method",
    "During casting",
    "None",
  ]),
  Quiz(485, "What is super.methodName() used for?", [
    "To call the superclass version of a method from the subclass",
    "To call a constructor",
    "To create an object",
    "None",
  ]),
  Quiz(
    486,
    "Can this() and super() be the first line in the same constructor?",
    ["No (Only one can be first)", "Yes", "Sometimes", "None"],
  ),
  Quiz(
    487,
    "What is the return type of the hashCode() method in the Object class?",
    ["int", "String", "boolean", "void"],
  ),
  Quiz(
    488,
    "How do you check if two object references point to the exact same memory location?",
    ["==", "equals()", "instanceof", "None"],
  ),
  Quiz(489, "Can an Abstract class extend another Abstract class?", [
    "Yes",
    "No",
    "Error",
    "None",
  ]),
  Quiz(490, "Can an Interface extend an Abstract class?", [
    "No (Interfaces can only extend interfaces)",
    "Yes",
    "Error",
    "None",
  ]),
  Quiz(
    491,
    "Is it possible to have a different return type when overriding (Covariant Return Type)?",
    [
      "Yes (If the return type is a subclass of the original)",
      "No",
      "Error",
      "None",
    ],
  ),
  Quiz(492, "Can a normal (concrete) class have an abstract method?", [
    "No",
    "Yes",
    "Error",
    "None",
  ]),
  Quiz(493, "What is the purpose of the 'finalize()' method?", [
    "Cleanup activities before an object is garbage collected",
    "To delete a class",
    "To compile",
    "None",
  ]),
  Quiz(494, "What is a Native method?", [
    "A method implemented in another language like C/C++",
    "A standard Java method",
    "A static method",
    "None",
  ]),
  Quiz(495, "What is the 'strictfp' keyword used for?", [
    "Ensuring consistent floating-point results across different platforms",
    "Speeding up code",
    "Security",
    "None",
  ]),
  Quiz(496, "Can Variable Shadowing (Field Hiding) occur in inheritance?", [
    "Yes (If a subclass declares a field with the same name)",
    "No",
    "Sometimes",
    "None",
  ]),
  Quiz(497, "How do you prevent a class from being inherited?", [
    "Use the 'final' keyword",
    "Use 'abstract'",
    "Use 'private'",
    "None",
  ]),
  Quiz(498, "What relationship type does an Abstract class represent?", [
    "IS-A",
    "HAS-A",
    "PART-OF",
    "None",
  ]),
  Quiz(499, "What relationship type does an Interface typically represent?", [
    "CAN-DO (Behavioral)",
    "IS-A",
    "HAS-A",
    "None",
  ]),
  Quiz(500, "Which OOP pillar is mainly responsible for Data Security?", [
    "Encapsulation",
    "Inheritance",
    "Polymorphism",
    "Abstraction",
  ]),
];
final List<Quiz> javaQuizM5 = [
  // --- Topic 60: Java Exceptions ---
  Quiz(501, "What does an Exception in Java represent?", [
    "An event that disrupts the normal flow of the program (Runtime error)",
    "A syntax error in code",
    "A type of variable",
    "A specific method",
  ]),
  Quiz(502, "Which class is the root of the Java Exception hierarchy?", [
    "Throwable",
    "Error",
    "Exception",
    "RuntimeException",
  ]),

  Quiz(503, "What is a Checked Exception?", [
    "An exception checked by the compiler at compile-time (Must be handled)",
    "An exception that only occurs at runtime",
    "A memory-related error",
    "None",
  ]),
  Quiz(504, "Unchecked Exceptions are subclasses of which class?", [
    "RuntimeException",
    "IOException",
    "SQLException",
    "Error",
  ]),
  Quiz(505, "What is the difference between Error and Exception?", [
    "Errors are irrecoverable (like OutOfMemory), while Exceptions can be caught and handled",
    "They are exactly the same",
    "Errors execute faster",
    "None",
  ]),
  Quiz(506, "What type of exception is NullPointerException?", [
    "Unchecked Exception",
    "Checked Exception",
    "Error",
    "Compile-time error",
  ]),
  Quiz(507, "When does an ArithmeticException occur?", [
    "When an integer is divided by zero ( / 0)",
    "When a String is null",
    "When an Array is full",
    "None",
  ]),
  Quiz(508, "What does ArrayIndexOutOfBoundsException mean?", [
    "Accessing an array with an index that is outside its range",
    "The array value is null",
    "The array cannot be created",
    "None",
  ]),
  Quiz(509, "What type of exception is IOException?", [
    "Checked Exception",
    "Unchecked Exception",
    "Error",
    "None",
  ]),
  Quiz(
    510,
    "To prevent a program from crashing when an error occurs, what should you use?",
    ["Exception Handling", "Restart the computer", "Delete the code", "None"],
  ),

  // --- Topic 61: Try - Catch - Finally ---
  Quiz(511, "What is the purpose of the 'try' block?", [
    "To enclose code that might throw an exception",
    "To define a method",
    "To create an object",
    "None",
  ]),
  Quiz(512, "What is the purpose of the 'catch' block?", [
    "To handle the exception thrown in the try block",
    "To create a loop",
    "To restart the app",
    "None",
  ]),

  Quiz(513, "Can a single try block have multiple catch blocks?", [
    "Yes (Multi-catch functionality)",
    "No, only one",
    "No, it's not allowed",
    "Only up to two",
  ]),
  Quiz(514, "When does the 'finally' block execute?", [
    "Every time (regardless of whether an exception occurred or not)",
    "Only when an exception occurs",
    "Only when no exception occurs",
    "None",
  ]),
  Quiz(
    515,
    "Where should a general Exception catch block (Exception e) be placed?",
    ["At the end (Last catch block)", "At the very top", "Anywhere", "None"],
  ),
  Quiz(516, "Is a try block without a catch or finally block valid?", [
    "No (It must have at least one)",
    "Yes",
    "Only if it is static",
    "None",
  ]),
  Quiz(517, "What is the benefit of Try-with-resources (Java 7+)?", [
    "It automatically closes resources like Files or Streams",
    "It makes code run faster",
    "It increases RAM efficiency",
    "None",
  ]),
  Quiz(518, "In 'catch(Exception e)', what does e.getMessage() return?", [
    "A string describing the error",
    "The full stack trace",
    "The name of the class",
    "None",
  ]),
  Quiz(519, "What does e.printStackTrace() display?", [
    "The exception name and the specific line number where it occurred",
    "The values of all variables",
    "It deletes the code",
    "None",
  ]),
  Quiz(
    520,
    "Does the finally block execute if System.exit(0) is called in the try block?",
    ["No (The program shuts down immediately)", "Yes", "Sometimes", "None"],
  ),

  // --- Topic 62: Throws ---
  Quiz(521, "Where is the 'throws' keyword used?", [
    "In the Method Signature",
    "Inside the Method Body",
    "In the Class declaration",
    "Inside a Loop",
  ]),
  Quiz(522, "What is 'throws' used for?", [
    "To declare that a method might throw specific exceptions for the caller to handle",
    "To handle an exception",
    "To create a manual error",
    "None",
  ]),
  Quiz(
    523,
    "If a method throws a Checked Exception, what must the caller do?",
    [
      "Use a try-catch block or declare the exception with throws",
      "Nothing",
      "Restart the program",
      "None",
    ],
  ),
  Quiz(524, "Is 'throws' required for Unchecked (Runtime) Exceptions?", [
    "No (It is optional)",
    "Yes, always",
    "It causes an error",
    "None",
  ]),
  Quiz(525, "Can you list multiple exceptions in a 'throws' clause?", [
    "Yes (Separated by commas)",
    "Only one is allowed",
    "No",
    "None",
  ]),

  // --- Topic 63: Throw New Exception ---
  Quiz(526, "What is the 'throw' keyword used for?", [
    "To explicitly throw an exception from code",
    "To handle an error",
    "To close the program",
    "None",
  ]),
  Quiz(527, "What is the correct syntax for 'throw'?", [
    "throw new ExceptionName();",
    "throws Exception;",
    "throw Exception;",
    "new throw Exception();",
  ]),
  Quiz(528, "What is the difference between throw and throws?", [
    "Throw is used to trigger an exception; Throws is used to declare it in the method signature",
    "They are the same",
    "Throw is used outside methods",
    "None",
  ]),
  Quiz(529, "How do you create a Custom Exception?", [
    "By extending the Exception class",
    "By extending the String class",
    "By writing a new method",
    "None",
  ]),
  Quiz(
    530,
    "To create an Unchecked Custom Exception, which class should you extend?",
    ["RuntimeException", "Exception", "Throwable", "Error"],
  ),

  // --- Mixed Logic (531-550) ---
  Quiz(531, "Is it mandatory to use Try-Catch for RuntimeExceptions?", [
    "No, it is optional",
    "Yes, it is mandatory",
    "It is not allowed",
    "None",
  ]),
  Quiz(532, "When does NumberFormatException occur?", [
    "When attempting to convert a non-numeric String into a number",
    "During division by zero",
    "When a variable is null",
    "None",
  ]),
  Quiz(533, "Can an Error (like OutOfMemoryError) be realistically handled?", [
    "No (The program usually must terminate)",
    "Yes",
    "Sometimes",
    "None",
  ]),
  Quiz(534, "When does a StackOverflowError occur?", [
    "During infinite recursion (method calls itself forever)",
    "When RAM is full",
    "When a String is too long",
    "None",
  ]),
  Quiz(535, "Can a single try block have multiple finally blocks?", [
    "No, only one",
    "Yes, multiple",
    "It's not allowed",
    "Up to two",
  ]),
  Quiz(536, "Does catch(Exception e) handle RuntimeExceptions?", [
    "Yes (Because Exception is the parent class)",
    "No",
    "Only sometimes",
    "None",
  ]),
  Quiz(537, "Can you use 'throw' inside a catch block?", [
    "Yes (This is called re-throwing)",
    "No",
    "It causes a compiler error",
    "None",
  ]),
  Quiz(538, "When are Checked Exceptions detected?", [
    "Compile-time",
    "Runtime",
    "During installation",
    "None",
  ]),
  Quiz(539, "When are Unchecked Exceptions detected?", [
    "Runtime",
    "Compile-time",
    "During coding",
    "None",
  ]),
  Quiz(540, "When does InputMismatchException occur?", [
    "When Scanner receives data that doesn't match the expected type",
    "When a String is missing",
    "When a file is not found",
    "None",
  ]),
  Quiz(541, "Should a Custom Exception have a constructor?", [
    "Yes (To pass the error message to the superclass)",
    "No",
    "Optional",
    "None",
  ]),
  Quiz(542, "What type of exception is ClassNotFoundException?", [
    "Checked Exception",
    "Unchecked Exception",
    "Error",
    "None",
  ]),
  Quiz(543, "What is the rule for multi-catch (catch (Ex1 | Ex2 e))?", [
    "The exceptions cannot have a Parent-Child relationship",
    "They must have a Parent-Child relationship",
    "It only works for Strings",
    "None",
  ]),
  Quiz(544, "When might the finally block NOT execute?", [
    "If the JVM crashes or System.exit() is called",
    "When there is an error",
    "When there is no error",
    "None",
  ]),
  Quiz(545, "Which package is the Throwable class located in?", [
    "java.lang",
    "java.util",
    "java.io",
    "None",
  ]),
  Quiz(546, "When does SQLException occur?", [
    "When there is an error related to database access",
    "When a String is wrong",
    "When an array is full",
    "None",
  ]),
  Quiz(547, "What is Exception Propagation?", [
    "The process of passing an exception up the call stack to the caller",
    "Deleting an exception",
    "Compiling an exception",
    "None",
  ]),
  Quiz(548, "Does Unchecked Exception propagation happen automatically?", [
    "Yes",
    "No",
    "Only if 'throws' is used",
    "None",
  ]),
  Quiz(549, "What is required for Checked Exception propagation?", [
    "The 'throws' keyword in the method signature",
    "Nothing is required",
    "A static modifier",
    "None",
  ]),
  Quiz(550, "What is the main goal of Java Exception Handling?", [
    "To maintain the normal flow of the program even if errors occur",
    "To make code run faster",
    "To save RAM",
    "None",
  ]),
];
final List<Quiz> javaQuizM6 = [
  // --- Topic 64: Multi-Threaded Programming ---
  Quiz(551, "What is a Thread in Java?", [
    "The smallest unit of execution (Lightweight process)",
    "A type of variable",
    "A class name",
    "A memory segment",
  ]),
  Quiz(552, "What is the primary benefit of Multi-threading?", [
    "To maximize CPU utilization",
    "To make code cleaner",
    "To increase available RAM",
    "None",
  ]),

  Quiz(553, "What is the Main Thread?", [
    "The thread that starts when the program begins (executes main method)",
    "A thread that crashes the program",
    "A private system thread",
    "None",
  ]),
  Quiz(554, "Does each thread have its own Stack Memory?", [
    "Yes",
    "No (It is shared)",
    "Sometimes",
    "Error",
  ]),
  Quiz(555, "Java Threads allow for which type of programming?", [
    "Asynchronous Programming",
    "Synchronous Only",
    "Faster Compiling",
    "None",
  ]),

  // --- Topic 65: Extending Thread Class ---
  Quiz(
    556,
    "To create a thread by extending a class, which class must you inherit from?",
    ["Thread", "Runnable", "Process", "Object"],
  ),
  Quiz(557, "Which method serves as the entry point for thread execution?", [
    "run()",
    "start()",
    "main()",
    "init()",
  ]),
  Quiz(558, "Which method is called to actually start a new thread?", [
    "start()",
    "run()",
    "execute()",
    "begin()",
  ]),
  Quiz(559, "What happens if you call run() directly instead of start()?", [
    "It executes in the current thread (no new thread is created)",
    "A compiler error occurs",
    "It causes an infinite loop",
    "None",
  ]),
  Quiz(560, "Which package is the Thread class located in?", [
    "java.lang",
    "java.util",
    "java.io",
    "None",
  ]),

  // --- Topic 66: Implementing Runnable Interface ---
  Quiz(561, "To create a thread using an interface, which syntax is used?", [
    "implements Runnable",
    "extends Thread",
    "uses Runnable",
    "None",
  ]),
  Quiz(562, "How many methods does the Runnable interface contain?", [
    "1 (the run method)",
    "2",
    "None",
    "10",
  ]),
  Quiz(
    563,
    "If your class already extends another class, how should you create a Thread?",
    [
      "By implementing Runnable",
      "By extending Thread",
      "Both are equally valid",
      "None",
    ],
  ),
  Quiz(564, "How do you run a Runnable object?", [
    "Create a Thread object and pass the Runnable to its constructor",
    "Call run() directly",
    "Call main()",
    "None",
  ]),
  Quiz(565, "Is Runnable a Functional Interface?", [
    "Yes (It can be used with Lambda expressions)",
    "No",
    "Sometimes",
    "None",
  ]),

  // --- Topic 67: Join Thread & States ---
  Quiz(566, "What is the purpose of the join() method?", [
    "To wait for a thread to complete before moving to the next line",
    "To terminate a thread",
    "To create a thread",
    "None",
  ]),
  Quiz(567, "What does Thread.sleep(1000) do?", [
    "Pauses the current thread for 1 second (1000ms)",
    "Closes the thread",
    "Deletes the object",
    "None",
  ]),

  Quiz(568, "What does the thread state 'NEW' mean?", [
    "The thread is created but start() has not been called yet",
    "The thread is currently running",
    "The thread has finished execution",
    "None",
  ]),
  Quiz(569, "What does the thread state 'TERMINATED' mean?", [
    "The thread has completed its execution (dead)",
    "The thread is just starting",
    "The thread is waiting",
    "None",
  ]),
  Quiz(570, "Which exception must be handled when using join() or sleep()?", [
    "InterruptedException",
    "IOException",
    "NullPointerException",
    "None",
  ]),

  // --- Topic 68: Thread Synchronization ---
  Quiz(571, "What is Synchronization used for?", [
    "To prevent multiple threads from accessing a shared resource simultaneously",
    "To speed up threads",
    "To increase RAM usage",
    "None",
  ]),
  Quiz(572, "Which keyword is used to implement synchronization in Java?", [
    "synchronized",
    "lock",
    "volatile",
    "static",
  ]),
  Quiz(573, "What is a Race Condition?", [
    "When multiple threads compete for shared data, leading to inconsistent results",
    "When a thread runs too fast",
    "When a thread terminates unexpectedly",
    "None",
  ]),
  Quiz(574, "What is a Synchronized Method?", [
    "A method that allows only one thread to enter at a time",
    "A method that runs faster",
    "A static method",
    "None",
  ]),
  Quiz(575, "When does a Deadlock occur?", [
    "When two threads are waiting for each other to release locks, causing a freeze",
    "When a thread finishes early",
    "When memory is full",
    "None",
  ]),

  Quiz(576, "What is the purpose of the 'volatile' keyword?", [
    "To ensure all threads read the latest value from Main Memory",
    "To lock a thread",
    "To delete a thread",
    "None",
  ]),
  Quiz(
    577,
    "What is the difference between a Synchronized Block and a Method?",
    [
      "A Block locks only a specific section of code (more efficient)",
      "They are identical",
      "Methods are faster",
      "None",
    ],
  ),
  Quiz(578, "In which class are wait(), notify(), and notifyAll() defined?", [
    "Object class",
    "Thread class",
    "String class",
    "None",
  ]),
  Quiz(579, "Where must wait(), notify(), and notifyAll() be called?", [
    "Inside a synchronized context (method or block)",
    "Inside a static method",
    "Inside the main method",
    "None",
  ]),
  Quiz(580, "What does notifyAll() do?", [
    "Wakes up all threads currently waiting on the object's monitor",
    "Wakes up only one thread",
    "Closes the thread",
    "None",
  ]),

  // --- Mixed & Advanced Multi-threading (581-600) ---
  Quiz(581, "What is a Daemon Thread?", [
    "A background thread that provides services to user threads",
    "The most important thread",
    "The Main thread",
    "None",
  ]),
  Quiz(582, "What is the range for Thread Priority in Java?", [
    "1 to 10",
    "0 to 100",
    "1 to 5",
    "None",
  ]),
  Quiz(583, "What is the default priority of a thread?", [
    "5 (NORM_PRIORITY)",
    "1",
    "10",
    "0",
  ]),
  Quiz(
    584,
    "Which method is used to hint to the CPU to let other threads run?",
    ["Thread.yield()", "Thread.stop()", "Thread.sleep()", "None"],
  ),
  Quiz(585, "What does Thread.currentThread() return?", [
    "The object of the thread currently executing",
    "A list of all threads",
    "null",
    "None",
  ]),
  Quiz(586, "Which method is used to assign a name to a Thread?", [
    "setName()",
    "getName()",
    "changeName()",
    "None",
  ]),
  Quiz(587, "What is the purpose of the isAlive() method?", [
    "Checks if the thread has started and not yet terminated",
    "Checks if the thread was created",
    "Starts the thread",
    "None",
  ]),
  Quiz(588, "What is the best way to stop a running thread?", [
    "Using a Flag variable (boolean)",
    "Thread.stop()",
    "Thread.destroy()",
    "None",
  ]),
  Quiz(589, "What is the current status of the Thread.stop() method?", [
    "Deprecated (Unsafe and no longer recommended)",
    "Final",
    "Private",
    "None",
  ]),
  Quiz(590, "What is Thread Starvation?", [
    "When a low-priority thread never gets CPU time because of high-priority threads",
    "When a thread runs too fast",
    "When RAM is full",
    "None",
  ]),
  Quiz(591, "What is an Intrinsic Lock (Monitor)?", [
    "A lock built into every object in Java",
    "A CPU-level lock",
    "A private lock",
    "None",
  ]),
  Quiz(592, "Where does a Static Synchronized method apply its lock?", [
    "On the Class object",
    "On the Instance object",
    "It does not lock",
    "None",
  ]),
  Quiz(593, "What does Inter-thread communication refer to?", [
    "Using wait() and notify() so threads can signal each other",
    "Sending SMS",
    "Compiling code",
    "None",
  ]),
  Quiz(594, "The yield() method moves a thread into which state?", [
    "Runnable",
    "Blocked",
    "Waiting",
    "None",
  ]),
  Quiz(595, "What is a Thread Local Variable?", [
    "A variable that has a unique value for each thread",
    "A static variable",
    "A global variable",
    "None",
  ]),
  Quiz(596, "How do you check if a thread is a Daemon thread?", [
    "isDaemon()",
    "setDaemon()",
    "checkDaemon()",
    "None",
  ]),
  Quiz(597, "What is the purpose of a Thread Group?", [
    "To manage multiple threads as a single unit",
    "To delete threads",
    "To create classes",
    "None",
  ]),
  Quiz(
    598,
    "What is the difference between Multiprocessing and Multithreading?",
    [
      "Multiprocessing involves multiple processes; Multithreading is multiple threads within one process",
      "They are the same",
      "Threads are faster than processes",
      "None",
    ],
  ),
  Quiz(599, "What happens if a thread throws an unhandled exception?", [
    "That specific thread dies (others keep running)",
    "The whole program closes",
    "A compiler error occurs",
    "None",
  ]),
  Quiz(600, "What does the Java Thread Model rely on?", [
    "Native OS threads",
    "Green threads",
    "Virtual threads only",
    "None",
  ]),
];
final List<Quiz> javaQuizM7 = [
  // --- Topic 69: Introduction to Collections ---
  Quiz(601, "What is the Collections Framework in Java?", [
    "An architecture for storing and manipulating a group of objects",
    "A single variable type",
    "A specific method",
    "A package for String manipulation",
  ]),
  Quiz(602, "Which package contains the Collection Interface?", [
    "java.util",
    "java.lang",
    "java.io",
    "java.net",
  ]),

  Quiz(603, "What is the root interface of the Collection hierarchy?", [
    "Collection",
    "List",
    "Set",
    "Map",
  ]),
  Quiz(604, "Which interface does NOT extend the Collection interface?", [
    "Map",
    "List",
    "Set",
    "Queue",
  ]),
  Quiz(605, "What is the main advantage of using Collections?", [
    "Reduces programming effort by providing data structures",
    "Increases total RAM",
    "Makes the program run faster",
    "None",
  ]),

  // --- Topic 70: Generic Class and Method ---
  Quiz(606, "What is the purpose of Generics in Java (introduced in Java 5)?", [
    "To provide Type-safety (checking types at compile-time)",
    "To increase code volume",
    "To delete objects",
    "None",
  ]),
  Quiz(607, "What does the symbol <T> represent in Generics?", [
    "Type Parameter (A placeholder for a type to be specified later)",
    "Table",
    "Thread",
    "True",
  ]),
  Quiz(608, "What common error do Generics help prevent?", [
    "ClassCastException",
    "NullPointerException",
    "ArithmeticException",
    "None",
  ]),
  Quiz(
    609,
    "Can Generics be used directly with primitive types (int, double)?",
    [
      "No (You must use Wrapper classes like Integer)",
      "Yes",
      "Sometimes",
      "None",
    ],
  ),
  Quiz(610, "How do you define a Generic Method?", [
    "public <E> void printArray(E[] elements)",
    "public void printArray(T elements)",
    "public void <T> print()",
    "None",
  ]),

  // --- Topic 71: List Interface and ArrayList ---
  Quiz(611, "How does the List interface store data?", [
    "Ordered collection that allows duplicate elements",
    "Unordered collection",
    "Does not allow duplicates",
    "None",
  ]),
  Quiz(612, "What does ArrayList use internally to store data?", [
    "Dynamic Array",
    "Linked List",
    "Hash Table",
    "Stack",
  ]),
  Quiz(613, "How many elements can be added to an ArrayList?", [
    "Unlimited (It is resizable)",
    "Exactly 10",
    "Exactly 100",
    "None",
  ]),
  Quiz(614, "Which method is used to retrieve an element from an ArrayList?", [
    "get(index)",
    "fetch()",
    "retrieve()",
    "add()",
  ]),
  Quiz(615, "In which operation is ArrayList most efficient?", [
    "Searching for data / Random access",
    "Inserting data in the middle",
    "Deleting data",
    "None",
  ]),
  Quiz(616, "What is the default initial capacity of an ArrayList?", [
    "10",
    "16",
    "0",
    "100",
  ]),
  Quiz(617, "Can an ArrayList store a null value?", [
    "Yes",
    "No",
    "Sometimes",
    "Error",
  ]),
  Quiz(618, "Which method returns the number of elements in an ArrayList?", [
    "size()",
    "length()",
    "capacity()",
    "count()",
  ]),
  Quiz(619, "Is ArrayList synchronized by default?", [
    "No (It is thread-unsafe)",
    "Yes",
    "Sometimes",
    "None",
  ]),
  Quiz(620, "How can you get a synchronized version of an ArrayList?", [
    "Collections.synchronizedList()",
    "ArrayList.sync()",
    "Using the synchronized keyword",
    "None",
  ]),

  // --- Topic 72, 73: Vector and Stack ---
  Quiz(621, "What is the main difference between Vector and ArrayList?", [
    "Vector is Synchronized (Thread-safe)",
    "Vector is faster",
    "Vector cannot store null",
    "None",
  ]),
  Quiz(622, "By how much does a Vector grow when it is full?", [
    "100% (It doubles in size)",
    "50%",
    "10%",
    "None",
  ]),
  Quiz(623, "The Stack class extends which class?", [
    "Vector",
    "ArrayList",
    "LinkedList",
    "None",
  ]),

  Quiz(624, "Which algorithm does the Stack class follow?", [
    "LIFO (Last In First Out)",
    "FIFO (First In First Out)",
    "Random Access",
    "None",
  ]),
  Quiz(625, "Which method is used to add data to a Stack?", [
    "push()",
    "add()",
    "put()",
    "insert()",
  ]),
  Quiz(626, "Which method removes and returns the top element of a Stack?", [
    "pop()",
    "peek()",
    "remove()",
    "poll()",
  ]),
  Quiz(627, "What does the peek() method do in a Stack?", [
    "Returns the top element without removing it",
    "Deletes the top element",
    "Searches the stack",
    "None",
  ]),
  Quiz(628, "When does an EmptyStackException occur?", [
    "When calling pop() on an empty stack",
    "When calling push()",
    "When the stack is full",
    "None",
  ]),
  Quiz(629, "Is Vector considered a Legacy Class?", [
    "Yes",
    "No",
    "Only in Java 8",
    "None",
  ]),
  Quiz(630, "Can you search for an item's position in a Stack?", [
    "Yes (Using the search() method)",
    "No",
    "Only if it is sorted",
    "None",
  ]),

  // --- Topic 74: LinkedList ---
  Quiz(631, "What type of list is the Java LinkedList class?", [
    "Doubly Linked List",
    "Singly Linked List",
    "Circular List",
    "None",
  ]),
  Quiz(632, "Which interfaces does LinkedList implement?", [
    "List and Deque",
    "List only",
    "Set",
    "Map",
  ]),
  Quiz(633, "Where is LinkedList faster than ArrayList?", [
    "Adding and Deleting data (Manipulation)",
    "Searching for data",
    "Memory optimization",
    "None",
  ]),
  Quiz(634, "How does LinkedList store its elements?", [
    "As Nodes connected by pointers",
    "In a contiguous Array",
    "Inside a Stack",
    "None",
  ]),
  Quiz(635, "Which method adds an element to the beginning of a LinkedList?", [
    "addFirst()",
    "push()",
    "insertFirst()",
    "None",
  ]),
  Quiz(636, "Why does LinkedList use more memory than ArrayList?", [
    "Because it stores pointers to the next and previous nodes",
    "Because it is larger",
    "Because it is faster",
    "None",
  ]),
  Quiz(637, "Can LinkedList be used to implement a Queue?", [
    "Yes",
    "No",
    "Only for Strings",
    "None",
  ]),
  Quiz(638, "Is LinkedList synchronized?", ["No", "Yes", "Sometimes", "None"]),
  Quiz(639, "Which method removes the last element of a LinkedList?", [
    "removeLast()",
    "pop()",
    "clear()",
    "None",
  ]),
  Quiz(640, "Does LinkedList implement the Queue interface?", [
    "Yes",
    "No",
    "Sometimes",
    "None",
  ]),

  // --- Topic 78, 79, 80: Map Interface (HashMap, LinkedHashMap, TreeMap) ---
  Quiz(641, "How does the Map Interface store data?", [
    "As Key-Value pairs",
    "As single elements",
    "Only as Strings",
    "Based on numeric index",
  ]),
  Quiz(642, "Does HashMap allow duplicate keys?", [
    "No (Keys must be unique)",
    "Yes",
    "Sometimes",
    "Error",
  ]),
  Quiz(643, "Does HashMap allow duplicate values?", [
    "Yes",
    "No",
    "Only if static",
    "None",
  ]),
  Quiz(644, "Is the order of elements preserved in a HashMap?", [
    "No (It is unordered)",
    "Yes (Insertion order)",
    "Yes (Sorted order)",
    "None",
  ]),
  Quiz(645, "What is the main difference between LinkedHashMap and HashMap?", [
    "LinkedHashMap maintains insertion order",
    "LinkedHashMap is faster",
    "HashMap cannot store null",
    "None",
  ]),
  Quiz(646, "How does TreeMap store its data?", [
    "In sorted order (Natural or specified order)",
    "In insertion order",
    "In unordered fashion",
    "None",
  ]),
  Quiz(647, "Does TreeMap allow a 'null' key?", [
    "No (Throws NullPointerException)",
    "Yes, one",
    "Yes, multiple",
    "None",
  ]),
  Quiz(648, "Does HashMap allow a 'null' key?", [
    "Yes, one",
    "No",
    "Yes, multiple",
    "None",
  ]),
  Quiz(649, "Which method is used to add data to a Map?", [
    "put(key, value)",
    "add()",
    "push()",
    "set()",
  ]),
  Quiz(650, "Which method is used to retrieve a value using its key?", [
    "get(key)",
    "fetch()",
    "find()",
    "None",
  ]),
  Quiz(651, "Which algorithm does HashMap use internally?", [
    "Hashing",
    "Binary Tree",
    "Linear Search",
    "None",
  ]),
  Quiz(652, "How do you check if a Map contains a specific key?", [
    "containsKey(key)",
    "hasKey()",
    "find()",
    "None",
  ]),
  Quiz(653, "What does Map.Entry represent?", [
    "A single key-value pair in a Map",
    "The Key only",
    "The Value only",
    "None",
  ]),
  Quiz(654, "Which method returns a Set of all keys in a Map?", [
    "keySet()",
    "keys()",
    "entrySet()",
    "None",
  ]),
  Quiz(655, "Which algorithm does TreeMap use?", [
    "Red-Black Tree",
    "Hashing",
    "Dynamic Array",
    "None",
  ]),

  // --- Topic 81: Set Interface (HashSet, LinkedHashSet, TreeSet) ---
  Quiz(656, "Does the Set interface allow duplicate elements?", [
    "No",
    "Yes",
    "Only for integers",
    "None",
  ]),
  Quiz(657, "Does HashSet maintain any order of elements?", [
    "No (Unordered)",
    "Yes (Insertion order)",
    "Yes (Sorted order)",
    "None",
  ]),
  Quiz(658, "How does LinkedHashSet store elements?", [
    "In insertion order",
    "Unordered",
    "Sorted",
    "None",
  ]),
  Quiz(659, "How does TreeSet store elements?", [
    "In sorted order (Ascending)",
    "Unordered",
    "Insertion order",
    "None",
  ]),
  Quiz(660, "Does HashSet allow null values?", [
    "Yes, one",
    "No",
    "Yes, multiple",
    "None",
  ]),
  Quiz(661, "Which method is used to add data to a Set?", [
    "add()",
    "put()",
    "push()",
    "None",
  ]),
  Quiz(662, "What does HashSet use internally to store its data?", [
    "A HashMap",
    "An ArrayList",
    "A LinkedList",
    "None",
  ]),
  Quiz(663, "Which interface does TreeSet implement?", [
    "SortedSet",
    "List",
    "Map",
    "None",
  ]),
  Quiz(664, "Is HashSet generally faster than TreeSet?", [
    "Yes (Because hashing is faster than tree traversal)",
    "No",
    "They are identical",
    "None",
  ]),
  Quiz(665, "What is the best use case for a Set?", [
    "To remove or prevent duplicate data",
    "For sorting",
    "For indexing",
    "None",
  ]),

  // --- Intermediate & Logic (666 - 700) ---
  Quiz(666, "What is an Iterator used for?", [
    "To traverse and check data within a Collection",
    "To delete a Collection",
    "To compile code",
    "None",
  ]),
  Quiz(667, "How does ListIterator differ from Iterator?", [
    "ListIterator allows bi-directional traversal (forward and backward)",
    "Iterator is faster",
    "ListIterator works for all collections",
    "None",
  ]),
  Quiz(
    668,
    "What can be used to traverse a collection without an explicit Iterator?",
    ["Enhanced For-each loop", "While loop only", "If-else statements", "None"],
  ),
  Quiz(669, "Collections.sort() works with which interface?", [
    "List",
    "Map",
    "Set",
    "None",
  ]),
  Quiz(670, "Which method is defined in the Comparable interface?", [
    "compareTo()",
    "compare()",
    "equals()",
    "None",
  ]),
  Quiz(671, "Which method is defined in the Comparator interface?", [
    "compare()",
    "compareTo()",
    "sort()",
    "None",
  ]),
  Quiz(672, "What is the difference between Comparable and Comparator?", [
    "Comparable is within the class itself; Comparator is an external class",
    "They are the same",
    "Comparable is faster",
    "None",
  ]),
  Quiz(673, "What is a Fail-fast Iterator?", [
    "An iterator that throws an exception if the collection is modified during iteration",
    "An iterator that never fails",
    "A compiler error",
    "None",
  ]),
  Quiz(674, "When is ConcurrentModificationException thrown?", [
    "When modifying a collection while an iterator is traversing it",
    "When an object is null",
    "When RAM is full",
    "None",
  ]),
  Quiz(675, "The Enumeration interface is used with which classes?", [
    "Vector / Stack (Legacy classes)",
    "ArrayList",
    "HashMap",
    "None",
  ]),
  Quiz(676, "The Properties class extends which class?", [
    "Hashtable",
    "HashMap",
    "TreeMap",
    "None",
  ]),
  Quiz(677, "How does a Properties file store data?", [
    "Key=Value pairs (as Strings)",
    "Binary format",
    "JSON format",
    "None",
  ]),
  Quiz(678, "How does a PriorityQueue order its elements?", [
    "By natural order or a custom priority",
    "LIFO",
    "FIFO",
    "None",
  ]),
  Quiz(679, "How can you convert an Array into a List?", [
    "Arrays.asList(array)",
    "List.of(array)",
    "add()",
    "None",
  ]),
  Quiz(680, "How can you convert a List into an Array?", [
    "list.toArray()",
    "Arrays.fromList()",
    "convert()",
    "None",
  ]),
  Quiz(681, "What is the purpose of hashCode()?", [
    "To find the address/index in Hashing data structures",
    "For sorting",
    "To delete objects",
    "None",
  ]),
  Quiz(
    682,
    "If two objects are equal according to equals(), must their hashCode() be the same?",
    ["Yes", "No", "Sometimes", "None"],
  ),
  Quiz(683, "Which collection classes are Thread-safe (Synchronized)?", [
    "Vector, Stack, Hashtable",
    "ArrayList, HashMap",
    "HashSet",
    "None",
  ]),
  Quiz(684, "What is a Deque?", [
    "A Double Ended Queue (elements can be added/removed from both ends)",
    "A Default Queue",
    "A String Queue",
    "None",
  ]),
  Quiz(685, "What is the purpose of Collections.emptyList()?", [
    "To create an immutable empty list",
    "To delete a list",
    "To cause an error",
    "None",
  ]),
  Quiz(686, "Can a Map contain duplicate values?", [
    "Yes",
    "No",
    "Sometimes",
    "None",
  ]),
  Quiz(
    687,
    "Can TreeSet be used with objects that do not implement Comparable?",
    ["No (Throws ClassCastException)", "Yes", "Sometimes", "None"],
  ),
  Quiz(688, "What do Wrapper Classes (Integer, Double) allow?", [
    "Storing primitive types in Collections",
    "Faster execution",
    "Security",
    "None",
  ]),
  Quiz(689, "What is Autoboxing?", [
    "The automatic conversion of a primitive to its corresponding Wrapper object",
    "Converting an object to a primitive",
    "A compiler error",
    "None",
  ]),
  Quiz(690, "What is Unboxing?", [
    "The automatic conversion of a Wrapper object to its corresponding primitive",
    "Converting a primitive to an object",
    "None",
    "None",
  ]),
  Quiz(691, "Does the Collection interface have a removeAll() method?", [
    "Yes",
    "No",
    "Only in the List interface",
    "None",
  ]),
  Quiz(692, "The Dictionary class is the parent of which class?", [
    "Hashtable",
    "HashMap",
    "TreeMap",
    "None",
  ]),
  Quiz(693, "Does the Set interface have a get(index) method?", [
    "No (Because Sets are not indexed)",
    "Yes",
    "It causes an error",
    "None",
  ]),
  Quiz(694, "What does the poll() method in the Queue interface return?", [
    "The head of the queue and removes it (returns null if empty)",
    "An error",
    "Deletes only",
    "None",
  ]),
  Quiz(695, "What does remove() in a Queue do if the queue is empty?", [
    "Throws an Exception",
    "Returns null",
    "Returns 0",
    "None",
  ]),
  Quiz(
    696,
    "Is the Iterable interface the parent of the Collection interface?",
    ["Yes", "No", "Sometimes", "None"],
  ),
  Quiz(697, "Which method clears all data from a Collection?", [
    "clear()",
    "delete()",
    "reset()",
    "None",
  ]),
  Quiz(698, "What happens in a HashMap if a duplicate key is added?", [
    "The new value overwrites the old value",
    "An error occurs",
    "Both values are saved",
    "None",
  ]),
  Quiz(699, "Are Synchronized Collections faster than Non-synchronized ones?", [
    "No (They are slower due to locking overhead)",
    "Yes",
    "They are the same",
    "None",
  ]),
  Quiz(700, "What is a key feature of the Java Collections Framework?", [
    "Interoperability (allowing different APIs to share data)",
    "Security",
    "RAM management",
    "None",
  ]),
];
final List<Quiz> javaQuizM8 = [
  // --- Topic 75: Read File from Text ---
  Quiz(701, "Which package contains Java File I/O classes?", [
    "java.io",
    "java.util",
    "java.lang",
    "java.net",
  ]),
  Quiz(
    702,
    "Which class is used specifically for reading character-based files?",
    ["FileReader", "FileWriter", "FileStream", "FileInputStream"],
  ),
  Quiz(703, "What is the primary benefit of using BufferedReader?", [
    "It reads data line-by-line and uses buffering to increase efficiency",
    "It is used for writing files",
    "It deletes files",
    "None",
  ]),
  Quiz(
    704,
    "Which method in BufferedReader is used to read a full line of text?",
    ["readLine()", "read()", "getNextLine()", "readText()"],
  ),
  Quiz(705, "What does InputStreamReader bridge?", [
    "It converts Byte Streams to Character Streams",
    "It converts String to int",
    "It converts a File into an Object",
    "None",
  ]),

  Quiz(706, "What is the purpose of the File class in Java?", [
    "To manage file metadata (name, path, existence) rather than the content",
    "To read data inside the file directly",
    "To compile code",
    "None",
  ]),
  Quiz(
    707,
    "Which method is used to check if a file actually exists on the disk?",
    ["exists()", "isAvailable()", "check()", "hasFile()"],
  ),
  Quiz(708, "Can the Scanner class be used to read from a file?", [
    "Yes (by passing a File object to its constructor)",
    "No",
    "Only for Strings",
    "None",
  ]),
  Quiz(709, "When is a FileNotFoundException thrown?", [
    "When an attempt to access a non-existent file is made",
    "When a file is full",
    "When RAM is insufficient",
    "None",
  ]),
  Quiz(
    710,
    "Which method should be called to release system resources after using a file stream?",
    ["close()", "stop()", "exit()", "finish()"],
  ),

  // --- Topic 76: Write File to Text ---
  Quiz(711, "Which class is used to write characters to a file?", [
    "FileWriter",
    "FileReader",
    "FileInputStream",
    "FilePrinter",
  ]),
  Quiz(712, "What is the main purpose of BufferedWriter?", [
    "To buffer output to minimize the number of write operations to the disk",
    "To read files",
    "To delete files",
    "None",
  ]),
  Quiz(713, "Which method is used to write a String into a file?", [
    "write()",
    "print()",
    "save()",
    "insert()",
  ]),
  Quiz(
    714,
    "How do you insert a platform-independent new line using BufferedWriter?",
    ["newLine()", "next()", "line()", "Using \n only"],
  ),
  Quiz(
    715,
    "By default, what happens to existing data if you write to a file without 'append' mode?",
    [
      "The existing data is overwritten",
      "The new data is added to the end",
      "A compiler error occurs",
      "None",
    ],
  ),
  Quiz(716, "How do you enable 'Append mode' when creating a FileWriter?", [
    "new FileWriter('file.txt', true)",
    "new FileWriter('file.txt')",
    "Using the append() method",
    "None",
  ]),
  Quiz(717, "What does the 'flush()' method do?", [
    "It forces any buffered output bytes to be written to the destination immediately",
    "It closes the file",
    "It deletes the buffer",
    "None",
  ]),
  Quiz(718, "How does PrintWriter differ from FileWriter?", [
    "PrintWriter includes methods like print() and println() for easier formatting",
    "FileWriter is faster",
    "They are identical",
    "None",
  ]),
  Quiz(719, "What type of data is FileOutputStream primarily used for?", [
    "Byte-based data (Images, Videos, etc.)",
    "Character-based text",
    "Only Strings",
    "None",
  ]),
  Quiz(720, "Which method is used to create a new directory (folder)?", [
    "mkdir()",
    "createDir()",
    "newFolder()",
    "None",
  ]),

  // --- Topic 77: Notepad Project Logic & General I/O ---
  Quiz(
    721,
    "Which package is used to create the UI for a Notepad application in Java?",
    ["javax.swing", "java.io", "java.util", "java.sql"],
  ),
  Quiz(
    722,
    "Which Swing component is best for entering multiple lines of text in a Notepad app?",
    ["JTextArea", "JTextField", "JLabel", "JButton"],
  ),
  Quiz(723, "What is the purpose of JFileChooser?", [
    "To provide a GUI dialog for opening or saving files",
    "To write text",
    "To edit text fonts",
    "None",
  ]),

  Quiz(724, "What is Serialization?", [
    "The process of converting an object into a byte stream to save to a file",
    "The process of reading a text file",
    "The process of deleting an object",
    "None",
  ]),
  Quiz(725, "What is Deserialization?", [
    "The process of converting a byte stream back into an object",
    "The process of saving a file",
    "The process of compiling code",
    "None",
  ]),
  Quiz(726, "Which interface must a class implement to be serializable?", [
    "Serializable",
    "Cloneable",
    "Remote",
    "None",
  ]),
  Quiz(727, "What is the 'transient' keyword used for?", [
    "To indicate that a field should not be serialized",
    "To save a file to disk",
    "To make a variable static",
    "None",
  ]),
  Quiz(728, "Which class is used to write an object to a file?", [
    "ObjectOutputStream",
    "ObjectInputStream",
    "StringWriter",
    "None",
  ]),
  Quiz(729, "How does Externalizable differ from Serializable?", [
    "Externalizable gives the developer full control over the serialization process (custom)",
    "They are identical",
    "Serializable is always faster",
    "None",
  ]),
  Quiz(730, "What is the return type of File.delete()?", [
    "boolean (true if successful)",
    "void",
    "String",
    "int",
  ]),

  // --- Mixed File I/O (731-750) ---
  Quiz(731, "What are the two main types of file paths?", [
    "Absolute Path and Relative Path",
    "Only Absolute",
    "Only Relative",
    "None",
  ]),
  Quiz(732, "What is an Absolute Path?", [
    "A path that starts from the root directory (e.g., C:\\...)",
    "A path relative to the current working directory",
    "Just the file name",
    "None",
  ]),
  Quiz(733, "What do the methods canRead() and canWrite() check?", [
    "The file's permissions for reading and writing",
    "If the file can be deleted",
    "If the file can be copied",
    "None",
  ]),
  Quiz(734, "What does File.length() return?", [
    "The size of the file in bytes",
    "The length of the string name",
    "The number of lines in the file",
    "None",
  ]),
  Quiz(735, "What is the standard output stream for System.out?", [
    "PrintStream",
    "InputStream",
    "Scanner",
    "None",
  ]),
  Quiz(736, "What is System.in used for?", [
    "To receive input from the keyboard (standard input)",
    "To print to console",
    "To show errors",
    "None",
  ]),
  Quiz(737, "What is System.err used for?", [
    "To display error messages (Standard Error Stream)",
    "For standard user input",
    "For standard text output",
    "None",
  ]),
  Quiz(738, "What is the unique feature of RandomAccessFile?", [
    "It allows reading and writing at any specific position within the file",
    "It only reads sequentially",
    "It is used for deleting files",
    "None",
  ]),
  Quiz(739, "What does File.list() return?", [
    "A String array containing the names of files in a directory",
    "An array of File objects",
    "An integer count",
    "None",
  ]),
  Quiz(740, "Which method is used to rename or move a file?", [
    "renameTo(newFile)",
    "changeName()",
    "move()",
    "None",
  ]),
  Quiz(741, "How many bits does a Character Stream use per character?", [
    "16 bits (Unicode support)",
    "8 bits",
    "32 bits",
    "64 bits",
  ]),
  Quiz(742, "How many bits does a Byte Stream use per unit of data?", [
    "8 bits",
    "16 bits",
    "32 bits",
    "None",
  ]),
  Quiz(743, "Which classes are the parents of all Byte-based streams?", [
    "InputStream / OutputStream",
    "Reader / Writer",
    "File",
    "None",
  ]),
  Quiz(744, "Which classes are the parents of all Character-based streams?", [
    "Reader / Writer",
    "InputStream / OutputStream",
    "File",
    "None",
  ]),
  Quiz(745, "How does Try-with-resources benefit File I/O?", [
    "It automatically closes streams, preventing resource leaks",
    "It makes files read faster",
    "It deletes temporary files",
    "None",
  ]),
  Quiz(746, "What is the path separator character for Windows?", [
    "\\ (Backslash)",
    "/ (Forward slash)",
    ":",
    ";",
  ]),
  Quiz(747, "What is the path separator character for Linux and Mac?", [
    "/ (Forward slash)",
    "\\",
    ":",
    ";",
  ]),
  Quiz(748, "What does File.isHidden() do?", [
    "Checks if the file is marked as hidden by the operating system",
    "Deletes the file",
    "Opens the file",
    "None",
  ]),
  Quiz(
    749,
    "How do you distinguish if a path is a directory or a regular file?",
    [
      "Using isDirectory() and isFile()",
      "Using check()",
      "Using exists()",
      "None",
    ],
  ),
  Quiz(750, "When was Java NIO (New I/O) introduced?", [
    "Java 1.4 (and updated in Java 7 as NIO.2)",
    "Java 1.0",
    "Java 8",
    "Java 17",
  ]),
];
final List<List<Quiz>> javaQuizzes = [
  javaQuizM1,
  javaQuizM2,
  javaQuizM3,
  javaQuizM4,
  javaQuizM5,
  javaQuizM6,
  javaQuizM7,
  javaQuizM8,
];

final List<Quiz> pythonQuizM1 = [
  // --- Topic 1: What is Python ---
  Quiz(1, "Who created the Python programming language?", [
    "Guido van Rossum",
    "James Gosling",
    "Dennis Ritchie",
    "Bjarne Stroustrup",
  ]),
  Quiz(2, "Python is an ______ language.", [
    "Interpreted",
    "Compiled",
    "Low-level",
    "Assembly",
  ]),
  Quiz(3, "Which of these is a key philosophy of Python?", [
    "Readability counts",
    "Speed at all costs",
    "Complexity is better",
    "Only one way to do it",
  ]),
  Quiz(4, "Is Python case-sensitive?", [
    "Yes",
    "No",
    "Depends on OS",
    "Only for strings",
  ]),
  Quiz(5, "Which version of Python is the current standard?", [
    "Python 3",
    "Python 2",
    "Python 4",
    "CPython",
  ]),

  // --- Topic 2: Installing Python ---
  Quiz(6, "What is the official website to download Python?", [
    "python.org",
    "python.com",
    "python.io",
    "getpython.org",
  ]),
  Quiz(
    7,
    "When installing on Windows, what should you check to use Python in CMD?",
    [
      "Add Python to PATH",
      "Install for all users",
      "Download Debugging Symbols",
      "Precompile Library",
    ],
  ),
  Quiz(8, "What is the default package manager for Python?", [
    "pip",
    "npm",
    "maven",
    "apt",
  ]),

  // --- Topic 3: Run Python on Terminal ---
  Quiz(9, "How do you start the Python interactive shell in the terminal?", [
    "Type 'python'",
    "Type 'run python'",
    "Type 'start'",
    "Type 'py-shell'",
  ]),
  Quiz(10, "What is the symbol for the Python interactive prompt?", [
    ">>>",
    "...",
    "---",
    "\$",
  ]),
  Quiz(11, "How do you exit the Python shell in terminal?", [
    "exit()",
    "stop",
    "close",
    "end",
  ]),
  Quiz(12, "Which command checks the Python version in the terminal?", [
    "python --version",
    "python -v",
    "ver python",
    "python.check",
  ]),

  // --- Topic 4: Running python as a python program ---
  Quiz(13, "What is the file extension for Python files?", [
    ".py",
    ".pyt",
    ".python",
    ".txt",
  ]),
  Quiz(14, "What is a script in Python?", [
    "A file containing Python code",
    "A type of variable",
    "An error",
    "A compiler",
  ]),
  Quiz(15, "Which command runs a file named 'main.py'?", [
    "python main.py",
    "run main.py",
    "exec main.py",
    "start main.py",
  ]),

  // --- Topic 5: Installing PyCharm Community Edition ---
  Quiz(16, "Which company developed PyCharm?", [
    "JetBrains",
    "Google",
    "Microsoft",
    "Oracle",
  ]),
  Quiz(17, "PyCharm is a/an ______.", [
    "IDE",
    "Compiler",
    "Interpreter",
    "Operating System",
  ]),
  Quiz(18, "Which PyCharm version is free for students and community?", [
    "Community Edition",
    "Professional Edition",
    "Ultimate Edition",
    "Standard Edition",
  ]),

  // --- Topic 6: Running Hello World with PyCharm ---
  Quiz(19, "How do you print 'Hello' in Python?", [
    "print('Hello')",
    "System.out.println('Hello')",
    "cout << 'Hello'",
    "printf('Hello')",
  ]),
  Quiz(20, "Does Python require a semicolon (;) at the end of every line?", [
    "No",
    "Yes",
    "Only for variables",
    "Optional but discouraged",
  ]),
  Quiz(21, "Where is the output of your code displayed in PyCharm?", [
    "The Console window",
    "The Project tab",
    "The Settings",
    "The Browser",
  ]),

  // --- Topic 7: Python Comments ---
  Quiz(22, "How do you write a single-line comment in Python?", [
    "#",
    "//",
    "/*",
    "--",
  ]),
  Quiz(23, "How do you write multi-line comments (docstrings) in Python?", [
    "''' '''",
    "/* */",
    "###",
    "// //",
  ]),
  Quiz(24, "What happens to commented code during execution?", [
    "It is ignored",
    "It causes an error",
    "It runs faster",
    "It is printed",
  ]),
  Quiz(25, "Can you put a comment on the same line as code?", [
    "Yes (Inline comment)",
    "No",
    "Only at the start",
    "Only if indented",
  ]),

  // --- Topic 8: Variable in Python ---
  Quiz(26, "How do you declare a variable in Python?", [
    "name = value",
    "int name = value",
    "var name = value",
    "declare name",
  ]),
  Quiz(27, "Is Python statically typed or dynamically typed?", [
    "Dynamically typed",
    "Statically typed",
    "Not typed",
    "Strictly typed",
  ]),
  Quiz(28, "Which of these is a valid variable name?", [
    "my_var",
    "2myvar",
    "my-var",
    "my var",
  ]),
  Quiz(29, "Can a variable name start with a number?", [
    "No",
    "Yes",
    "Only if it is float",
    "Depends on IDE",
  ]),
  Quiz(30, "What is the result of x = 5; x = 'Hey'; print(x)?", [
    "Hey",
    "5",
    "Error",
    "None",
  ]),
  Quiz(31, "Which naming convention is standard for Python variables?", [
    "snake_case",
    "camelCase",
    "PascalCase",
    "kebab-case",
  ]),
  Quiz(32, "Which function checks the data type of a variable?", [
    "type()",
    "dataType()",
    "check()",
    "id()",
  ]),
  Quiz(33, "How do you assign the same value to x, y, and z at once?", [
    "x = y = z = 1",
    "x, y, z = 1",
    "x = 1, y = 1, z = 1",
    "x:y:z = 1",
  ]),
  Quiz(34, "What happens if you use a variable that hasn't been defined?", [
    "NameError",
    "TypeError",
    "SyntaxError",
    "It becomes None",
  ]),

  // --- General Logic & Best Practices ---
  Quiz(35, "What does 'Indentation' define in Python?", [
    "A block of code",
    "A new variable",
    "A comment",
    "A file start",
  ]),
  Quiz(36, "How many spaces are recommended for one level of indentation?", [
    "4 spaces",
    "2 spaces",
    "1 tab",
    "8 spaces",
  ]),
  Quiz(37, "Which function is used to get user input?", [
    "input()",
    "get()",
    "scan()",
    "read()",
  ]),
  Quiz(38, "What is the output of print(type(10.5))?", [
    "<class 'float'>",
    "float",
    "decimal",
    "double",
  ]),
  Quiz(39, "What is the result of 10 // 3?", [
    "3 (Floor division)",
    "3.33",
    "4",
    "1",
  ]),
  Quiz(40, "What is the result of 10 % 3?", ["1 (Modulo)", "3", "0", "3.33"]),
  Quiz(41, "Which of these is a reserved keyword in Python?", [
    "lambda",
    "name",
    "value",
    "main",
  ]),
  Quiz(42, "What is the output of: x = 10; x += 5; print(x)?", [
    "15",
    "10",
    "105",
    "Error",
  ]),
  Quiz(43, "Which escape character represents a new line?", [
    "\\n",
    "\\t",
    "\\b",
    "\\r",
  ]),
  Quiz(44, "What is the output of: print('A' + 'B')?", [
    "AB",
    "A B",
    "Error",
    "C",
  ]),
  Quiz(45, "How do you repeat a string 'Hi' 3 times?", [
    "'Hi' * 3",
    "'Hi' + 3",
    "'Hi' ^ 3",
    "repeat('Hi', 3)",
  ]),
  Quiz(46, "What is the output of: print(len('Shan'))?", ["4", "5", "3", "0"]),
  Quiz(47, "Which function converts a string '10' to an integer?", [
    "int()",
    "str()",
    "float()",
    "convert()",
  ]),
  Quiz(48, "What is 'Garbage Collection'?", [
    "Cleaning up memory no longer used",
    "Deleting source files",
    "Removing comments",
    "Fixing bugs",
  ]),
  Quiz(49, "What is 'Snake Case' look like?", [
    "user_name",
    "userName",
    "UserName",
    "user-name",
  ]),
  Quiz(50, "Every variable in Python is an ______.", [
    "Object",
    "Primitive",
    "Function",
    "Module",
  ]),
];
final List<Quiz> pythonQuizM2 = [
  // --- Topic 9: Python Basic Data Types (51-58) ---
  Quiz(51, "Which function is used to check the data type of an object?", [
    "type()",
    "id()",
    "isinstance()",
    "kind()",
  ]),
  Quiz(52, "Is Python a statically typed language?", [
    "No, it is dynamically typed",
    "Yes",
    "Only for numbers",
    "Only in functions",
  ]),
  Quiz(53, "Which of these is NOT a built-in Python data type?", [
    "Array",
    "List",
    "Set",
    "Dictionary",
  ]),
  Quiz(54, "What is the data type of: x = 5?", [
    "int",
    "float",
    "number",
    "long",
  ]),
  Quiz(55, "What is the data type of: x = 5.0?", [
    "float",
    "double",
    "int",
    "decimal",
  ]),
  Quiz(56, "Every value in Python is actually an ______.", [
    "Object",
    "Primitive",
    "Method",
    "Logic",
  ]),
  Quiz(57, "Can a variable change its data type after being set?", [
    "Yes",
    "No",
    "Only if it is a string",
    "Only in Python 2",
  ]),
  Quiz(58, "Which of these is a sequence type?", [
    "List",
    "Set",
    "Dictionary",
    "Boolean",
  ]),

  // --- Topic 10: Boolean Type (59-66) ---
  Quiz(59, "What are the two possible values of a Boolean?", [
    "True, False",
    "true, false",
    "1, 0",
    "Yes, No",
  ]),
  Quiz(60, "What is the result of: bool(0)?", [
    "False",
    "True",
    "Error",
    "None",
  ]),
  Quiz(61, "What is the result of: bool(1)?", ["True", "False", "Error", "0"]),
  Quiz(62, "What is the result of: bool([])?", [
    "False",
    "True",
    "Error",
    "None",
  ]),
  Quiz(63, "What is the result of: bool('Hello')?", [
    "True",
    "False",
    "Error",
    "None",
  ]),
  Quiz(64, "Which keyword represents a logical 'NOT' in Python?", [
    "not",
    "!",
    "~",
    "false",
  ]),
  Quiz(65, "Result of: True and False?", ["False", "True", "None", "Error"]),
  Quiz(66, "Result of: True or False?", ["True", "False", "None", "Error"]),

  // --- Topic 11: Numeric Types (67-74) ---
  Quiz(67, "How many numeric types does Python have?", [
    "3 (int, float, complex)",
    "2 (int, float)",
    "4",
    "1",
  ]),
  Quiz(68, "Which numeric type supports imaginary numbers?", [
    "complex",
    "float",
    "int",
    "long",
  ]),
  Quiz(69, "What is the result of: 10 / 2?", [
    "5.0 (Float)",
    "5 (Int)",
    "2",
    "Error",
  ]),
  Quiz(70, "What is the result of: 10 // 3?", [
    "3 (Floor division)",
    "3.33",
    "4",
    "1",
  ]),
  Quiz(71, "How do you represent a complex number in Python?", [
    "3 + 5j",
    "3 + 5i",
    "3 + 5x",
    "complex(3, 5)",
  ]),
  Quiz(72, "Can an 'int' in Python be of any size?", [
    "Yes, as long as memory allows",
    "No, max 64 bit",
    "No, max 32 bit",
    "Only if positive",
  ]),
  Quiz(73, "What is the result of: 2 ** 3?", ["8 (Power)", "6", "5", "9"]),
  Quiz(74, "Scientific notation: what is 2e3?", ["2000.0", "23", "200", "6"]),

  // --- Topic 12: String Type (75-82) ---
  Quiz(75, "Strings in Python are ______.", [
    "Immutable",
    "Mutable",
    "Numbers",
    "Functions",
  ]),
  Quiz(76, "How do you create a multi-line string?", [
    "Using triple quotes (''' or \"\"\")",
    "Using \\n only",
    "Using +",
    "Using multiple prints",
  ]),
  Quiz(77, "What is 'Slicing'?", [
    "Extracting a part of a string",
    "Deleting a string",
    "Joining strings",
    "Capitalizing",
  ]),
  Quiz(78, "Result of 'Python'[0]?", ["P", "n", "y", "Error"]),
  Quiz(79, "Result of 'Python'[-1]?", ["n", "P", "o", "t"]),
  Quiz(80, "Result of 'Python'[1:4]?", ["yth", "pyt", "ytho", "tho"]),
  Quiz(81, "Which method converts a string to uppercase?", [
    "upper()",
    "toUpper()",
    "UPPER()",
    "capitalize()",
  ]),
  Quiz(82, "Which method removes whitespace from start and end?", [
    "strip()",
    "trim()",
    "clear()",
    "remove()",
  ]),

  // --- Topic 13: Python Casting (83-88) ---
  Quiz(83, "How do you convert a float 5.9 to an int?", [
    "int(5.9)",
    "round(5.9)",
    "float.to_int()",
    "5.9.int()",
  ]),
  Quiz(84, "Result of int(5.9)?", ["5", "6", "5.9", "Error"]),
  Quiz(85, "How do you convert an int 5 to a string?", [
    "str(5)",
    "string(5)",
    "5.toString()",
    "'5'",
  ]),
  Quiz(86, "How do you convert a string '10' to a float?", [
    "float('10')",
    "int('10')",
    "10.float()",
    "cast.float('10')",
  ]),
  Quiz(87, "Can you cast a string 'Hello' to an int?", [
    "No (ValueError)",
    "Yes, it becomes 0",
    "Yes, it uses ASCII",
    "Yes, if in PyCharm",
  ]),
  Quiz(88, "What is 'Implicit Casting'?", [
    "Python automatically converting types",
    "Manual conversion",
    "Deleting types",
    "Casting in secret",
  ]),

  // --- Topic 14: None Type (89-92) ---
  Quiz(89, "What does 'None' represent?", [
    "The absence of a value",
    "Zero",
    "False",
    "An empty string",
  ]),
  Quiz(90, "Is 'None' the same as 'False'?", [
    "No",
    "Yes",
    "Only in numbers",
    "Only in strings",
  ]),
  Quiz(91, "What is the data type of None?", [
    "NoneType",
    "null",
    "bool",
    "void",
  ]),
  Quiz(92, "How do you check if x is None?", [
    "x is None",
    "x == None",
    "both are common",
    "x.isNull()",
  ]),

  // --- Topic 15: List Type (93-102) ---
  Quiz(93, "Are Python lists mutable (changeable)?", [
    "Yes",
    "No",
    "Only if they contain numbers",
    "Only in Python 3",
  ]),
  Quiz(94, "Which bracket is used for Lists?", ["[ ]", "( )", "{ }", "< >"]),
  Quiz(95, "Can a list contain different data types?", [
    "Yes",
    "No",
    "Only if it is a mixed list",
    "Only numbers and strings",
  ]),
  Quiz(96, "Which method adds an item to the end of a list?", [
    "append()",
    "add()",
    "insert()",
    "push()",
  ]),
  Quiz(97, "Which method adds an item at a specific index?", [
    "insert()",
    "append()",
    "add()",
    "index()",
  ]),
  Quiz(98, "Which method removes a specific value?", [
    "remove()",
    "delete()",
    "pop()",
    "clear()",
  ]),
  Quiz(99, "Result of [1, 2] + [3, 4]?", [
    "[1, 2, 3, 4]",
    "[4, 6]",
    "Error",
    "[[1,2],[3,4]]",
  ]),
  Quiz(100, "How do you find the length of a list?", [
    "len(list)",
    "list.length()",
    "list.size()",
    "count(list)",
  ]),
  Quiz(101, "Which method reverses a list in place?", [
    "reverse()",
    "backwards()",
    "flip()",
    "sort(reverse=True)",
  ]),
  Quiz(102, "What is the index of the last item in a list?", [
    "-1",
    "0",
    "len(list)",
    "size",
  ]),

  // --- Topic 16: Tuple Type (103-110) ---
  Quiz(103, "Are Tuples mutable?", [
    "No, they are immutable",
    "Yes",
    "Only if defined with brackets",
    "Only in Python 2",
  ]),
  Quiz(104, "Which bracket is used for Tuples?", ["( )", "[ ]", "{ }", "< >"]),
  Quiz(105, "Can you change an item in a tuple after creation?", [
    "No",
    "Yes",
    "Only if it is a list inside",
    "Only with update()",
  ]),
  Quiz(106, "How do you create a tuple with only one item?", [
    "(5,)",
    "(5)",
    "tuple(5)",
    "[5]",
  ]),
  Quiz(107, "Why are tuples used?", [
    "They are faster and safer than lists",
    "They are larger",
    "They allow duplicates",
    "They are required",
  ]),
  Quiz(108, "What is 'Unpacking' a tuple?", [
    "Assigning tuple items to variables",
    "Deleting a tuple",
    "Sorting it",
    "Converting to string",
  ]),
  Quiz(109, "Which method counts occurrences in a tuple?", [
    "count()",
    "length()",
    "size()",
    "sum()",
  ]),
  Quiz(110, "Result of (1, 2) * 2?", [
    "(1, 2, 1, 2)",
    "(2, 4)",
    "Error",
    "(1, 1, 2, 2)",
  ]),

  // --- Topic 17: Dictionary Type (111-118) ---
  Quiz(111, "Dictionaries store data in ______ pairs.", [
    "Key:Value",
    "Index:Value",
    "Name:Age",
    "Header:Data",
  ]),
  Quiz(112, "Which bracket is used for Dictionaries?", [
    "{ }",
    "[ ]",
    "( )",
    "< >",
  ]),
  Quiz(113, "Are dictionary keys mutable?", [
    "No, they must be immutable (like strings)",
    "Yes",
    "Only numbers",
    "Only if unique",
  ]),
  Quiz(114, "How do you access a value in a dictionary?", [
    "dict['key']",
    "dict(0)",
    "dict.value()",
    "dict.get()",
  ]),
  Quiz(115, "What happens if you use a duplicate key in a dictionary?", [
    "The last value overwrites the old one",
    "Error",
    "Both stay",
    "The first one is kept",
  ]),
  Quiz(116, "Which method returns all keys?", [
    "keys()",
    "allKeys()",
    "get()",
    "names()",
  ]),
  Quiz(117, "Which method returns all values?", [
    "values()",
    "items()",
    "list()",
    "get()",
  ]),
  Quiz(118, "How do you remove an item with a specific key?", [
    "pop()",
    "remove()",
    "delete()",
    "clear()",
  ]),

  // --- Topic 18: Set Type (119-126) ---
  Quiz(119, "Are sets ordered or unordered?", [
    "Unordered",
    "Ordered",
    "Indexed",
    "Sorted",
  ]),
  Quiz(120, "Do sets allow duplicate values?", [
    "No",
    "Yes",
    "Only numbers",
    "Only in Python 3",
  ]),
  Quiz(121, "Which bracket is used for Sets?", ["{ }", "[ ]", "( )", "< >"]),
  Quiz(122, "How do you add an item to a set?", [
    "add()",
    "append()",
    "insert()",
    "push()",
  ]),
  Quiz(123, "Can you access items in a set by index (e.g., set[0])?", [
    "No",
    "Yes",
    "Only if set is sorted",
    "Only if it is a list",
  ]),
  Quiz(124, "What is the result of set([1, 2, 2, 3])?", [
    "{1, 2, 3}",
    "[1, 2, 2, 3]",
    "{1, 2, 2, 3}",
    "Error",
  ]),
  Quiz(125, "Which method removes an item but doesn't error if not found?", [
    "discard()",
    "remove()",
    "pop()",
    "clear()",
  ]),
  Quiz(126, "How do you add multiple items to a set?", [
    "update()",
    "add()",
    "insert()",
    "extend()",
  ]),

  // --- Topic 19: Set Operations (127-134) ---
  Quiz(127, "Which operation combines all unique items from two sets?", [
    "Union",
    "Intersection",
    "Difference",
    "Symmetric Difference",
  ]),
  Quiz(128, "Which operation finds only the items present in both sets?", [
    "Intersection",
    "Union",
    "Difference",
    "Symmetric Difference",
  ]),
  Quiz(129, "Symbol for Union?", ["|", "&", "-", "^"]),
  Quiz(130, "Symbol for Intersection?", ["&", "|", "-", "^"]),
  Quiz(131, "Symbol for Difference?", ["-", "|", "&", "^"]),
  Quiz(132, "What is Symmetric Difference?", [
    "Items in either set, but NOT both",
    "All items",
    "Items in both",
    "Items in first only",
  ]),
  Quiz(133, "Which method checks if all items of set A are in set B?", [
    "issubset()",
    "issuperset()",
    "isdisjoint()",
    "contains()",
  ]),
  Quiz(134, "Which method checks if two sets have no common items?", [
    "isdisjoint()",
    "issubset()",
    "issuperset()",
    "union()",
  ]),

  // --- Mixed Module 2 Review (135-150) ---
  Quiz(135, "Which of these is immutable?", [
    "Tuple",
    "List",
    "Dictionary",
    "Set",
  ]),
  Quiz(136, "Which of these is unordered?", ["Set", "List", "Tuple", "String"]),
  Quiz(137, "Which function creates an empty set?", [
    "set()",
    "{}",
    "[]",
    "()",
  ]),
  Quiz(138, "What does {} create by default?", [
    "Empty Dictionary",
    "Empty Set",
    "Error",
    "Empty List",
  ]),
  Quiz(139, "Result of: len({1, 1, 1})?", ["1", "3", "0", "Error"]),
  Quiz(140, "How do you check if 'a' is in a list?", [
    "'a' in list",
    "list.contains('a')",
    "list.has('a')",
    "find('a', list)",
  ]),
  Quiz(141, "Which method empties a list/dictionary?", [
    "clear()",
    "empty()",
    "remove()",
    "delete()",
  ]),
  Quiz(142, "Can a tuple be a key in a dictionary?", [
    "Yes (because it is immutable)",
    "No",
    "Only if it contains strings",
    "Only in Python 3.10",
  ]),
  Quiz(143, "Can a list be a key in a dictionary?", [
    "No (because it is mutable)",
    "Yes",
    "Only if small",
    "Only if it contains ints",
  ]),
  Quiz(144, "What is the result of '10' + '20'?", [
    "1020",
    "30",
    "Error",
    "10 20",
  ]),
  Quiz(145, "What is the result of int(True)?", ["1", "0", "Error", "None"]),
  Quiz(146, "What is the result of float(10)?", ["10.0", "10", "Error", "0.1"]),
  Quiz(
    147,
    "Which type is best for storing a fixed collection of coordinates?",
    ["Tuple", "List", "Set", "Dictionary"],
  ),
  Quiz(148, "Which type is best for looking up a price using a product name?", [
    "Dictionary",
    "List",
    "Tuple",
    "Set",
  ]),
  Quiz(149, "Which type is best for removing duplicate items from a list?", [
    "Set",
    "Tuple",
    "Dictionary",
    "None",
  ]),
  Quiz(150, "Python's built-in types are designed to be ______.", [
    "Flexible and easy to use",
    "Strict and fast",
    "Only for math",
    "Hard to learn",
  ]),
];
final List<Quiz> pythonQuizM3 = [
  // --- Topic 20: Python Operators General (151-154) ---
  Quiz(151, "What are operators used for in Python?", [
    "To perform operations on variables and values",
    "To name variables",
    "To create comments",
    "To install libraries",
  ]),
  Quiz(152, "In 'x + y', what are 'x' and 'y' called?", [
    "Operands",
    "Operators",
    "Functions",
    "Parameters",
  ]),
  Quiz(153, "How many main categories of operators does Python have?", [
    "7",
    "3",
    "5",
    "10",
  ]),
  Quiz(154, "Which symbol is used for assignment in Python?", [
    "=",
    "==",
    "===",
    ":=",
  ]),

  // --- Topic 21: Arithmetic Operators (155-165) ---
  Quiz(155, "Which operator is used for addition?", ["+", "-", "*", "/"]),
  Quiz(156, "Which operator is used for multiplication?", [
    "*",
    "**",
    "x",
    "multi",
  ]),
  Quiz(157, "What is the result of 10 / 3?", [
    "3.3333333333333335",
    "3",
    "3.0",
    "Error",
  ]),
  Quiz(158, "Which operator is used for Floor Division?", [
    "//",
    "/",
    "%",
    "**",
  ]),
  Quiz(159, "What is the result of 10 // 3?", ["3", "3.33", "4", "1"]),
  Quiz(160, "Which operator is used to find the remainder?", [
    "%",
    "/",
    "//",
    "rem",
  ]),
  Quiz(161, "What is the result of 10 % 3?", ["1", "3", "0", "3.33"]),
  Quiz(162, "Which operator is used for Exponentiation (Power)?", [
    "**",
    "^",
    "pow",
    "^^",
  ]),
  Quiz(163, "What is the result of 2 ** 3?", ["8", "6", "5", "9"]),
  Quiz(164, "What is the result of -10 // 3?", ["-4", "-3", "-3.33", "3"]),
  Quiz(165, "What is the result of 5 + 2 * 10?", ["25", "70", "17", "Error"]),

  // --- Topic 22: Assignment Operators (166-176) ---
  Quiz(166, "Which operator assigns a value to a variable?", [
    "=",
    "==",
    "is",
    "in",
  ]),
  Quiz(167, "What does 'x += 3' mean?", [
    "x = x + 3",
    "x = 3",
    "x + 3 = x",
    "Error",
  ]),
  Quiz(168, "What does 'x -= 2' mean?", [
    "x = x - 2",
    "x = 2",
    "x - 2",
    "None",
  ]),
  Quiz(169, "What does 'x *= 5' mean?", [
    "x = x * 5",
    "x = 5",
    "x * 5",
    "Error",
  ]),
  Quiz(170, "What does 'x /= 2' mean?", [
    "x = x / 2",
    "x = 2",
    "x / 2",
    "None",
  ]),
  Quiz(171, "What does 'x %= 3' mean?", [
    "x = x % 3",
    "x = 3",
    "x % 3",
    "None",
  ]),
  Quiz(172, "What does 'x //= 3' mean?", [
    "x = x // 3",
    "x = 3",
    "x // 3",
    "None",
  ]),
  Quiz(173, "What does 'x **= 2' mean?", [
    "x = x ** 2",
    "x = 2",
    "x ** 2",
    "None",
  ]),
  Quiz(174, "What does 'x &= 3' mean?", [
    "Bitwise AND assignment",
    "Logic AND",
    "x = 3",
    "Error",
  ]),
  Quiz(175, "What does 'x |= 3' mean?", [
    "Bitwise OR assignment",
    "Logic OR",
    "x = 3",
    "Error",
  ]),
  Quiz(176, "What is the 'Walrus Operator' (introduced in 3.8)?", [
    ":=",
    "==",
    "->",
    "=>",
  ]),

  // --- Topic 23: Comparison Operators (177-185) ---
  Quiz(177, "Which operator checks if two values are equal?", [
    "==",
    "=",
    "is",
    "===",
  ]),
  Quiz(178, "Which operator checks if two values are NOT equal?", [
    "!=",
    "<>",
    "not",
    "~",
  ]),
  Quiz(179, "What is the result of 5 > 3?", ["True", "False", "None", "Error"]),
  Quiz(180, "Which operator means 'Greater than or equal to'?", [
    ">=",
    "=>",
    ">",
    "==",
  ]),
  Quiz(181, "Which operator means 'Less than or equal to'?", [
    "<=",
    "=<",
    "<",
    "==",
  ]),
  Quiz(182, "Comparison operators always return a ______ value.", [
    "Boolean",
    "Integer",
    "String",
    "None",
  ]),
  Quiz(183, "What is the result of 10 == 10.0?", [
    "True",
    "False",
    "Error",
    "None",
  ]),
  Quiz(184, "What is the result of 'apple' < 'banana'?", [
    "True",
    "False",
    "Error",
    "None",
  ]),
  Quiz(185, "Result of: 5 != 5?", ["False", "True", "None", "Error"]),

  // --- Topic 24: Logical Operators (186-192) ---
  Quiz(186, "Which operator returns True if both statements are true?", [
    "and",
    "&&",
    "&",
    "both",
  ]),
  Quiz(187, "Which operator returns True if one statement is true?", [
    "or",
    "||",
    "|",
    "either",
  ]),
  Quiz(188, "Which operator reverses the result (True to False)?", [
    "not",
    "!",
    "reverse",
    "~",
  ]),
  Quiz(189, "Result of: (5 > 3 and 10 < 20)?", [
    "True",
    "False",
    "None",
    "Error",
  ]),
  Quiz(190, "Result of: (5 > 3 or 10 > 20)?", [
    "True",
    "False",
    "None",
    "Error",
  ]),
  Quiz(191, "Result of: not(5 > 3)?", ["False", "True", "None", "Error"]),
  Quiz(192, "Logical operators in Python use ______ instead of &&.", [
    "Words",
    "Numbers",
    "Brackets",
    "Dots",
  ]),

  // --- Topic 25: Identity Operators (193-200) ---
  Quiz(193, "Which operator returns True if variables are the same object?", [
    "is",
    "==",
    "===",
    "same",
  ]),
  Quiz(
    194,
    "Which operator returns True if variables are NOT the same object?",
    ["is not", "!=", "not is", "different"],
  ),
  Quiz(195, "Difference between '==' and 'is'?", [
    "'==' checks values, 'is' checks memory location",
    "'is' is faster",
    "No difference",
    "None",
  ]),
  Quiz(196, "Result of: x = [1,2]; y = [1,2]; x == y?", [
    "True",
    "False",
    "Error",
    "None",
  ]),
  Quiz(197, "Result of: x = [1,2]; y = [1,2]; x is y?", [
    "False",
    "True",
    "Error",
    "None",
  ]),
  Quiz(198, "Result of: x = None; x is None?", [
    "True",
    "False",
    "Error",
    "None",
  ]),
  Quiz(199, "What is the identity of an object in Python?", [
    "Its memory address",
    "Its variable name",
    "Its data value",
    "Its type",
  ]),
  Quiz(200, "Which function returns the identity of an object?", [
    "id()",
    "type()",
    "identity()",
    "hex()",
  ]),

  // --- Topic 26: Membership Operators (201-210) ---
  Quiz(201, "Which operator checks if a value is in a sequence?", [
    "in",
    "has",
    "exists",
    "contains",
  ]),
  Quiz(202, "Which operator checks if a value is NOT in a sequence?", [
    "not in",
    "in not",
    "absent",
    "is not",
  ]),
  Quiz(203, "Result of: 'P' in 'Python'?", ["True", "False", "Error", "None"]),
  Quiz(204, "Result of: 'z' in 'Python'?", ["False", "True", "Error", "None"]),
  Quiz(205, "Result of: 1 in [1, 2, 3]?", ["True", "False", "Error", "None"]),
  Quiz(206, "When using 'in' with a Dictionary, it checks for ______.", [
    "Keys",
    "Values",
    "Both",
    "Indices",
  ]),
  Quiz(207, "Result of: 'name' in {'name': 'Alice'}?", [
    "True",
    "False",
    "Error",
    "None",
  ]),
  Quiz(208, "Result of: 'Alice' in {'name': 'Alice'}?", [
    "False (Values aren't checked directly)",
    "True",
    "Error",
    "None",
  ]),
  Quiz(209, "Which is more efficient for membership tests?", [
    "Set",
    "List",
    "Tuple",
    "String",
  ]),
  Quiz(210, "Result of: 5 not in [1, 2, 3, 4]?", [
    "True",
    "False",
    "Error",
    "None",
  ]),

  // --- Topic 27: Operator Precedence (211-220) ---
  Quiz(211, "What is operator precedence?", [
    "The order in which operations are performed",
    "The speed of the operator",
    "The name",
    "The size",
  ]),
  Quiz(
    212,
    "Which has higher precedence: Multiplication (*) or Addition (+)?",
    ["Multiplication", "Addition", "They are equal", "Depends on code"],
  ),
  Quiz(213, "What is the result of 5 + 2 * 3?", ["11", "21", "10", "15"]),
  Quiz(214, "What is the result of (5 + 2) * 3?", ["21", "11", "10", "15"]),
  Quiz(215, "Which operator has the highest precedence in Python?", [
    "Parentheses ()",
    "Exponentiation **",
    "Multiplication *",
    "Addition +",
  ]),
  Quiz(216, "What is the result of 10 - 3 + 2?", ["9", "5", "11", "Error"]),
  Quiz(217, "What is the result of 2 ** 3 ** 2?", ["512", "64", "18", "Error"]),
  Quiz(218, "Which has higher precedence: Comparison (==) or Logical (and)?", [
    "Comparison",
    "Logical",
    "They are equal",
    "None",
  ]),
  Quiz(219, "Which has higher precedence: Logical (not) or Logical (and)?", [
    "not",
    "and",
    "They are equal",
    "None",
  ]),
  Quiz(220, "What rule does Python follow for math order?", [
    "PEMDAS / BODMAS",
    "Random",
    "Left-to-right",
    "Right-to-left",
  ]),

  // --- Mixed Module 3 Review (221-250) ---
  Quiz(221, "What is 7 // 2?", ["3", "3.5", "4", "2"]),
  Quiz(222, "What is 7 % 2?", ["1", "0", "3.5", "2"]),
  Quiz(223, "Is '^' the exponent operator in Python?", [
    "No (Bitwise XOR)",
    "Yes",
    "Only in Python 2",
    "Only for floats",
  ]),
  Quiz(224, "What is 'not True'?", ["False", "True", "None", "Error"]),
  Quiz(225, "Result of: 10 > 5 and 5 > 1?", ["True", "False", "Error", "None"]),
  Quiz(226, "Result of: 10 > 5 and 5 < 1?", ["False", "True", "Error", "None"]),
  Quiz(227, "Result of: 10 > 5 or 5 < 1?", ["True", "False", "Error", "None"]),
  Quiz(228, "Is '3 is 3' always True in CPython?", [
    "Yes",
    "No",
    "Only in PyCharm",
    "Only for strings",
  ]),
  Quiz(229, "Which operator is used for Bitwise AND?", [
    "&",
    "&&",
    "and",
    "AND",
  ]),
  Quiz(230, "Which operator is used for Bitwise OR?", ["|", "||", "or", "OR"]),
  Quiz(231, "What is the result of 5 << 1?", ["10", "5", "2", "2.5"]),
  Quiz(232, "What is the result of 10 >> 1?", ["5", "20", "10", "1"]),
  Quiz(233, "Can you use '+' to concatenate two lists?", [
    "Yes",
    "No",
    "Only with extend()",
    "Only if empty",
  ]),
  Quiz(234, "What is the result of [1] * 3?", [
    "[1, 1, 1]",
    "[3]",
    "Error",
    "[1, 3]",
  ]),
  Quiz(235, "Which operator has lower precedence: 'or' or 'and'?", [
    "or",
    "and",
    "They are equal",
    "None",
  ]),
  Quiz(236, "Result of: 10 == 10 and 5 == 5?", [
    "True",
    "False",
    "Error",
    "None",
  ]),
  Quiz(237, "Which assignment operator is equivalent to x = x // 5?", [
    "x //= 5",
    "x /= 5",
    "x %= 5",
    "x =// 5",
  ]),
  Quiz(238, "What is the result of 'a' in ['a', 'b', 'c']?", [
    "True",
    "False",
    "Error",
    "None",
  ]),
  Quiz(239, "What is the result of 'z' not in 'Apple'?", [
    "True",
    "False",
    "Error",
    "None",
  ]),
  Quiz(240, "What is the result of 1 + 2.0?", ["3.0", "3", "3.2", "Error"]),
  Quiz(241, "Which is performed first: 'not', 'and', or 'or'?", [
    "not",
    "and",
    "or",
    "Equal",
  ]),
  Quiz(242, "What is the result of 10 / 2 * 3?", [
    "15.0",
    "1.66",
    "5.0",
    "Error",
  ]),
  Quiz(243, "Does 'is' check if values are the same?", [
    "No, memory address",
    "Yes",
    "Only strings",
    "Only None",
  ]),
  Quiz(244, "Result of: x = 5; y = 5; x is y?", [
    "True",
    "False",
    "Error",
    "None",
  ]),
  Quiz(245, "Which operator is used for Bitwise NOT?", [
    "~",
    "!",
    "not",
    "inv",
  ]),
  Quiz(246, "What is the result of 10 > 5 > 2?", [
    "True",
    "False",
    "Error",
    "None",
  ]),
  Quiz(247, "Which operator is used to access an object attribute?", [
    ".",
    "->",
    "::",
    "[]",
  ]),
  Quiz(248, "What is the result of 0 and True?", [
    "0",
    "True",
    "False",
    "Error",
  ]),
  Quiz(249, "What is the result of 1 or False?", [
    "1",
    "True",
    "False",
    "Error",
  ]),
  Quiz(250, "What is the result of True + True in Python?", [
    "2",
    "True",
    "Error",
    "1",
  ]),
];
final List<Quiz> pythonQuizM4 = [
  // --- Topic 28: If conditional statement (251-275) ---
  Quiz(251, "Which keyword is used to start a conditional statement?", [
    "if",
    "when",
    "case",
    "condition",
  ]),
  Quiz(252, "How do you define a block of code in an 'if' statement?", [
    "Indentation",
    "Curly braces {}",
    "Parentheses ()",
    "Semicolons ;",
  ]),
  Quiz(253, "Which keyword is used for 'else if' in Python?", [
    "elif",
    "else if",
    "elseif",
    "elsif",
  ]),
  Quiz(254, "What is the correct syntax for an 'if' statement?", [
    "if x > 5:",
    "if (x > 5)",
    "if x > 5 then",
    "if x > 5 {}",
  ]),
  Quiz(255, "What is a 'Short Hand If' (Ternary Operator) example?", [
    "x = 1 if y > 0 else 0",
    "if y > 0: x = 1",
    "x = y > 0 ? 1 : 0",
    "x = if(y > 0, 1, 0)",
  ]),
  Quiz(256, "Can you have an 'if' statement without an 'else'?", [
    "Yes",
    "No",
    "Only if it is in a loop",
    "Only in Python 2",
  ]),
  Quiz(257, "What is the result of: if 0: print('A') else: print('B')?", [
    "B (0 is False)",
    "A",
    "Error",
    "None",
  ]),
  Quiz(258, "Which symbol is required at the end of an 'if' or 'elif' line?", [
    ": (Colon)",
    "; (Semicolon)",
    "{",
    "None",
  ]),
  Quiz(259, "What is 'Nested If'?", [
    "An if statement inside another if statement",
    "An if statement with multiple elifs",
    "An if statement in a comment",
    "An if statement that never runs",
  ]),
  Quiz(
    260,
    "Which operator is commonly used to combine two conditions in an 'if'?",
    ["and", "&&", "&", "++"],
  ),

  // --- Topic 29: Match conditional statement (276-300) ---
  Quiz(276, "Which Python version introduced the 'match' statement?", [
    "3.10",
    "3.8",
    "3.6",
    "2.7",
  ]),
  Quiz(
    277,
    "The 'match' statement is Python's version of ______ in other languages.",
    ["Switch-Case", "For-Loop", "Try-Except", "If-Else"],
  ),
  Quiz(278, "Which keyword follows 'match' to define a specific case?", [
    "case",
    "when",
    "if",
    "switch",
  ]),
  Quiz(
    279,
    "Which symbol is used as a 'wildcard' or default case in 'match'?",
    ["_ (Underscore)", "*", "default", "else"],
  ),
  Quiz(280, "Can a single 'case' handle multiple patterns?", [
    "Yes, using the | (pipe) operator",
    "No",
    "Only using commas",
    "Only using 'and'",
  ]),
  Quiz(281, "What is a 'Guard' in a match case?", [
    "An 'if' condition added to a case",
    "A comment",
    "A special variable",
    "A security feature",
  ]),
  Quiz(282, "Match statements are better than multiple if-elifs for ______.", [
    "Structural Pattern Matching",
    "Simple math",
    "Printing text",
    "Importing modules",
  ]),
  Quiz(283, "Result of: match 1: case 1: print('A')?", [
    "A",
    "1",
    "Error",
    "None",
  ]),

  // --- Topic 30: While loop statement (301-325) ---
  Quiz(301, "A 'while' loop runs as long as the condition is ______.", [
    "True",
    "False",
    "None",
    "Numeric",
  ]),
  Quiz(302, "Which keyword is used to stop a loop immediately?", [
    "break",
    "stop",
    "exit",
    "end",
  ]),
  Quiz(
    303,
    "Which keyword is used to skip the current iteration and move to the next?",
    ["continue", "skip", "next", "pass"],
  ),
  Quiz(304, "What happens if a 'while' condition is always True?", [
    "An infinite loop occurs",
    "The program crashes immediately",
    "Python stops it automatically",
    "It runs only once",
  ]),
  Quiz(305, "Can a 'while' loop have an 'else' block?", [
    "Yes, it runs when the condition becomes False",
    "No",
    "Only if it contains a break",
    "Only in Python 2",
  ]),
  Quiz(306, "How do you increment a counter 'i' in a while loop?", [
    "i += 1",
    "i++",
    "++i",
    "i.next()",
  ]),
  Quiz(307, "What is the result of: i=1; while i<3: print(i); i+=1?", [
    "1 and 2",
    "1, 2, 3",
    "3",
    "Infinite loop",
  ]),

  // --- Topic 31: For loop statement (326-350) ---
  Quiz(
    326,
    "A 'for' loop in Python is primarily used to iterate over a ______.",
    [
      "Sequence (list, tuple, string, range)",
      "Math equation",
      "Variable name",
      "File size",
    ],
  ),
  Quiz(327, "Which function generates a sequence of numbers for a for loop?", [
    "range()",
    "list()",
    "sequence()",
    "generate()",
  ]),
  Quiz(328, "What does range(5) produce?", [
    "0 to 4",
    "1 to 5",
    "0 to 5",
    "1 to 4",
  ]),
  Quiz(329, "What does range(2, 10, 2) produce?", [
    "2, 4, 6, 8",
    "2, 10, 2",
    "2, 3...10",
    "10, 8, 6, 4, 2",
  ]),
  Quiz(330, "How do you loop through a dictionary's keys and values?", [
    "for k, v in dict.items():",
    "for k, v in dict:",
    "for x in dict.all():",
    "loop dict",
  ]),
  Quiz(331, "What is the 'pass' statement used for?", [
    "A placeholder for empty code (does nothing)",
    "To stop the loop",
    "To skip an error",
    "To print the next value",
  ]),
  Quiz(332, "Result of: for x in 'Hi': print(x)?", [
    "H and i",
    "Hi",
    "Error",
    "H i",
  ]),
  Quiz(333, "Can you nest a for loop inside another for loop?", [
    "Yes",
    "No",
    "Only twice",
    "Only with lists",
  ]),

  // --- Topic 32: try: except: statement (351-375) ---
  Quiz(351, "Which block is used to test a block of code for errors?", [
    "try",
    "except",
    "error",
    "check",
  ]),
  Quiz(352, "Which block handles the error if one occurs?", [
    "except",
    "try",
    "catch",
    "finally",
  ]),
  Quiz(
    353,
    "Which block runs regardless of whether an error occurred or not?",
    ["finally", "else", "end", "always"],
  ),
  Quiz(
    354,
    "Which block runs ONLY if no errors were raised in the try block?",
    ["else", "finally", "except", "then"],
  ),
  Quiz(355, "How do you catch a specific error like division by zero?", [
    "except ZeroDivisionError:",
    "except Error:",
    "catch 0:",
    "if error == 0:",
  ]),
  Quiz(356, "Can you have multiple 'except' blocks for one 'try'?", [
    "Yes",
    "No",
    "Only in Python 3.10+",
    "Only for math errors",
  ]),
  Quiz(357, "What is the equivalent of Java's 'catch' in Python?", [
    "except",
    "error",
    "handle",
    "receive",
  ]),
  Quiz(358, "What happens if an error occurs but there is no 'except' block?", [
    "The program crashes (unhandled exception)",
    "It ignores the error",
    "It prints 'None'",
    "It restarts",
  ]),

  // --- Topic 33: Raise an exception (376-400) ---
  Quiz(376, "Which keyword is used to manually trigger an error?", [
    "raise",
    "throw",
    "error",
    "stop",
  ]),
  Quiz(377, "Why would you 'raise' an exception?", [
    "To stop the program when a custom condition is met",
    "To fix a bug",
    "To make the code faster",
    "To print a message",
  ]),
  Quiz(378, "Correct syntax to raise a NameError?", [
    "raise NameError('msg')",
    "throw NameError",
    "error.NameError",
    "raise(NameError)",
  ]),
  Quiz(379, "Can you raise a custom message with an exception?", [
    "Yes",
    "No",
    "Only for strings",
    "Only in the terminal",
  ]),
  Quiz(380, "What is the result of: raise Exception('Oops')?", [
    "The program stops and prints 'Exception: Oops'",
    "It prints 'Oops' and continues",
    "Nothing",
    "It creates a log file",
  ]),
  Quiz(381, "Which of these is a built-in exception?", [
    "ValueError",
    "MistakeError",
    "CodeError",
    "LoopError",
  ]),
  Quiz(382, "Can you re-raise the same exception inside an except block?", [
    "Yes, using 'raise' alone",
    "No",
    "Only using 'retry'",
    "Only in a while loop",
  ]),

  // --- Mixed & Advanced Flow Control (383-400) ---
  Quiz(383, "What is 'LBYL' (Look Before You Leap)?", [
    "Checking conditions before running code (using 'if')",
    "Using try-except for everything",
    "Running code without checking",
    "A type of loop",
  ]),
  Quiz(384, "What is 'EAFP' (Easier to Ask for Forgiveness than Permission)?", [
    "Using 'try-except' to handle potential errors",
    "Using 'if' to check everything",
    "Writing code without errors",
    "A Python keyword",
  ]),
  Quiz(385, "Which style (LBYL or EAFP) is more 'Pythonic'?", [
    "EAFP",
    "LBYL",
    "Both are equal",
    "Neither",
  ]),
  Quiz(386, "What is the output of: range(3)?", [
    "0, 1, 2",
    "1, 2, 3",
    "0, 1, 2, 3",
    "3, 2, 1",
  ]),
  Quiz(387, "What does 'break' do in a nested loop?", [
    "Breaks only the innermost loop",
    "Breaks all loops",
    "Restarts the program",
    "Skips to 'else'",
  ]),
  Quiz(
    388,
    "Does a 'finally' block run if the program 'returns' in the try block?",
    ["Yes", "No", "Only if there is no error", "Only in Python 2"],
  ),
  Quiz(389, "What error is raised by 10 / 0?", [
    "ZeroDivisionError",
    "MathError",
    "ValueError",
    "CalculationError",
  ]),
  Quiz(390, "What error is raised by int('abc')?", [
    "ValueError",
    "TypeError",
    "NameError",
    "StringError",
  ]),
  Quiz(391, "What error is raised by '5' + 5?", [
    "TypeError",
    "ValueError",
    "MathError",
    "ConcatError",
  ]),
  Quiz(392, "What error is raised when a variable is not defined?", [
    "NameError",
    "VariableError",
    "DefineError",
    "NullError",
  ]),
  Quiz(393, "In a 'match' statement, what is 'case _'?", [
    "The default/catch-all case",
    "An error case",
    "The first case",
    "A hidden case",
  ]),
  Quiz(394, "Can you use 'else' with a 'for' loop?", [
    "Yes, it runs if the loop finishes without a 'break'",
    "No",
    "Only with 'if'",
    "Only for errors",
  ]),
  Quiz(395, "How do you get the index and value in a for loop?", [
    "for i, v in enumerate(list):",
    "for i, v in list.items():",
    "for i, v in list:",
    "loop(index, value)",
  ]),
  Quiz(396, "What is 'iterable'?", [
    "Any object you can loop over",
    "A type of function",
    "A math operator",
    "A variable that changes",
  ]),
  Quiz(397, "Which keyword is a null operation (placeholder)?", [
    "pass",
    "None",
    "null",
    "break",
  ]),
  Quiz(398, "Which exception is raised when 'Ctrl+C' is pressed?", [
    "KeyboardInterrupt",
    "SystemExit",
    "StopIteration",
    "BreakError",
  ]),
  Quiz(399, "What is an 'Assertion' in Python?", [
    "A debugging aid that tests a condition",
    "A type of comment",
    "A way to name variables",
    "A math operator",
  ]),
  Quiz(400, "Which keyword is used for assertions?", [
    "assert",
    "check",
    "verify",
    "test",
  ]),
];
final List<Quiz> pythonQuizM5 = [
  // --- Topic 34: Functions (401-425) ---
  Quiz(401, "Which keyword is used to create a function in Python?", [
    "def",
    "function",
    "func",
    "define",
  ]),
  Quiz(402, "How do you call a function named 'my_func'?", [
    "my_func()",
    "call my_func()",
    "run my_func",
    "my_func.start()",
  ]),
  Quiz(403, "What is a 'parameter' in a function?", [
    "A variable listed inside the parentheses in the function definition",
    "The value sent to the function",
    "The output of the function",
    "A type of loop",
  ]),
  Quiz(404, "What is an 'argument' in a function?", [
    "The value that is sent to the function when it is called",
    "The name of the function",
    "The indentation level",
    "An error message",
  ]),
  Quiz(405, "What follows the parentheses in a function definition?", [
    ": (Colon)",
    "; (Semicolon)",
    "{ (Brace)",
    "Nothing",
  ]),
  Quiz(406, "Can a function exist without any parameters?", [
    "Yes",
    "No",
    "Only if it returns nothing",
    "Only in Python 2",
  ]),
  Quiz(407, "What is 'Docstring' in a function?", [
    "A string literal used to document a function",
    "A type of variable",
    "A way to skip code",
    "An error log",
  ]),
  Quiz(408, "Where should a Docstring be placed?", [
    "Immediately after the function header",
    "Before the 'def' keyword",
    "At the very end of the file",
    "Inside the return statement",
  ]),

  // --- Topic 35: Function Arguments (426-455) ---
  Quiz(426, "What are 'Positional Arguments'?", [
    "Arguments that must be sent in the correct order",
    "Arguments sent by name",
    "Default values",
    "Optional arguments",
  ]),
  Quiz(427, "What are 'Keyword Arguments'?", [
    "Arguments sent with the syntax 'key = value'",
    "Arguments that are secret",
    "Arguments used only for math",
    "Positional values",
  ]),
  Quiz(428, "How do you define a 'Default Parameter Value'?", [
    "def my_func(country = 'Norway'):",
    "def my_func(country):",
    "country := 'Norway'",
    "set default 'Norway'",
  ]),
  Quiz(
    429,
    "What happens if you call a function with a default parameter without passing an argument?",
    [
      "It uses the default value",
      "It causes an error",
      "It returns None",
      "It skips the function",
    ],
  ),
  Quiz(
    430,
    "Which syntax allows a function to receive a 'Tuple' of arguments? (Arbitrary Arguments)",
    ["*args", "**kwargs", "args[]", "all_args"],
  ),
  Quiz(
    431,
    "Which syntax allows a function to receive a 'Dictionary' of arguments?",
    ["**kwargs", "*args", "dict_args", "params"],
  ),
  Quiz(432, "In '*args', what does the '*' actually do?", [
    "It packs multiple arguments into a tuple",
    "It multiplies the values",
    "It points to a memory address",
    "It creates a list",
  ]),
  Quiz(433, "Can you mix positional and keyword arguments in a call?", [
    "Yes, but positional must come first",
    "Yes, in any order",
    "No",
    "Only for built-in functions",
  ]),

  // --- Topic 36: Returning Values (456-485) ---
  Quiz(456, "Which keyword is used to send a result back to the caller?", [
    "return",
    "output",
    "send",
    "result",
  ]),
  Quiz(
    457,
    "What happens to the code in a function after the 'return' statement is executed?",
    [
      "It is ignored (the function exits)",
      "It continues to run",
      "It waits for 5 seconds",
      "It causes an error",
    ],
  ),
  Quiz(458, "What does a function return if there is no 'return' statement?", [
    "None",
    "0",
    "False",
    "Empty String",
  ]),
  Quiz(459, "Can a Python function return multiple values at once?", [
    "Yes (usually as a tuple)",
    "No",
    "Only if they are strings",
    "Only in Python 3.12+",
  ]),
  Quiz(460, "How do you capture multiple returned values: 'return 1, 2'?", [
    "a, b = func()",
    "x = func()",
    "Both A and B work",
    "You can't",
  ]),
  Quiz(461, "Is 'return' mandatory in every function?", [
    "No",
    "Yes",
    "Only in math functions",
    "Only in 'def'",
  ]),
  Quiz(462, "What is the output of a function that only contains 'pass'?", [
    "None",
    "Error",
    "Undefined",
    "0",
  ]),

  // --- Topic 37: User Input (486-505) ---
  Quiz(486, "Which function is used to get information from the keyboard?", [
    "input()",
    "get()",
    "scan()",
    "read()",
  ]),
  Quiz(487, "What is the default data type of the value returned by input()?", [
    "String",
    "Integer",
    "Float",
    "Boolean",
  ]),
  Quiz(488, "How do you get an integer input from a user?", [
    "int(input())",
    "input(int)",
    "get_int()",
    "input().to_int()",
  ]),
  Quiz(
    489,
    "What happens if the user enters 'abc' when you run int(input())?",
    ["ValueError", "TypeError", "It becomes 0", "It ignores the letters"],
  ),
  Quiz(490, "Can you provide a prompt message inside input()?", [
    "Yes, like input('Enter Name: ')",
    "No",
    "Only in a separate print()",
    "Only for numbers",
  ]),

  // --- Topic 38: Python Lambda (506-530) ---
  Quiz(506, "What is a Lambda function?", [
    "A small anonymous function",
    "A type of loop",
    "A math library",
    "A variable type",
  ]),
  Quiz(507, "Which keyword is used to define an anonymous function?", [
    "lambda",
    "anon",
    "L",
    "def_anon",
  ]),
  Quiz(508, "How many expressions can a lambda function contain?", [
    "Only one",
    "Unlimited",
    "Zero",
    "Three",
  ]),
  Quiz(509, "How many arguments can a lambda function take?", [
    "Unlimited",
    "Only one",
    "Only two",
    "None",
  ]),
  Quiz(510, "Which of these is a valid lambda syntax?", [
    "lambda a, b : a * b",
    "lambda(a, b) {a * b}",
    "lambda: a * b",
    "def lambda: a*b",
  ]),
  Quiz(511, "Why are lambda functions used?", [
    "For short-term tasks or as arguments to other functions",
    "To make code faster",
    "To replace all 'def' functions",
    "To manage memory",
  ]),
  Quiz(512, "What is the result of: (lambda x: x + 5)(10)?", [
    "15",
    "10",
    "5",
    "Error",
  ]),
  Quiz(513, "Which built-in functions are commonly used with lambda?", [
    "filter(), map(), reduce()",
    "print(), input()",
    "range(), len()",
    "type(), id()",
  ]),

  // --- Topic 39: Scope (531-550) ---
  Quiz(531, "What is 'Scope'?", [
    "The region where a variable is recognized",
    "The speed of a function",
    "The file size",
    "A type of library",
  ]),
  Quiz(532, "What is a 'Local Scope'?", [
    "A variable created inside a function",
    "A variable created in the main body",
    "A built-in keyword",
    "A variable in a different file",
  ]),
  Quiz(533, "What is 'Global Scope'?", [
    "A variable created in the main body of the script",
    "A variable inside a loop",
    "A Python keyword",
    "A variable that never changes",
  ]),
  Quiz(534, "Can a local variable be accessed outside its function?", [
    "No",
    "Yes",
    "Only if it is an integer",
    "Only if the function is called",
  ]),
  Quiz(
    535,
    "Which keyword is used to modify a global variable inside a function?",
    ["global", "extern", "share", "public"],
  ),
  Quiz(536, "What is 'Nonlocal' scope used for?", [
    "To modify a variable in an outer (enclosing) function",
    "To make a variable global",
    "To delete a variable",
    "To speed up loops",
  ]),
  Quiz(537, "What is the 'LEGB' rule order?", [
    "Local, Enclosing, Global, Built-in",
    "Local, Easy, Global, Basic",
    "List, Every, Great, Book",
    "Logic, Entry, Global, Base",
  ]),
  Quiz(
    538,
    "If a local and global variable have the same name, which one does the function use first?",
    ["Local", "Global", "It causes an error", "Both"],
  ),
  Quiz(539, "What is the result of: x = 10; def f(): x = 5; f(); print(x)?", [
    "10",
    "5",
    "Error",
    "None",
  ]),
  Quiz(
    540,
    "What is the result of: x = 10; def f(): global x; x = 5; f(); print(x)?",
    ["5", "10", "Error", "15"],
  ),

  // --- Mixed Module 5 Review (541-550) ---
  Quiz(541, "What is 'Recursion'?", [
    "A function calling itself",
    "A loop that never ends",
    "A type of error",
    "A way to delete variables",
  ]),
  Quiz(542, "What is a 'Callback'?", [
    "Passing a function as an argument to another function",
    "Calling a function twice",
    "Returning an error",
    "A type of string",
  ]),
  Quiz(543, "What is the result of: print(len([1,2,3]))?", [
    "3",
    "2",
    "4",
    "Error",
  ]),
  Quiz(544, "What is the purpose of 'args' and 'kwargs'?", [
    "To make functions flexible with any number of inputs",
    "To make code secret",
    "To improve math precision",
    "To avoid using 'def'",
  ]),
  Quiz(545, "Can you nest functions inside other functions?", [
    "Yes",
    "No",
    "Only in Python 2",
    "Only if they are lambda",
  ]),
  Quiz(546, "What is the output of: def f(a, b=2): return a+b; print(f(1))?", [
    "3",
    "1",
    "2",
    "Error",
  ]),
  Quiz(
    547,
    "Which function is used to convert a string to uppercase in a map() function?",
    ["str.upper", "upper()", "toUpper", "UPPER"],
  ),
  Quiz(548, "What does the filter() function do?", [
    "Creates a list of elements for which a function returns True",
    "Deletes a list",
    "Sorts a list",
    "Changes the data type",
  ]),
  Quiz(549, "Is a function an object in Python?", [
    "Yes",
    "No",
    "Only if it returns a value",
    "Only lambda functions",
  ]),
  Quiz(550, "What is the 'Built-in' scope?", [
    "Names defined in Python's standard library (like len, print)",
    "Names you create",
    "The terminal name",
    "The folder name",
  ]),
];
final List<Quiz> pythonQuizM6 = [
  // --- Topic 40: Module in Python (551-565) ---
  Quiz(551, "What is a module in Python?", [
    "A file containing Python code",
    "A type of variable",
    "A library of images",
    "A hardware component",
  ]),
  Quiz(552, "Which keyword is used to import a module?", [
    "import",
    "using",
    "include",
    "require",
  ]),
  Quiz(553, "Which of these is a built-in Python module?", [
    "platform",
    "html5",
    "css",
    "django",
  ]),
  Quiz(
    554,
    "How do you access a function 'greet' inside a module 'mymodule'?",
    ["mymodule.greet()", "greet()", "mymodule->greet()", "mymodule:greet()"],
  ),
  Quiz(555, "Which function lists all the defined names in a module?", [
    "dir()",
    "list()",
    "help()",
    "show()",
  ]),

  // --- Topic 41: Variables in module (566-575) ---
  Quiz(566, "Can a module contain variables (dictionaries, lists, objects)?", [
    "Yes",
    "No",
    "Only strings",
    "Only integers",
  ]),
  Quiz(570, "Where should 'import' statements usually be placed?", [
    "At the top of the file",
    "Inside the main function",
    "At the bottom",
    "In a separate folder",
  ]),

  // --- Topic 42: Renaming a module (576-585) ---
  Quiz(576, "Which keyword is used to create an alias for a module?", [
    "as",
    "alias",
    "name",
    "rename",
  ]),
  Quiz(577, "Correct syntax to rename 'math' as 'm'?", [
    "import math as m",
    "rename math to m",
    "import m from math",
    "alias math m",
  ]),

  // --- Topic 43: from import module (586-600) ---
  Quiz(
    586,
    "How do you import ONLY the 'pi' constant from the 'math' module?",
    [
      "from math import pi",
      "import pi from math",
      "import math.pi",
      "from math get pi",
    ],
  ),
  Quiz(
    587,
    "When using 'from...import', do you need the module name prefix (e.g., math.pi)?",
    ["No", "Yes", "Only for functions", "Only for variables"],
  ),
  Quiz(588, "What does 'from math import *' do?", [
    "Imports all names from the math module",
    "Imports only integers",
    "Deletes the math module",
    "Imports nothing",
  ]),

  // --- Topic 44: Class and Object (601-620) ---
  Quiz(601, "What is a Class in Python?", [
    "A blueprint for creating objects",
    "A type of loop",
    "A function",
    "A list",
  ]),
  Quiz(602, "What is an Object?", [
    "An instance of a class",
    "The name of the file",
    "A keyword",
    "A mathematical operator",
  ]),
  Quiz(603, "Which keyword is used to create a class?", [
    "class",
    "struct",
    "new",
    "blueprint",
  ]),
  Quiz(604, "How do you create an object 'p1' from class 'Person'?", [
    "p1 = Person()",
    "Person p1 = new Person()",
    "p1 := Person",
    "create p1 from Person",
  ]),

  // --- Topic 45: Methods (621-635) ---
  Quiz(621, "What is a method?", [
    "A function that belongs to an object/class",
    "A variable in a class",
    "A way to install Python",
    "A type of comment",
  ]),
  Quiz(
    622,
    "What is the first parameter of any method in a class by convention?",
    ["self", "this", "cls", "object"],
  ),
  Quiz(623, "Can 'self' be named something else (like 'myself')?", [
    "Yes, but it's not recommended",
    "No",
    "Only in Python 2",
    "Only for strings",
  ]),

  // --- Topic 46: The __init__() method (636-650) ---
  Quiz(636, "What is the purpose of the __init__() method?", [
    "To initialize the object's attributes",
    "To delete the object",
    "To print the class name",
    "To start the program",
  ]),
  Quiz(637, "When is __init__() executed?", [
    "Automatically when a new object is created",
    "When the function is called",
    "At the end of the script",
    "Never",
  ]),
  Quiz(638, "Which of these is the correct way to write the constructor?", [
    "def __init__(self):",
    "def init(self):",
    "void init()",
    "construct(self):",
  ]),

  // --- Topic 47: The __str__() method (651-660) ---
  Quiz(651, "What does the __str__() method do?", [
    "Controls what is returned when the object is converted to a string",
    "Deletes strings",
    "Adds two strings",
    "Checks if a string is empty",
  ]),
  Quiz(
    652,
    "What happens if __str__() is NOT defined and you print the object?",
    [
      "It prints the object's memory address/type",
      "It prints 'None'",
      "It causes an error",
      "It prints empty",
    ],
  ),

  // --- Topic 48: Inheritance (661-685) ---
  Quiz(661, "What is Inheritance?", [
    "When a class derives properties from another class",
    "Copying code manually",
    "A way to hide data",
    "A type of loop",
  ]),
  Quiz(662, "The class being inherited from is called the ______.", [
    "Parent class (or Base class)",
    "Child class",
    "Module",
    "Method",
  ]),
  Quiz(663, "The class that inherits is called the ______.", [
    "Child class (or Derived class)",
    "Parent class",
    "Blueprint",
    "Global",
  ]),
  Quiz(
    664,
    "How do you create a class 'Student' that inherits from 'Person'?",
    [
      "class Student(Person):",
      "class Student inherits Person:",
      "class Student < Person",
      "class Student : Person",
    ],
  ),
  Quiz(
    665,
    "Which function allows the child class to call a method from the parent?",
    ["super()", "parent()", "base()", "this()"],
  ),

  // --- Topic 49: Polymorphism (686-695) ---
  Quiz(686, "What does Polymorphism mean?", [
    "Many forms",
    "No forms",
    "One form",
    "Hidden forms",
  ]),
  Quiz(687, "What is the goal of Polymorphism?", [
    "To allow different classes to be treated as the same type",
    "To make code faster",
    "To secure variables",
    "To reduce memory",
  ]),

  // --- Topic 50: Operator Polymorphism (696-705) ---
  Quiz(696, "How is the '+' operator polymorphic in Python?", [
    "It adds numbers AND concatenates strings",
    "It only adds numbers",
    "It works as a loop",
    "It is not polymorphic",
  ]),
  Quiz(697, "How is '*' polymorphic?", [
    "It multiplies numbers AND repeats strings",
    "It only works for math",
    "It creates new modules",
    "It is a comment",
  ]),

  // --- Topic 51: Function Polymorphism (706-715) ---
  Quiz(706, "How is len() polymorphic?", [
    "It can work with strings, lists, tuples, or dicts",
    "It only works with lists",
    "It changes based on the OS",
    "It is a math operator",
  ]),

  // --- Topic 52: Method Polymorphism (716-730) ---
  Quiz(716, "What is Method Overriding?", [
    "A child class providing a specific implementation of a parent's method",
    "Renaming a method",
    "Deleting a method",
    "Calling a method twice",
  ]),
  Quiz(
    717,
    "If a parent and child both have a 'move()' method, which one runs for the child object?",
    ["The child's method", "The parent's method", "Both", "None"],
  ),

  // --- Mixed & Advanced OOP (731-750) ---
  Quiz(731, "What is Encapsulation?", [
    "Restricting access to methods and variables to prevent data modification",
    "Inheriting code",
    "Looping over objects",
    "Printing objects",
  ]),
  Quiz(
    732,
    "How do you indicate a 'private' attribute in Python (by convention)?",
    [
      "Using an underscore prefix (e.g., _name or __name)",
      "Using the keyword 'private'",
      "Using braces",
      "Capitalizing the name",
    ],
  ),
  Quiz(733, "Is multiple inheritance supported in Python?", [
    "Yes",
    "No",
    "Only for strings",
    "Only in Python 2",
  ]),
  Quiz(734, "What is an 'Abstract' class?", [
    "A class that cannot be instantiated and acts as a template",
    "A class with no name",
    "A module",
    "A simple list",
  ]),
  Quiz(735, "Which module is used to create abstract classes in Python?", [
    "abc",
    "math",
    "sys",
    "os",
  ]),
  Quiz(740, "What is the result of isinstance(p1, Person)?", [
    "True if p1 is an instance of Person",
    "False",
    "Error",
    "The name of p1",
  ]),
  Quiz(750, "Object-oriented programming focuses on ______.", [
    "Objects and Data",
    "Steps and Functions",
    "Loops and Ifs",
    "Memory and CPU",
  ]),
];
final List<Quiz> pythonQuizM7 = [
  // --- Topic 53: File Input/Output (751-760) ---
  Quiz(751, "Which built-in function is used to open a file in Python?", [
    "open()",
    "file()",
    "access()",
    "load()",
  ]),
  Quiz(
    752,
    "How many parameters does the open() function typically take at minimum?",
    ["Two (filename and mode)", "One", "Three", "Four"],
  ),
  Quiz(753, "Which mode is the default when opening a file?", [
    "'r' (Read)",
    "'w' (Write)",
    "'a' (Append)",
    "'x' (Create)",
  ]),
  Quiz(
    754,
    "Which mode is used to open a file for 'binary' reading (like images)?",
    ["'rb'", "'rt'", "'bw'", "'r'"],
  ),
  Quiz(755, "What is the importance of closing a file after use?", [
    "To free up system resources",
    "To make the file larger",
    "To encrypt the file",
    "To delete the file",
  ]),

  // --- Topic 54: Read a file (761-775) ---
  Quiz(761, "Which method reads the entire content of a file?", [
    "read()",
    "readline()",
    "readlines()",
    "get()",
  ]),
  Quiz(762, "How do you read only the first 5 characters of a file?", [
    "f.read(5)",
    "f.read[5]",
    "f.readline(5)",
    "f.get(5)",
  ]),
  Quiz(763, "Which method returns one line from the file as a string?", [
    "readline()",
    "readlines()",
    "read()",
    "next()",
  ]),
  Quiz(
    764,
    "Which method returns a list containing each line in the file as an item?",
    ["readlines()", "readline()", "readall()", "listfile()"],
  ),
  Quiz(765, "What is the best way to loop through a file line by line?", [
    "for x in f:",
    "while f.has_lines():",
    "f.foreach()",
    "loop(f)",
  ]),
  Quiz(766, "What does f.close() do?", [
    "Closes the open file",
    "Deletes the file",
    "Saves the file as a PDF",
    "Renames the file",
  ]),
  Quiz(
    767,
    "Which statement automatically closes a file even if an error occurs?",
    ["with open(...) as f:", "try...finally", "both A and B", "auto_close()"],
  ),

  // --- Topic 55: Create or Write to a file (776-790) ---
  Quiz(776, "Which mode will overwrite any existing content in a file?", [
    "'w' (Write)",
    "'a' (Append)",
    "'r' (Read)",
    "'x' (Create)",
  ]),
  Quiz(777, "Which mode adds content to the end of an existing file?", [
    "'a' (Append)",
    "'w' (Write)",
    "'r+'",
    "'x'",
  ]),
  Quiz(778, "Which mode will return an error if the file already exists?", [
    "'x' (Create)",
    "'w'",
    "'a'",
    "'r'",
  ]),
  Quiz(779, "Which method is used to write a string to a file?", [
    "write()",
    "print()",
    "save()",
    "append()",
  ]),
  Quiz(780, "How do you add a new line while writing to a file?", [
    "Add '\\n' to the string",
    "Use the newline() method",
    "Press Enter in code",
    "It happens automatically",
  ]),
  Quiz(781, "Which mode allows both reading and writing?", [
    "'r+'",
    "'w'",
    "'a'",
    "'x'",
  ]),

  // --- Topic 56: Delete a file or folder (791-800) ---
  Quiz(791, "Which module must be imported to delete files in Python?", [
    "os",
    "sys",
    "file",
    "shutil",
  ]),
  Quiz(792, "Which function is used to delete a file?", [
    "os.remove()",
    "os.delete()",
    "os.clear()",
    "os.unlink()",
  ]),
  Quiz(793, "How do you check if a file exists before deleting it?", [
    "os.path.exists()",
    "file.check()",
    "os.find()",
    "path.verify()",
  ]),
  Quiz(794, "Which function is used to remove an empty folder?", [
    "os.rmdir()",
    "os.remove()",
    "os.delete_dir()",
    "os.clear()",
  ]),
  Quiz(
    795,
    "Which module/method is used to delete a folder and all its contents?",
    ["shutil.rmtree()", "os.rmdir()", "os.delete_all()", "sys.exit()"],
  ),
  Quiz(
    796,
    "What happens if you try to os.remove() a file that doesn't exist?",
    [
      "FileNotFoundError",
      "The program ignores it",
      "It creates the file",
      "TypeError",
    ],
  ),
  Quiz(797, "Can you delete a file while it is still open in the script?", [
    "No (it may cause a PermissionError/Conflict)",
    "Yes",
    "Only on Linux",
    "Only on Windows",
  ]),
  Quiz(798, "What does 'rt' mean in open()?", [
    "Read Text (Default)",
    "Read Table",
    "Run Time",
    "Read Total",
  ]),
  Quiz(799, "What is the purpose of f.seek(0)?", [
    "Move the file pointer back to the beginning",
    "Find a zero in the file",
    "Delete the file",
    "Search for index 0",
  ]),
  Quiz(800, "What is the 'buffer' in file handling?", [
    "Temporary memory used during data transfer",
    "The file name",
    "The delete button",
    "A type of error",
  ]),
];
final List<Quiz> pythonQuizM8 = [
  // --- Topic 57: What is an API? (801-815) ---
  Quiz(801, "What does API stand for?", [
    "Application Programming Interface",
    "Advanced Program Integration",
    "Automated Protocol Input",
    "Application Process Indicator",
  ]),
  Quiz(802, "What is the primary purpose of an API?", [
    "To allow two software applications to communicate with each other",
    "To design a website layout",
    "To store data in a hard drive",
    "To compile Python code",
  ]),
  Quiz(803, "In the context of APIs, what is a 'Request'?", [
    "The message sent to a server to ask for data",
    "The data received from the server",
    "A type of error",
    "A programming variable",
  ]),
  Quiz(
    804,
    "Which HTTP method is most commonly used to 'fetch' or 'get' data from an API?",
    ["GET", "POST", "PUSH", "DELETE"],
  ),
  Quiz(805, "What is an 'Endpoint'?", [
    "The URL address used to access a specific API service",
    "The end of a Python script",
    "A type of loop",
    "A closing bracket",
  ]),
  Quiz(806, "What is the 'Server' in an API relationship?", [
    "The computer that provides the data/service",
    "The computer asking for data",
    "The internet cable",
    "The Python interpreter",
  ]),
  Quiz(807, "What is the 'Client' in an API relationship?", [
    "The application/script that is making the request",
    "The database",
    "The website host",
    "The router",
  ]),
  Quiz(808, "What is a 'REST API'?", [
    "An architectural style for providing standards between computer systems",
    "An API that only works when the computer is resting",
    "A type of Python loop",
    "A math library",
  ]),
  Quiz(
    809,
    "Which part of the URL 'https://api.example.com/v1/users' is the endpoint?",
    ["/users", "https://", "com", ".api"],
  ),
  Quiz(810, "What is a 'Status Code'?", [
    "A number sent by the server to indicate the result of the request",
    "A type of secret password",
    "The speed of the internet",
    "A Python variable",
  ]),

  // --- Topic 58: Installing and importing requests dependency (811-825) ---
  Quiz(
    811,
    "Which external library is the most popular for making HTTP requests in Python?",
    ["requests", "http-lib", "urllib", "api-python"],
  ),
  Quiz(812, "How do you install the 'requests' library using terminal?", [
    "pip install requests",
    "npm install requests",
    "python get requests",
    "install requests",
  ]),
  Quiz(813, "How do you bring the requests library into your script?", [
    "import requests",
    "using requests",
    "include requests",
    "require requests",
  ]),
  Quiz(814, "What does a '200' Status Code mean in a response?", [
    "Success (The request was successful)",
    "Not Found",
    "Server Error",
    "Unauthorized",
  ]),
  Quiz(815, "What does a '404' Status Code mean?", [
    "Not Found (The resource doesn't exist)",
    "Success",
    "Bad Gateway",
    "Forbidden",
  ]),
  Quiz(816, "What does a '500' Status Code mean?", [
    "Internal Server Error",
    "Success",
    "Unauthorized",
    "Not Found",
  ]),
  Quiz(817, "Which status code means 'Unauthorized' (missing API Key)?", [
    "401",
    "200",
    "404",
    "500",
  ]),
  Quiz(
    818,
    "Which method is used to send a GET request using the requests library?",
    [
      "requests.get()",
      "requests.fetch()",
      "requests.post()",
      "requests.receive()",
    ],
  ),
  Quiz(
    819,
    "If 'r' is the response object, how do you get the raw text content?",
    ["r.text", "r.content()", "r.get_text", "r.string"],
  ),
  Quiz(820, "What does r.status_code return?", [
    "An integer (like 200 or 404)",
    "A string",
    "A boolean",
    "None",
  ]),
  Quiz(821, "How do you send headers with a request?", [
    "requests.get(url, headers={'key': 'value'})",
    "requests.get(url + headers)",
    "headers.send(url)",
    "import headers",
  ]),
  Quiz(
    822,
    "What is the purpose of the 'timeout' parameter in requests.get()?",
    [
      "To stop waiting for a response after a certain time",
      "To make the request faster",
      "To loop the request",
      "To delay the start",
    ],
  ),

  // --- Topic 60: Understanding JSON (826-850) ---
  Quiz(826, "What does JSON stand for?", [
    "JavaScript Object Notation",
    "Java Standard Output Network",
    "Joint Solved Object Name",
    "Just Some Ordinary Notes",
  ]),
  Quiz(827, "JSON is primarily used for ______.", [
    "Exchanging data between a server and a web application",
    "Writing math formulas",
    "Creating 3D graphics",
    "Compiling code",
  ]),
  Quiz(828, "JSON data looks very similar to which Python data type?", [
    "Dictionary",
    "List",
    "Tuple",
    "Set",
  ]),
  Quiz(
    829,
    "Which method converts a Response object's JSON content into a Python dictionary?",
    ["response.json()", "response.to_dict()", "json.load()", "response.text()"],
  ),
  Quiz(830, "Which Python module is built-in for parsing JSON strings?", [
    "json",
    "requests",
    "math",
    "os",
  ]),
  Quiz(831, "What is 'Serialization' in JSON?", [
    "Converting a Python object into a JSON string",
    "Reading a file",
    "Deleting an API",
    "Sorting a list",
  ]),
  Quiz(832, "Which function converts a Python dictionary into a JSON string?", [
    "json.dumps()",
    "json.loads()",
    "json.parse()",
    "dict.to_json()",
  ]),
  Quiz(
    833,
    "Which function converts a JSON string back into a Python dictionary?",
    ["json.loads()", "json.dumps()", "json.parse()", "dict.from_json()"],
  ),
  Quiz(834, "What is the difference between json.dump() and json.dumps()?", [
    "dump() writes to a file, dumps() returns a string",
    "They are the same",
    "dump() is faster",
    "dumps() is for lists",
  ]),
  Quiz(835, "What is the difference between json.load() and json.loads()?", [
    "load() reads from a file, loads() reads from a string",
    "They are the same",
    "load() is for integers",
    "loads() is for booleans",
  ]),
  Quiz(836, "In JSON, what must keys be wrapped in?", [
    "Double quotes \" \"",
    "Single quotes ' '",
    "Brackets [ ]",
    "Nothing",
  ]),
  Quiz(837, "Can a JSON object contain a list?", [
    "Yes (called an Array in JSON)",
    "No",
    "Only if it is a list of strings",
    "Only in Python",
  ]),
  Quiz(838, "What does 'indent' do in json.dumps(data, indent=4)?", [
    "Adds whitespace to make the JSON readable for humans",
    "Deletes data",
    "Encrypts the string",
    "Speeds up the code",
  ]),
  Quiz(839, "Which value in JSON is equivalent to Python's 'None'?", [
    "null",
    "none",
    "nil",
    "0",
  ]),
  Quiz(840, "Which value in JSON is equivalent to Python's 'True'?", [
    "true (lowercase)",
    "TRUE",
    "Yes",
    "1",
  ]),
  Quiz(841, "What is 'Deserialization'?", [
    "Converting a JSON string back into a Python object",
    "Deleting a variable",
    "Sending an API request",
    "Downloading a library",
  ]),
  Quiz(842, "What happens if you try to parse an invalid JSON string?", [
    "json.decoder.JSONDecodeError",
    "It returns None",
    "It becomes an empty dict",
    "It crashes the computer",
  ]),
  Quiz(
    843,
    "If a JSON is {'user': {'id': 1}}, how do you get the ID in Python?",
    ["data['user']['id']", "data['id']", "data[1]", "data.user.id"],
  ),
  Quiz(844, "What is an API Key?", [
    "A unique identifier used to authenticate a user",
    "A password for your PC",
    "A type of Python variable",
    "A way to unlock a file",
  ]),
  Quiz(845, "Why are APIs and JSON used together?", [
    "Because JSON is lightweight and easy for machines to parse",
    "Because they are both made by Python",
    "Because JSON is faster than internet",
    "They aren't",
  ]),
  Quiz(846, "What does 'Query Parameters' mean in a URL (e.g., ?q=python)?", [
    "Additional data sent to the API to filter results",
    "A type of error",
    "The end of the script",
    "A Python comment",
  ]),
  Quiz(847, "Which character starts the query string in a URL?", [
    "?",
    "&",
    "#",
    "/",
  ]),
  Quiz(848, "Which character separates multiple query parameters in a URL?", [
    "&",
    "?",
    "\$",
    "@",
  ]),
  Quiz(849, "Can a Python list be converted to a JSON array?", [
    "Yes",
    "No",
    "Only if it is small",
    "Only if it contains numbers",
  ]),
  Quiz(850, "APIs allow Python programs to become ______.", [
    "Dynamic and data-driven",
    "Static",
    "Slower",
    "Local only",
  ]),
];
final List<List<Quiz>> pythonQuizzes = [
  pythonQuizM1,
  pythonQuizM2,
  pythonQuizM3,
  pythonQuizM4,
  pythonQuizM5,
  pythonQuizM6,
  pythonQuizM7,
  pythonQuizM8,
];

// Quizzes for Basic
final List<Quiz> basicQuizM1 = [
  // --- Topic 1: The Cycle: Input, Process, and Output ---
  Quiz(
    1,
    "Which stage of the computing cycle involves entering data into the system via a keyboard or mouse?",
    ["Input", "Process", "Output", "Storage"],
  ),
  Quiz(2, "What happens during the 'Process' stage of the computing cycle?", [
    "The CPU calculates and follows instructions",
    "Data is displayed on the screen",
    "Data is saved to the hard drive",
    "The user types a command",
  ]),
  Quiz(3, "Which of the following is considered an 'Output' device?", [
    "Monitor",
    "Scanner",
    "Microphone",
    "Webcam",
  ]),
  Quiz(4, "What is the correct logical order of the computing cycle?", [
    "Input -> Process -> Output",
    "Output -> Input -> Process",
    "Process -> Output -> Input",
    "Input -> Output -> Process",
  ]),
  Quiz(
    5,
    "A printer turning digital data into a physical document is an example of:",
    ["Output", "Input", "Processing", "Binary Encoding"],
  ),
  Quiz(
    6,
    "Which part of the cycle is responsible for keeping information for later use?",
    ["Storage", "Input", "Process", "Output"],
  ),
  Quiz(
    7,
    "If you are playing a video game, moving the joystick is which part of the cycle?",
    ["Input", "Process", "Output", "Storage"],
  ),
  Quiz(
    8,
    "The computer calculating the physics of a jumping character in a game is:",
    ["Process", "Input", "Output", "Visualizing"],
  ),

  // --- Topic 2: The CPU: The Brain of the Machine ---
  Quiz(9, "What does CPU stand for?", [
    "Central Processing Unit",
    "Computer Personal Unit",
    "Central Power Unit",
    "Core Process Utility",
  ]),
  Quiz(
    10,
    "Which component is responsible for executing instructions from software?",
    ["CPU", "RAM", "SSD", "Motherboard"],
  ),
  Quiz(11, "Clock speed in a CPU is typically measured in:", [
    "Gigahertz (GHz)",
    "Gigabytes (GB)",
    "Watts",
    "Megabits",
  ]),
  Quiz(
    12,
    "What allows a CPU to handle multiple tasks simultaneously by acting like multiple 'mini-processors'?",
    ["Cores", "Transistors", "Voltage", "The Fan"],
  ),
  Quiz(13, "Where is the CPU physically located in a computer?", [
    "In a socket on the motherboard",
    "Inside the hard drive",
    "Attached to the power supply",
    "On the RAM stick",
  ]),
  Quiz(
    14,
    "The 'Fetch-Decode-Execute' cycle is the primary job of which part?",
    ["CPU", "GPU", "Monitor", "Keyboard"],
  ),
  Quiz(
    15,
    "Which material is primarily used to make CPU chips due to its semi-conductive properties?",
    ["Silicon", "Copper", "Aluminum", "Gold"],
  ),

  // --- Topic 3: RAM: The Digital Workspace ---
  Quiz(16, "What does RAM stand for?", [
    "Random Access Memory",
    "Read And Memorize",
    "Rapid Access Module",
    "Remote Allocation Memory",
  ]),
  Quiz(17, "Why is RAM considered 'volatile' memory?", [
    "It loses all data when the power is turned off",
    "It is very fast and expensive",
    "It can easily break if dropped",
    "It changes its size automatically",
  ]),
  Quiz(
    18,
    "Think of RAM as a desk. What happens if your 'desk' (RAM) is too small?",
    [
      "The computer slows down because it has to swap data with the slow storage",
      "The computer's screen will get blurry",
      "The computer will run out of electricity",
      "The internet will stop working",
    ],
  ),
  Quiz(19, "Which is faster: RAM or a Solid State Drive (SSD)?", [
    "RAM",
    "SSD",
    "They are exactly the same",
    "It depends on the color of the wires",
  ]),
  Quiz(20, "What is stored in RAM while you are using the computer?", [
    "The operating system and open apps",
    "All your photos and videos permanently",
    "The computer's BIOS and physical drivers",
    "The electric current from the wall",
  ]),
  Quiz(21, "Increasing RAM usually results in better:", [
    "Multitasking performance",
    "Internet download speed",
    "Screen resolution",
    "Battery life",
  ]),

  // --- Topic 4: Storage: Hard Drives vs. SSDs ---
  Quiz(22, "Which storage device has no moving parts and uses flash memory?", [
    "SSD (Solid State Drive)",
    "HDD (Hard Disk Drive)",
    "CD-ROM",
    "Floppy Disk",
  ]),
  Quiz(
    23,
    "What is the main disadvantage of a traditional HDD compared to an SSD?",
    [
      "It is slower and more fragile due to moving parts",
      "It is much more expensive per gigabyte",
      "It loses data when the power is turned off",
      "It cannot store video files",
    ],
  ),
  Quiz(24, "What is the primary purpose of Storage in a computer?", [
    "To keep files and the OS long-term",
    "To calculate math problems",
    "To provide short-term memory for the CPU",
    "To connect the computer to the internet",
  ]),
  Quiz(25, "Inside a traditional HDD, what is used to store data?", [
    "Spinning magnetic platters",
    "Microscopic light bulbs",
    "Chemical batteries",
    "Water cooling tubes",
  ]),
  Quiz(
    26,
    "Which unit is commonly used to measure the capacity of modern storage drives?",
    ["Terabytes (TB)", "Kilohertz (KHz)", "Watts (W)", "Amps (A)"],
  ),
  Quiz(
    27,
    "If you want your computer to boot up (start) in seconds, you should use an:",
    ["SSD", "HDD", "External Tape Drive", "SD Card"],
  ),

  // --- Topic 5: The Motherboard: The Nervous System ---
  Quiz(28, "What is the main function of the Motherboard?", [
    "To connect all the components together so they can talk",
    "To process the graphics for video games",
    "To provide the main power to the wall outlet",
    "To store the user's permanent files",
  ]),
  Quiz(29, "The 'Bus' on a motherboard is:", [
    "The path/circuitry that data travels on",
    "A small vehicle inside the computer",
    "The fan that cools the CPU",
    "The software that runs the OS",
  ]),
  Quiz(30, "Where do you plug in your mouse, keyboard, and USB drives?", [
    "Ports on the Motherboard",
    "Directly into the CPU",
    "Inside the Power Supply",
    "Into the RAM slots",
  ]),
  Quiz(
    31,
    "What is the large circuit board that holds the CPU, RAM, and GPU called?",
    ["Motherboard", "Sound card", "Logic Gate", "Hard plate"],
  ),
  Quiz(32, "Which component on the motherboard helps keep the CPU cool?", [
    "The Heat Sink and Fan",
    "The CMOS battery",
    "The SATA cable",
    "The PCI slot",
  ]),
  Quiz(
    33,
    "A 'Form Factor' for a motherboard (like ATX or ITX) refers to its:",
    [
      "Physical size and shape",
      "Speed of processing",
      "Price range",
      "Brand name",
    ],
  ),

  // --- Topic 6: The Transistor: The On/Off Switch ---
  Quiz(34, "What is a transistor in a computer?", [
    "A microscopic electronic switch",
    "A type of wire for the internet",
    "A fan that cools the motherboard",
    "A button on the keyboard",
  ]),
  Quiz(
    35,
    "Computers use binary because a transistor has two states. What are they?",
    ["On and Off", "Up and Down", "Left and Right", "Red and Blue"],
  ),
  Quiz(
    36,
    "In binary, the 'On' state of a transistor is represented by which number?",
    ["1", "0", "2", "5"],
  ),
  Quiz(37, "Modern CPUs contain roughly how many transistors?", [
    "Billions",
    "Hundreds",
    "Thousands",
    "Millions",
  ]),
  Quiz(
    38,
    "Which of these is the fundamental building block of all digital logic?",
    ["The Transistor", "The SATA cable", "The USB port", "The HDMI cable"],
  ),
  Quiz(
    39,
    "When transistors are combined together to perform logical operations, they form:",
    ["Logic Gates", "Power Plants", "Physical Folders", "Keyboards"],
  ),
  Quiz(40, "Why have computers become smaller and faster over time?", [
    "We learned to make transistors smaller and pack more of them together",
    "Electricity has become faster",
    "Plastic is stronger now than before",
    "The internet made them smaller",
  ]),

  // --- Mixed / Review Questions for Module 1 ---
  Quiz(41, "Which of these is NOT a hardware component?", [
    "Google Chrome",
    "RAM",
    "CPU",
    "Hard Drive",
  ]),
  Quiz(
    42,
    "Which component is responsible for providing electricity to all other parts?",
    ["Power Supply Unit (PSU)", "Motherboard", "Battery Charger", "CPU"],
  ),
  Quiz(
    43,
    "If your computer is 'freezing' when you open many tabs, you likely need more:",
    ["RAM", "Storage Space", "Screen Brightness", "Keyboard Buttons"],
  ),
  Quiz(44, "The GPU (Graphics Processing Unit) is primarily for:", [
    "Processing images, videos, and 3D visuals",
    "Typing text into a document",
    "Storing your music library",
    "Connecting to a WiFi network",
  ]),
  Quiz(45, "What happens to data in the SSD when you shut down the computer?", [
    "It stays there safely (Non-volatile)",
    "It is deleted automatically",
    "It moves to the RAM",
    "It turns into heat",
  ]),
  Quiz(
    46,
    "Which component is considered the 'nervous system' because it connects everything?",
    ["Motherboard", "CPU", "Cables", "RAM"],
  ),
  Quiz(47, "A 'bit' represents:", [
    "The state of a single transistor (0 or 1)",
    "A large file like a movie",
    "The speed of the fan",
    "The size of the monitor",
  ]),
  Quiz(48, "Which is a common symptom of a failing Hard Drive (HDD)?", [
    "Clicking noises and slow file access",
    "The mouse moving too fast",
    "The screen getting brighter",
    "The keyboard changing languages",
  ]),
  Quiz(49, "Why does a CPU need a fan or cooling system?", [
    "Because billions of transistors switching on/off create a lot of heat",
    "To blow dust into the computer",
    "To make the computer sound powerful",
    "To help the internet signal move faster",
  ]),
  Quiz(50, "If you save a file, it moves from ______ to ______.", [
    "RAM to Storage",
    "Storage to RAM",
    "CPU to Keyboard",
    "Monitor to Mouse",
  ]),
];
final List<Quiz> basicQuizM2 = [
  // --- Topic 7: Binary: How Computers Count with 1s and 0s ---
  Quiz(51, "What is the base-2 numbering system used by computers called?", [
    "Binary",
    "Decimal",
    "Hexadecimal",
    "Octal",
  ]),
  Quiz(
    52,
    "In binary, what number represents the 'Off' state of a transistor?",
    ["0", "1", "2", "-1"],
  ),
  Quiz(
    53,
    "How many different values can a single binary digit (bit) represent?",
    ["2", "1", "10", "Infinite"],
  ),
  Quiz(54, "The binary number '10' represents which decimal number?", [
    "2",
    "10",
    "1",
    "0",
  ]),
  Quiz(55, "Which decimal number does binary '111' represent?", [
    "7",
    "3",
    "111",
    "8",
  ]),
  Quiz(56, "What is the binary equivalent of the decimal number 1?", [
    "0001",
    "0010",
    "0000",
    "1111",
  ]),
  Quiz(57, "In binary place values, what comes after 1, 2, 4, 8...?", [
    "16",
    "10",
    "12",
    "9",
  ]),
  Quiz(58, "Binary is used in computers primarily because:", [
    "Hardware switches (transistors) only have two states",
    "It is easier for humans to read",
    "It uses less physical space than decimal",
    "It was invented by the first computer",
  ]),
  Quiz(59, "What is the binary result of 1 + 0?", ["1", "0", "10", "11"]),
  Quiz(60, "A group of 4 bits is often called a:", [
    "Nibble",
    "Byte",
    "Crumb",
    "Chunk",
  ]),

  // --- Topic 8: Bits and Bytes: Measuring Digital Information ---
  Quiz(61, "How many bits are in one Byte?", ["8", "4", "10", "16"]),
  Quiz(62, "Which unit is the smallest measure of digital information?", [
    "Bit",
    "Byte",
    "Kilobyte",
    "Pixel",
  ]),
  Quiz(63, "Approximately how many bytes are in a Kilobyte (KB)?", [
    "1,000",
    "100",
    "1,000,000",
    "8",
  ]),
  Quiz(64, "Which unit represents roughly one billion bytes?", [
    "Gigabyte (GB)",
    "Megabyte (MB)",
    "Terabyte (TB)",
    "Kilobyte (KB)",
  ]),
  Quiz(65, "A standard 4-minute MP3 song is usually around:", [
    "4 to 5 Megabytes (MB)",
    "4 to 5 Gigabytes (GB)",
    "4 to 5 Kilobytes (KB)",
    "4 to 5 Terabytes (TB)",
  ]),
  Quiz(66, "Which storage size is the largest?", [
    "Terabyte (TB)",
    "Gigabyte (GB)",
    "Megabyte (MB)",
    "Kilobyte (KB)",
  ]),
  Quiz(67, "How many bits are in 2 Bytes?", ["16", "8", "32", "20"]),
  Quiz(
    68,
    "Why do computers use 1024 instead of 1000 for exact measurements?",
    [
      "Because 1024 is a power of 2 (2 to the 10th)",
      "Because it's easier to multiply by 1024",
      "Because it accounts for 'lost' data",
      "It's a law set by the government",
    ],
  ),
  Quiz(
    69,
    "If a file is 1 Megabyte, roughly how many characters of plain text can it hold?",
    ["1 million", "1 thousand", "1 billion", "8 million"],
  ),
  Quiz(
    70,
    "Bandwidth (internet speed) is usually measured in ______ per second.",
    ["Bits (Mbps)", "Bytes (MBps)", "Pixels", "Hertz"],
  ),

  // --- Topic 9: Text and Strings: How Computers Read Your Name ---
  Quiz(71, "What is ASCII primarily used for?", [
    "Representing English characters as numbers",
    "Calculating complex math",
    "Storing high-definition video",
    "Connecting to WiFi",
  ]),
  Quiz(
    72,
    "Which encoding system allows for emojis and characters from almost every language?",
    ["Unicode", "ASCII", "Binary-X", "Morse Code"],
  ),
  Quiz(
    73,
    "In programming, a sequence of characters like 'Hello' is called a:",
    ["String", "Thread", "Chain", "Text-flow"],
  ),
  Quiz(74, "How many bytes does a standard ASCII character use?", [
    "1 Byte",
    "4 Bytes",
    "8 Bytes",
    "1 Bit",
  ]),
  Quiz(
    75,
    "When you type 'A', the computer stores it as a number. What is this process called?",
    ["Encoding", "Decoding", "Formatting", "Zipping"],
  ),
  Quiz(76, "What is the main limitation of ASCII?", [
    "It can only represent 128-256 characters",
    "It is too slow to load",
    "It cannot be read by Windows",
    "It only works for numbers",
  ]),
  Quiz(77, "Why is Unicode better than ASCII for a global internet?", [
    "It supports over 140,000 different characters",
    "It uses less space on the hard drive",
    "It makes the computer run faster",
    "It is the only format that supports bold text",
  ]),
  Quiz(78, "Which of these is a 'String'?", [
    "\"Apple123\"",
    "123",
    "true",
    "0.45",
  ]),
  Quiz(79, "To a computer, the character '1' and the number 1 are:", [
    "Different (one is text, one is math)",
    "Exactly the same",
    "Interchangeable in all calculations",
    "Stored in the same memory address",
  ]),
  Quiz(80, "The space between words in a sentence is stored as:", [
    "A numeric code (e.g., ASCII 32)",
    "Empty air in the memory",
    "A zero",
    "It isn't stored at all",
  ]),

  // --- Topic 10: Numbers and Logic: Integers vs. Decimals ---
  Quiz(
    81,
    "In computing, a whole number without a decimal point is called an:",
    ["Integer", "Float", "String", "Boolean"],
  ),
  Quiz(
    82,
    "A number that includes a decimal point (like 3.14) is often called a:",
    ["Float (Floating Point)", "Integer", "Digit", "Binary-Point"],
  ),
  Quiz(83, "What is a 'Boolean' value?", [
    "A value that is either True or False",
    "A very large number",
    "A name or string of text",
    "A secret password",
  ]),
  Quiz(
    84,
    "If you are counting the number of people in a room, you should use an:",
    ["Integer", "Float", "Boolean", "ASCII Code"],
  ),
  Quiz(
    85,
    "If you are calculating the exact price of an item with tax, you should use a:",
    ["Float", "Integer", "Boolean", "String"],
  ),
  Quiz(86, "In computer logic, what does 'AND' require to be true?", [
    "Both inputs must be true",
    "At least one input must be true",
    "Both inputs must be false",
    "The first input must be true",
  ]),
  Quiz(87, "In computer logic, what does 'OR' require to be true?", [
    "At least one input must be true",
    "Both inputs must be true",
    "Both inputs must be false",
    "Only the last input must be true",
  ]),
  Quiz(88, "The 'NOT' logic gate does what to a bit?", [
    "Flips it (0 becomes 1, 1 becomes 0)",
    "Adds 1 to it",
    "Deletes it",
    "Copies it",
  ]),
  Quiz(89, "Why can't computers store the exact value of Pi (3.1415...)?", [
    "Because it is infinite and memory is finite",
    "Because computers don't know math",
    "Because Pi is not a binary number",
    "Because the CPU is too small",
  ]),
  Quiz(90, "What is an 'Overflow Error'?", [
    "When a number is too large to fit in the assigned memory",
    "When the computer battery is too full",
    "When you type too fast",
    "When the internet is too fast",
  ]),

  // --- Topic 11: Colors and Pixels: How Images Work ---
  Quiz(91, "What is a 'Pixel'?", [
    "The smallest single point of color on a screen",
    "A type of computer battery",
    "A high-speed internet cable",
    "A folder for storing photos",
  ]),
  Quiz(
    92,
    "What are the three primary colors used by computer screens (RGB)?",
    [
      "Red, Green, Blue",
      "Red, Yellow, Blue",
      "Red, Gray, Black",
      "Pink, Green, Brown",
    ],
  ),
  Quiz(93, "If a pixel has RGB values (255, 0, 0), what color is it?", [
    "Red",
    "Green",
    "Blue",
    "White",
  ]),
  Quiz(94, "If a pixel has RGB values (255, 255, 255), what color is it?", [
    "White",
    "Black",
    "Gray",
    "Yellow",
  ]),
  Quiz(95, "If a pixel has RGB values (0, 0, 0), what color is it?", [
    "Black",
    "White",
    "Clear",
    "Dark Blue",
  ]),
  Quiz(96, "What does 'Resolution' mean?", [
    "The total number of pixels across and down a screen",
    "The speed of the internet connection",
    "The amount of RAM in the computer",
    "The weight of the monitor",
  ]),
  Quiz(97, "A 4K monitor has approximately how many horizontal pixels?", [
    "4,000",
    "400",
    "40,000",
    "40",
  ]),
  Quiz(98, "Bitmap images (like .jpg) are made of:", [
    "A grid of individual pixels",
    "Mathematical lines and curves",
    "Binary text strings only",
    "Magnetic waves",
  ]),
  Quiz(99, "What is 'Color Depth'?", [
    "The number of bits used to represent the color of a single pixel",
    "How bright the monitor is",
    "The size of the physical screen",
    "The speed at which colors change",
  ]),
  Quiz(100, "Vector images (unlike Bitmaps) are special because they:", [
    "Can be scaled infinitely without losing quality",
    "Have more colors than real life",
    "Are always smaller in file size",
    "Only work on Apple computers",
  ]),

  // --- Topic 12: Files and Formats: How Data is Packaged ---
  Quiz(101, "What does a 'File Extension' (like .docx) tell the computer?", [
    "What kind of data is inside and which app to use",
    "How much the file costs",
    "The name of the person who created it",
    "The location of the nearest printer",
  ]),
  Quiz(102, "Which of these is a common file extension for images?", [
    ".jpg",
    ".exe",
    ".mp3",
    ".txt",
  ]),
  Quiz(
    103,
    "Which file extension is used for a 'Plain Text' file with no formatting?",
    [".txt", ".pdf", ".png", ".zip"],
  ),
  Quiz(104, "What is the purpose of a .zip file?", [
    "To compress multiple files into one smaller package",
    "To make a video play faster",
    "To encrypt a password",
    "To change the color of a photo",
  ]),
  Quiz(
    105,
    "Which extension refers to an 'Executable' file that runs a program on Windows?",
    [".exe", ".jpg", ".pdf", ".mp4"],
  ),
  Quiz(
    106,
    "Which format is best for documents you want to look the same on every device?",
    [".pdf", ".txt", ".gif", ".mp3"],
  ),
  Quiz(107, "What is 'Lossy' compression?", [
    "Reducing file size by permanently removing some data",
    "Reducing file size without losing any quality",
    "Protecting a file with a password",
    "Making a file larger for better quality",
  ]),
  Quiz(108, "Which of these uses 'Lossless' compression?", [
    ".png",
    ".jpg",
    ".mp3",
    ".mp4",
  ]),
  Quiz(109, "A .mp4 file is used for:", [
    "Video",
    "Audio only",
    "Spreadsheets",
    "Running programs",
  ]),
  Quiz(110, "Metadata is:", [
    "Information about the file (like date taken or location)",
    "The binary code of a photo",
    "A virus hiding in a file",
    "The name of the hard drive",
  ]),

  // --- Mixed / Review Questions for Module 2 (Continuing to 150) ---
  Quiz(111, "How many bits are in a Kilobit (Kb)?", [
    "1000 bits",
    "1000 bytes",
    "8 bits",
    "1024 bytes",
  ]),
  Quiz(112, "Binary '101' is what decimal number?", ["5", "101", "3", "6"]),
  Quiz(113, "Which value is the highest in binary?", [
    "1111",
    "1000",
    "0111",
    "0011",
  ]),
  Quiz(114, "One Gigabyte is approximately how many Megabytes?", [
    "1000",
    "100",
    "1,000,000",
    "10",
  ]),
  Quiz(115, "In text strings, what is 'Concatenation'?", [
    "Joining two strings together (e.g., 'Hello' + 'World')",
    "Deleting a word",
    "Translating text to binary",
    "Making text bold",
  ]),
  Quiz(116, "A 'nibble' is exactly:", [
    "Half of a byte",
    "Two bytes",
    "8 bits",
    "A very small laptop",
  ]),
  Quiz(
    117,
    "If you want to store the answer to 'Are you hungry?', which data type is best?",
    ["Boolean", "Integer", "Float", "String"],
  ),
  Quiz(118, "Which color is (0, 255, 0) in RGB?", [
    "Green",
    "Red",
    "Blue",
    "Yellow",
  ]),
  Quiz(119, "A file extension is usually separated from the filename by a:", [
    "Dot (.)",
    "Space",
    "Comma",
    "Dash",
  ]),
  Quiz(120, "1010 in binary is decimal:", ["10", "5", "8", "12"]),
  Quiz(
    121,
    "Which unit would you use to measure the size of a high-definition movie?",
    ["Gigabytes (GB)", "Megabytes (MB)", "Kilobytes (KB)", "Bits"],
  ),
  Quiz(122, "What is the primary difference between a 'Char' and a 'String'?", [
    "Char is one single character, String is a sequence",
    "Char is for numbers, String is for text",
    "String is much faster",
    "There is no difference",
  ]),
  Quiz(
    123,
    "Transparency in images is often handled by a fourth value called:",
    ["Alpha", "Beta", "Gamma", "Delta"],
  ),
  Quiz(124, "A .csv file is commonly used for:", [
    "Tabular data (Spreadsheets)",
    "High-quality video",
    "System drivers",
    "Background music",
  ]),
  Quiz(125, "Binary '0000' is decimal:", ["0", "1", "4", "None"]),
  Quiz(126, "The prefix 'Mega' means:", [
    "Million",
    "Thousand",
    "Billion",
    "Trillion",
  ]),
  Quiz(127, "The prefix 'Giga' means:", [
    "Billion",
    "Million",
    "Thousand",
    "Trillion",
  ]),
  Quiz(128, "If you see a file named 'setup.exe', what will it likely do?", [
    "Run an installation program",
    "Show you a picture of a setup",
    "Play a song",
    "Open a spreadsheet",
  ]),
  Quiz(129, "To a computer, the logic 'NOT False' results in:", [
    "True",
    "False",
    "Null",
    "Error",
  ]),
  Quiz(130, "What is the maximum value for a single RGB color channel?", [
    "255",
    "100",
    "1000",
    "1",
  ]),
  Quiz(131, "Which of these is a lossy audio format?", [
    ".mp3",
    ".wav",
    ".flac",
    ".alac",
  ]),
  Quiz(132, "How many bits are needed to represent the decimal number 8?", [
    "4 bits (1000)",
    "3 bits",
    "8 bits",
    "1 bit",
  ]),
  Quiz(133, "Which data type would store '3.0'?", [
    "Float",
    "Integer",
    "Boolean",
    "Char",
  ]),
  Quiz(134, "A .gif file is unique because it supports:", [
    "Simple animations",
    "High-definition 3D video",
    "Mathematical equations",
    "Surround sound",
  ]),
  Quiz(135, "What happens if you rename 'photo.jpg' to 'photo.txt'?", [
    "The computer will try to read the image data as text characters",
    "The image will be converted to text automatically",
    "The file will be deleted",
    "The file size will double",
  ]),
  Quiz(136, "A Petabyte (PB) is larger than a Terabyte (TB).", [
    "True",
    "False",
    "Only on Linux",
    "Only on Supercomputers",
  ]),
  Quiz(137, "Logic: (True OR False) results in:", [
    "True",
    "False",
    "Maybe",
    "None",
  ]),
  Quiz(138, "Logic: (True AND False) results in:", [
    "False",
    "True",
    "Error",
    "Both",
  ]),
  Quiz(
    139,
    "How many bits make up a standard IPv4 address (like 192.168.1.1)?",
    ["32 bits", "8 bits", "64 bits", "128 bits"],
  ),
  Quiz(140, "Which file extension is commonly used for websites?", [
    ".html",
    ".site",
    ".web",
    ".txt",
  ]),
  Quiz(141, "Why do we use compression for internet streaming?", [
    "To reduce data usage and prevent buffering",
    "To make the colors look better",
    "To increase the volume of the sound",
    "To protect the video with a password",
  ]),
  Quiz(142, "Base-10 (Decimal) uses digits 0-9. Base-2 (Binary) uses:", [
    "0-1",
    "0-2",
    "1-2",
    "0-9",
  ]),
  Quiz(143, "Which is the correct binary for decimal 4?", [
    "100",
    "111",
    "010",
    "001",
  ]),
  Quiz(144, "What is the 'root' of a file system?", [
    "The top-level folder that contains everything else",
    "The place where the computer was built",
    "A type of computer virus",
    "The binary code of a drive",
  ]),
  Quiz(145, "If you see a file size of 500 KB, it is:", [
    "About half of a Megabyte",
    "About 5 Gigabytes",
    "500 million bytes",
    "Larger than a Terabyte",
  ]),
  Quiz(146, "Which is a characteristic of 'Floating Point' numbers?", [
    "They can represent very small or very large fractions",
    "They are always whole numbers",
    "They are used for counting people",
    "They are stored as ASCII text",
  ]),
  Quiz(147, "A 'Bit' can be described as:", [
    "The smallest unit of data",
    "A heavy component",
    "A type of software",
    "A group of 8 numbers",
  ]),
  Quiz(148, "Which value is equal to 8 bits?", [
    "1 Byte",
    "1 Nibble",
    "1 Kilobyte",
    "1 Integer",
  ]),
  Quiz(149, "When a computer stores the color 'Yellow', it usually combines:", [
    "Red and Green",
    "Red and Blue",
    "Green and Blue",
    "Black and White",
  ]),
  Quiz(150, "What is the binary value of decimal 15?", [
    "1111",
    "1010",
    "1000",
    "1100",
  ]),
];
final List<Quiz> basicQuizM3 = [
  // --- Topic 13: The OS: The Boss of the System ---
  Quiz(151, "What is the primary purpose of an Operating System (OS)?", [
    "To manage hardware and provide a platform for apps",
    "To browse the internet only",
    "To create high-definition 3D graphics",
    "To provide electricity to the CPU",
  ]),
  Quiz(152, "Which of these is an example of an Operating System?", [
    "Windows 11",
    "Google Chrome",
    "Microsoft Word",
    "Intel Core i7",
  ]),
  Quiz(153, "The OS acts as a 'middleman' between which two things?", [
    "The User/Applications and the Hardware",
    "The Monitor and the Keyboard",
    "The Wall Outlet and the Power Supply",
    "The Mouse and the Cursor",
  ]),
  Quiz(
    154,
    "Which OS is known for being 'Open Source' and used widely in servers?",
    ["Linux", "macOS", "Windows", "iOS"],
  ),
  Quiz(155, "What happens during the 'Boot' process?", [
    "The OS is loaded from storage into RAM",
    "The computer deletes all temporary files",
    "The computer connects to the nearest WiFi",
    "The hard drive is formatted",
  ]),
  Quiz(156, "Which of these is a mobile-specific Operating System?", [
    "Android",
    "Ubuntu",
    "macOS",
    "Windows Server",
  ]),
  Quiz(
    157,
    "If a computer has no OS installed, what will happen when you turn it on?",
    [
      "It will show a basic error or 'No bootable device' message",
      "It will work normally but only for browsing",
      "It will automatically install Windows",
      "The hardware will catch fire",
    ],
  ),

  // --- Topic 14: Kernel vs. Shell: The Core and the Interface ---
  Quiz(158, "What is the 'Kernel' of an operating system?", [
    "The core part that talks directly to the hardware",
    "The screen you see when you log in",
    "The folder where you save your photos",
    "The battery management software",
  ]),
  Quiz(159, "What is the 'Shell' in an OS?", [
    "The interface that allows users to interact with the Kernel",
    "The physical plastic case of the computer",
    "The part that stores the user's password",
    "A type of computer virus",
  ]),
  Quiz(160, "Which of these is an example of a 'Graphical Shell'?", [
    "The Windows Desktop (GUI)",
    "Command Prompt (CLI)",
    "The CPU chip",
    "The BIOS",
  ]),
  Quiz(161, "A 'Command Line Interface' (CLI) is a type of shell that uses:", [
    "Text commands",
    "Icons and mouse clicks",
    "Touch screen gestures",
    "Voice recognition",
  ]),
  Quiz(
    162,
    "The Kernel is responsible for 'Resource Allocation.' This means it:",
    [
      "Decides which app gets to use the CPU or RAM",
      "Buys more hardware from the internet",
      "Prints documents to the printer",
      "Cleans the dust off the motherboard",
    ],
  ),

  // --- Topic 15: File Systems: How the Manager Organizes Storage ---
  Quiz(163, "What is a 'File System'?", [
    "A method for naming, storing, and organizing files on a disk",
    "A physical cabinet used to store hard drives",
    "A list of every person who uses the computer",
    "A type of high-speed internet connection",
  ]),
  Quiz(164, "Which file system is commonly used by Windows today?", [
    "NTFS",
    "APFS",
    "EXT4",
    "FAT12",
  ]),
  Quiz(165, "What is 'FAT32' primarily used for today?", [
    "USB flash drives for compatibility between different systems",
    "The main hard drive of a high-end gaming PC",
    "Storing large 4K movies over 4GB",
    "The internal memory of a CPU",
  ]),
  Quiz(166, "What is the 'Root Directory'?", [
    "The top-level folder that contains all other folders",
    "The folder where the computer was made",
    "The recycle bin",
    "The hidden folder where viruses live",
  ]),
  Quiz(167, "In a file path (C:/Users/Name/Doc.txt), 'Doc.txt' is the:", [
    "File name",
    "Root folder",
    "Drive letter",
    "System kernel",
  ]),
  Quiz(168, "Fragmentation happens when:", [
    "Files are scattered in different physical pieces across a disk",
    "The screen breaks into pieces",
    "The OS is deleted",
    "The computer is unplugged",
  ]),

  // --- Topic 16: Processes & Threads: How the OS Multitasks ---
  Quiz(169, "What is a 'Process' in an OS?", [
    "An instance of a program currently being executed",
    "A physical wire inside the CPU",
    "A website that is being downloaded",
    "The act of typing on a keyboard",
  ]),
  Quiz(170, "What is a 'Thread'?", [
    "A smaller sequence of instructions within a process",
    "A cable used to connect a monitor",
    "A type of computer screen",
    "A specific color on the desktop",
  ]),
  Quiz(171, "What is 'Multitasking' in an OS?", [
    "The ability to run multiple processes at the same time",
    "Having more than one monitor plugged in",
    "Having two people use the computer at once",
    "The CPU getting hotter as you work",
  ]),
  Quiz(
    172,
    "The 'Task Manager' (Windows) or 'Activity Monitor' (Mac) allows you to:",
    [
      "View and kill active processes",
      "Change the wallpaper",
      "Type a letter to a friend",
      "Increase the speed of the internet",
    ],
  ),
  Quiz(173, "What is 'Context Switching'?", [
    "When the CPU stops one process to work on another very quickly",
    "Switching between Windows and Linux",
    "Unplugging a mouse and plugging in a keyboard",
    "Changing the language of the OS",
  ]),

  // --- Topic 17: Memory Management: Protecting the RAM ---
  Quiz(174, "What is 'Virtual Memory'?", [
    "Using space on the hard drive to act as extra RAM",
    "RAM that is located in the Cloud",
    "A video game about computers",
    "Memory that doesn't actually exist",
  ]),
  Quiz(175, "Why must the OS protect memory?", [
    "To prevent one app from crashing or stealing data from another",
    "To keep the RAM from getting too hot",
    "To hide the files from the user",
    "To save electricity",
  ]),
  Quiz(176, "A 'Memory Leak' happens when:", [
    "An app fails to release RAM it no longer needs",
    "The RAM physical stick is cracked",
    "Liquid spills inside the computer",
    "The CPU runs too fast",
  ]),
  Quiz(177, "The 'Paging File' or 'Swap Space' is located on the:", [
    "Hard Drive / SSD",
    "CPU Cache",
    "RAM stick",
    "Motherboard",
  ]),

  // --- Topic 18: User Accounts & Permissions: Security and Privacy ---
  Quiz(178, "What is the 'Administrator' or 'Root' user?", [
    "A user account with full control over the system",
    "The person who built the computer",
    "An automated bot that cleans files",
    "The first person to buy the computer",
  ]),
  Quiz(179, "What are 'Permissions'?", [
    "Rules that define who can read, write, or execute a file",
    "The license key for Windows",
    "The speed of the internet connection",
    "The brightness of the screen",
  ]),
  Quiz(180, "Why should you use a 'Standard User' account for daily work?", [
    "To limit the damage if a virus or mistake occurs",
    "Because standard accounts make the internet faster",
    "Because you cannot save files in an admin account",
    "Because standard accounts have better colors",
  ]),
  Quiz(181, "What does 'Read-Only' permission mean?", [
    "You can see the file but cannot change it",
    "You can delete the file but not open it",
    "Only a computer can read the file",
    "The file can only be read aloud by a speaker",
  ]),

  // --- Topic 19: Drivers: The OS Language Translators ---
  Quiz(182, "What is a 'Device Driver'?", [
    "Software that tells the OS how to communicate with a specific hardware part",
    "A person who delivers computers to your house",
    "A physical cable used for printers",
    "The motor that spins the hard drive",
  ]),
  Quiz(
    183,
    "If you plug in a new printer and it doesn't work, what is likely missing?",
    ["The correct Driver", "A new CPU", "More RAM", "An internet subscription"],
  ),
  Quiz(184, "Where are drivers usually stored?", [
    "On the Hard Drive / SSD",
    "Inside the physical mouse",
    "Inside the monitor",
    "In the power outlet",
  ]),
  Quiz(185, "What is 'Plug and Play' (PnP)?", [
    "The ability of an OS to find and install drivers automatically",
    "A game you can play as soon as you buy it",
    "A type of electric plug",
    "The power button on the computer",
  ]),

  // --- Continuing Mixed/Deep Dive OS Questions (186-250) ---
  Quiz(186, "Which part of the OS manages the CPU's time?", [
    "The Scheduler",
    "The Desktop",
    "The Browser",
    "The File Explorer",
  ]),
  Quiz(187, "What is a 'GUI'?", [
    "Graphical User Interface",
    "General User Internet",
    "Global Unit Interface",
    "Great User Icon",
  ]),
  Quiz(188, "A 'Blue Screen of Death' (BSOD) in Windows usually indicates:", [
    "A critical system or hardware error",
    "The computer is finished updating",
    "The internet is disconnected",
    "A new email has arrived",
  ]),
  Quiz(189, "What is 'Safe Mode'?", [
    "Starting the OS with only the most basic drivers and files",
    "The computer is locked in a physical safe",
    "The computer cannot connect to the internet",
    "The computer only runs antivirus software",
  ]),
  Quiz(190, "What is the 'Registry' in Windows?", [
    "A database that stores settings for the OS and apps",
    "A list of every website you visited",
    "The folder where your photos are kept",
    "The password for your WiFi",
  ]),
  Quiz(191, "Which of these is a 'Server' Operating System?", [
    "Windows Server",
    "Windows 10 Home",
    "iOS",
    "Android",
  ]),
  Quiz(192, "An OS 'Update' is mainly used to:", [
    "Fix bugs and improve security",
    "Make the computer heavier",
    "Delete old photos",
    "Change the user's name",
  ]),
  Quiz(193, "What does 'Cross-Platform' software mean?", [
    "Software that can run on multiple operating systems",
    "Software that is very angry",
    "Software that only works on Windows",
    "Hardware that can be used as a hammer",
  ]),
  Quiz(194, "What is an 'API' (Application Programming Interface)?", [
    "A way for different software programs to talk to each other",
    "A type of computer screen",
    "A special kind of keyboard",
    "The name of a computer brand",
  ]),
  Quiz(195, "Which company develops macOS?", [
    "Apple",
    "Microsoft",
    "Google",
    "Linux Foundation",
  ]),
  Quiz(196, "The 'Trash' or 'Recycle Bin' is a feature that:", [
    "Temporarily holds deleted files before permanent removal",
    "Deletes files immediately and forever",
    "Cleans the dust from the hard drive",
    "Compresses files to save space",
  ]),
  Quiz(197, "What is 'Dual Booting'?", [
    "Having two different operating systems installed on one computer",
    "Turning on two computers at the same time",
    "Wearing two pairs of boots while computing",
    "Pressing the power button twice",
  ]),
  Quiz(198, "The 'Command Prompt' is an example of a:", [
    "CLI Shell",
    "GUI Shell",
    "Hardware Kernel",
    "Memory Module",
  ]),
  Quiz(199, "What is 'Firmware'?", [
    "Permanent software programmed into a hardware device",
    "Software that is very hard to delete",
    "A type of exercise for programmers",
    "The physical metal of the computer",
  ]),
  Quiz(200, "A 'System Call' is when:", [
    "An app asks the Kernel to perform a task",
    "The computer makes a phone call",
    "The user yells at the computer",
    "The monitor turns on",
  ]),
  Quiz(201, "What does 'Open Source' mean for an OS like Linux?", [
    "Anyone can see, modify, and distribute the source code",
    "The computer case must be kept open",
    "The OS is only available during the day",
    "You can use it without a password",
  ]),
  Quiz(202, "What is 'Disk Cleanup' used for?", [
    "Removing unnecessary files to free up storage",
    "Washing the physical hard drive with soap",
    "Organizing files in alphabetical order",
    "Deleting the Operating System",
  ]),
  Quiz(203, "Which OS uses the 'Dock' as a primary way to launch apps?", [
    "macOS",
    "Windows",
    "Linux Mint",
    "MS-DOS",
  ]),
  Quiz(204, "A 'Zombie Process' is:", [
    "A process that has finished but still shows in the process table",
    "A virus that eats your files",
    "A program that runs only at night",
    "A computer that won't turn off",
  ]),
  Quiz(205, "What is the 'BIOS' or 'UEFI'?", [
    "Software that initializes hardware during the boot process",
    "The name of the computer's CPU",
    "A type of internet browser",
    "The password for your email",
  ]),
  Quiz(206, "Which system file format was the predecessor to NTFS?", [
    "FAT32",
    "PNG",
    "MP3",
    "EXE",
  ]),
  Quiz(207, "If your RAM is 100% full, the OS will likely use:", [
    "Virtual Memory (HDD/SSD space)",
    "More electricity",
    "The CPU's fan",
    "The monitor's memory",
  ]),
  Quiz(208, "What does 'UAC' (User Account Control) do in Windows?", [
    "Asks for permission before making system changes",
    "Changes the user's password automatically",
    "Cleans the computer's history",
    "Controls the volume of the speakers",
  ]),
  Quiz(
    209,
    "A 'Daemon' (in Linux) or 'Service' (in Windows) is a program that:",
    [
      "Runs in the background without a user interface",
      "Only runs when you are typing",
      "Is used to cast magic spells",
      "Deletes your files randomly",
    ],
  ),
  Quiz(210, "What is 'Telemetry' in an OS?", [
    "Data sent back to the developer about how the OS is used",
    "A way to control the computer from space",
    "The heat of the CPU",
    "The speed of the mouse",
  ]),
  Quiz(211, "Which OS is based on the 'NT Kernel'?", [
    "Windows",
    "macOS",
    "Android",
    "Linux",
  ]),
  Quiz(212, "The 'Desktop' is a metaphor for:", [
    "A physical work surface",
    "A digital library",
    "An internet cafe",
    "A television screen",
  ]),
  Quiz(213, "What happens during a 'System Restore'?", [
    "The OS settings are rolled back to an earlier date",
    "Every file on the computer is deleted",
    "The hardware is replaced with new parts",
    "The computer is turned off and on",
  ]),
  Quiz(
    214,
    "Which key combination usually opens the Task Manager in Windows?",
    ["Ctrl + Shift + Esc", "Alt + F4", "Ctrl + P", "Windows + L"],
  ),
  Quiz(215, "What is a 'Path' in the file system?", [
    "The exact address of a file (e.g., /folder/sub/file.jpg)",
    "A shortcut on the desktop",
    "The road to the computer store",
    "A type of internet cable",
  ]),
  Quiz(216, "What is 'File Compression' built into the OS?", [
    "Reducing the size of files to save space",
    "Making files bigger to improve quality",
    "Changing the color of a file icon",
    "Putting a password on a folder",
  ]),
  Quiz(217, "If an app is 'Not Responding,' it means:", [
    "The process is stuck and not communicating with the OS",
    "The app has finished its work",
    "The computer is turned off",
    "The user forgot to type",
  ]),
  Quiz(218, "What is 'Encryption' in an OS?", [
    "Scrambling data so only authorized users can read it",
    "Deleting files so they cannot be found",
    "Making the text larger",
    "Speeding up the hard drive",
  ]),
  Quiz(219, "A 'Driver Update' can often fix:", [
    "Hardware errors or poor performance",
    "A broken keyboard key",
    "A cracked screen",
    "A lack of storage space",
  ]),
  Quiz(220, "What is the 'Clipboard'?", [
    "A temporary storage area for copied data",
    "A physical board attached to the laptop",
    "The place where you plug in the mouse",
    "A folder for storing long-term files",
  ]),
  Quiz(221, "Which OS uses the 'XNU' Kernel?", [
    "macOS",
    "Windows",
    "Linux",
    "ChromeOS",
  ]),
  Quiz(222, "What is 'Multithreading'?", [
    "Executing multiple threads within a single process",
    "Using multiple colors on a screen",
    "Connecting two CPUs together",
    "Browsing two websites at once",
  ]),
  Quiz(223, "The 'File Explorer' (Windows) or 'Finder' (Mac) is a:", [
    "File management application",
    "Type of internet browser",
    "Hardware component",
    "CPU instruction",
  ]),
  Quiz(224, "What is a 'Shortcut' or 'Alias'?", [
    "A small file that points to another file or app",
    "A faster way to type",
    "A way to skip the login screen",
    "A type of small computer",
  ]),
  Quiz(225, "In OS terms, what is 'Latency'?", [
    "The delay before a data transfer begins",
    "The speed of the fan",
    "The size of the hard drive",
    "The number of apps installed",
  ]),
  Quiz(226, "Which file system was designed by Apple?", [
    "APFS",
    "NTFS",
    "EXT4",
    "FAT32",
  ]),
  Quiz(227, "A 'Clean Install' means:", [
    "Erasing the drive and installing the OS from scratch",
    "Washing the computer before installing",
    "Installing only the apps you need",
    "Installing the OS without a password",
  ]),
  Quiz(228, "What does 'Ejecting' a USB drive do?", [
    "Ensures all data is written and stops communication safely",
    "Physically shoots the USB drive out of the port",
    "Deletes everything on the USB drive",
    "Formats the USB drive",
  ]),
  Quiz(229, "Which part of the OS handles the 'Desktop Wallpaper'?", [
    "The GUI Shell",
    "The Kernel",
    "The Driver",
    "The CPU",
  ]),
  Quiz(230, "What is a 'Background Process'?", [
    "An app running without a visible window",
    "A process that only runs on the wallpaper",
    "A program that has been deleted",
    "A virus that hides in the back of the case",
  ]),
  Quiz(231, "What is 'Sleep Mode'?", [
    "A low-power state that keeps apps open in RAM",
    "Turning off the computer completely",
    "A mode where the computer plays music to help you sleep",
    "The computer only runs at night",
  ]),
  Quiz(232, "What is 'Hibernate' mode?", [
    "Saving the RAM state to the hard drive and turning off power",
    "A mode for computers used in cold weather",
    "The computer runs very slowly to save heat",
    "Deleting all temporary files",
  ]),
  Quiz(233, "Why does the OS show a 'Loading' circle or bar?", [
    "Because a process is taking time to complete",
    "Because the computer is bored",
    "Because the internet is broken",
    "Because the battery is empty",
  ]),
  Quiz(234, "What is 'Privilege Escalation'?", [
    "A user or app gaining higher access levels than intended",
    "Buying a more expensive computer",
    "Moving a folder to a higher position",
    "The OS becoming smarter over time",
  ]),
  Quiz(235, "What is a 'Distro' (Distribution) in Linux?", [
    "A specific version of Linux (like Ubuntu or Fedora)",
    "A type of hardware cable",
    "The act of giving away computers",
    "A website that hosts Linux files",
  ]),
  Quiz(236, "Which of these is a 'Native' application?", [
    "An app designed specifically for a particular OS",
    "An app that lives in the forest",
    "An app that doesn't need electricity",
    "An app that only works in one country",
  ]),
  Quiz(237, "What is 'Task Switching' (Alt+Tab)?", [
    "Quickly moving between open application windows",
    "Closing one app to open another",
    "Changing the user account",
    "Switching the monitor off",
  ]),
  Quiz(238, "Which of these is an example of 'Metadata' for a file?", [
    "The 'Date Created' information",
    "The actual text inside a document",
    "The colors in a photo",
    "The music in an MP3",
  ]),
  Quiz(239, "What is a 'Log File'?", [
    "A file that records events or actions in the OS",
    "A file made of wood",
    "A file that is very heavy",
    "A password file",
  ]),
  Quiz(240, "Which OS is primarily used on 'Chromebooks'?", [
    "ChromeOS",
    "Windows",
    "macOS",
    "Android",
  ]),
  Quiz(241, "What is 'Backwards Compatibility'?", [
    "The ability of an OS to run older software",
    "Walking backwards while using a laptop",
    "Installing an OS on the back of a hard drive",
    "Software that only works on old computers",
  ]),
  Quiz(242, "What does 'Mounting' a drive mean?", [
    "Making a file system accessible to the OS",
    "Climbing on top of the computer case",
    "Screwing the hard drive into the case",
    "Putting a drive in a physical safe",
  ]),
  Quiz(243, "A 'Critical Error' means:", [
    "The OS cannot continue functioning safely",
    "The user made a small mistake",
    "The internet is slightly slow",
    "The volume is too loud",
  ]),
  Quiz(244, "What is 'Automatic Update'?", [
    "The OS downloading and installing fixes without user input",
    "The computer buying new parts by itself",
    "The user's name changing automatically",
    "The clock changing for daylight savings",
  ]),
  Quiz(245, "What is 'Sandboxing'?", [
    "Running an app in an isolated environment for security",
    "Playing with a computer in a park",
    "Putting the computer in a box of sand",
    "Deleting all apps except one",
  ]),
  Quiz(246, "Which of these is a 'Package Manager' function?", [
    "Installing and updating software automatically",
    "Managing physical packages delivered to you",
    "Wrapping the computer in plastic",
    "Organizing files into folders",
  ]),
  Quiz(247, "What is the 'Taskbar'?", [
    "A GUI element used to launch and monitor apps",
    "A physical bar used to carry the computer",
    "A place to buy drinks for programmers",
    "The speed of the CPU",
  ]),
  Quiz(248, "What is a 'System Image'?", [
    "A complete copy of the entire drive and OS state",
    "A photo of the computer case",
    "A mirror reflection of the screen",
    "The wallpaper on the desktop",
  ]),
  Quiz(249, "Why does the OS use 'Drivers' for a GPU?", [
    "To tell the OS how to use the card to draw graphics",
    "To make the GPU spin faster",
    "To store games on the GPU",
    "To connect the GPU to the internet",
  ]),
  Quiz(250, "What is the most important job of the OS?", [
    "Managing resources so everything works together",
    "Showing pretty pictures on the screen",
    "Making the computer start fast",
    "Letting you play video games",
  ]),
];
final List<Quiz> basicQuizM4 = [
  // --- Topic 20: The CLI: Why Text is More Powerful than Icons ---
  Quiz(251, "What does CLI stand for?", [
    "Command Line Interface",
    "Computer Logic Integration",
    "Central Line Input",
    "Common Language Interface",
  ]),
  Quiz(252, "What is a major advantage of using a CLI over a GUI?", [
    "Tasks can be automated and scripted more easily",
    "It uses more RAM and CPU power",
    "It has prettier icons and colors",
    "It is easier for beginners to use without learning",
  ]),
  Quiz(253, "Which of these is a 'Headless' system?", [
    "A computer with no monitor, controlled entirely via CLI",
    "A computer with no CPU",
    "A computer that cannot connect to the internet",
    "A computer that only runs video games",
  ]),
  Quiz(254, "Why do system administrators prefer the CLI for servers?", [
    "It is faster and uses fewer system resources",
    "It allows them to see movies better",
    "It prevents the computer from getting hot",
    "It automatically fixes hardware problems",
  ]),
  Quiz(255, "What is 'Syntax' in the context of the CLI?", [
    "The specific rules and order of words in a command",
    "The speed at which you type",
    "The color of the terminal background",
    "The physical size of the keyboard",
  ]),

  // --- Topic 21: Terminal vs. Shell: Command Prompt & PowerShell ---
  Quiz(256, "In technical terms, what is the 'Terminal'?", [
    "The environment/window that displays text and takes input",
    "The program that actually processes the commands",
    "The physical hard drive",
    "The internet browser",
  ]),
  Quiz(
    257,
    "Which of these is the modern, powerful scripting shell for Windows?",
    ["PowerShell", "Command Prompt (cmd)", "Bash", "Finder"],
  ),
  Quiz(258, "Which shell is the standard for Linux and macOS systems?", [
    "Bash (or Zsh)",
    "PowerShell",
    "CMD",
    "Internet Explorer",
  ]),
  Quiz(259, "What is the difference between CMD and PowerShell?", [
    "PowerShell is based on the .NET framework and is more advanced",
    "CMD is faster for graphics processing",
    "PowerShell only works on Apple computers",
    "CMD is used for writing emails",
  ]),
  Quiz(
    260,
    "The text at the start of the line that shows the system is ready for a command is the:",
    ["Prompt", "Footer", "Header", "Blinker"],
  ),

  // --- Topic 22: Navigation: Moving Through Folders (cd, dir) ---
  Quiz(
    261,
    "Which command is used to change the current directory in both Windows and Linux?",
    ["cd", "move", "goto", "dir"],
  ),
  Quiz(
    262,
    "On Windows, which command lists all files and folders in the current directory?",
    ["dir", "ls", "list", "show"],
  ),
  Quiz(263, "On Linux or macOS, which command lists the files in a folder?", [
    "ls",
    "dir",
    "view",
    "open",
  ]),
  Quiz(264, "How do you move 'up' one level to the parent folder in the CLI?", [
    "cd ..",
    "cd up",
    "back",
    "exit",
  ]),
  Quiz(265, "What does 'cd /' or 'cd \\' do?", [
    "Moves you to the root directory of the drive",
    "Deletes the folder you are in",
    "Closes the terminal window",
    "Changes the user password",
  ]),
  Quiz(266, "To see hidden files in a Linux terminal, you would use:", [
    "ls -a",
    "ls -show",
    "dir /h",
    "view hidden",
  ]),

  // --- Topic 23: File Operations: Creating and Deleting (mkdir, type, del) ---
  Quiz(267, "Which command is used to create a new folder (directory)?", [
    "mkdir",
    "newfold",
    "create",
    "make",
  ]),
  Quiz(268, "On Windows, how do you delete a file via the command line?", [
    "del",
    "rm",
    "erase_all",
    "trash",
  ]),
  Quiz(
    269,
    "On Linux/macOS, which command is used to remove (delete) a file?",
    ["rm", "del", "clear", "remove"],
  ),
  Quiz(270, "What does the command 'type filename.txt' do on Windows?", [
    "Displays the contents of a text file in the terminal",
    "Changes the font of the file",
    "Deletes the file",
    "Copies the file to a new location",
  ]),
  Quiz(271, "To remove an empty directory on Windows, you use:", [
    "rmdir",
    "deldir",
    "erase",
    "clean",
  ]),
  Quiz(272, "What is the danger of deleting files via CLI compared to a GUI?", [
    "Files are often deleted permanently and do not go to the Recycle Bin",
    "The computer will shut down immediately",
    "The hard drive will spin too fast",
    "It only works if you are connected to the internet",
  ]),

  // --- Topic 24: Paths: Absolute vs. Relative (Where am I?) ---
  Quiz(273, "What is an 'Absolute Path'?", [
    "A full path starting from the root (e.g., C:\\Users\\Name)",
    "A path that changes based on where you are",
    "A path to a website on the internet",
    "A shortcut on the desktop",
  ]),
  Quiz(274, "What is a 'Relative Path'?", [
    "A path that starts from your current location",
    "A path that only family members can access",
    "The path to the computer's motherboard",
    "The full path starting from the C: drive",
  ]),
  Quiz(
    275,
    "If your prompt says 'C:\\Users>', what is your current directory?",
    [
      "The Users folder on the C: drive",
      "The root of the C: drive",
      "The Desktop",
      "The Cloud",
    ],
  ),
  Quiz(276, "The symbol '~' in Linux/macOS terminals represents:", [
    "The user's Home directory",
    "The root of the system",
    "An error in the command",
    "The external hard drive",
  ]),
  Quiz(277, "In a path, what does a single dot '.' represent?", [
    "The current directory",
    "The parent directory",
    "The root directory",
    "A hidden file",
  ]),

  // --- Topic 25: Networking Tools: Testing Connection (ping, ipconfig) ---
  Quiz(
    278,
    "Which command is used to test if a computer can communicate with a specific IP or website?",
    ["ping", "test", "hello", "connect"],
  ),
  Quiz(
    279,
    "On Windows, which command displays your computer's IP address and network details?",
    ["ipconfig", "ifconfig", "netstat", "myip"],
  ),
  Quiz(
    280,
    "What does 'pinging' a website (like ping google.com) actually do?",
    [
      "Sends a small packet of data and waits for a reply",
      "Downloads the entire website to your computer",
      "Changes the website's password",
      "Measures the weight of the server",
    ],
  ),
  Quiz(
    281,
    "On Linux/macOS, the command to see network interface details is usually:",
    ["ifconfig (or ip addr)", "ipconfig", "netview", "show_internet"],
  ),
  Quiz(282, "A 'Time Out' message during a ping suggests:", [
    "The destination is unreachable or blocking your request",
    "The internet is too fast for the computer",
    "The computer is sleeping",
    "The keyboard is disconnected",
  ]),
  Quiz(283, "What is 'Traceroute' (tracert) used for?", [
    "To see every 'hop' or router data passes through to reach a destination",
    "To find the physical address of the computer owner",
    "To speed up a slow internet connection",
    "To delete browsing history",
  ]),

  // --- Topic 26: Permissions: Running as Administrator ---
  Quiz(284, "Why would a command return 'Access Denied'?", [
    "The user does not have the necessary permissions/privileges",
    "The computer is out of electricity",
    "The command was typed in lowercase",
    "The internet is too slow",
  ]),
  Quiz(285, "What does 'sudo' mean in Linux systems?", [
    "SuperUser DO (Run a command with admin privileges)",
    "System Update Data Only",
    "Switch User Direct Object",
    "Secure Universal Data Output",
  ]),
  Quiz(286, "In Windows, how do you gain full control of the CLI?", [
    "Right-click the Terminal and 'Run as Administrator'",
    "Type the command faster",
    "Unplug the mouse",
    "Change the wallpaper to red",
  ]),
  Quiz(
    287,
    "What is the risk of running every command as an Administrator/Root?",
    [
      "You could accidentally delete or damage critical system files",
      "The computer will run too slowly",
      "It will use up all the RAM",
      "It will disconnect you from the WiFi",
    ],
  ),
  Quiz(
    288,
    "A 'Read-Only' file cannot be deleted using a standard 'del' command without changing:",
    [
      "Attributes or Permissions",
      "The file name",
      "The monitor brightness",
      "The CPU speed",
    ],
  ),

  // --- Mixed / Power User Skills (289-350) ---
  Quiz(289, "What is a 'Batch File' (.bat) in Windows?", [
    "A text file containing a sequence of commands to be run automatically",
    "A file that contains a cooking recipe",
    "A type of image format",
    "A virus that slows down the computer",
  ]),
  Quiz(290, "What does 'cls' (Windows) or 'clear' (Linux) do?", [
    "Clears the terminal screen of all previous text",
    "Deletes all files in the current folder",
    "Restarts the operating system",
    "Empty the Recycle Bin",
  ]),
  Quiz(291, "What is 'Piping' (|) in the command line?", [
    "Sending the output of one command as the input to another",
    "Connecting two computers with a physical pipe",
    "Increasing the volume of the computer",
    "Saving a file to the cloud",
  ]),
  Quiz(292, "The command 'echo Hello World' will:", [
    "Print the text 'Hello World' on the screen",
    "Record your voice saying 'Hello World'",
    "Send an email to the world",
    "Create a folder named World",
  ]),
  Quiz(293, "In CLI, 'Output Redirection' (>) is used to:", [
    "Save the result of a command into a file",
    "Change the color of the text",
    "Move the monitor to the left",
    "Send data to the printer only",
  ]),
  Quiz(294, "What happens if you use '>>' instead of '>'?", [
    "It appends data to the end of a file instead of overwriting it",
    "It deletes the file immediately",
    "It makes the command run twice as fast",
    "It sends the data to two computers",
  ]),
  Quiz(
    295,
    "How do you stop a command that is currently running (like a long ping)?",
    ["Ctrl + C", "Alt + F4", "Ctrl + Z", "Esc"],
  ),
  Quiz(296, "What is an 'Environment Variable'?", [
    "A value that can be used by the OS and programs (like the PATH)",
    "The temperature inside the computer case",
    "The amount of light in the room",
    "The version of the OS",
  ]),
  Quiz(
    297,
    "If a command is not found, but you know it is installed, what is likely wrong?",
    [
      "The folder containing the program is not in the system 'PATH'",
      "The computer is upside down",
      "The RAM is full",
      "The monitor is not plugged into the GPU",
    ],
  ),
  Quiz(298, "What does 'grep' do in Linux?", [
    "Searches for a specific string of text within a file or output",
    "Graphs the CPU usage",
    "Deletes large files",
    "Connects to a green server",
  ]),
  Quiz(299, "On Windows, 'move file.txt C:\\Folder\\' does what?", [
    "Moves the file to the specified location",
    "Copies the file and keeps the original",
    "Renames the folder to file.txt",
    "Deletes the file.txt",
  ]),
  Quiz(300, "What is a 'Wildcard' (*) in CLI?", [
    "A symbol used to represent any number of characters in a filename",
    "A secret command that unlocks a game",
    "A virus that corrupts data",
    "The power button symbol",
  ]),
  Quiz(301, "The command 'del *.txt' would delete:", [
    "Every file in the folder that ends in .txt",
    "Only one file named star.txt",
    "The entire hard drive",
    "Nothing",
  ]),
  Quiz(302, "What is 'SSH'?", [
    "Secure Shell - used to control a remote computer via CLI",
    "Super Speed Hub - for faster internet",
    "System Software Header",
    "Silent System Halt",
  ]),
  Quiz(303, "On Windows, 'help [command]' or '[command] /?' does what?", [
    "Displays instructions on how to use that specific command",
    "Calls a technician for help",
    "Deletes the command",
    "Opens a web browser to Google",
  ]),
  Quiz(304, "The 'Tasklist' command in Windows shows:", [
    "A list of all currently running processes",
    "A list of things you need to do today",
    "A list of all files on the desktop",
    "The computer's serial number",
  ]),
  Quiz(305, "The command 'shutdown /s /t 0' in Windows will:", [
    "Shut down the computer immediately",
    "Restart the computer in one hour",
    "Clean the hard drive",
    "Close all browser tabs",
  ]),
  Quiz(306, "What is a 'Script'?", [
    "A file containing a series of commands for the computer to follow",
    "A physical book about computers",
    "The code used to make a website pretty",
    "A type of font",
  ]),
  Quiz(307, "What is the 'Working Directory'?", [
    "The folder the terminal is currently 'looking at'",
    "The folder where the computer was built",
    "The folder where the OS is installed",
    "The Recycle Bin",
  ]),
  Quiz(308, "In PowerShell, commands are often called:", [
    "Cmdlets",
    "Apps",
    "Scripts",
    "Links",
  ]),
  Quiz(309, "Which command shows you your 'User Name' in most terminals?", [
    "whoami",
    "name",
    "user",
    "id",
  ]),
  Quiz(310, "What is 'Tab Completion'?", [
    "Pressing Tab to let the terminal finish typing a filename for you",
    "Closing a tab in a browser",
    "Increasing the speed of the CPU with the Tab key",
    "Moving between icons on the desktop",
  ]),
  Quiz(311, "Which command in Windows shows the 'tree' structure of folders?", [
    "tree",
    "map",
    "folders",
    "root",
  ]),
  Quiz(312, "In Linux, 'man [command]' stands for:", [
    "Manual (Displays the manual/help page)",
    "Manager",
    "Mandatory",
    "Main",
  ]),
  Quiz(313, "What does 'mkdir -p folder/subfolder' do in Linux?", [
    "Creates the parent folder and subfolder at the same time",
    "Protects the folder with a password",
    "Deletes the folder if it exists",
    "Makes the folder permanent",
  ]),
  Quiz(
    314,
    "If you type 'cd' with no arguments in a Windows terminal, it usually:",
    [
      "Displays the current directory path",
      "Moves you to the root",
      "Moves you home",
      "Closes the window",
    ],
  ),
  Quiz(315, "In CLI, a 'Flag' or 'Switch' (like -a or /p) is used to:", [
    "Modify how a command behaves",
    "Mark a file for deletion",
    "Signal the computer to turn off",
    "Change the color of the mouse",
  ]),
  Quiz(316, "What is 'Nano' or 'Vi' in a Linux terminal?", [
    "Text editors used inside the terminal",
    "Types of hardware components",
    "Internet browsers",
    "Games",
  ]),
  Quiz(317, "To check which version of Windows you are running via CLI, use:", [
    "ver",
    "win",
    "os",
    "check",
  ]),
  Quiz(318, "What does 'systeminfo' do in a Windows terminal?", [
    "Displays detailed hardware and OS configuration",
    "Deletes system files",
    "Changes the time",
    "Displays the user's name only",
  ]),
  Quiz(319, "A 'Syntax Error' means:", [
    "The computer didn't understand your command because of a typo or bad format",
    "The hard drive is broken",
    "The computer is too hot",
    "The internet is disconnected",
  ]),
  Quiz(320, "On Linux, 'rm -rf /' is extremely dangerous because it:", [
    "Attempts to delete everything on the computer without asking",
    "Restarts the computer too fast",
    "Makes the computer very secure",
    "Changes all passwords to 'root'",
  ]),
  Quiz(321, "What is 'Latency' as measured by the 'ping' command?", [
    "The time it takes for data to travel to a destination and back",
    "The amount of data in a file",
    "The number of pixels on the screen",
    "The age of the computer",
  ]),
  Quiz(322, "What is a 'Localhost' (127.0.0.1)?", [
    "A way for a computer to refer to itself",
    "The name of the main internet router",
    "A virus that stays on one computer",
    "The first computer ever made",
  ]),
  Quiz(323, "What is 'DHCP' as seen in network tools?", [
    "A system that automatically assigns IP addresses to devices",
    "A type of high-speed internet cable",
    "A security protocol for passwords",
    "The name of the internet provider",
  ]),
  Quiz(324, "What does 'hostname' command do?", [
    "Displays the name of the computer on the network",
    "Displays the name of the person using the computer",
    "Displays the name of the website you are visiting",
    "Changes the name of the computer",
  ]),
  Quiz(325, "In CLI, what is an 'Argument'?", [
    "Extra information provided to a command (like a filename)",
    "A fight between two programmers",
    "A mistake in the code",
    "The speed of the processor",
  ]),
  Quiz(326, "The command 'ren oldname.txt newname.txt' on Windows does what?", [
    "Renames the file",
    "Copies the file",
    "Deletes both files",
    "Moves the file to a new folder",
  ]),
  Quiz(
    327,
    "Which command is used to see the contents of a directory on macOS?",
    ["ls", "dir", "show", "open"],
  ),
  Quiz(328, "What is 'Hardlinking'?", [
    "Creating a new file name that points to the same data as another file",
    "Connecting two hard drives with a chain",
    "Making a file very difficult to delete",
    "Downloading a file from the internet",
  ]),
  Quiz(
    329,
    "To find out where a command is located on your drive, Linux users use:",
    ["which [command]", "where [command]", "find [command]", "look [command]"],
  ),
  Quiz(330, "The command 'attrib +h filename' in Windows does what?", [
    "Makes the file hidden",
    "Deletes the file",
    "Makes the file faster",
    "Changes the file's color to blue",
  ]),
  Quiz(331, "What is a 'Path Limit'?", [
    "The maximum length of a file path (e.g., 260 characters in old Windows)",
    "The number of folders you can have",
    "The speed of data on a drive",
    "The number of people who can use a folder",
  ]),
  Quiz(332, "In PowerShell, 'Get-Service' does what?", [
    "Lists all system services and their status",
    "Asks for a repair service",
    "Displays the internet speed",
    "Shows the computer's battery life",
  ]),
  Quiz(333, "What does 'cat' stand for in Linux?", [
    "Concatenate (Used to read and join files)",
    "Category",
    "Calculated",
    "Catalog",
  ]),
  Quiz(334, "To see only the first few lines of a file in Linux, use:", [
    "head",
    "top",
    "start",
    "front",
  ]),
  Quiz(335, "To see the last few lines of a file in Linux, use:", [
    "tail",
    "bottom",
    "end",
    "back",
  ]),
  Quiz(336, "What is 'Standard Input' (stdin)?", [
    "The data sent into a program (usually from the keyboard)",
    "The standard color of the terminal",
    "The normal speed of the computer",
    "The first page of a document",
  ]),
  Quiz(337, "What is 'Standard Output' (stdout)?", [
    "The data sent out by a program (usually to the screen)",
    "The printer connected to the computer",
    "The sound coming from the speakers",
    "The brightness of the monitor",
  ]),
  Quiz(338, "What is 'Standard Error' (stderr)?", [
    "The specific data stream used for error messages",
    "A common mistake made by beginners",
    "The computer shutting down",
    "The internet disconnecting",
  ]),
  Quiz(339, "The command 'alias' in Linux is used to:", [
    "Create a shorter nickname for a long command",
    "Change the user's name",
    "Hide a file",
    "Connect to a second monitor",
  ]),
  Quiz(340, "What is a 'Daemon'?", [
    "A background process that handles system tasks",
    "A type of computer virus",
    "A gaming character",
    "A hardware component",
  ]),
  Quiz(341, "The 'chown' command in Linux changes the:", [
    "Owner of a file",
    "Name of a file",
    "Size of a file",
    "Color of a file",
  ]),
  Quiz(342, "The 'chmod' command in Linux changes the:", [
    "Permissions of a file",
    "Mode of the monitor",
    "Speed of the CPU",
    "Volume of the system",
  ]),
  Quiz(343, "What is 'History' in a terminal?", [
    "A list of previously typed commands",
    "The year the computer was made",
    "The user's browsing history",
    "The history of the Windows OS",
  ]),
  Quiz(344, "How do you quickly see your command history in most shells?", [
    "Up Arrow key",
    "Shift + H",
    "Alt + F4",
    "Down Arrow key",
  ]),
  Quiz(345, "What is 'Escaping' a character in a command?", [
    "Using a symbol (like \\) so the terminal treats a special character as normal text",
    "Deleting the character",
    "Running away from the computer",
    "Making the character bold",
  ]),
  Quiz(346, "What is 'Root' in a Linux system?", [
    "The highest-level user with unlimited power",
    "The bottom of the computer case",
    "The internet router",
    "The power cord",
  ]),
  Quiz(
    347,
    "Which command is used to view a text file one page at a time in Linux?",
    ["less (or more)", "page", "stop", "read"],
  ),
  Quiz(348, "What is the result of the 'ping 8.8.8.8' command?", [
    "Tests connection to Google's public DNS server",
    "Tests connection to your own keyboard",
    "Tests the speed of your hard drive",
    "Restarts your router",
  ]),
  Quiz(
    349,
    "Why would someone use a CLI to download a file (e.g., curl or wget)?",
    [
      "It is faster, can be automated, and works on servers without browsers",
      "It makes the file smaller",
      "It changes the file into binary",
      "It makes the file safer",
    ],
  ),
  Quiz(350, "The terminal is basically:", [
    "A text-based way to talk to the Operating System",
    "A way to fix a broken monitor",
    "A program for drawing pictures",
    "A type of social media",
  ]),
];
final List<Quiz> basicQuizM5 = [
  // --- Topic 27: GUI: Using Pictures instead of Code ---
  Quiz(351, "What does GUI stand for?", [
    "Graphical User Interface",
    "General User Interaction",
    "Global Unit Interface",
    "Graphical Universal Input",
  ]),
  Quiz(352, "What is the primary benefit of a GUI over a CLI for most users?", [
    "It is more intuitive and easier to learn for non-technical users",
    "It makes the computer run much faster",
    "It requires less RAM to operate",
    "It allows you to type commands more quickly",
  ]),
  Quiz(353, "Which of these is a key element of a GUI?", [
    "Icons, Buttons, and Windows",
    "Binary code strings",
    "Text-only prompts",
    "Physical hardware switches",
  ]),
  Quiz(
    354,
    "Who developed the first experimental GUI that inspired modern systems?",
    ["Xerox PARC", "Microsoft", "Google", "NASA"],
  ),
  Quiz(355, "What is a 'Pointer' in a GUI?", [
    "The on-screen cursor that follows your mouse or trackpad",
    "A physical stick used to clean the monitor",
    "The power button on the computer",
    "A type of computer virus",
  ]),

  // --- Topic 28: Windows & Icons: The 'Desktop' Metaphor ---
  Quiz(356, "In a GUI, what is the 'Desktop' metaphor intended to represent?", [
    "A physical workspace where you keep folders and tools",
    "A picture of a park or forest",
    "A type of computer that sits on the floor",
    "A website for buying furniture",
  ]),
  Quiz(357, "What does an 'Icon' represent in a GUI?", [
    "A visual shortcut to a file, folder, or application",
    "A religious painting",
    "The speed of the CPU",
    "A hardware error",
  ]),
  Quiz(358, "What is the purpose of a 'Window' in an OS?", [
    "To provide a separate area for an application to display its content",
    "To let air into the computer case",
    "To see the internet without a browser",
    "To clean the computer's memory",
  ]),
  Quiz(359, "What happens when you 'Minimize' a window?", [
    "It is hidden from view but remains running in the taskbar/dock",
    "It is deleted permanently",
    "It is saved to the cloud",
    "The computer turns off",
  ]),
  Quiz(360, "The 'Taskbar' (Windows) or 'Dock' (macOS) is used to:", [
    "Switch between open applications and launch new ones",
    "Store all your photos permanently",
    "Change the physical weight of the laptop",
    "Increase the volume of the speakers",
  ]),
  Quiz(361, "A 'Context Menu' usually appears when you:", [
    "Right-click on an object",
    "Turn off the monitor",
    "Type your password",
    "Unplug the mouse",
  ]),

  // --- Topic 29: The Browser: Your Door to the Internet ---
  Quiz(362, "What is the primary function of a Web Browser?", [
    "To retrieve and display pages from the World Wide Web",
    "To create spreadsheets and documents",
    "To protect the computer from physical dust",
    "To manage the computer's hardware drivers",
  ]),
  Quiz(363, "Which of these is a web browser?", [
    "Mozilla Firefox",
    "Microsoft Word",
    "Adobe Photoshop",
    "Windows Explorer",
  ]),
  Quiz(364, "What does 'URL' stand for?", [
    "Uniform Resource Locator (the web address)",
    "Universal Radio Link",
    "User Record Log",
    "United Resource List",
  ]),
  Quiz(365, "What is 'Browser Cache'?", [
    "Temporary files stored to make websites load faster on the next visit",
    "Money you pay to use the internet",
    "A type of computer virus found on websites",
    "A folder where you save your downloads",
  ]),
  Quiz(366, "What is a 'Browser Extension'?", [
    "Small software modules that add extra features to a browser",
    "A longer cable for the internet",
    "A way to make the browser window larger",
    "An extra keyboard for the browser",
  ]),
  Quiz(367, "In a browser, 'Incognito' or 'Private' mode means:", [
    "The browser won't save your history, cookies, or form data",
    "You are completely invisible to the government and hackers",
    "The internet becomes twice as fast",
    "You don't need to pay for the internet",
  ]),
  Quiz(368, "What are 'Cookies' in a browser?", [
    "Small files used by websites to remember you or your preferences",
    "Snacks for the computer",
    "A way to delete your hard drive",
    "Physical parts of the motherboard",
  ]),

  // --- Topic 30: Software vs. Apps: What’s the difference? ---
  Quiz(369, "Historically, 'Application Software' refers to:", [
    "Programs designed for users to perform specific tasks",
    "The physical parts of the computer",
    "The Operating System itself",
    "The power cables",
  ]),
  Quiz(370, "The term 'App' became popular primarily due to:", [
    "The rise of smartphones and mobile app stores",
    "The invention of the mouse",
    "The creation of the first printer",
    "The speed of modern CPUs",
  ]),
  Quiz(
    371,
    "Which of these is 'System Software' rather than 'Application Software'?",
    ["A Device Driver", "Microsoft Excel", "Candy Crush", "Spotify"],
  ),
  Quiz(372, "What is a 'Web App'?", [
    "Software that runs inside a browser instead of being installed on the OS",
    "An app that only works when the computer is outside",
    "An app that prints web pages",
    "A type of spider",
  ]),
  Quiz(373, "What is 'SaaS'?", [
    "Software as a Service (Cloud-based subscription software)",
    "System as a Software",
    "Secure and Apple Software",
    "Super Awesome Application System",
  ]),
  Quiz(374, "Which of these is an example of an 'Office Suite'?", [
    "Microsoft Office / Google Workspace",
    "Adobe Creative Cloud",
    "Windows 11",
    "Steam",
  ]),

  // --- Topic 31: How Software is Built: The 'Look' and the 'Brain' ---
  Quiz(375, "In software development, what is the 'Frontend'?", [
    "The part the user sees and interacts with (the UI)",
    "The server where the data is stored",
    "The physical front of the computer case",
    "The first line of code ever written",
  ]),
  Quiz(376, "What is the 'Backend' of an application?", [
    "The server-side logic, database, and 'brain' of the app",
    "The back of the monitor",
    "The cables behind the desk",
    "The exit button of the app",
  ]),
  Quiz(377, "What is a 'User Experience' (UX) designer's job?", [
    "To make sure the software is easy, logical, and pleasant to use",
    "To write the binary code for the CPU",
    "To fix broken computer screens",
    "To sell the software to customers",
  ]),
  Quiz(378, "What does 'UI' stand for?", [
    "User Interface",
    "Unit Integration",
    "Universal Input",
    "User Intelligence",
  ]),
  Quiz(379, "Software 'Bugs' are usually:", [
    "Errors or flaws in the code that cause unintended behavior",
    "Physical insects inside the computer",
    "A type of new feature",
    "Small microphones used for spying",
  ]),
  Quiz(380, "What is 'Source Code'?", [
    "The human-readable instructions written by programmers",
    "The electric current from the wall",
    "The box the software comes in",
    "The user's password",
  ]),

  // --- Topic 32: Update & Version: Why does software change? ---
  Quiz(381, "Why is it important to install 'Security Patches'?", [
    "To fix vulnerabilities that hackers could exploit",
    "To change the color of the icons",
    "To make the computer heavier",
    "To delete old photos",
  ]),
  Quiz(
    382,
    "What does a version number change from 1.0 to 2.0 usually signify?",
    [
      "A major update with significant new features or changes",
      "A very small bug fix",
      "The software is now free",
      "The software has been deleted",
    ],
  ),
  Quiz(383, "What is 'Beta' software?", [
    "A pre-release version given to users for testing",
    "The final, perfect version of an app",
    "Software designed for fish",
    "Software that has no icons",
  ]),
  Quiz(384, "What is 'Automatic Updating'?", [
    "The software downloads and installs fixes without user intervention",
    "The computer buying a new version with your credit card",
    "The icons moving around on their own",
    "The computer turning on by itself",
  ]),
  Quiz(385, "What is 'Legacy Software'?", [
    "Old software that is still in use but no longer updated",
    "Software that you inherit from a relative",
    "A type of very fast modern app",
    "The first app ever installed on a computer",
  ]),
  Quiz(386, "What is 'Backward Compatibility'?", [
    "The ability of new software to open files from older versions",
    "Software that only works when you walk backwards",
    "Software that deletes old files",
    "The ability to run Windows on a Mac",
  ]),

  // --- Topic 33: Accessibility: Software for Everyone ---
  Quiz(387, "What is 'Accessibility' in software?", [
    "Designing software so people with disabilities can use it",
    "Making the software cheaper",
    "Putting the software on a high shelf",
    "Making the software work without internet",
  ]),
  Quiz(388, "A 'Screen Reader' is an accessibility tool that:", [
    "Converts on-screen text into spoken words for the blind",
    "Cleans the glass of the monitor",
    "Reads your mind to open apps",
    "Takes a photo of the screen",
  ]),
  Quiz(389, "What is 'High Contrast Mode' used for?", [
    "Helping users with visual impairments see elements more clearly",
    "Making the computer run faster",
    "Saving battery life on laptops",
    "Making the colors look like a movie",
  ]),
  Quiz(
    390,
    "What are 'Keyboard Shortcuts' (like Alt+Tab) an example of in accessibility?",
    [
      "Helping users with motor impairments who cannot use a mouse easily",
      "A way to hide your work from your boss",
      "A way to break the keyboard",
      "A secret code for games",
    ],
  ),
  Quiz(391, "What is 'Alt Text' for an image?", [
    "A text description of an image for screen readers",
    "A different color for the photo",
    "A way to delete the photo",
    "The size of the photo file",
  ]),
  Quiz(392, "Captions on a video are primarily an accessibility feature for:", [
    "Users who are deaf or hard of hearing",
    "Users who want to learn a new language",
    "Users who don't have speakers",
    "Users who are blind",
  ]),

  // --- Mixed / Review Interface Questions (393-450) ---
  Quiz(393, "A 'Dialog Box' is a type of window that:", [
    "Asks the user for a decision or input before continuing",
    "Plays music while you work",
    "Connects you to a chat room",
    "Shows you the weather",
  ]),
  Quiz(394, "What is 'Drag and Drop'?", [
    "Clicking an item, moving it, and releasing it in a new location",
    "A type of physical exercise",
    "Dropping your laptop on the floor",
    "Deleting a file by mistake",
  ]),
  Quiz(395, "What is a 'Tooltip'?", [
    "A small text box that appears when you hover over an icon",
    "A tool used to fix a broken mouse",
    "A secret tip on how to win a game",
    "The price of the software",
  ]),
  Quiz(396, "The 'Home' button on a browser takes you to:", [
    "A specific page you have set as your starting point",
    "The physical location of your house",
    "The desktop of your computer",
    "The Google search page only",
  ]),
  Quiz(397, "What are 'Browser Bookmarks'?", [
    "Saved links to your favorite websites for quick access",
    "Physical markers used in paper books",
    "A way to lock your browser with a password",
    "A list of every person you know online",
  ]),
  Quiz(398, "A 'Progress Bar' is used to:", [
    "Show how much of a task (like a download) is completed",
    "Measure the speed of your typing",
    "Change the volume of the computer",
    "Check the battery level only",
  ]),
  Quiz(399, "What is a 'Hyperlink'?", [
    "A clickable piece of text or image that takes you to a new page",
    "A very fast chain",
    "A type of internet cable",
    "A secret password for the web",
  ]),
  Quiz(400, "What is 'Responsive Design'?", [
    "A website or app that changes its layout to fit different screen sizes",
    "An app that answers your questions",
    "A computer that starts up very quickly",
    "A mouse that moves very fast",
  ]),
  Quiz(401, "A 'Hamburger Menu' is usually represented by:", [
    "Three horizontal lines",
    "A picture of a burger",
    "A red circle",
    "A square with a cross",
  ]),
  Quiz(402, "What is 'Bloatware'?", [
    "Unnecessary software pre-installed on a new computer",
    "Software that makes your computer look bigger",
    "A type of computer virus",
    "Software used for dieting",
  ]),
  Quiz(403, "What does it mean if an app is 'Free/Open Source' (FOSS)?", [
    "The app is free to use and the code is available to everyone",
    "The app is only available at the park",
    "The app has no security",
    "The app was made by a ghost",
  ]),
  Quiz(404, "What is 'Dark Mode'?", [
    "A color scheme that uses light-colored text on a dark background",
    "Turning off the monitor completely",
    "A mode for using the computer at night only",
    "A secret mode for hackers",
  ]),
  Quiz(405, "An 'End User' is:", [
    "The person who actually uses the software",
    "The person who stops the computer",
    "The person who deletes the software",
    "A programmer at the end of their career",
  ]),
  Quiz(406, "What is 'EULA'?", [
    "End User License Agreement (the contract you 'Accept')",
    "Every User Loves Apps",
    "Electronic Universal Logic Area",
    "A type of computer battery",
  ]),
  Quiz(407, "What is a 'Scroll Bar' used for?", [
    "Moving up and down through content that is larger than the window",
    "Measuring the temperature of the CPU",
    "Changing the size of the font",
    "Connecting to a printer",
  ]),
  Quiz(408, "A 'Radio Button' in a GUI allows you to:", [
    "Select only one option from a list",
    "Select multiple options at once",
    "Listen to music while you work",
    "Turn off the speakers",
  ]),
  Quiz(409, "A 'Checkbox' allows you to:", [
    "Select one or more options from a list",
    "Select only one option from a list",
    "Delete a file",
    "Check the internet speed",
  ]),
  Quiz(410, "What is 'WYSIWYG'?", [
    "What You See Is What You Get (Visual editors)",
    "Why You Should Install Windows Yearly Google",
    "Western Yellow Standard International Web Group",
    "A type of high-speed internet",
  ]),
  Quiz(411, "Which of these is a 'Native' app?", [
    "An app built specifically for a specific OS (like .exe for Windows)",
    "An app that doesn't need a computer",
    "An app that only works in one country",
    "An app that was made by a native person",
  ]),
  Quiz(412, "What is 'Cloud Storage' integration in an app?", [
    "The ability to save files directly to the internet (like Google Drive)",
    "Storing files in the sky",
    "Making files look like clouds",
    "Deleting files to save space",
  ]),
  Quiz(413, "What is a 'Pop-up'?", [
    "A small window that opens suddenly, often for ads or alerts",
    "A type of toaster for computers",
    "A sound the computer makes when it starts",
    "A button that physically pops out of the keyboard",
  ]),
  Quiz(414, "What is 'Multi-touch'?", [
    "The ability of a screen to recognize more than one finger at once",
    "Touching many computers at the same time",
    "A keyboard with many buttons",
    "A mouse with two scroll wheels",
  ]),
  Quiz(415, "What is 'Haptic Feedback'?", [
    "A physical vibration or movement to confirm a touch or action",
    "A sound that the computer makes",
    "A bright flash on the screen",
    "A type of software bug",
  ]),
  Quiz(416, "What is an 'Algorithm' in software?", [
    "A set of step-by-step instructions to solve a problem",
    "A type of musical instrument",
    "A hardware component in the monitor",
    "The name of a software company",
  ]),
  Quiz(417, "What is 'Scalability' in an app?", [
    "The ability of the app to handle a growing number of users",
    "The ability to change the app's color",
    "The physical weight of the software",
    "The price of the software",
  ]),
  Quiz(418, "What is 'Cross-Platform' compatibility?", [
    "Software that can run on different operating systems (Mac, PC, etc.)",
    "Software that is very angry",
    "Software that only works on one specific laptop",
    "Hardware that can be used as a hammer",
  ]),
  Quiz(419, "What is a 'File Explorer'?", [
    "A GUI tool for viewing and organizing files and folders",
    "A person who searches for lost files",
    "A type of internet browser",
    "A GPS for the computer",
  ]),
  Quiz(420, "What is 'Breadcrumb' navigation?", [
    "A trail of links showing your path (e.g., Home > Photos > 2023)",
    "Feeding birds with your computer",
    "A way to delete your browsing history",
    "A type of computer virus",
  ]),
  Quiz(421, "What is 'Latency' in a GUI?", [
    "The delay between a user action and the visual response",
    "The size of the icons",
    "The brightness of the screen",
    "The number of colors",
  ]),
  Quiz(422, "What is 'Search' functionality in an OS?", [
    "A tool to find files or apps by typing their name",
    "Searching the room for your laptop",
    "A way to call a technician",
    "A type of internet browser",
  ]),
  Quiz(423, "What is 'Desktop Publishing'?", [
    "Using software to create high-quality page layouts (like magazines)",
    "Publishing your desktop to the internet",
    "Making your desk out of paper",
    "Selling computers from your desk",
  ]),
  Quiz(424, "What is 'Speech Recognition'?", [
    "The ability of software to identify and process spoken words",
    "Recognizing who is talking in a room",
    "The computer talking to you",
    "A way to record music",
  ]),
  Quiz(425, "What is a 'Splash Screen'?", [
    "The initial screen shown while a program is loading",
    "A screen that is waterproof",
    "The blue screen of death",
    "A screen that changes colors",
  ]),
  Quiz(426, "What is 'Telemedicine' software?", [
    "Software used to provide healthcare remotely",
    "A TV show about medicine",
    "A type of computer for doctors",
    "A virus that affects hospitals",
  ]),
  Quiz(427, "What is 'Encryption' for an app's data?", [
    "Scrambling the data so it cannot be read without a key",
    "Making the data faster",
    "Deleting the data after use",
    "Copying the data to a USB",
  ]),
  Quiz(428, "What is 'Version Control'?", [
    "A system that records changes to a file or set of files over time",
    "Controlling how many versions of an app exist",
    "The owner of the software company",
    "A way to make the software older",
  ]),
  Quiz(429, "What is a 'Plugin'?", [
    "A software component that adds a specific feature to an existing program",
    "A physical plug for the wall",
    "A way to connect a mouse",
    "A type of small computer",
  ]),
  Quiz(430, "What is 'Open Source' software?", [
    "Software whose source code is available for anyone to see and modify",
    "Software that only works during the day",
    "Software that is very easy to delete",
    "Software made by a famous person",
  ]),
  Quiz(431, "What is 'Proprietary' software?", [
    "Software owned by a company with restricted access to the code",
    "Software that is very expensive",
    "Software that only works on Windows",
    "Software that is legally free",
  ]),
  Quiz(432, "What is 'Freeware'?", [
    "Software that is available at no cost",
    "Software that makes you free",
    "Software that is free from bugs",
    "Software that is only for free people",
  ]),
  Quiz(433, "What is 'Shareware'?", [
    "Software that is free to try for a limited time",
    "Software that you share with your friends",
    "Software that is used for social media",
    "Software that is split into pieces",
  ]),
  Quiz(434, "What is a 'Driver' for software?", [
    "A software component that lets the OS communicate with hardware",
    "A person who delivers the software",
    "The main code of the app",
    "A type of computer virus",
  ]),
  Quiz(435, "What is 'Firmware'?", [
    "Software that is permanently programmed into a hardware device",
    "Software that is very hard",
    "A type of exercise for computers",
    "The physical body of the computer",
  ]),
  Quiz(436, "What is an 'Emulator'?", [
    "Software that allows one computer system to behave like another",
    "A type of computer screen",
    "A way to speed up the internet",
    "A hardware component in the CPU",
  ]),
  Quiz(437, "What is 'Virtualization'?", [
    "Creating a virtual version of something (like an OS or server)",
    "Using a VR headset",
    "A type of computer game",
    "A way to make the computer look real",
  ]),
  Quiz(438, "What is 'Multitasking' in a GUI?", [
    "Running and viewing multiple applications at once",
    "Having two people use one computer",
    "A computer with two monitors",
    "A person who can type with two hands",
  ]),
  Quiz(439, "What is 'Copy and Paste'?", [
    "Duplicating data from one place to another",
    "Making a physical copy of the screen",
    "Deleting a file and then recreating it",
    "A way to share your password",
  ]),
  Quiz(440, "What is a 'Keyboard' in a software context?", [
    "The virtual or physical input method for text",
    "The main brain of the computer",
    "A musical instrument connected to the PC",
    "A type of computer desk",
  ]),
  Quiz(441, "What is 'Mouse Sensitivity'?", [
    "The ratio of physical mouse movement to on-screen pointer movement",
    "How much the mouse likes the user",
    "The color of the mouse",
    "The weight of the mouse",
  ]),
  Quiz(442, "What is a 'Shortcut' on the desktop?", [
    "A small file that links to a program or document",
    "A faster way to walk to the computer",
    "A way to skip the login screen",
    "A type of small computer",
  ]),
  Quiz(443, "What is 'Resolution' for a monitor?", [
    "The number of pixels displayed on the screen",
    "A promise to use the computer less",
    "The speed of the internet",
    "The brightness of the lights",
  ]),
  Quiz(444, "What is 'Refresh Rate'?", [
    "How many times per second the screen updates the image",
    "How often you should buy a new computer",
    "The speed of the fan",
    "How often the computer restarts",
  ]),
  Quiz(445, "What is 'Streaming' software?", [
    "Software that plays media as it is being downloaded",
    "Software used for swimming",
    "A type of water-cooled computer",
    "A way to send emails very fast",
  ]),
  Quiz(446, "What is 'Synchronization' (Sync)?", [
    "Ensuring data is the same across multiple devices (like phone and PC)",
    "Two computers talking at the same time",
    "A type of computer dance",
    "Making the computer clock exact",
  ]),
  Quiz(447, "What is a 'User Profile'?", [
    "A set of settings and files associated with a specific user",
    "A picture of the user",
    "The user's social media page",
    "The user's medical record",
  ]),
  Quiz(448, "What is 'Authentication'?", [
    "The process of verifying a user's identity (like a password)",
    "Making the software look authentic",
    "A type of computer virus",
    "The speed of the internet",
  ]),
  Quiz(449, "What is 'Authorization'?", [
    "Determining what an authenticated user is allowed to do",
    "The person who wrote the software",
    "A type of computer screen",
    "Making the computer official",
  ]),
  Quiz(450, "What is the 'System Tray'?", [
    "An area of the GUI that shows status icons and background apps",
    "A physical tray for holding your coffee",
    "The place where you put the hard drive",
    "A folder for storing system files",
  ]),
];
final List<Quiz> basicQuizM6 = [
  // --- Topic 34: What is a Network? (Nodes and Links) ---
  Quiz(451, "In networking, what is a 'Node'?", [
    "Any device connected to the network (PC, Phone, Printer)",
    "A physical cable made of copper",
    "A password used to join WiFi",
    "The speed of the internet connection",
  ]),
  Quiz(452, "What is a 'Link' in a network?", [
    "The physical or wireless connection between two nodes",
    "A website address like google.com",
    "A person who fixes computers",
    "A type of computer virus",
  ]),
  Quiz(453, "What is a LAN (Local Area Network)?", [
    "A network covering a small area like a home or office",
    "The entire internet",
    "A network that only works for Apple devices",
    "A type of satellite connection",
  ]),
  Quiz(454, "What is a WAN (Wide Area Network)?", [
    "A network that spans a large distance, like a country or the world",
    "A network that only works inside one room",
    "A wireless connection for mice and keyboards",
    "A way to charge your phone wirelessly",
  ]),
  Quiz(455, "The 'Internet' is best described as:", [
    "A global network of many interconnected smaller networks",
    "A single giant computer owned by Google",
    "A series of satellites only",
    "A box located in the center of the ocean",
  ]),

  // --- Topic 35: IP Addresses: The Phone Numbers of the Internet ---
  Quiz(456, "What does 'IP' stand for in IP Address?", [
    "Internet Protocol",
    "Internal Password",
    "Instant Packet",
    "Information Portal",
  ]),
  Quiz(457, "What is the main purpose of an IP address?", [
    "To uniquely identify a device so data knows where to go",
    "To tell the computer how fast to run",
    "To encrypt your emails",
    "To show the user's name on the screen",
  ]),
  Quiz(458, "Which of these is a valid IPv4 address?", [
    "192.168.1.1",
    "256.0.0.1",
    "hello.world.com",
    "GIGA-BIT-ADDRESS",
  ]),
  Quiz(459, "Why was IPv6 created?", [
    "Because we ran out of available IPv4 addresses",
    "Because IPv4 was too fast for old computers",
    "To make the internet more expensive",
    "To allow computers to talk without wires",
  ]),
  Quiz(460, "A 'Public' IP address is the one that:", [
    "The rest of the internet uses to identify your home network",
    "Only you can see inside your own house",
    "Changes every time you move the mouse",
    "Is given to you by the computer manufacturer",
  ]),

  // --- Topic 36: DNS: The Phonebook (How google.com becomes an IP) ---
  Quiz(461, "What does DNS stand for?", [
    "Domain Name System",
    "Digital Network Service",
    "Data Name Storage",
    "Direct Network Signal",
  ]),
  Quiz(462, "What is the primary job of a DNS server?", [
    "To translate human-friendly names (google.com) into IP addresses",
    "To store all the world's websites",
    "To speed up your downloads",
    "To provide electricity to the router",
  ]),
  Quiz(463, "If a DNS server is 'down', what usually happens?", [
    "You can't reach websites by name, but you could by IP address",
    "The internet physically stops working for everyone",
    "Your computer will delete its files",
    "Your monitor will turn off",
  ]),
  Quiz(464, "What is a 'Domain Name'?", [
    "A readable name for a website (e.g., wikipedia.org)",
    "A secret password for a server",
    "The name of the computer's owner",
    "A type of internet cable",
  ]),

  // --- Topic 37: WiFi vs. Mobile Data: How your phone connects ---
  Quiz(465, "WiFi uses what kind of waves to transmit data?", [
    "Radio waves",
    "Sound waves",
    "Light waves (visible)",
    "Magnetic pulses",
  ]),
  Quiz(
    466,
    "What is the main difference between WiFi and Mobile Data (LTE/5G)?",
    [
      "WiFi uses a local router; Mobile Data uses cellular towers",
      "WiFi is only for computers; Mobile Data is only for phones",
      "Mobile Data is always free; WiFi is not",
      "WiFi is faster than light; Mobile Data is not",
    ],
  ),
  Quiz(467, "What is a 'Router'?", [
    "A device that directs data packets between different networks",
    "A tool for cutting wood",
    "A program for drawing pictures",
    "The screen of a smartphone",
  ]),
  Quiz(468, "What does 'Bandwidth' refer to in a connection?", [
    "The maximum rate of data transfer across a path",
    "The physical width of the router",
    "The number of devices in the room",
    "The color of the WiFi signal icon",
  ]),

  // --- Topic 38: The Journey: From your Phone to a Global Website ---
  Quiz(469, "What is a 'Packet' in networking?", [
    "A small chunk of data sent over a network",
    "A physical box used to ship computers",
    "A group of 8 bits",
    "A type of computer battery",
  ]),
  Quiz(470, "What is a 'Hop'?", [
    "When a packet moves from one router to the next",
    "When a user jumps while using a phone",
    "When the internet disconnects",
    "When the CPU gets hot",
  ]),
  Quiz(
    471,
    "Which tool can you use to see the path a packet takes to a server?",
    ["Traceroute (tracert)", "Ping", "Ipconfig", "Task Manager"],
  ),
  Quiz(472, "The undersea cables that connect continents are mostly made of:", [
    "Fiber optics (Glass and Light)",
    "Copper wire",
    "Radio antennas",
    "Plastic string",
  ]),

  // --- Topic 39: Censorship: How Governments block websites ---
  Quiz(473, "What is 'IP Blocking'?", [
    "Preventing a connection to a specific IP address",
    "Blocking the power to the computer",
    "Deleting the user's name",
    "Changing the color of a website",
  ]),
  Quiz(474, "How does 'DNS Filtering' work for censorship?", [
    "The DNS server is told to return the wrong IP or an error for a site",
    "The website's code is deleted from the server",
    "The user's keyboard is disabled",
    "The router is turned off remotely",
  ]),
  Quiz(475, "What is a 'Firewall'?", [
    "A security system that monitors and controls network traffic",
    "A wall made of fire to protect the server room",
    "The plastic case of a router",
    "A program that deletes viruses only",
  ]),

  // --- Topic 40: VPNs: The Secret Tunnel to Freedom ---
  Quiz(476, "What does VPN stand for?", [
    "Virtual Private Network",
    "Very Personal Number",
    "Visual Path Network",
    "Verified Packet Node",
  ]),
  Quiz(477, "A VPN protects your privacy by:", [
    "Encrypting your data and hiding your real IP address",
    "Making the internet 10 times faster",
    "Deleting your browsing history from your phone",
    "Preventing your monitor from being seen",
  ]),
  Quiz(478, "What is 'Tunneling' in a VPN?", [
    "Encapsulating data packets inside another protocol for security",
    "Digging a hole for internet cables",
    "Hiding the computer under the desk",
    "A type of hardware error",
  ]),
  Quiz(479, "Why would someone use a VPN for 'Geo-unblocking'?", [
    "To access content that is only available in a different country",
    "To find out where their friends are located",
    "To speed up their local WiFi",
    "To change the language of their OS",
  ]),

  // --- Topic 41: HTTP/HTTPS: The Rules of the Web ---
  Quiz(480, "What does 'HTTP' stand for?", [
    "HyperText Transfer Protocol",
    "High Tech Text Process",
    "Home Terminal Type Path",
    "Hyperlink Text Transfer Power",
  ]),
  Quiz(481, "What is the difference between HTTP and HTTPS?", [
    "HTTPS is encrypted and secure; HTTP is not",
    "HTTP is for videos; HTTPS is for text",
    "HTTPS is only for Apple websites",
    "There is no difference",
  ]),
  Quiz(482, "What does the 'S' in HTTPS stand for?", [
    "Secure",
    "System",
    "Simple",
    "Server",
  ]),
  Quiz(483, "A '404 Error' means:", [
    "The requested page was not found on the server",
    "The internet is too slow",
    "The computer is out of RAM",
    "The user's password is wrong",
  ]),
  Quiz(484, "What is a 'Web Server'?", [
    "A computer that stores website files and sends them to users",
    "A person who works at an internet cafe",
    "A type of browser",
    "The physical box that holds the monitor",
  ]),

  // --- Topic 42: The Cloud: It’s Just Someone Else’s Computer ---
  Quiz(485, "What is 'The Cloud'?", [
    "Servers accessed over the internet and the software/databases on them",
    "A giant hard drive floating in the atmosphere",
    "Data stored in a weather satellite",
    "The white icons on the screen",
  ]),
  Quiz(486, "Which of these is a benefit of 'Cloud Computing'?", [
    "Accessing files from any device with an internet connection",
    "It works perfectly without electricity",
    "It makes your physical laptop heavier",
    "It prevents all types of viruses",
  ]),
  Quiz(487, "Which of these is a popular Cloud Storage service?", [
    "Google Drive / Dropbox / iCloud",
    "Windows Media Player",
    "Microsoft Paint",
    "The Recycle Bin",
  ]),
  Quiz(488, "Where is 'Cloud' data physically stored?", [
    "In massive data centers with thousands of servers",
    "Inside a literal cloud",
    "On the user's phone only",
    "Under the ocean in a glass box",
  ]),

  // --- Mixed / Review Questions (489-550) ---
  Quiz(489, "What is 'Latency' in a network?", [
    "The time (delay) it takes for a packet to travel to its destination",
    "The size of the packet",
    "The number of users on the WiFi",
    "The price of the internet",
  ]),
  Quiz(490, "What is 'Ethernet'?", [
    "A technology for connecting devices in a wired LAN",
    "A wireless signal for phones",
    "A type of internet browser",
    "The name of the first computer",
  ]),
  Quiz(491, "What is a 'MAC Address'?", [
    "A unique physical ID assigned to a network interface card (NIC)",
    "The address of Apple's headquarters",
    "An address used only by Macintosh computers",
    "A password for a website",
  ]),
  Quiz(492, "The protocol used for sending emails is usually:", [
    "SMTP",
    "HTTP",
    "PNG",
    "FTP",
  ]),
  Quiz(493, "What is 'FTP' used for?", [
    "File Transfer Protocol (moving files between computers)",
    "Fast Text Printing",
    "Folder Tracking Power",
    "Facebook Thread Process",
  ]),
  Quiz(494, "A 'Static IP' address is one that:", [
    "Never changes",
    "Changes every hour",
    "Only works for printers",
    "Is invisible to the internet",
  ]),
  Quiz(495, "A 'Dynamic IP' address is one that:", [
    "Is assigned automatically and can change over time",
    "Is very fast",
    "Is permanent and expensive",
    "Can only be used by one person",
  ]),
  Quiz(496, "What is a 'Gateway' in a network?", [
    "The node that connects a local network to the outside internet",
    "A brand of old computers",
    "A secret door in a firewall",
    "The first page of a website",
  ]),
  Quiz(497, "What is 'Phishing'?", [
    "A scam to trick you into giving away personal information",
    "A game played on a boat",
    "A way to catch computer viruses",
    "Searching for files on the internet",
  ]),
  Quiz(498, "What does 'WWW' stand for?", [
    "World Wide Web",
    "Web Wide World",
    "Wired World Web",
    "Working Web World",
  ]),
  Quiz(499, "What is an 'ISP'?", [
    "Internet Service Provider",
    "Internet Security Protocol",
    "Instant System Power",
    "Internal Server Path",
  ]),
  Quiz(500, "What is 'Broadband'?", [
    "High-speed internet access that is always on",
    "A very wide computer case",
    "A type of music for computers",
    "A musical group of programmers",
  ]),
  Quiz(501, "What is 'Packet Loss'?", [
    "When data chunks fail to reach their destination",
    "Losing your physical laptop",
    "Forgetting your password",
    "When a file is too small to see",
  ]),
  Quiz(502, "What is a 'Modem'?", [
    "A device that converts digital data into signals for transmission",
    "A modern version of a computer",
    "A tool for moving the mouse",
    "A type of computer screen",
  ]),
  Quiz(503, "What is 'Band Steering' in WiFi?", [
    "Automatically moving devices between 2.4GHz and 5GHz bands",
    "Driving a car with a laptop",
    "Changing the color of the WiFi router",
    "Using a steering wheel to play games",
  ]),
  Quiz(504, "Which WiFi frequency is better at passing through walls?", [
    "2.4 GHz",
    "5 GHz",
    "60 GHz",
    "1 GHz",
  ]),
  Quiz(505, "Which WiFi frequency is usually faster but has less range?", [
    "5 GHz",
    "2.4 GHz",
    "Radio AM",
    "Satellite",
  ]),
  Quiz(506, "What is 'WPA3'?", [
    "The latest security protocol for protecting WiFi networks",
    "A type of fast internet cable",
    "The name of a gaming company",
    "A way to charge your laptop",
  ]),
  Quiz(507, "What is 'Port Forwarding'?", [
    "Allowing external devices to access a specific device on a LAN",
    "Moving a physical port to the front of the case",
    "Shipping a computer across the ocean",
    "Changing the name of a file",
  ]),
  Quiz(508, "What is 'Bluetooth'?", [
    "A short-range wireless technology for connecting peripherals",
    "A type of blue light from the screen",
    "A dental disease for computers",
    "A high-speed internet cable",
  ]),
  Quiz(509, "What is 'TCP/IP'?", [
    "The suite of protocols that govern the internet",
    "A brand of networking cables",
    "A type of computer monitor",
    "A programming language for websites",
  ]),
  Quiz(510, "What does 'TCP' ensure?", [
    "That all data packets arrive in the correct order and without errors",
    "That the internet is very cheap",
    "That the monitor is bright enough",
    "That the user types correctly",
  ]),
  Quiz(511, "What is 'UDP'?", [
    "A faster protocol that doesn't check for errors (used for streaming)",
    "Universal Data Power",
    "Underground Data Path",
    "Universal Digital Printing",
  ]),
  Quiz(
    512,
    "If you are playing a fast-paced online game, you care most about:",
    ["Ping / Latency", "Monitor size", "Hard drive color", "Keyboard weight"],
  ),
  Quiz(513, "What is a 'Proxy Server'?", [
    "A server that acts as an intermediary for requests from clients",
    "A person who uses a computer for you",
    "A fake computer",
    "A type of keyboard",
  ]),
  Quiz(514, "What is 'End-to-End Encryption'?", [
    "Only the sender and receiver can read the messages",
    "The whole internet can see the message",
    "The message is deleted immediately",
    "The message is sent twice",
  ]),
  Quiz(515, "A 'Subnet' is:", [
    "A logical subdivision of an IP network",
    "A type of underwater internet cable",
    "A small internet browser",
    "A network for submarines",
  ]),
  Quiz(516, "What is 'BGP' (Border Gateway Protocol)?", [
    "The system that routes data between different ISPs across the world",
    "A way to buy computers from other countries",
    "A protocol for playing games",
    "A type of graphics card",
  ]),
  Quiz(517, "What is 'Fiber to the Home' (FTTH)?", [
    "High-speed internet using fiber optic cables directly to a house",
    "Eating more fiber while using a PC",
    "Making a house out of glass",
    "A type of wireless phone connection",
  ]),
  Quiz(518, "What is 'Starlink'?", [
    "A satellite-based internet service",
    "A game about space",
    "A type of star-shaped router",
    "The name of a famous programmer",
  ]),
  Quiz(519, "What is a 'Captive Portal'?", [
    "A web page shown before you can use public WiFi (like at a hotel)",
    "A door that locks your laptop",
    "A website that is trapped",
    "A type of computer virus",
  ]),
  Quiz(520, "What is 'Net Neutrality'?", [
    "The principle that all internet traffic should be treated equally",
    "A network that is not working",
    "Neutral colors for website design",
    "The center of the internet",
  ]),
  Quiz(521, "What is 'Whitelisting'?", [
    "Only allowing specific, approved items (like IPs or Apps) to pass",
    "Painting your computer white",
    "A way to delete your history",
    "Making the screen brighter",
  ]),
  Quiz(522, "What is 'Blacklisting'?", [
    "Preventing specific, banned items from accessing a network",
    "Turning off the screen",
    "A type of dark mode",
    "The name of a hacker group",
  ]),
  Quiz(523, "What is an 'Intranet'?", [
    "A private network accessible only to an organization's staff",
    "The internet inside a computer",
    "A net used to catch computers",
    "A very slow internet",
  ]),
  Quiz(524, "What is 'IOT'?", [
    "Internet of Things (connected everyday objects like smart fridges)",
    "Internal Output Transfer",
    "Instant Operating Tool",
    "Information of Technology",
  ]),
  Quiz(525, "What is '2FA' (Two-Factor Authentication)?", [
    "Using two different methods to verify your identity (like password + SMS)",
    "Using two keyboards at once",
    "Having two people use one computer",
    "Two different types of WiFi",
  ]),
  Quiz(526, "What is 'Malware'?", [
    "Malicious software designed to damage or disrupt a computer",
    "Software for shopping malls",
    "A type of high-speed hardware",
    "The physical parts of a router",
  ]),
  Quiz(527, "A 'Browser Cookie' can be used to:", [
    "Keep you logged into a website",
    "Increase your internet speed",
    "Clean your hard drive",
    "Change your IP address",
  ]),
  Quiz(528, "What is 'Search Engine Optimization' (SEO)?", [
    "Making a website easier for search engines like Google to find",
    "Buying a better search engine",
    "Fixing a slow search bar",
    "The person who runs Google",
  ]),
  Quiz(529, "What is 'HTML'?", [
    "The standard language used to create the structure of web pages",
    "A type of high-speed internet",
    "The name of the first browser",
    "A password for a server",
  ]),
  Quiz(530, "What is 'CSS' used for in websites?", [
    "Defining the style and layout (colors, fonts) of a page",
    "Calculating complex math",
    "Storing the website's database",
    "Protecting the website from hackers",
  ]),
  Quiz(531, "What is a 'Hyperlink'?", [
    "An element in a document that links to another location or file",
    "A very fast chain",
    "A secret message",
    "A type of internet cable",
  ]),
  Quiz(532, "What is 'JavaScript'?", [
    "A programming language that makes websites interactive",
    "The coffee used by programmers",
    "A way to speed up the internet",
    "A type of computer font",
  ]),
  Quiz(533, "What is 'Encryption at Rest'?", [
    "Protecting data while it is stored on a disk",
    "Protecting data while the computer is off",
    "Encrypting data very slowly",
    "Data that is not being used",
  ]),
  Quiz(534, "What is 'Encryption in Transit'?", [
    "Protecting data while it is moving across a network",
    "Protecting data inside a car",
    "Encrypting data while you type",
    "Moving data from a USB to a PC",
  ]),
  Quiz(535, "What is a 'Denial of Service' (DoS) attack?", [
    "Flooding a server with traffic to make it crash or unavailable",
    "Saying 'No' to a computer",
    "Disconnecting the power to a server",
    "Deleting the server's files",
  ]),
  Quiz(536, "What is 'DDoS'?", [
    "Distributed Denial of Service (using many computers to attack)",
    "Digital Data Output System",
    "Dual Data Operating System",
    "Direct Denial of System",
  ]),
  Quiz(537, "A 'Cookie' is stored on the:", [
    "User's computer (Client)",
    "Server's hard drive",
    "Internet router",
    "Cloud only",
  ]),
  Quiz(538, "What is 'Social Engineering'?", [
    "Manipulating people into giving up confidential information",
    "Building a social media app",
    "Connecting two people via a network",
    "A type of computer engineering",
  ]),
  Quiz(539, "What is 'Ransomware'?", [
    "Malware that locks your files until you pay a fee",
    "Software that you buy for a high price",
    "A virus that sends you money",
    "Software that is legally free",
  ]),
  Quiz(540, "What is a 'Botnet'?", [
    "A network of private computers infected with malicious software",
    "A net used to catch robots",
    "A group of people talking to bots",
    "The brain of a robot",
  ]),
  Quiz(541, "What is 'Bitrate'?", [
    "The number of bits processed per unit of time (affects video quality)",
    "The speed of the computer's clock",
    "How often a computer bites",
    "The price of a bitcoin",
  ]),
  Quiz(542, "What is 'Buffering'?", [
    "Pre-loading data into a reserved area of memory to prevent pauses",
    "Cleaning the computer screen",
    "A slow internet connection",
    "A type of computer virus",
  ]),
  Quiz(543, "What is a 'URL Shortener'?", [
    "A tool that makes a long web address much shorter",
    "A tool that makes the monitor smaller",
    "A way to delete web history",
    "A type of computer font",
  ]),
  Quiz(544, "What is 'Big Data'?", [
    "Extremely large data sets that may be analyzed for patterns",
    "A very large hard drive",
    "A computer that is bigger than a room",
    "The total weight of the internet",
  ]),
  Quiz(545, "What is 'Data Mining'?", [
    "The process of discovering patterns in large data sets",
    "Digging for gold inside a computer",
    "Deleting useless data",
    "Moving data from one drive to another",
  ]),
  Quiz(546, "What is a 'Digital Footprint'?", [
    "The trail of data you leave behind while using the internet",
    "A physical mark left on the keyboard",
    "The size of your computer case",
    "The password for your computer",
  ]),
  Quiz(547, "What is 'Privacy Policy'?", [
    "A statement explaining how a company collects and uses your data",
    "A rule that you cannot use the internet",
    "A way to hide your name on social media",
    "A secret law for programmers",
  ]),
  Quiz(548, "What is 'Dark Web'?", [
    "A part of the internet that requires special software to access",
    "The internet when the lights are off",
    "A website with a black background",
    "A part of the internet that is broken",
  ]),
  Quiz(549, "What is 'Encryption Key'?", [
    "A piece of information used to lock or unlock encrypted data",
    "A physical key for a computer lock",
    "The 'Enter' key on the keyboard",
    "A password for a router",
  ]),
  Quiz(550, "What is the ultimate goal of the internet?", [
    "To connect people and information globally",
    "To sell more computers",
    "To make everyone use Google",
    "To replace physical books entirely",
  ]),
];
final List<Quiz> basicQuizM7 = [
  // --- The Basics: What is AI? ---
  Quiz(551, "What does AI stand for?", [
    "Artificial Intelligence",
    "Automated Internet",
    "Advanced Integration",
    "Actual Information",
  ]),
  Quiz(552, "Is AI a physical robot with a metal body?", [
    "No, it is software (code) that runs on computers",
    "Yes, it always has a body",
    "Only if it has a voice",
    "Yes, it lives inside the monitor",
  ]),
  Quiz(553, "What makes AI 'smart'?", [
    "It finds patterns in massive amounts of data",
    "It has a human brain inside it",
    "It is a magic box",
    "It never sleeps",
  ]),
  Quiz(554, "What is 'Machine Learning'?", [
    "A way for computers to learn from examples",
    "A computer that builds other computers",
    "A robot that cleans the house",
    "The speed of the internet",
  ]),
  Quiz(555, "Which of these is a popular AI you can chat with?", [
    "Gemini (or ChatGPT)",
    "Microsoft Excel",
    "Google Chrome",
    "Adobe Photoshop",
  ]),
  Quiz(556, "Can AI 'think' exactly like a human?", [
    "No, it uses math to guess the best answer",
    "Yes, it has feelings and a soul",
    "Only when it is plugged in",
    "Yes, it goes to school",
  ]),
  Quiz(557, "What is an AI 'Model'?", [
    "The 'digital brain' that has been trained on info",
    "A person who poses for photos",
    "The plastic case of a laptop",
    "A type of computer screen",
  ]),
  Quiz(558, "Where does AI get its knowledge?", [
    "From huge datasets of books and websites",
    "It makes everything up from scratch",
    "It listens to people through the walls",
    "From a secret physical library",
  ]),

  // --- Using AI: Chatting & Prompts ---
  Quiz(559, "What is a 'Prompt'?", [
    "The instruction or question you type to the AI",
    "The speed of the computer",
    "A type of error message",
    "The 'Enter' key",
  ]),
  Quiz(560, "What is 'Prompt Engineering'?", [
    "The skill of writing clear instructions",
    "Building a physical computer engine",
    "Repairing a broken keyboard",
    "Fixing a car engine",
  ]),
  Quiz(561, "Why is it helpful to give the AI 'Context'?", [
    "It helps the AI understand the specific situation",
    "It makes the AI's voice louder",
    "It saves battery life",
    "It changes the screen color",
  ]),
  Quiz(562, "Can AI help you write an email?", [
    "Yes, it can draft messages based on your notes",
    "No, AI cannot use letters",
    "Only if you pay for a stamp",
    "Only if you are a manager",
  ]),
  Quiz(563, "Can AI summarize a long article?", [
    "Yes, it can pick out the most important points",
    "No, it can only read one word at a time",
    "Only if the article is in English",
    "Only if you print it out first",
  ]),
  Quiz(564, "What happens if your prompt is too short (like 'Help')?", [
    "The AI won't know what you need and might be vague",
    "The AI will ignore you",
    "The computer will turn off",
    "The AI will ask for your name",
  ]),
  Quiz(565, "What is an AI 'Persona'?", [
    "Asking the AI to act like a specific expert",
    "The name of the AI's mother",
    "The color of the chat bubble",
    "The password for the AI",
  ]),

  // --- Mistakes: When AI is Wrong ---
  Quiz(566, "What is an AI 'Hallucination'?", [
    "When the AI says something false that sounds true",
    "When the AI screen starts shaking",
    "When the AI starts dreaming",
    "When the computer gets too hot",
  ]),
  Quiz(567, "Should you trust everything an AI says?", [
    "No, you should always double-check facts",
    "Yes, computers never make mistakes",
    "Only if the AI says 'I promise'",
    "Only if it is daytime",
  ]),
  Quiz(568, "Why does AI sometimes get math wrong?", [
    "Because it predicts words, not always 'calculating'",
    "Because it doesn't like numbers",
    "Because the numbers are too big",
    "Because math is too old",
  ]),
  Quiz(569, "Is AI good at news that happened 5 minutes ago?", [
    "Not always; it has a 'cutoff date' for its training",
    "Yes, it knows everything instantly",
    "No, it only knows about history",
    "Only if you use a specific browser",
  ]),
  Quiz(570, "If an AI is wrong, can you correct it?", [
    "Yes, you can tell it the mistake and it will try to fix it",
    "No, you must delete the app",
    "No, once it's wrong, it stays wrong",
    "Only if you restart the computer",
  ]),

  // --- Creativity: Images & Art ---
  Quiz(571, "What is 'Generative AI'?", [
    "AI that can create new content (text, images, music)",
    "AI that generates electricity",
    "A type of battery",
    "AI for the older generation",
  ]),
  Quiz(572, "How do you make an AI 'draw' a picture?", [
    "By describing it in text",
    "By clicking the screen 100 times",
    "By uploading a physical pencil",
    "By waving at the camera",
  ]),
  Quiz(573, "Can AI create music?", [
    "Yes, it can generate songs and melodies",
    "No, it doesn't have ears",
    "Only if you hum into the microphone",
    "Only classical music",
  ]),
  Quiz(574, "What is a 'Deepfake'?", [
    "A fake video/audio that looks like a real person",
    "A very deep hole in a computer chip",
    "A secret password for hackers",
    "A type of computer screen",
  ]),
  Quiz(575, "Can AI write a story for you?", [
    "Yes, it can create characters and plots",
    "No, it can only write facts",
    "Only if you give it a title",
    "No, it doesn't have an imagination",
  ]),

  // --- Safety & Privacy ---
  Quiz(576, "Should you tell an AI your bank passwords?", [
    "No, never share private info with an AI",
    "Yes, it helps the AI remember you",
    "Only if you are on your own WiFi",
    "Yes, AI is safer than a person",
  ]),
  Quiz(577, "What is 'AI Bias'?", [
    "When an AI is unfair due to patterns in its data",
    "When an AI prefers one brand of phone",
    "When an AI is too fast",
    "When the screen is tilted",
  ]),
  Quiz(578, "Why be careful with secrets and AI?", [
    "The AI might use your info to learn for others",
    "The AI will steal your money",
    "The computer will overheat",
    "The AI will tell your friends",
  ]),
  Quiz(579, "Is AI safe for kids to use?", [
    "Yes, but usually with supervision and filters",
    "No, it is only for adults",
    "Yes, it is a perfect babysitter",
    "Only if they use a tablet",
  ]),
  Quiz(580, "Who is responsible for what an AI says?", [
    "The humans who built it and the humans who use it",
    "The AI itself",
    "The internet router",
    "The computer monitor",
  ]),

  // --- Everyday Life ---
  Quiz(581, "Does Netflix use AI?", [
    "Yes, to recommend movies you might like",
    "No, it uses magic",
    "Only for the volume control",
    "Only on smart TVs",
  ]),
  Quiz(582, "Is Siri or Alexa a type of AI?", [
    "Yes, they use AI to understand your voice",
    "No, they are just tape recorders",
    "No, they are tiny people inside the phone",
    "Only when they tell jokes",
  ]),
  Quiz(583, "Can AI translate a menu in another language?", [
    "Yes, it can translate text from photos",
    "No, you need a physical dictionary",
    "Only if the menu is in English",
    "Only if you type it manually",
  ]),
  Quiz(584, "Do self-driving cars use AI?", [
    "Yes, to 'see' the road and make decisions",
    "No, they follow an invisible string",
    "No, they are remote controlled",
    "Only when they park",
  ]),
  Quiz(585, "Can AI help you find a job?", [
    "Yes, it can help write resumes and search",
    "No, AI doesn't know what a job is",
    "Only if you are a computer programmer",
    "Only if you pay the AI",
  ]),

  // --- The Future ---
  Quiz(586, "What is an 'AI Assistant'?", [
    "A tool designed to help you with daily tasks",
    "A person who works for a robot",
    "A type of computer mouse",
    "A robot that cleans your room",
  ]),
  Quiz(587, "Will AI replace all teachers?", [
    "No, but it will be a powerful tool for them",
    "Yes, schools will close soon",
    "No, AI cannot read books",
    "Only in university",
  ]),
  Quiz(588, "Can AI be 'creative'?", [
    "It can mix ideas in new ways, but has no 'soul'",
    "Yes, it is more creative than any human",
    "No, it only copies things exactly",
    "Only if it's drawing",
  ]),
  Quiz(589, "What is 'Human-in-the-loop'?", [
    "When a human checks and approves AI work",
    "A human standing in a circle of PCs",
    "A type of robot toy",
    "A physical loop of wire",
  ]),
  Quiz(590, "Can AI learn your personal writing style?", [
    "Yes, if you give it examples of your work",
    "No, it only has one voice",
    "Only if you type very slowly",
    "Only if you are a famous writer",
  ]),

  // --- Quick Facts ---
  Quiz(591, "What is a 'Token'?", [
    "How AI 'counts' parts of words",
    "A physical coin",
    "A computer virus",
    "A type of screen pixel",
  ]),
  Quiz(592, "Does AI need electricity?", [
    "Yes, a lot of it to run large servers",
    "No, it runs on 'brain power'",
    "Only when it is talking",
    "No, it uses solar power only",
  ]),
  Quiz(593, "What is a 'Chatbot'?", [
    "A simple AI you talk to in a chat window",
    "A robot that cleans shoes",
    "A type of internet speed",
    "A computer virus",
  ]),
  Quiz(594, "Can AI help doctors?", [
    "Yes, it can help look at X-rays faster",
    "No, AI is scared of hospitals",
    "Only if the doctor is a robot",
    "Only for booking appointments",
  ]),
  Quiz(595, "Is AI 'alive'?", [
    "No, it is just code and math",
    "Yes, it breathes electricity",
    "Only when the screen is on",
    "Yes, it has feelings",
  ]),
  Quiz(596, "Can AI write poetry?", [
    "Yes, it can follow rhyming rules",
    "No, it doesn't understand beauty",
    "Only if it's a sad poem",
    "Only in French",
  ]),
  Quiz(597, "What is 'Big Data'?", [
    "The massive amount of info used to train AI",
    "A very heavy computer",
    "The name of a tech company",
    "A giant hard drive",
  ]),
  Quiz(598, "Does AI have a long-term memory?", [
    "Usually only for the current chat session",
    "Yes, it remembers your birth date",
    "No, it forgets every 5 seconds",
    "Only if you save the file",
  ]),
  Quiz(599, "Is AI always 'neutral'?", [
    "No, it can be biased based on its data",
    "Yes, it has no opinions",
    "Only on weekdays",
    "Only if it is free",
  ]),
  Quiz(600, "What is the best way to learn AI?", [
    "By using it and staying curious!",
    "By waiting for a robot to explain it",
    "By throwing your computer away",
    "By only reading old books",
  ]),
];
final List<List<Quiz>> basicQuizzes = [
  basicQuizM1,
  basicQuizM2,
  basicQuizM3,
  basicQuizM4,
  basicQuizM5,
  basicQuizM6,
  basicQuizM7,
];

final Map<String, List<List<Quiz>>> quizzes = {
  "python": pythonQuizzes,
  "java": javaQuizzes,
  "basic": basicQuizzes,
};
