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

final Map<String, List<List<Quiz>>> quizzes = {
  "python": pythonQuizzes,
  "java": javaQuizzes,
};
