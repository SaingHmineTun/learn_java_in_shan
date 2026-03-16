
import '../utils/quiz.dart';

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