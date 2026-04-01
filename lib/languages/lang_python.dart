
import '../utils/quiz.dart';
import '../utils/utils.dart';

const Map<int, String> pythonTopics = {
  1: "Introduction to Python",
  2: "Built-in Data Types",
  3: "Python Operators",
  4: "Statements",
  5: "Functions",
  6: "Modules, Classes and Objects",
  7: "File input and output",
  8: "Web Requests in Python",
};

const Map<int, Map<int, String>> pythonModules = {
  1: {
    1: "What is Python",
    2: "Installing Python",
    3: "Run Python on Terminal",
    4: "Running python as a python program",
    5: "Installing PyCharm Community Edition",
    6: "Running Hello World with Pycharm",
    7: "Python Comments",
    8: "Variable in Python",
  },
  2: {
    9: "Python Basic Data Types",
    10: "Boolean Type",
    11: "Numeric Types",
    12: "String Type",
    13: "Python Casting",
    14: "None Type",
    15: "List Type",
    16: "Tuple Type",
    17: "Dictionary Type",
    18: "Set Type",
    19: "Set Operations",
  },
  3: {
    20: "Python Operators",
    21: "Arithmetic Operators",
    22: "Assignment Operators",
    23: "Comparison Operators",
    24: "Logical Operators",
    25: "Identity Operators",
    26: "Membership Operators",
    27: "Operator Precedence",
  },
  4: {
    28: "If conditional statement",
    29: "Match conditional statement",
    30: "While loop statement",
    31: "For loop statement",
    32: "try: except: statement",
    33: "Raise an exception",
  },
  5: {
    34: "Functions",
    35: "Function arguments",
    36: "Returning values",
    37: "User Input",
    38: "Python Lambda",
    39: "Scope",
  },
  6: {
    40: "Module in Python",
    41: "Variables in module",
    42: "Renaming a module",
    43: "from import module",
    44: "Class and Object",
    45: "Methods",
    46: "The __init__() method",
    47: "The __str__() method",
    48: "Inheritance",
    49: "Polymorphism",
    50: "Operator Polymorphism",
    51: "Function Polymorphism",
    52: "Method Polymorphism",
  },
  7: {
    53: "File Input/Output",
    54: "Read a file",
    55: "Create or Write to a file",
    56: "Delete a file or folder",
  },
  8: {
    57: "What is an api?",
    58: "Installing and importing requests dependency",
    59: "Getting a random joke",
    60: "Understanding JSON",
    61: "Joke and Cat Fact Generator",
  },
};

final Map<int, Lesson> pythonLessons = {
  1: Lesson(1, 1),
  2: Lesson(1, 2),
  3: Lesson(1, 3),
  4: Lesson(1, 4),
  5: Lesson(1, 5),
  6: Lesson(1, 6),
  7: Lesson(1, 7),
  8: Lesson(1, 8),
  9: Lesson(2, 9),
  10: Lesson(2, 10),
  11: Lesson(2, 11),
  12: Lesson(2, 12),
  13: Lesson(2, 13),
  14: Lesson(2, 14),
  15: Lesson(2, 15),
  16: Lesson(2, 16),
  17: Lesson(2, 17),
  18: Lesson(2, 18),
  19: Lesson(2, 19),
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
  34: Lesson(5, 34),
  35: Lesson(5, 35),
  36: Lesson(5, 36),
  37: Lesson(5, 37),
  38: Lesson(5, 38),
  39: Lesson(5, 39),
  40: Lesson(6, 40),
  41: Lesson(6, 41),
  42: Lesson(6, 42),
  43: Lesson(6, 43),
  44: Lesson(6, 44),
  45: Lesson(6, 45),
  46: Lesson(6, 46),
  47: Lesson(6, 47),
  48: Lesson(6, 48),
  49: Lesson(6, 49),
  50: Lesson(6, 50),
  51: Lesson(6, 51),
  52: Lesson(6, 52),
  53: Lesson(7, 53),
  54: Lesson(7, 54),
  55: Lesson(7, 55),
  56: Lesson(7, 56),
  57: Lesson(8, 57),
  58: Lesson(8, 58),
  59: Lesson(8, 59),
  60: Lesson(8, 60),
  61: Lesson(8, 61),
};

final List<Quiz> pythonQuizM1 = [
  // --- Topic 1: What is Python ---
  Quiz(
    1,
    "ၽႂ်ပဵၼ်ၵူၼ်းသၢင်ႈၽႃႇသႃႇ Python?",
    ["Guido van Rossum", "James Gosling", "Dennis Ritchie", "Bjarne Stroustrup"],
    "Who created the Python programming language?",
  ),
  Quiz(
    2,
    "Python ၼႆႉ ပဵၼ်ၽႃႇသႃႇမဵဝ်း ______ (Interpreted/Compiled)။",
    ["Interpreted (ပိၼ်ႇၶူတ်ႉၵမ်းထႅဝ်)", "Compiled (ပိၼ်ႇတင်းပိုၼ်း)", "Low-level (ၸၼ်ႉတႂ်ႈ)", "Assembly"],
    "Python is an ______ language.",
  ),
  Quiz(
    3,
    "ဢၼ်လႂ် ပဵၼ်လၵ်းၵၢၼ် (Philosophy) လူင်ၶွင် Python?",
    ["Readability counts (လွင်ႈလူငၢႆႈပဵၼ်ဢၼ်လမ်ႇလွင်ႈ)", "Speed at all costs (ဝႆးလူင်ပဵၼ်လူင်)", "Complexity is better (ယၢပ်ႇလိူဝ်လီလိူဝ်)", "Only one way to do it"],
    "Which of these is a key philosophy of Python?",
  ),
  Quiz(
    4,
    "Python ၼႆႉ လႅတ်းဝႆးၼိူဝ် တူဝ်လိၵ်ႈလဵၵ်ႉ/ယႂ်ႇ (Case-sensitive) ႁႃႉ?",
    ["ၸႂ်ႈ (Yes)", "ဢမ်ႇၸႂ်ႈ (No)", "ယူႇတီႈ OS", "တွၼ်ႈတႃႇ String ၵူၺ်း"],
    "Is Python case-sensitive?",
  ),
  Quiz(
    5,
    "Python Version လႂ် ဢၼ်ပဵၼ် Standard ၼႂ်းဝၼ်းမိူဝ်ႈၼႆႉ?",
    ["Python 3", "Python 2", "Python 4", "CPython"],
    "Which version of Python is the current standard?",
  ),

  // --- Topic 2: Installing Python ---
  Quiz(
    6,
    "ဝႅပ်ႉသၢႆႉတၢင်းၵၢၼ် တွၼ်ႈတႃႇလူတ်ႇ Python ပဵၼ်ဢၼ်လႂ်?",
    ["python.org", "python.com", "python.io", "getpython.org"],
    "What is the official website to download Python?",
  ),
  Quiz(
    7,
    "မိူဝ်ႈသႂ်ႇ Python ၼိူဝ် Windows, ၸဝ်ႈၵဝ်ႇလူဝ်ႇ Check တီႈလႂ် ႁႂ်ႈၸႂ်ႉၼႂ်း CMD လႆႈ?",
    ["Add Python to PATH", "Install for all users", "Download Debugging Symbols", "Precompile Library"],
    "When installing on Windows, what should you check to use Python in CMD?",
  ),
  Quiz(
    8,
    "ၶိူင်ႈၸတ်းၵၢၼ် Package (Package manager) ပိုၼ်ႉຖານၶွင် Python ပဵၼ်သင်?",
    ["pip", "npm", "maven", "apt"],
    "What is the default package manager for Python?",
  ),

  // --- Topic 3: Run Python on Terminal ---
  Quiz(
    9,
    "တေပိုတ်ႇ Python interactive shell ၼႂ်း Terminal ၸိူင်ႉႁိုဝ်?",
    ["တႅမ်ႈ 'python'", "တႅမ်ႈ 'run python'", "တႅမ်ႈ 'start'", "တႅမ်ႈ 'py-shell'"],
    "How do you start the Python interactive shell in the terminal?",
  ),
  Quiz(
    10,
    "သင်ႇၶေႇ (Symbol) ဢၼ်ၼႄဝႃႈ Python ပႂ်ႉႁပ်ႉၶေႃႈသင်ႇယူႇၼၼ်ႉ ပဵၼ်သင်?",
    [">>>", "...", "---", "\$"],
    "What is the symbol for the Python interactive prompt?",
  ),
  Quiz(
    11,
    "တေဢွၵ်ႇ (Exit) တႄႇတီႈ Python shell ၼႂ်း terminal ၸိူင်ႉႁိုဝ်?",
    ["exit()", "stop", "close", "end"],
    "How do you exit the Python shell in terminal?",
  ),
  Quiz(
    12,
    "ၶေႃႈသင်ႇလႂ် ၸႂ်ႉတွၼ်ႈတႃႇတူၺ်း Version ၶွင် Python?",
    ["python --version", "python -v", "ver python", "python.check"],
    "Which command checks the Python version in the terminal?",
  ),

  // --- Topic 4: Running python as a python program ---
  Quiz(
    13,
    "File Extension ၶွင် Python ၵႆႉသုတ်းတင်းသင်?",
    [".py", ".pyt", ".python", ".txt"],
    "What is the file extension for Python files?",
  ),
  Quiz(
    14,
    "ၶေႃႈၵႂၢမ်း 'Script' ၼႂ်း Python မၢႆထိုင်သင်?",
    ["File ဢၼ်ၵဵပ်းဝႆႉၶူတ်ႉ Python", "မဵဝ်းၶေႃႈမုၼ်း (Variable)", "လွင်ႈၽိတ်းၽႅၼ်ႇ", "Compiler"],
    "What is a script in Python?",
  ),
  Quiz(
    15,
    "ၶေႃႈသင်ႇလႂ် ၸႂ်ႉတွၼ်ႈတႃႇလႅၼ်ႈ (Run) File ၸိုဝ်ႈ 'main.py'?",
    ["python main.py", "run main.py", "exec main.py", "start main.py"],
    "Which command runs a file named 'main.py'?",
  ),

  // --- Topic 5: Installing PyCharm ---
  Quiz(
    16,
    "ၶွမ်ပၼီႇလႂ် ပဵၼ်ၵူၼ်းသၢင်ႈ PyCharm?",
    ["JetBrains", "Google", "Microsoft", "Oracle"],
    "Which company developed PyCharm?",
  ),
  Quiz(
    17,
    "PyCharm ၼႆႉ ပဵၼ်သင်?",
    ["IDE (ၶိူင်ႈတႅမ်ႈ Program)", "Compiler", "Interpreter", "Operating System"],
    "PyCharm is a/an ______.",
  ),
  Quiz(
    18,
    "PyCharm Version လႂ် ဢၼ်လၢႆတွၼ်ႈတႃႇၵူၼ်းႁဵၼ်း လႄႈ ၸုမ်း (Community)?",
    ["Community Edition", "Professional Edition", "Ultimate Edition", "Standard Edition"],
    "Which PyCharm version is free for students and community?",
  ),

  // --- Topic 6: Hello World ---
  Quiz(
    19,
    "တေသင်ႇၼႄလိၵ်ႈ (Print) 'Hello' ၼႂ်း Python ၸိူင်ႉႁိုဝ်?",
    ["print('Hello')", "System.out.println('Hello')", "cout << 'Hello'", "printf('Hello')"],
    "How do you print 'Hello' in Python?",
  ),
  Quiz(
    20,
    "Python လူဝ်ႇသႂ်ႇ Semicolon (;) တီႈသုတ်းထႅဝ်ၵူႈထႅဝ်ႁႃႉ?",
    ["ဢမ်ႇလူဝ်ႇ (No)", "လူဝ်ႇ (Yes)", "လူဝ်ႇတွၼ်ႈတႃႇ Variable ၵူၺ်း", "သႂ်ႇၵေႃႈလႆႈ ၵူၺ်းၵႃႈပိူၼ်ႈဢမ်ႇၸႂ်ႉ"],
    "Does Python require a semicolon (;) at the end of every line?",
  ),
  Quiz(
    21,
    "ၽွၼ်းလႆႈ (Output) ၶူတ်ႉၸဝ်ႈၵဝ်ႇ တေၼႄတီႈလႂ် ၼႂ်း PyCharm?",
    ["Window Console", "Tab Project", "Settings", "Browser"],
    "Where is the output of your code displayed in PyCharm?",
  ),

  // --- Topic 7: Comments ---
  Quiz(
    22,
    "တႅမ်ႈ Comment ထႅဝ်လဵဝ် ၼႂ်း Python ၸိူင်ႉႁိုဝ်?",
    ["#", "//", "/*", "--"],
    "How do you write a single-line comment in Python?",
  ),
  Quiz(
    23,
    "တႅမ်ႈ Comment လၢႆလၢႆထႅဝ် (Docstrings) ၸိူင်ႉႁိုဝ်?",
    ["''' '''", "/* */", "###", "// //"],
    "How do you write multi-line comments (docstrings) in Python?",
  ),
  Quiz(
    24,
    "တေပဵၼ်သင်ၸူး ၶူတ်ႉဢၼ်ႁဝ်း Comment ဝႆႉ မိူဝ်ႈလႅၼ်ႈ (Execution)?",
    ["မၼ်းတေထုၵ်ႇၶၢမ်ႈပႅတ်ႈ (Ignored)", "မၼ်းတေႁဵတ်းႁႂ်ႈၽိတ်း", "မၼ်းႁဵတ်းႁႂ်ႈဝႆးလိူဝ်", "မၼ်းတေထုၵ်ႇ Print ဢွၵ်ႇမႃး"],
    "What happens to commented code during execution?",
  ),
  Quiz(
    25,
    "ၸဝ်ႈၵဝ်ႇသႂ်ႇ Comment ဝႆႉထႅဝ်လဵဝ်ၵၼ်တင်းၶူတ်ႉလႆႈႁႃႉ?",
    ["လႆႈ (Inline comment)", "ဢမ်ႇလႆႈ", "လႆႈတီႈႁူဝ်ထႅဝ်ၵူၺ်း", "လႆႈသင်မၼ်းၶျွၵ်ႉဝႆႉ"],
    "Can you put a comment on the same line as code?",
  ),

  // --- Topic 8: Variables ---
  Quiz(
    26,
    "တေပိုတ်ႇတူဝ်လႅၵ်ႈ (Declare variable) ၼႂ်း Python ၸိူင်ႉႁိုဝ်?",
    ["name = value", "int name = value", "var name = value", "declare name"],
    "How do you declare a variable in Python?",
  ),
  Quiz(
    27,
    "Python ၼႆႉ ပဵၼ်မဵဝ်း Statically Typed ဢမ်ႇၼၼ် Dynamically Typed?",
    ["Dynamically typed (လႅၵ်ႈလၢႆႈမဵဝ်းၶေႃႈမုၼ်းလႆႈ)", "Statically typed", "Not typed", "Strictly typed"],
    "Is Python statically typed or dynamically typed?",
  ),
  Quiz(
    28,
    "ၸိုဝ်ႈ Variable ဢၼ်လႂ် ဢၼ်မၢၼ်ႇမႅၼ်ႈ (Valid)?",
    ["my_var", "2myvar", "my-var", "my var"],
    "Which of these is a valid variable name?",
  ),
  Quiz(
    29,
    "ၸိုဝ်ႈ Variable တႄႇလူၺ်ႈမၢႆၼပ်ႉလႆႈႁႃႉ?",
    ["ဢမ်ႇလႆႈ (No)", "လႆႈ (Yes)", "လႆႈသင်ပဵၼ်မၢႆၼပ်ႉလုၵ်ႈၼမ်ႉ", "ယူႇတီႈ IDE"],
    "Can a variable name start with a number?",
  ),
  Quiz(
    30,
    "ၽွၼ်းလႆႈၶွင်: x = 5; x = 'Hey'; print(x) တေပဵၼ်သင်?",
    ["Hey", "5", "Error", "None"],
    "What is the result of x = 5; x = 'Hey'; print(x)?",
  ),
  Quiz(
    31,
    "လွၵ်းလၢႆးတႅမ်ႈၸိုဝ်ႈ Variable ဢၼ်ပဵၼ် Standard ၼႂ်း Python ပဵၼ်သင်?",
    ["snake_case", "camelCase", "PascalCase", "kebab-case"],
    "Which naming convention is standard for Python variables?",
  ),
  Quiz(
    32,
    "Function လႂ် ၸႂ်ႉတွၼ်ႈတႃႇၵူတ်ႇထတ်း မဵဝ်းၶေႃႈမုၼ်း (Data type)?",
    ["type()", "dataType()", "check()", "id()"],
    "Which function checks the data type of a variable?",
  ),
  Quiz(
    33,
    "တေပၼ်ၵႃႈၶၼ် (Value) ဢၼ်လဵဝ်ၵၼ် ပၼ် x, y, လႄႈ z ၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်ၸိူင်ႉႁိုဝ်?",
    ["x = y = z = 1", "x, y, z = 1", "x = 1, y = 1, z = 1", "x:y:z = 1"],
    "How do you assign the same value to x, y, and z at once?",
  ),
  Quiz(
    34,
    "တေပဵၼ်သင် သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ Variable ဢၼ်ပႆႇလႆႈမၵ်းမၼ်ႈဝႆႉ?",
    ["NameError", "TypeError", "SyntaxError", "မၼ်းတေပဵၼ် None"],
    "What happens if you use a variable that hasn't been defined?",
  ),

  // --- Logic & Best Practices ---
  Quiz(
    35,
    "လွင်ႈၶျွၵ်ႉထႅဝ် (Indentation) ၼႂ်း Python မၵ်းမၼ်ႈသင်?",
    ["ၸုမ်းၶူတ်ႉ (A block of code)", "Variable မႂ်ႇ", "Comment", "ၵၢၼ်တႄႇ File"],
    "What does 'Indentation' define in Python?",
  ),
  Quiz(
    36,
    "ပိူၼ်ႈၵႆႉပၼ်ႁႅင်း ႁႂ်ႈၶျွၵ်ႉထႅဝ် (Indentation) ၵႃႈႁိုဝ်?",
    ["4 spaces", "2 spaces", "1 tab", "8 spaces"],
    "How many spaces are recommended for one level of indentation?",
  ),
  Quiz(
    37,
    "Function လႂ် ၸႂ်ႉတွၼ်ႈတႃႇႁပ်ႉၶေႃႈမုၼ်းတႄႇတီႈၵူၼ်းၸႂ်ႉ (User input)?",
    ["input()", "get()", "scan()", "read()"],
    "Which function is used to get user input?",
  ),
  Quiz(
    38,
    "ၽွၼ်းလႆႈၶွင် print(type(10.5)) ပဵၼ်သင်?",
    ["<class 'float'>", "float", "decimal", "double"],
    "What is the output of print(type(10.5))?",
  ),
  Quiz(
    39,
    "ၽွၼ်းလႆႈၶွင် 10 // 3 ပဵၼ်သင်?",
    ["3 (Floor division)", "3.33", "4", "1"],
    "What is the result of 10 // 3?",
  ),
  Quiz(
    40,
    "ၽွၼ်းလႆႈၶွင် 10 % 3 ပဵၼ်သင်?",
    ["1 (Modulo - လွင်ႈၶိတ်း)", "3", "0", "3.33"],
    "What is the result of 10 % 3?",
  ),
  Quiz(
    41,
    "ဢၼ်လႂ် ပဵၼ်ၶေႃႈၵႂၢမ်းတႅတ်ႈတေႃး (Reserved keyword) ၼႂ်း Python?",
    ["lambda", "name", "value", "main"],
    "Which of these is a reserved keyword in Python?",
  ),
  Quiz(
    42,
    "ၽွၼ်းလႆႈၶွင်: x = 10; x += 5; print(x) ပဵၼ်သင်?",
    ["15", "10", "105", "Error"],
    "What is the output of: x = 10; x += 5; print(x)?",
  ),
  Quiz(
    43,
    "တူဝ်လိၵ်ႈ Escape လႂ် တႅၼ်းပၼ်ၵၢၼ်လူင်းထႅဝ်မႂ်ႇ (New line)?",
    ["\\n", "\\t", "\\b", "\\r"],
    "Which escape character represents a new line?",
  ),
  Quiz(
    44,
    "ၽွၼ်းလႆႈၶွင်: print('A' + 'B') ပဵၼ်သင်?",
    ["AB", "A B", "Error", "C"],
    "What is the output of: print('A' + 'B')?",
  ),
  Quiz(
    45,
    "တေႁဵတ်းႁႂ်ႈ String 'Hi' ပွၵ်ႈၶိုၼ်း 3 ပွၵ်ႈ ၸိူင်ႉႁိုဝ်?",
    ["'Hi' * 3", "'Hi' + 3", "'Hi' ^ 3", "repeat('Hi', 3)"],
    "How do you repeat a string 'Hi' 3 times?",
  ),
  Quiz(
    46,
    "ၽွၼ်းလႆႈၶွင်: print(len('Shan')) ပဵၼ်သင်?",
    ["4", "5", "3", "0"],
    "What is the output of: print(len('Shan'))?",
  ),
  Quiz(
    47,
    "Function လႂ် ဢၼ်လႅၵ်ႈ String '10' ႁႂ်ႈပဵၼ်မၢႆၼပ်ႉတဵမ် (Integer)?",
    ["int()", "str()", "float()", "convert()"],
    "Which function converts a string '10' to an integer?",
  ),
  Quiz(
    48,
    "ၶေႃႈၵႂၢမ်း 'Garbage Collection' မၢႆထိုင်သင်?",
    ["ၵၢၼ်လၢင်ႉ Memory ဢၼ်ဢမ်ႇလႆႈၸႂ်ႉယဝ်ႉ", "ၵၢၼ်မွတ်ႇ File ၶူတ်ႉ", "ၵၢၼ်မွတ်ႇ Comment", "ၵၢၼ်မႄး Bug"],
    "What is 'Garbage Collection'?",
  ),
  Quiz(
    49,
    "ႁၢင်ႈၽၢင် 'Snake Case' ပဵၼ်ၸိူင်ႉႁိုဝ်?",
    ["user_name", "userName", "UserName", "user-name"],
    "What is 'Snake Case' look like?",
  ),
  Quiz(
    50,
    "ၵူႈ Variable ၼႂ်း Python ၼၼ်ႉ ပဵၼ် ______ တႃႇသေႇ။",
    ["Object", "Primitive", "Function", "Module"],
    "Every variable in Python is an ______.",
  ),
];
final List<Quiz> pythonQuizM2 = [
  // --- Topic 9: Python Basic Data Types (51-58) ---
  Quiz(
    51,
    "Function လႂ် ၸႂ်ႉတွၼ်ႈတႃႇၵူတ်ႇထတ်း မဵဝ်းၶေႃႈမုၼ်း (Data type) ၶွင် Object?",
    ["type()", "id()", "isinstance()", "kind()"],
    "Which function is used to check the data type of an object?",
  ),
  Quiz(
    52,
    "Python ၼႆႉ ပဵၼ်ၽႃႇသႃႇမဵဝ်း Statically typed ႁႃႉ?",
    ["ဢမ်ႇၸႂ်ႈ, မၼ်းပဵၼ် Dynamically typed", "ၸႂ်ႈ", "တွၼ်ႈတႃႇမၢႆၼပ်ႉၵူၺ်း", "ၼႂ်း Function ၵူၺ်း"],
    "Is Python a statically typed language?",
  ),
  Quiz(
    53,
    "ဢၼ်လႂ် ဢမ်ႇၸႂ်ႈ မဵဝ်းၶေႃႈမုၼ်း (Data type) ဢၼ်ပႃးမႃးၼႂ်း Python (Built-in)?",
    ["Array", "List", "Set", "Dictionary"],
    "Which of these is NOT a built-in Python data type?",
  ),
  Quiz(
    54,
    "မဵဝ်းၶေႃႈမုၼ်း (Data type) ၶွင် x = 5 ပဵၼ်သင်?",
    ["int", "float", "number", "long"],
    "What is the data type of: x = 5?",
  ),
  Quiz(
    55,
    "မဵဝ်းၶေႃႈမုၼ်း (Data type) ၶွင် x = 5.0 ပဵၼ်သင်?",
    ["float", "double", "int", "decimal"],
    "What is the data type of: x = 5.0?",
  ),
  Quiz(
    56,
    "ၵႃႈၶၼ် (Value) ၵူႈဢၼ်ၼႂ်း Python တႄႇတႄႇမၼ်းပဵၼ် ______။",
    ["Object", "Primitive", "Method", "Logic"],
    "Every value in Python is actually an ______.",
  ),
  Quiz(
    57,
    "Variable ၼိုင်ႈဢၼ် ၸၢင်ႈလႅၵ်ႈလၢႆႈ မဵဝ်းၶေႃႈမုၼ်း (Data type) မၼ်း ဝၢႆးသေမၵ်းမၼ်ႈယဝ်ႉ လႆႈႁႃႉ?",
    ["လႆႈ (Yes)", "ဢမ်ႇလႆႈ (No)", "လႆႈသင်ပဵၼ် String ၵူၺ်း", "လႆႈၼႂ်း Python 2 ၵူၺ်း"],
    "Can a variable change its data type after being set?",
  ),
  Quiz(
    58,
    "ဢၼ်လႂ် ပဵၼ်မဵဝ်းၶေႃႈမုၼ်း ဢၼ်မႃးသိုပ်ႇၵၼ် (Sequence type)?",
    ["List", "Set", "Dictionary", "Boolean"],
    "Which of these is a sequence type?",
  ),

  // --- Topic 10: Boolean Type (59-66) ---
  Quiz(
    59,
    "ၵႃႈၶၼ်သွင်မဵဝ်း ၶွင် Boolean ၸၢင်ႈပဵၼ်သင်လႆႈ?",
    ["True, False", "true, false", "1, 0", "Yes, No"],
    "What are the two possible values of a Boolean?",
  ),
  Quiz(
    60,
    "ၽွၼ်းလႆႈၶွင် bool(0) ပဵၼ်သင်?",
    ["False", "True", "Error", "None"],
    "What is the result of: bool(0)?",
  ),
  Quiz(
    61,
    "ၽွၼ်းလႆႈၶွင် bool(1) ပဵၼ်သင်?",
    ["True", "False", "Error", "0"],
    "What is the result of: bool(1)?",
  ),
  Quiz(
    62,
    "ၽွၼ်းလႆႈၶွင် bool([]) (List ပဝ်ႇ) ပဵၼ်သင်?",
    ["False", "True", "Error", "None"],
    "What is the result of: bool([])?",
  ),
  Quiz(
    63,
    "ၽွၼ်းလႆႈၶွင် bool('Hello') ပဵၼ်သင်?",
    ["True", "False", "Error", "None"],
    "What is the result of: bool('Hello')?",
  ),
  Quiz(
    64,
    "ၶေႃႈၵႂၢမ်း (Keyword) လႂ် တႅၼ်းပၼ် Logic 'NOT' ၼႂ်း Python?",
    ["not", "!", "~", "false"],
    "Which keyword represents a logical 'NOT' in Python?",
  ),
  Quiz(
    65,
    "ၽွၼ်းလႆႈၶွင်: True and False?",
    ["False", "True", "None", "Error"],
    "Result of: True and False?",
  ),
  Quiz(
    66,
    "ၽွၼ်းလႆႈၶွင်: True or False?",
    ["True", "False", "None", "Error"],
    "Result of: True or False?",
  ),

  // --- Topic 11: Numeric Types (67-74) ---
  Quiz(
    67,
    "Python မီးမဵဝ်းၶေႃႈမုၼ်း မၢႆၼပ်ႉ (Numeric types) ၵႃႈႁိုဝ်မဵဝ်း?",
    ["3 (int, float, complex)", "2 (int, float)", "4", "1"],
    "How many numeric types does Python have?",
  ),
  Quiz(
    68,
    "မဵဝ်းၶေႃႈမုၼ်းမၢႆၼပ်ႉလႂ် ဢၼ်ၸွႆႈထႅမ် မၢႆၼပ်ႉပႅတ်ႉ (Imaginary numbers)?",
    ["complex", "float", "int", "long"],
    "Which numeric type supports imaginary numbers?",
  ),
  Quiz(
    69,
    "ၽွၼ်းလႆႈၶွင်: 10 / 2 ပဵၼ်သင်?",
    ["5.0 (Float)", "5 (Int)", "2", "Error"],
    "What is the result of: 10 / 2?",
  ),
  Quiz(
    70,
    "ၽွၼ်းလႆႈၶွင်: 10 // 3 (Floor division) ပဵၼ်သင်?",
    ["3", "3.33", "4", "1"],
    "What is the result of: 10 // 3?",
  ),
  Quiz(
    71,
    "တေတႅမ်ႈမၢႆၼပ်ႉ Complex ၼႂ်း Python ၸိူင်ႉႁိုဝ်?",
    ["3 + 5j", "3 + 5i", "3 + 5x", "complex(3, 5)"],
    "How do you represent a complex number in Python?",
  ),
  Quiz(
    72,
    "မၢႆၼပ်ႉ 'int' ၼႂ်း Python ၸၢင်ႈယႂ်ႇၵႃႈႁိုဝ်ၵေႃႈလႆႈႁႃႉ?",
    ["လႆႈ, သင် Memory ယင်းၵုမ်ႇထူၼ်ႈယူႇ", "ဢမ်ႇလႆႈ, သုင်သုတ်း 64 bit", "ဢမ်ႇလႆႈ, သုင်သုတ်း 32 bit", "လႆႈသင်ပဵၼ်မၢႆၼပ်ႉပၵ်း (Positive) ၵူၺ်း"],
    "Can an 'int' in Python be of any size?",
  ),
  Quiz(
    73,
    "ၽွၼ်းလႆႈၶွင်: 2 ** 3 (ႁႅင်းၵျွၵ်း) ပဵၼ်သင်?",
    ["8", "6", "5", "9"],
    "What is the result of: 2 ** 3?",
  ),
  Quiz(
    74,
    "Scientific notation: 2e3 မၢႆထိုင်သင်?",
    ["2000.0", "23", "200", "6"],
    "Scientific notation: what is 2e3?",
  ),

  // --- Topic 12: String Type (75-82) ---
  Quiz(
    75,
    "String ၼႂ်း Python ၼၼ်ႉ ပဵၼ် ______ (Immutable/Mutable)။",
    ["Immutable (လႅၵ်ႈလၢႆႈဢမ်ႇလႆႈ)", "Mutable (လႅၵ်ႈလၢႆႈလႆႈ)", "Numbers", "Functions"],
    "Strings in Python are ______.",
  ),
  Quiz(
    76,
    "တေတႅမ်ႈ String လၢႆလၢႆထႅဝ် ၸိူင်ႉႁိုဝ်?",
    ["ၸႂ်ႉ Triple quotes (''' ဢမ်ႇၼၼ် \"\"\")", "ၸႂ်ႉ \\n ၵူၺ်း", "ၸႂ်ႉ +", "ၸႂ်ႉ print လၢႆပွၵ်ႈ"],
    "How do you create a multi-line string?",
  ),
  Quiz(
    77,
    "ၶေႃႈၵႂၢမ်း 'Slicing' ၼႂ်း String မၢႆထိုင်သင်?",
    ["ၵၢၼ်ထွတ်ႇဢဝ် ပုၼ်ႈတွၼ်ႈမၢင်တွၼ်ႈ ၶွင် String", "ၵၢၼ်မွတ်ႇ String", "ၵၢၼ်ဢဝ် String မႃးသိုပ်ႇၵၼ်", "ၵၢၼ်ႁဵတ်းႁႂ်ႈပဵၼ်တူဝ်ယႂ်ႇ"],
    "What is 'Slicing'?",
  ),
  Quiz(
    78,
    "ၽွၼ်းလႆႈၶွင် 'Python'[0] ပဵၼ်သင်?",
    ["P", "n", "y", "Error"],
    "Result of 'Python'[0]?",
  ),
  Quiz(
    79,
    "ၽွၼ်းလႆႈၶွင် 'Python'[-1] ပဵၼ်သင်?",
    ["n", "P", "o", "t"],
    "Result of 'Python'[-1]?",
  ),
  Quiz(
    80,
    "ၽွၼ်းလႆႈၶွင် 'Python'[1:4] ပဵၼ်သင်?",
    ["yth", "pyt", "ytho", "tho"],
    "Result of 'Python'[1:4]?",
  ),
  Quiz(
    81,
    "Method လႂ် ဢၼ်လႅၵ်ႈ String ႁႂ်ႈပဵၼ် တူဝ်လိၵ်ႈယႂ်ႇ (Uppercase) တင်းပိုၼ်း?",
    ["upper()", "toUpper()", "UPPER()", "capitalize()"],
    "Which method converts a string to uppercase?",
  ),
  Quiz(
    82,
    "Method လႂ် ဢၼ်မွတ်ႇ တီႈပဝ်ႇ (Whitespace) တီႈႁူဝ် လႄႈ တီႈသုတ်း?",
    ["strip()", "trim()", "clear()", "remove()"],
    "Which method removes whitespace from start and end?",
  ),

  // --- Topic 13: Python Casting (83-88) ---
  Quiz(
    83,
    "တေလႅၵ်ႈ float 5.9 ႁႂ်ႈပဵၼ် int ၸိူင်ႉႁိုဝ်?",
    ["int(5.9)", "round(5.9)", "float.to_int()", "5.9.int()"],
    "How do you convert a float 5.9 to an int?",
  ),
  Quiz(
    84,
    "ၽွၼ်းလႆႈၶွင် int(5.9) ပဵၼ်သင်?",
    ["5", "6", "5.9", "Error"],
    "Result of int(5.9)?",
  ),
  Quiz(
    85,
    "တေလႅၵ်ႈ int 5 ႁႂ်ႈပဵၼ် String ၸိူင်ႉႁိုဝ်?",
    ["str(5)", "string(5)", "5.toString()", "'5'"],
    "How do you convert an int 5 to a string?",
  ),
  Quiz(
    86,
    "တေလႅၵ်ႈ String '10' ႁႂ်ႈပဵၼ် float ၸိူင်ႉႁိုဝ်?",
    ["float('10')", "int('10')", "10.float()", "cast.float('10')"],
    "How do you convert a string '10' to a float?",
  ),
  Quiz(
    87,
    "ၸဝ်ႈၵဝ်ႇ လႅၵ်ႈ (Cast) String 'Hello' ႁႂ်ႈပဵၼ် int လႆႈႁႃႉ?",
    ["ဢမ်ႇလႆႈ (ValueError)", "လႆႈ, မၼ်းတေပဵၼ် 0", "လႆႈ, မၼ်းတေၸႂ်ႉ ASCII", "လႆႈ သင်ၸႂ်ႉၼႂ်း PyCharm"],
    "Can you cast a string 'Hello' to an int?",
  ),
  Quiz(
    88,
    "ၶေႃႈၵႂၢမ်း 'Implicit Casting' မၢႆထိုင်သင်?",
    ["ၵၢၼ်ဢၼ် Python လႅၵ်ႈမဵဝ်းၶေႃႈမုၼ်းပၼ် ႁင်းၵူၺ်း", "ၵၢၼ်လႅၵ်ႈလူၺ်ႈမိုဝ်း", "ၵၢၼ်မွတ်ႇမဵဝ်းၶေႃႈမုၼ်း", "ၵၢၼ်လႅၵ်ႈမဵဝ်းၶေႃႈမုၼ်းလပ်ႉๆ"],
    "What is 'Implicit Casting'?",
  ),

  // --- Topic 14: None Type (89-92) ---
  Quiz(
    89,
    "ၶေႃႈၵႂၢမ်း 'None' တႅၼ်းပၼ်သင်?",
    ["ၵၢၼ်ဢမ်ႇမီး ၵႃႈၶၼ် (Absence of a value)", "သုၼ် (Zero)", "False (ၽိတ်း)", "String ပဝ်ႇ"],
    "What does 'None' represent?",
  ),
  Quiz(
    90,
    "None ၼႆႉ မိူၼ်ၵၼ်တင်း False ႁႃႉ?",
    ["ဢမ်ႇမိူၼ်", "မိူၼ်", "မိူၼ်ၼႂ်းမၢႆၼပ်ႉၵူၺ်း", "မိူၼ်ၼႂ်း String ၵူၺ်း"],
    "Is 'None' the same as 'False'?",
  ),
  Quiz(
    91,
    "မဵဝ်းၶေႃႈမုၼ်း (Data type) ၶွင် None ပဵၼ်သင်?",
    ["NoneType", "null", "bool", "void"],
    "What is the data type of None?",
  ),
  Quiz(
    92,
    "တေၵူတ်ႇထတ်းဝႃႈ x ပဵၼ် None ႁႃႉ ၸိူင်ႉႁိုဝ်?",
    ["x is None", "x == None", "ၸႂ်ႉလႆႈတင်းသွင်လၢႆး", "x.isNull()"],
    "How do you check if x is None?",
  ),

  // --- Topic 15: List Type (93-102) ---
  Quiz(
    93,
    "Python List ၼႆႉ ပဵၼ်မဵဝ်း Mutable (ၸၢင်ႈလႅၵ်ႈလၢႆႈ) ႁႃႉ?",
    ["ၸႂ်ႈ", "ဢမ်ႇၸႂ်ႈ", "လႆႈသင်ပႃးမၢႆၼပ်ႉၵူၺ်း", "ၼႂ်း Python 3 ၵူၺ်း"],
    "Are Python lists mutable (changeable)?",
  ),
  Quiz(
    94,
    "ပုမ်ႇၶဵတ်ႇ (Bracket) မဵဝ်းလႂ် ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ List?",
    ["[ ]", "( )", "{ }", "< >"],
    "Which bracket is used for Lists?",
  ),
  Quiz(
    95,
    "ၼႂ်း List ၼိုင်ႈဢၼ် ၸၢင်ႈပႃး မဵဝ်းၶေႃႈမုၼ်း (Data types) ဢၼ်ပႅၵ်ႇပိူင်ႈၵၼ်လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈသင်ပဵၼ် Mixed list ၵူၺ်း", "မၢႆၼပ်ႉ လႄႈ String ၵူၺ်း"],
    "Can a list contain different data types?",
  ),
  Quiz(
    96,
    "Method လႂ် ဢၼ်ၸႂ်ႉထႅမ် (Add) ၶေႃႈမုၼ်း သႂ်ႇတီႈသုတ်းၶွင် List?",
    ["append()", "add()", "insert()", "push()"],
    "Which method adds an item to the end of a list?",
  ),
  Quiz(
    97,
    "Method လႂ် ဢၼ်ၸႂ်ႉထႅမ် ၶေႃႈမုၼ်း သႂ်ႇတီႈ Index ဢၼ်မၵ်းမၼ်ႈဝႆႉ?",
    ["insert()", "append()", "add()", "index()"],
    "Which method adds an item at a specific index?",
  ),
  Quiz(
    98,
    "Method လႂ် ဢၼ်ၸႂ်ႉမွတ်ႇ (Remove) ၵႃႈၶၼ် ဢၼ်မၵ်းမၼ်ႈဝႆႉ?",
    ["remove()", "delete()", "pop()", "clear()"],
    "Which method removes a specific value?",
  ),
  Quiz(
    99,
    "ၽွၼ်းလႆႈၶွင် [1, 2] + [3, 4] ပဵၼ်သင်?",
    ["[1, 2, 3, 4]", "[4, 6]", "Error", "[[1,2],[3,4]]"],
    "Result of [1, 2] + [3, 4]?",
  ),
  Quiz(
    100,
    "တေႁႃ တၢင်းယၢဝ်း (Length) ၶွင် List ၸိူင်ႉႁိုဝ်?",
    ["len(list)", "list.length()", "list.size()", "count(list)"],
    "How do you find the length of a list?",
  ),
  Quiz(
    101,
    "Method လႂ် ဢၼ်ၸႂ်ႉပိၼ်ႇ (Reverse) ၶပ်ႉယႅၼ်ႇၼႂ်း List ပွၵ်ႈၶိုၼ်း?",
    ["reverse()", "backwards()", "flip()", "sort(reverse=True)"],
    "Which method reverses a list in place?",
  ),
  Quiz(
    102,
    "Index ၶွင် ၶေႃႈမုၼ်းတူဝ်သုတ်း ၼႂ်း List ပဵၼ်ၵႃႈႁိုဝ်?",
    ["-1", "0", "len(list)", "size"],
    "What is the index of the last item in a list?",
  ),

  // --- Topic 16: Tuple Type (103-110) ---
  Quiz(
    103,
    "Tuple ၼႆႉ ပဵၼ်မဵဝ်း Mutable (ၸၢင်ႈလႅၵ်ႈလၢႆႈ) ႁႃႉ?",
    ["ဢမ်ႇၸႂ်ႈ, မၼ်းပဵၼ် Immutable", "ၸႂ်ႈ", "လႆႈသင်မၵ်းမၼ်ႈတင်း Bracket ၵူၺ်း", "ၼႂ်း Python 2 ၵူၺ်း"],
    "Are Tuples mutable?",
  ),
  Quiz(
    104,
    "ပုမ်ႇၶဵတ်ႇ (Bracket) မဵဝ်းလႂ် ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ Tuple?",
    ["( )", "[ ]", "{ }", "< >"],
    "Which bracket is used for Tuples?",
  ),
  Quiz(
    105,
    "ၸဝ်ႈၵဝ်ႇ လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းၼႂ်း Tuple ဝၢႆးသၢင်ႈယဝ်ႉယဝ်ႉ လႆႈႁႃႉ?",
    ["ဢမ်ႇလႆႈ", "လႆႈ", "လႆႈသင်ပဵၼ် List ယူႇၽၢႆႇၼႂ်း", "လႆႈလူၺ်ႈၸႂ်ႉ update()"],
    "Can you change an item in a tuple after creation?",
  ),
  Quiz(
    106,
    "တေသၢင်ႈ Tuple ဢၼ်မီးၶေႃႈမုၼ်း တူဝ်လဵဝ် ၸိူင်ႉႁိုဝ်?",
    ["(5,)", "(5)", "tuple(5)", "[5]"],
    "How do you create a tuple with only one item?",
  ),
  Quiz(
    107,
    "သၢႆယွၼ်ႉသင် ႁဝ်းၸင်ႇၸႂ်ႉ Tuple?",
    ["မၼ်းဝႆး လႄႈ ႁူမ်ႇလူမ်ႈလိူဝ် List", "မၼ်းယႂ်ႇလိူဝ်", "မၼ်းပၼ်သႂ်ႇ ၶေႃႈမုၼ်းမိူၼ်ၵၼ်", "မၼ်းပဵၼ်ပၵ်းပိူင်"],
    "Why are tuples used?",
  ),
  Quiz(
    108,
    "ၶေႃႈၵႂၢမ်း 'Unpacking' ၼႂ်း Tuple မၢႆထိုင်သင်?",
    ["ၵၢၼ်ဢဝ် ၶေႃႈမုၼ်းၼႂ်း Tuple ပၼ်ပုၼ်ႈၽွၼ်း Variable ပႅၵ်ႇၵၼ်", "ၵၢၼ်မွတ်ႇ Tuple", "ၵၢၼ်ၸတ်းၶပ်ႉမၼ်း", "ၵၢၼ်လႅၵ်ႈပဵၼ် String"],
    "What is 'Unpacking' a tuple?",
  ),
  Quiz(
    109,
    "Method လႂ် ဢၼ်ၼပ်ႉ ႁူဝ်ၼပ်ႉၶေႃႈမုၼ်း ဢၼ်ဢွၵ်ႇမႃးၼႂ်း Tuple?",
    ["count()", "length()", "size()", "sum()"],
    "Which method counts occurrences in a tuple?",
  ),
  Quiz(
    110,
    "ၽွၼ်းလႆႈၶွင် (1, 2) * 2 ပဵၼ်သင်?",
    ["(1, 2, 1, 2)", "(2, 4)", "Error", "(1, 1, 2, 2)"],
    "Result of (1, 2) * 2?",
  ),

  // --- Topic 17: Dictionary Type (111-118) ---
  Quiz(
    111,
    "Dictionary သိမ်းၶေႃႈမုၼ်း ပဵၼ်ၵူပ်ႉ ______။",
    ["Key:Value", "Index:Value", "Name:Age", "Header:Data"],
    "Dictionaries store data in ______ pairs.",
  ),
  Quiz(
    112,
    "ပုမ်ႇၶဵတ်ႇ (Bracket) မဵဝ်းလႂ် ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ Dictionary?",
    ["{ }", "[ ]", "( )", "< >"],
    "Which bracket is used for Dictionaries?",
  ),
  Quiz(
    113,
    "Key ၶွင် Dictionary ၼၼ်ႉ ပဵၼ်မဵဝ်း Mutable (လႅၵ်ႈလၢႆႈလႆႈ) ႁႃႉ?",
    ["ဢမ်ႇၸႂ်ႈ, မၼ်းတေလႆႈပဵၼ် Immutable (မိူၼ်ၼင်ႇ String)", "ၸႂ်ႈ", "မၢႆၼပ်ႉၵူၺ်း", "သင်မၼ်းဢမ်ႇမိူၼ်ပိူၼ်ႈ"],
    "Are dictionary keys mutable?",
  ),
  Quiz(
    114,
    "ၸဝ်ႈၵဝ်ႇ တေၶဝ်ႈထိုင် (Access) ၵႃႈၶၼ် (Value) ၼႂ်း Dictionary ၸိူင်ႉႁိုဝ်?",
    ["dict['key']", "dict(0)", "dict.value()", "dict.get()"],
    "How do you access a value in a dictionary?",
  ),
  Quiz(
    115,
    "တေပဵၼ်သင် သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ Key ဢၼ်မိူၼ်ၵၼ် (Duplicate) ၼႂ်း Dictionary?",
    ["ၵႃႈၶၼ်တူဝ်သုတ်း တေတႅမ်ႈတပ်ႉ (Overwrite) တူဝ်ၵဝ်ႇ", "Error", "ယူႇဝႆႉတင်းသွင်ဢၼ်", "တူဝ်ဢွၼ်တၢင်းသုတ်း တေယူႇဝႆႉ"],
    "What happens if you use a duplicate key in a dictionary?",
  ),
  Quiz(
    116,
    "Method လႂ် ဢၼ်သူင်ႇၶိုၼ်း Keys တင်းပိုၼ်း?",
    ["keys()", "allKeys()", "get()", "names()"],
    "Which method returns all keys?",
  ),
  Quiz(
    117,
    "Method လႂ် ဢၼ်သူင်ႇၶိုၼ်း Values တင်းပိုၼ်း?",
    ["values()", "items()", "list()", "get()"],
    "Which method returns all values?",
  ),
  Quiz(
    118,
    "တေမွတ်ႇၶေႃႈမုၼ်း လူၺ်ႈၸႂ်ႉ Key ဢၼ်မၵ်းမၼ်ႈဝႆႉ ၸိူင်ႉႁိုဝ်?",
    ["pop()", "remove()", "delete()", "clear()"],
    "How do you remove an item with a specific key?",
  ),

  // --- Topic 18: Set Type (119-126) ---
  Quiz(
    119,
    "Set ၼႆႉ ပဵၼ်မဵဝ်း Ordered (မီးၶပ်ႉယႅၼ်ႇ) ဢမ်ႇၼၼ် Unordered (ဢမ်ႇမီးၶပ်ႉယႅၼ်ႇ)?",
    ["Unordered", "Ordered", "Indexed", "Sorted"],
    "Are sets ordered or unordered?",
  ),
  Quiz(
    120,
    "Set ပၼ်သႂ်ႇ ၶေႃႈမုၼ်းဢၼ်မိူၼ်ၵၼ် (Duplicate) ႁႃႉ?",
    ["ဢမ်ႇပၼ် (No)", "ပၼ် (Yes)", "မၢႆၼပ်ႉၵူၺ်း", "ၼႂ်း Python 3 ၵူၺ်း"],
    "Do sets allow duplicate values?",
  ),
  Quiz(
    121,
    "ပုမ်ႇၶဵတ်ႇ (Bracket) မဵဝ်းလႂ် ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ Set?",
    ["{ }", "[ ]", "( )", "< >"],
    "Which bracket is used for Sets?",
  ),
  Quiz(
    122,
    "တေထႅမ် (Add) ၶေႃႈမုၼ်း သႂ်ႇၼႂ်း Set ၸိူင်ႉႁိုဝ်?",
    ["add()", "append()", "insert()", "push()"],
    "How do you add an item to a set?",
  ),
  Quiz(
    123,
    "ၸဝ်ႈၵဝ်ႇ ၶဝ်ႈထိုင်ၶေႃႈမုၼ်းၼႂ်း Set လူၺ်ႈ Index (မိူၼ်ၼင်ႇ set[0]) လႆႈႁႃႉ?",
    ["ဢမ်ႇလႆႈ", "လႆႈ", "လႆႈသင် Set ၼၼ်ႉ Sorted ဝႆႉ", "လႆႈသင်မၼ်းပဵၼ် List"],
    "Can you access items in a set by index (e.g., set[0])?",
  ),
  Quiz(
    124,
    "ၽွၼ်းလႆႈၶွင် set([1, 2, 2, 3]) ပဵၼ်သင်?",
    ["{1, 2, 3}", "[1, 2, 2, 3]", "{1, 2, 2, 3}", "Error"],
    "What is the result of set([1, 2, 2, 3])?",
  ),
  Quiz(
    125,
    "Method လႂ် ဢၼ်မွတ်ႇၶေႃႈမုၼ်း ၵူၺ်းၵႃႈ တေဢမ်ႇၼႄ Error သင်ႁႃဢမ်ႇႁၼ်?",
    ["discard()", "remove()", "pop()", "clear()"],
    "Which method removes an item but doesn't error if not found?",
  ),
  Quiz(
    126,
    "တေထႅမ် ၶေႃႈမုၼ်းလၢႆလၢႆဢၼ် သႂ်ႇၼႂ်း Set ၼႂ်းၶၢဝ်းယၢမ်းလဵဝ် ၸိူင်ႉႁိုဝ်?",
    ["update()", "add()", "insert()", "extend()"],
    "How do you add multiple items to a set?",
  ),

  // --- Topic 19: Set Operations (127-134) ---
  Quiz(
    127,
    "ၵၢၼ်ႁဵတ်းၵၢၼ် (Operation) လႂ် ဢၼ်ဢဝ်ၶေႃႈမုၼ်းဢမ်ႇမိူၼ်ပိူၼ်ႈ တႄႇတီႈသွင် Set မႃးႁူမ်ႈၵၼ်?",
    ["Union", "Intersection", "Difference", "Symmetric Difference"],
    "Which operation combines all unique items from two sets?",
  ),
  Quiz(
    128,
    "ၵၢၼ်ႁဵတ်းၵၢၼ် (Operation) လႂ် ဢၼ်ႁႃၵူၺ်း ၶေႃႈမုၼ်းဢၼ်မီးၼႂ်းတင်းသွင် Set?",
    ["Intersection", "Union", "Difference", "Symmetric Difference"],
    "Which operation finds only the items present in both sets?",
  ),
  Quiz(
    129,
    "သင်ႇၶေႇ (Symbol) တွၼ်ႈတႃႇ Union ပဵၼ်သင်?",
    ["|", "&", "-", "^"],
    "Symbol for Union?",
  ),
  Quiz(
    130,
    "သင်ႇၶေႇ (Symbol) တွၼ်ႈတႃႇ Intersection ပဵၼ်သင်?",
    ["&", "|", "-", "^"],
    "Symbol for Intersection?",
  ),
  Quiz(
    131,
    "သင်ႇၶေႇ (Symbol) တွၼ်ႈတႃႇ Difference ပဵၼ်သင်?",
    ["-", "|", "&", "^"],
    "Symbol for Difference?",
  ),
  Quiz(
    132,
    "Symmetric Difference မၢႆထိုင်သင်?",
    ["ၶေႃႈမုၼ်းဢၼ်မီးၼႂ်း Set လႂ်ၵေႃႈယႃႇ ၵူၺ်းၵႃႈ ဢမ်ႇမီးၼႂ်းတင်းသွင်ဢၼ်", "ၶေႃႈမုၼ်းတင်းပိုၼ်း", "ၶေႃႈမုၼ်းဢၼ်မီးၼႂ်းတင်းသွင်ဢၼ်", "ၶေႃႈမုၼ်းဢၼ်မီးၼႂ်း Set ဢွၼ်တၢင်းသုတ်းၵူၺ်း"],
    "What is Symmetric Difference?",
  ),
  Quiz(
    133,
    "Method လႂ် ဢၼ်ၵူတ်ႇထတ်းဝႃႈ ၶေႃႈမုၼ်းၼႂ်း Set A တင်းပိုၼ်း မီးၼႂ်း Set B ႁႃႉ?",
    ["issubset()", "issuperset()", "isdisjoint()", "contains()"],
    "Which method checks if all items of set A are in set B?",
  ),
  Quiz(
    134,
    "Method လႂ် ဢၼ်ၵူတ်ႇထတ်းဝႃႈ သွင် Set ၼႆႉ ဢမ်ႇမီးၶေႃႈမုၼ်းသင်မိူၼ်ၵၼ်သေဢၼ်?",
    ["isdisjoint()", "issubset()", "issuperset()", "union()"],
    "Which method checks if two sets have no common items?",
  ),

  // --- Mixed Module 2 Review (135-150) ---
  Quiz(
    135,
    "ဢၼ်လႂ် ပဵၼ်မဵဝ်း Immutable (လႅၵ်ႈလၢႆႈဢမ်ႇလႆႈ)?",
    ["Tuple", "List", "Dictionary", "Set"],
    "Which of these is immutable?",
  ),
  Quiz(
    136,
    "ဢၼ်လႂ် ပဵၼ်မဵဝ်း Unordered (ဢမ်ႇမီးၶပ်ႉယႅၼ်ႇ)?",
    ["Set", "List", "Tuple", "String"],
    "Which of these is unordered?",
  ),
  Quiz(
    137,
    "Function လႂ် ၸႂ်ႉသၢင်ႈ Set ဢၼ်ပဝ်ႇ (Empty set)?",
    ["set()", "{}", "[]", "()"],
    "Which function creates an empty set?",
  ),
  Quiz(
    138,
    "{} ၼႆႉ ၵႆႉသၢင်ႈသင်ပဵၼ် Standard?",
    ["Empty Dictionary", "Empty Set", "Error", "Empty List"],
    "What does {} create by default?",
  ),
  Quiz(
    139,
    "ၽွၼ်းလႆႈၶွင်: len({1, 1, 1}) ပဵၼ်သင်?",
    ["1", "3", "0", "Error"],
    "Result of: len({1, 1, 1})?",
  ),
  Quiz(
    140,
    "တေၵူတ်ႇထတ်းဝႃႈ 'a' မီးၼႂ်း List ႁႃႉ ၸိူင်ႉႁိုဝ်?",
    ["'a' in list", "list.contains('a')", "list.has('a')", "find('a', list)"],
    "How do you check if 'a' is in a list?",
  ),
  Quiz(
    141,
    "Method လႂ် ဢၼ်ႁဵတ်းႁႂ်ႈ List/Dictionary ပဝ်ႇၵႂႃႇ?",
    ["clear()", "empty()", "remove()", "delete()"],
    "Which method empties a list/dictionary?",
  ),
  Quiz(
    142,
    "Tuple ပဵၼ် Key ၼႂ်း Dictionary လႆႈႁႃႉ?",
    ["လႆႈ (ယွၼ်ႉမၼ်းပဵၼ် Immutable)", "ဢမ်ႇလႆႈ", "လႆႈသင်မၼ်းပႃး String ၵူၺ်း", "ၼႂ်း Python 3.10 ၵူၺ်း"],
    "Can a tuple be a key in a dictionary?",
  ),
  Quiz(
    143,
    "List ပဵၼ် Key ၼႂ်း Dictionary လႆႈႁႃႉ?",
    ["ဢမ်ႇလႆႈ (ယွၼ်ႉမၼ်းပဵၼ် Mutable)", "လႆႈ", "လႆႈသင်မၼ်းလဵၵ်ႉ", "လႆႈသင်မၼ်းပႃးမၢႆၼပ်ႉတဵမ်"],
    "Can a list be a key in a dictionary?",
  ),
  Quiz(
    144,
    "ၽွၼ်းလႆႈၶွင် '10' + '20' ပဵၼ်သင်?",
    ["1020", "30", "Error", "10 20"],
    "What is the result of '10' + '20'?",
  ),
  Quiz(
    145,
    "ၽွၼ်းလႆႈၶွင် int(True) ပဵၼ်သင်?",
    ["1", "0", "Error", "None"],
    "What is the result of int(True)?",
  ),
  Quiz(
    146,
    "ၽွၼ်းလႆႈၶွင် float(10) ပဵၼ်သင်?",
    ["10.0", "10", "Error", "0.1"],
    "What is the result of float(10)?",
  ),
  Quiz(
    147,
    "မဵဝ်းၶေႃႈမုၼ်းလႂ် လီသုတ်း တွၼ်ႈတႃႇသိမ်း ၶေႃႈမုၼ်း Co-ordinates (တီႈယူႇ) ဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈ?",
    ["Tuple", "List", "Set", "Dictionary"],
    "Which type is best for storing a fixed collection of coordinates?",
  ),
  Quiz(
    148,
    "မဵဝ်းၶေႃႈမုၼ်းလႂ် လီသုတ်း တွၼ်ႈတႃႇႁႃၵႃႈၶၼ်ၵုၼ်ႇ လူၺ်ႈၸႂ်ႉၸိုဝ်ႈၵုၼ်ႇ?",
    ["Dictionary", "List", "Tuple", "Set"],
    "Which type is best for looking up a price using a product name?",
  ),
  Quiz(
    149,
    "မဵဝ်းၶေႃႈမုၼ်းလႂ် လီသုတ်း တွၼ်ႈတႃႇမွတ်ႇ ၶေႃႈမုၼ်းဢၼ်မိူၼ်ၵၼ် (Duplicates) ဢွၵ်ႇၼႂ်း List?",
    ["Set", "Tuple", "Dictionary", "None"],
    "Which type is best for removing duplicate items from a list?",
  ),
  Quiz(
    150,
    "မဵဝ်းၶေႃႈမုၼ်း ဢၼ်ပႃးမႃးၼႂ်း Python ၼၼ်ႉ ထုၵ်ႇသၢင်ႈမႃးႁႂ်ႈ ______။",
    ["ၸႂ်ႉတိုဝ်းငၢႆႈ လႄႈ လႅၵ်ႈလၢႆႈလႆႈ", "ၶႅင်တူဝ် လႄႈ ဝႆး", "တွၼ်ႈတႃႇပၢႆးၼပ်ႉၵူၺ်း", "ႁဵၼ်းယၢပ်ႇ"],
    "Python's built-in types are designed to be ______.",
  ),
];
final List<Quiz> pythonQuizM3 = [
  // --- Topic 20: Python Operators General (151-154) ---
  Quiz(
    151,
    "Operators ၼႂ်း Python ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["တွၼ်ႈတႃႇႁဵတ်းၵၢၼ် ၼိူဝ် Variable လႄႈ ၵႃႈၶၼ် (Value)", "တွၼ်ႈတႃႇတႅမ်ႈၸိုဝ်ႈ Variable", "တွၼ်ႈတႃႇသၢင်ႈ Comment", "တွၼ်ႈတႃႇသႂ်ႇ Library"],
    "What are operators used for in Python?",
  ),
  Quiz(
    152,
    "ၼႂ်း 'x + y' ၼၼ်ႉ 'x' လႄႈ 'y' ႁွင်ႉဝႃႈသင်?",
    ["Operands", "Operators", "Functions", "Parameters"],
    "In 'x + y', what are 'x' and 'y' called?",
  ),
  Quiz(
    153,
    "Python မီးၸုမ်း Operator လူင်ၵႃႈႁိုဝ်မဵဝ်း?",
    ["7", "3", "5", "10"],
    "How many main categories of operators does Python have?",
  ),
  Quiz(
    154,
    "သင်ႇၶေႇ (Symbol) လႂ် ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ Assignment (ၵၢၼ်ပၼ်ၵႃႈၶၼ်)?",
    ["=", "==", "===", ":="],
    "Which symbol is used for assignment in Python?",
  ),

  // --- Topic 21: Arithmetic Operators (155-165) ---
  Quiz(
    155,
    "Operator လႂ် ၸႂ်ႉတွၼ်ႈတႃႇ ၵၢၼ်ထႅမ် (Addition)?",
    ["+", "-", "*", "/"],
    "Which operator is used for addition?",
  ),
  Quiz(
    156,
    "Operator လႂ် ၸႂ်ႉတွၼ်ႈတႃႇ ၵၢၼ်ၼပ်ႉ (Multiplication)?",
    ["*", "**", "x", "multi"],
    "Which operator is used for multiplication?",
  ),
  Quiz(
    157,
    "ၽွၼ်းလႆႈၶွင် 10 / 3 ပဵၼ်သင်?",
    ["3.3333333333333335", "3", "3.0", "Error"],
    "What is the result of 10 / 3?",
  ),
  Quiz(
    158,
    "Operator လႂ် ၸႂ်ႉတွၼ်ႈတႃႇ Floor Division (ၵၢၼ်ႁၢၼ်ဢဝ်ၵႃႈတဵမ်)?",
    ["//", "/", "%", "**"],
    "Which operator is used for Floor Division?",
  ),
  Quiz(
    159,
    "ၽွၼ်းလႆႈၶွင် 10 // 3 ပဵၼ်သင်?",
    ["3", "3.33", "4", "1"],
    "What is the result of 10 // 3?",
  ),
  Quiz(
    160,
    "Operator လႂ် ၸႂ်ႉတွၼ်ႈတႃႇႁႃ ၵႃႈၶိတ်း (Remainder)?",
    ["%", "/", "//", "rem"],
    "Which operator is used to find the remainder?",
  ),
  Quiz(
    161,
    "ၽွၼ်းလႆႈၶွင် 10 % 3 ပဵၼ်သင်?",
    ["1", "3", "0", "3.33"],
    "What is the result of 10 % 3?",
  ),
  Quiz(
    162,
    "Operator လႂ် ၸႂ်ႉတွၼ်ႈတႃႇ ႁႅင်းၵျွၵ်း (Exponentiation)?",
    ["**", "^", "pow", "^^"],
    "Which operator is used for Exponentiation (Power)?",
  ),
  Quiz(
    163,
    "ၽွၼ်းလႆႈၶွင် 2 ** 3 ပဵၼ်သင်?",
    ["8", "6", "5", "9"],
    "What is the result of 2 ** 3?",
  ),
  Quiz(
    164,
    "ၽွၼ်းလႆႈၶွင် -10 // 3 ပဵၼ်သင်?",
    ["-4", "-3", "-3.33", "3"],
    "What is the result of -10 // 3?",
  ),
  Quiz(
    165,
    "ၽွၼ်းလႆႈၶွင် 5 + 2 * 10 ပဵၼ်သင်?",
    ["25", "70", "17", "Error"],
    "What is the result of 5 + 2 * 10?",
  ),

  // --- Topic 22: Assignment Operators (166-176) ---
  Quiz(
    166,
    "Operator လႂ် ဢၼ်ပၼ်ၵႃႈၶၼ်ၸူး Variable?",
    ["=", "==", "is", "in"],
    "Which operator assigns a value to a variable?",
  ),
  Quiz(
    167,
    "ၶေႃႈၵႂၢမ်း 'x += 3' မၢႆထိုင်သင်?",
    ["x = x + 3", "x = 3", "x + 3 = x", "Error"],
    "What does 'x += 3' mean?",
  ),
  Quiz(
    168,
    "ၶေႃႈၵႂၢမ်း 'x -= 2' မၢႆထိုင်သင်?",
    ["x = x - 2", "x = 2", "x - 2", "None"],
    "What does 'x -= 2' mean?",
  ),
  Quiz(
    169,
    "ၶေႃႈၵႂၢမ်း 'x *= 5' မၢႆထိုင်သင်?",
    ["x = x * 5", "x = 5", "x * 5", "Error"],
    "What does 'x *= 5' mean?",
  ),
  Quiz(
    170,
    "ၶေႃႈၵႂၢမ်း 'x /= 2' မၢႆထိုင်သင်?",
    ["x = x / 2", "x = 2", "x / 2", "None"],
    "What does 'x /= 2' mean?",
  ),
  Quiz(
    171,
    "ၶေႃႈၵႂၢမ်း 'x %= 3' မၢႆထိုင်သင်?",
    ["x = x % 3", "x = 3", "x % 3", "None"],
    "What does 'x %= 3' mean?",
  ),
  Quiz(
    172,
    "ၶေႃႈၵႂၢမ်း 'x //= 3' မၢႆထိုင်သင်?",
    ["x = x // 3", "x = 3", "x // 3", "None"],
    "What does 'x //= 3' mean?",
  ),
  Quiz(
    173,
    "ၶေႃႈၵႂၢမ်း 'x **= 2' မၢႆထိုင်သင်?",
    ["x = x ** 2", "x = 2", "x ** 2", "None"],
    "What does 'x **= 2' mean?",
  ),
  Quiz(
    174,
    "ၶေႃႈၵႂၢမ်း 'x &= 3' မၢႆထိုင်သင်?",
    ["Bitwise AND assignment", "Logic AND", "x = 3", "Error"],
    "What does 'x &= 3' mean?",
  ),
  Quiz(
    175,
    "ၶေႃႈၵႂၢမ်း 'x |= 3' မၢႆထိုင်သင်?",
    ["Bitwise OR assignment", "Logic OR", "x = 3", "Error"],
    "What does 'x |= 3' mean?",
  ),
  Quiz(
    176,
    "'Walrus Operator' ဢၼ်မႃးၼႂ်း Version 3.8 ပဵၼ်သင်?",
    [":=", "==", "->", "=>"],
    "What is the 'Walrus Operator' (introduced in 3.8)?",
  ),

  // --- Topic 23: Comparison Operators (177-185) ---
  Quiz(
    177,
    "Operator လႂ် ၸႂ်ႉၵူတ်ႇထတ်းဝႃႈ ၵႃႈၶၼ်သွင်ဢၼ် မိူၼ်ၵၼ်ႁႃႉ?",
    ["==", "=", "is", "==="],
    "Which operator checks if two values are equal?",
  ),
  Quiz(
    178,
    "Operator လႂ် ၸႂ်ႉၵူတ်ႇထတ်းဝႃႈ ၵႃႈၶၼ်သွင်ဢၼ် 'ဢမ်ႇမိူၼ်ၵၼ်' ႁႃႉ?",
    ["!=", "<>", "not", "~"],
    "Which operator checks if two values are NOT equal?",
  ),
  Quiz(
    179,
    "ၽွၼ်းလႆႈၶွင် 5 > 3 ပဵၼ်သင်?",
    ["True", "False", "None", "Error"],
    "What is the result of 5 > 3?",
  ),
  Quiz(
    180,
    "Operator လႂ် မၢႆထိုင် 'ယႂ်ႇလိူဝ် ဢမ်ႇၼၼ် မိူၼ်ၵၼ်'?",
    [">=", "=>", ">", "=="],
    "Which operator means 'Greater than or equal to'?",
  ),
  Quiz(
    181,
    "Operator လႂ် မၢႆထိုင် 'လဵၵ်ႉလိူဝ် ဢမ်ႇၼၼ် မိူၼ်ၵၼ်'?",
    ["<=", "=<", "<", "=="],
    "Which operator means 'Less than or equal to'?",
  ),
  Quiz(
    182,
    "Comparison operators ၵႆႉသူင်ႇၶိုၼ်းၵႃႈၶၼ် မဵဝ်းလႂ်?",
    ["Boolean", "Integer", "String", "None"],
    "Comparison operators always return a ______ value.",
  ),
  Quiz(
    183,
    "ၽွၼ်းလႆႈၶွင် 10 == 10.0 ပဵၼ်သင်?",
    ["True", "False", "Error", "None"],
    "What is the result of 10 == 10.0?",
  ),
  Quiz(
    184,
    "ၽွၼ်းလႆႈၶွင် 'apple' < 'banana' ပဵၼ်သင်?",
    ["True", "False", "Error", "None"],
    "What is the result of 'apple' < 'banana'?",
  ),
  Quiz(
    185,
    "ၽွၼ်းလႆႈၶွင်: 5 != 5?",
    ["False", "True", "None", "Error"],
    "Result of: 5 != 5?",
  ),

  // --- Topic 24: Logical Operators (186-192) ---
  Quiz(
    186,
    "Operator လႂ် သူင်ႇၶိုၼ်း True သင်ၶေႃႈၵႂၢမ်းတင်းသွင်ဢၼ်ပဵၼ် True?",
    ["and", "&&", "&", "both"],
    "Which operator returns True if both statements are true?",
  ),
  Quiz(
    187,
    "Operator လႂ် သူင်ႇၶိုၼ်း True သင်ၶေႃႈၵႂၢမ်းၼိုင်ႈဢၼ်ပဵၼ် True?",
    ["or", "||", "|", "either"],
    "Which operator returns True if one statement is true?",
  ),
  Quiz(
    188,
    "Operator လႂ် ၸႂ်ႉပိၼ်ႇၽွၼ်းလႆႈ (တႄႇ True ပဵၼ် False)?",
    ["not", "!", "reverse", "~"],
    "Which operator reverses the result (True to False)?",
  ),
  Quiz(
    189,
    "ၽွၼ်းလႆႈၶွင်: (5 > 3 and 10 < 20)?",
    ["True", "False", "None", "Error"],
    "Result of: (5 > 3 and 10 < 20)?",
  ),
  Quiz(
    190,
    "ၽွၼ်းလႆႈၶွင်: (5 > 3 or 10 > 20)?",
    ["True", "False", "None", "Error"],
    "Result of: (5 > 3 or 10 > 20)?",
  ),
  Quiz(
    191,
    "ၽွၼ်းလႆႈၶွင်: not(5 > 3)?",
    ["False", "True", "None", "Error"],
    "Result of: not(5 > 3)?",
  ),
  Quiz(
    192,
    "Logical operators ၼႂ်း Python ၸႂ်ႉ ______ တႅၼ်းတၢင် &&။",
    ["ၶေႃႈၵႂၢမ်း (Words)", "မၢႆၼပ်ႉ", "ပုမ်ႇၶဵတ်ႇ", "လုၵ်ႈၼမ်ႉ"],
    "Logical operators in Python use ______ instead of &&.",
  ),

  // --- Topic 25: Identity Operators (193-200) ---
  Quiz(
    193,
    "Operator လႂ် သူင်ႇၶိုၼ်း True သင် Variable သွင်ဢၼ်ပဵၼ် Object ဢၼ်လဵဝ်ၵၼ်?",
    ["is", "==", "===", "same"],
    "Which operator returns True if variables are the same object?",
  ),
  Quiz(
    194,
    "Operator လႂ် သူင်ႇၶိုၼ်း True သင် Variable သွင်ဢၼ် 'ဢမ်ႇၸႂ်ႈ' Object ဢၼ်လဵဝ်ၵၼ်?",
    ["is not", "!=", "not is", "different"],
    "Which operator returns True if variables are NOT the same object?",
  ),
  Quiz(
    195,
    "လွင်ႈပႅၵ်ႇပိူင်ႈ ၼႂ်းၵႄႈ '==' လႄႈ 'is'?",
    ["'==' ၵူတ်ႇထတ်းၵႃႈၶၼ်, 'is' ၵူတ်ႇထတ်းတီႈယူႇၼႂ်း Memory", "'is' ဝႆးလိူဝ်", "ဢမ်ႇပႅၵ်ႇပိူင်ႈၵၼ်", "ဢမ်ႇမီးသင်"],
    "Difference between '==' and 'is'?",
  ),
  Quiz(
    196,
    "ၽွၼ်းလႆႈၶွင်: x = [1,2]; y = [1,2]; x == y?",
    ["True", "False", "Error", "None"],
    "Result of: x = [1,2]; y = [1,2]; x == y?",
  ),
  Quiz(
    197,
    "ၽွၼ်းလႆႈၶွင်: x = [1,2]; y = [1,2]; x is y?",
    ["False", "True", "Error", "None"],
    "Result of: x = [1,2]; y = [1,2]; x is y?",
  ),
  Quiz(
    198,
    "ၽွၼ်းလႆႈၶွင်: x = None; x is None?",
    ["True", "False", "Error", "None"],
    "Result of: x = None; x is None?",
  ),
  Quiz(
    199,
    "Identity ၶွင် Object ၼႂ်း Python မၢႆထိုင်သင်?",
    ["Memory address (တီႈယူႇၼႂ်း Memory)", "ၸိုဝ်ႈ Variable", "ၵႃႈၶၼ်ၶေႃႈမုၼ်း", "မဵဝ်းၶေႃႈမုၼ်း"],
    "What is the identity of an object in Python?",
  ),
  Quiz(
    200,
    "Function လႂ် သူင်ႇၶိုၼ်း Identity ၶွင် Object?",
    ["id()", "type()", "identity()", "hex()"],
    "Which function returns the identity of an object?",
  ),

  // --- Topic 26: Membership Operators (201-210) ---
  Quiz(
    201,
    "Operator လႂ် ၸႂ်ႉၵူတ်ႇထတ်းဝႃႈ ၵႃႈၶၼ်ၼိုင်ႈဢၼ် မီးၼႂ်း Sequence ႁႃႉ?",
    ["in", "has", "exists", "contains"],
    "Which operator checks if a value is in a sequence?",
  ),
  Quiz(
    202,
    "Operator လႂ် ၸႂ်ႉၵူတ်ႇထတ်းဝႃႈ ၵႃႈၶၼ်ၼိုင်ႈဢၼ် 'ဢမ်ႇမီး' ၼႂ်း Sequence ႁႃႉ?",
    ["not in", "in not", "absent", "is not"],
    "Which operator checks if a value is NOT in a sequence?",
  ),
  Quiz(
    203,
    "ၽွၼ်းလႆႈၶွင်: 'P' in 'Python'?",
    ["True", "False", "Error", "None"],
    "Result of: 'P' in 'Python'?",
  ),
  Quiz(
    204,
    "ၽွၼ်းလႆႈၶွင်: 'z' in 'Python'?",
    ["False", "True", "Error", "None"],
    "Result of: 'z' in 'Python'?",
  ),
  Quiz(
    205,
    "ၽွၼ်းလႆႈၶွင်: 1 in [1, 2, 3]?",
    ["True", "False", "Error", "None"],
    "Result of: 1 in [1, 2, 3]?",
  ),
  Quiz(
    206,
    "မိူဝ်ႈၸႂ်ႉ 'in' တင်း Dictionary, မၼ်းၵူတ်ႇထတ်းႁႃသင်?",
    ["Keys", "Values", "တင်းသွင်ယၢင်ႇ", "Indices"],
    "When using 'in' with a Dictionary, it checks for ______.",
  ),
  Quiz(
    207,
    "ၽွၼ်းလႆႈၶွင်: 'name' in {'name': 'Alice'}?",
    ["True", "False", "Error", "None"],
    "Result of: 'name' in {'name': 'Alice'}?",
  ),
  Quiz(
    208,
    "ၽွၼ်းလႆႈၶွင်: 'Alice' in {'name': 'Alice'}?",
    ["False (ယွၼ်ႉမၼ်းဢမ်ႇၵူတ်ႇထတ်း Value လၢႆလၢႆ)", "True", "Error", "None"],
    "Result of: 'Alice' in {'name': 'Alice'}?",
  ),
  Quiz(
    209,
    "ဢၼ်လႂ် ႁဵတ်းၵၢၼ်လႅတ်းလိူဝ် တွၼ်ႈတႃႇ Membership Test?",
    ["Set", "List", "Tuple", "String"],
    "Which is more efficient for membership tests?",
  ),
  Quiz(
    210,
    "ၽွၼ်းလႆႈၶွင်: 5 not in [1, 2, 3, 4]?",
    ["True", "False", "Error", "None"],
    "Result of: 5 not in [1, 2, 3, 4]?",
  ),

  // --- Topic 27: Operator Precedence (211-220) ---
  Quiz(
    211,
    "Operator Precedence မၢႆထိုင်သင်?",
    ["လွင်ႈၶပ်ႉယႅၼ်ႇ ဢၼ်တေလႆႈၼပ်ႉသွၼ်ႇဢွၼ်တၢင်း", "ၵႂၢမ်းဝႆး Operator", "ၸိုဝ်ႈ", "တၢင်းယႂ်ႇ"],
    "What is operator precedence?",
  ),
  Quiz(
    212,
    "ဢၼ်လႂ် မီးသုၼ်ႇၼပ်ႉသွၼ်ႇ (Precedence) သုင်လိူဝ်: ၵၢၼ်ၼပ်ႉ (*) ဢမ်ႇၼၼ် ၵၢၼ်ထႅမ် (+)?",
    ["ၵၢၼ်ၼပ်ႉ (Multiplication)", "ၵၢၼ်ထႅမ် (Addition)", "မိူၼ်ၵၼ်", "ယူႇတီႈၶူတ်ႉ"],
    "Which has higher precedence: Multiplication (*) or Addition (+)?",
  ),
  Quiz(
    213,
    "ၽွၼ်းလႆႈၶွင် 5 + 2 * 3 ပဵၼ်သင်?",
    ["11", "21", "10", "15"],
    "What is the result of 5 + 2 * 3?",
  ),
  Quiz(
    214,
    "ၽွၼ်းလႆႈၶွင် (5 + 2) * 3 ပဵၼ်သင်?",
    ["21", "11", "10", "15"],
    "What is the result of (5 + 2) * 3?",
  ),
  Quiz(
    215,
    "Operator လႂ် မီး Precedence သုင်သုတ်း ၼႂ်း Python?",
    ["Parentheses (ပုမ်ႇၶဵတ်ႇ) ()", "Exponentiation **", "Multiplication *", "Addition +"],
    "Which operator has the highest precedence in Python?",
  ),
  Quiz(
    216,
    "ၽွၼ်းလႆႈၶွင် 10 - 3 + 2 ပဵၼ်သင်?",
    ["9", "5", "11", "Error"],
    "What is the result of 10 - 3 + 2?",
  ),
  Quiz(
    217,
    "ၽွၼ်းလႆႈၶွင် 2 ** 3 ** 2 ပဵၼ်သင်?",
    ["512", "64", "18", "Error"],
    "What is the result of 2 ** 3 ** 2?",
  ),
  Quiz(
    218,
    "ဢၼ်လႂ် သုင်လိူဝ်: Comparison (==) ဢမ်ႇၼၼ် Logical (and)?",
    ["Comparison", "Logical", "မိူၼ်ၵၼ်", "ဢမ်ႇမီးသင်"],
    "Which has higher precedence: Comparison (==) or Logical (and)?",
  ),
  Quiz(
    219,
    "ဢၼ်လႂ် သုင်လိူဝ်: Logical (not) ဢမ်ႇၼၼ် Logical (and)?",
    ["not", "and", "မိူၼ်ၵၼ်", "ဢမ်ႇမီးသင်"],
    "Which has higher precedence: Logical (not) or Logical (and)?",
  ),
  Quiz(
    220,
    "Python ၸႂ်ႉပၵ်းပိူင်သင် တွၼ်ႈတႃႇၶပ်ႉယႅၼ်ႇၵၢၼ်ၼပ်ႉသွၼ်ႇ?",
    ["PEMDAS / BODMAS", "Random (သုမ်ႇ)", "Left-to-right", "Right-to-left"],
    "What rule does Python follow for math order?",
  ),

  // --- Mixed Module 3 Review (221-250) ---
  Quiz(
    221,
    "ၽွၼ်းလႆႈၶွင် 7 // 2 ပဵၼ်သင်?",
    ["3", "3.5", "4", "2"],
    "What is 7 // 2?",
  ),
  Quiz(
    222,
    "ၽွၼ်းလႆႈၶွင် 7 % 2 ပဵၼ်သင်?",
    ["1", "0", "3.5", "2"],
    "What is 7 % 2?",
  ),
  Quiz(
    223,
    "ၼႂ်း Python, '^' ပဵၼ် Operator တွၼ်ႈတႃႇ ႁႅင်းၵျွၵ်း (Exponent) ႁႃႉ?",
    ["ဢမ်ႇၸႂ်ႈ (မၼ်းပဵၼ် Bitwise XOR)", "ၸႂ်ႈ", "ၼႂ်း Python 2 ၵူၺ်း", "တွၼ်ႈတႃႇ Float ၵူၺ်း"],
    "Is '^' the exponent operator in Python?",
  ),
  Quiz(
    224,
    "ၽွၼ်းလႆႈၶွင် 'not True' ပဵၼ်သင်?",
    ["False", "True", "None", "Error"],
    "What is 'not True'?",
  ),
  Quiz(
    225,
    "ၽွၼ်းလႆႈၶွင်: 10 > 5 and 5 > 1?",
    ["True", "False", "Error", "None"],
    "Result of: 10 > 5 and 5 > 1?",
  ),
  Quiz(
    226,
    "ၽွၼ်းလႆႈၶွင်: 10 > 5 and 5 < 1?",
    ["False", "True", "Error", "None"],
    "Result of: 10 > 5 and 5 < 1?",
  ),
  Quiz(
    227,
    "ၽွၼ်းလႆႈၶွင်: 10 > 5 or 5 < 1?",
    ["True", "False", "Error", "None"],
    "Result of: 10 > 5 or 5 < 1?",
  ),
  Quiz(
    228,
    "ၼႂ်း CPython, '3 is 3' ၼႆႉ ပဵၼ် True တႃႇသေႇႁႃႉ?",
    ["ၸႂ်ႈ (Yes)", "ဢမ်ႇၸႂ်ႈ (No)", "ၼႂ်း PyCharm ၵူၺ်း", "တွၼ်ႈတႃႇ String ၵူၺ်း"],
    "Is '3 is 3' always True in CPython?",
  ),
  Quiz(
    229,
    "Operator လႂ် ၸႂ်ႉတွၼ်ႈတႃႇ Bitwise AND?",
    ["&", "&&", "and", "AND"],
    "Which operator is used for Bitwise AND?",
  ),
  Quiz(
    230,
    "Operator လႂ် ၸႂ်ႉတွၼ်ႈတႃႇ Bitwise OR?",
    ["|", "||", "or", "OR"],
    "Which operator is used for Bitwise OR?",
  ),
  Quiz(
    231,
    "ၽွၼ်းလႆႈၶွင် 5 << 1 ပဵၼ်သင်?",
    ["10", "5", "2", "2.5"],
    "What is the result of 5 << 1?",
  ),
  Quiz(
    232,
    "ၽွၼ်းလႆႈၶွင် 10 >> 1 ပဵၼ်သင်?",
    ["5", "20", "10", "1"],
    "What is the result of 10 >> 1?",
  ),
  Quiz(
    233,
    "ၸဝ်ႈၵဝ်ႇၸႂ်ႉ '+' တွၼ်ႈတႃႇသိုပ်ႇ (Concatenate) List သွင်ဢၼ်လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "ၸႂ်ႉတင်း extend() ၵူၺ်း", "လႆႈသင်မၼ်းပဝ်ႇဝႆႉ"],
    "Can you use '+' to concatenate two lists?",
  ),
  Quiz(
    234,
    "ၽွၼ်းလႆႈၶွင် [1] * 3 ပဵၼ်သင်?",
    ["[1, 1, 1]", "[3]", "Error", "[1, 3]"],
    "What is the result of [1] * 3?",
  ),
  Quiz(
    235,
    "Operator လႂ် မီး Precedence 'တွၼ်ႈတႂ်ႈ' (Lower): 'or' ဢမ်ႇၼၼ် 'and'?",
    ["or", "and", "မိူၼ်ၵၼ်", "ဢမ်ႇမီးသင်"],
    "Which operator has lower precedence: 'or' or 'and'?",
  ),
  Quiz(
    236,
    "ၽွၼ်းလႆႈၶွင်: 10 == 10 and 5 == 5?",
    ["True", "False", "Error", "None"],
    "Result of: 10 == 10 and 5 == 5?",
  ),
  Quiz(
    237,
    "Assignment operator လႂ် မိူၼ်ၵၼ်တင်း x = x // 5?",
    ["x //= 5", "x /= 5", "x %= 5", "x =// 5"],
    "Which assignment operator is equivalent to x = x // 5?",
  ),
  Quiz(
    238,
    "ၽွၼ်းလႆႈၶွင် 'a' in ['a', 'b', 'c'] ပဵၼ်သင်?",
    ["True", "False", "Error", "None"],
    "What is the result of 'a' in ['a', 'b', 'c']?",
  ),
  Quiz(
    239,
    "ၽွၼ်းလႆႈၶွင် 'z' not in 'Apple' ပဵၼ်သင်?",
    ["True", "False", "Error", "None"],
    "What is the result of 'z' not in 'Apple'?",
  ),
  Quiz(
    240,
    "ၽွၼ်းလႆႈၶွင် 1 + 2.0 ပဵၼ်သင်?",
    ["3.0", "3", "3.2", "Error"],
    "What is the result of 1 + 2.0?",
  ),
  Quiz(
    241,
    "ဢၼ်လႂ် ထုၵ်ႇၼပ်ႉသွၼ်ႇဢွၼ်တၢင်းသုတ်း: 'not', 'and', ဢမ်ႇၼၼ် 'or'?",
    ["not", "and", "or", "Equal (မိူၼ်ၵၼ်)"],
    "Which is performed first: 'not', 'and', or 'or'?",
  ),
  Quiz(
    242,
    "ၽွၼ်းလႆႈၶွင် 10 / 2 * 3 ပဵၼ်သင်?",
    ["15.0", "1.66", "5.0", "Error"],
    "What is the result of 10 / 2 * 3?",
  ),
  Quiz(
    243,
    "Operator 'is' ၼႆႉ ၵူတ်ႇထတ်းဝႃႈ ၵႃႈၶၼ် (Value) မိူၼ်ၵၼ်ႁႃႉ?",
    ["ဢမ်ႇၸႂ်ႈ, မၼ်းၵူတ်ႇထတ်းတီႈယူႇ Memory", "ၸႂ်ႈ", "တွၼ်ႈတႃႇ String ၵူၺ်း", "တွၼ်ႈတႃႇ None ၵူၺ်း"],
    "Does 'is' check if values are the same?",
  ),
  Quiz(
    244,
    "ၽွၼ်းလႆႈၶွင်: x = 5; y = 5; x is y?",
    ["True", "False", "Error", "None"],
    "Result of: x = 5; y = 5; x is y?",
  ),
  Quiz(
    245,
    "Operator လႂ် ၸႂ်ႉတွၼ်ႈတႃႇ Bitwise NOT?",
    ["~", "!", "not", "inv"],
    "Which operator is used for Bitwise NOT?",
  ),
  Quiz(
    246,
    "ၽွၼ်းလႆႈၶွင် 10 > 5 > 2 ပဵၼ်သင်?",
    ["True", "False", "Error", "None"],
    "What is the result of 10 > 5 > 2?",
  ),
  Quiz(
    247,
    "Operator လႂ် ၸႂ်ႉတွၼ်ႈတႃႇၶဝ်ႈထိုင် Attribute ၶွင် Object?",
    [".", "->", "::", "[]"],
    "Which operator is used to access an object attribute?",
  ),
  Quiz(
    248,
    "ၽွၼ်းလႆႈၶွင် 0 and True ပဵၼ်သင်?",
    ["0", "True", "False", "Error"],
    "What is the result of 0 and True?",
  ),
  Quiz(
    249,
    "ၽွၼ်းလႆႈၶွင် 1 or False ပဵၼ်သင်?",
    ["1", "True", "False", "Error"],
    "What is the result of 1 or False?",
  ),
  Quiz(
    250,
    "ၽွၼ်းလႆႈၶွင် True + True ၼႂ်း Python ပဵၼ်သင်?",
    ["2", "True", "Error", "1"],
    "What is the result of True + True in Python?",
  ),
];
final List<Quiz> pythonQuizM4 = [
  // --- Topic 28: If conditional statement (251-275) ---
  Quiz(
    251,
    "ၶေႃႈၵႂၢမ်း (Keyword) လႂ် ၸႂ်ႉတွၼ်ႈတႃႇတႄႇ လိၵ်ႈသင်ႇငဝ်းလၢႆး (Conditional statement)?",
    ["if", "when", "case", "condition"],
    "Which keyword is used to start a conditional statement?",
  ),
  Quiz(
    252,
    "ၸဝ်ႈၵဝ်ႇ မၵ်းမၼ်ႈၸုမ်းၶူတ်ႉ (Block of code) ၼႂ်း 'if' ၸိူင်ႉႁိုဝ်?",
    ["Indentation (ၵၢၼ်ၶျွၵ်ႉထႅဝ်)", "Curly braces {}", "Parentheses ()", "Semicolons ;"],
    "How do you define a block of code in an 'if' statement?",
  ),
  Quiz(
    253,
    "ၶေႃႈၵႂၢမ်းလႂ် ဢၼ်ၸႂ်ႉတႅၼ်းပၼ် 'else if' ၼႂ်း Python?",
    ["elif", "else if", "elseif", "elsif"],
    "Which keyword is used for 'else if' in Python?",
  ),
  Quiz(
    254,
    "လွၵ်းလၢႆးတႅမ်ႈ (Syntax) ဢၼ်မၢၼ်ႇမႅၼ်ႈ ၶွင် 'if' ပဵၼ်ဢၼ်လႂ်?",
    ["if x > 5:", "if (x > 5)", "if x > 5 then", "if x > 5 {}"],
    "What is the correct syntax for an 'if' statement?",
  ),
  Quiz(
    255,
    "ဢၼ်လႂ် ပဵၼ်တူဝ်ယၢင်ႇၶွင် 'Short Hand If' (Ternary Operator)?",
    ["x = 1 if y > 0 else 0", "if y > 0: x = 1", "x = y > 0 ? 1 : 0", "x = if(y > 0, 1, 0)"],
    "What is a 'Short Hand If' (Ternary Operator) example?",
  ),
  Quiz(
    256,
    "ၸဝ်ႈၵဝ်ႇ ၸၢင်ႈမီး 'if' လူၺ်ႈဢမ်ႇပႃး 'else' လႆႈႁႃႉ?",
    ["လႆႈ (Yes)", "ဢမ်ႇလႆႈ (No)", "လႆႈသင်မၼ်းယူႇၼႂ်း Loop", "ၼႂ်း Python 2 ၵူၺ်း"],
    "Can you have an 'if' statement without an 'else'?",
  ),
  Quiz(
    257,
    "ၽွၼ်းလႆႈၶွင်: if 0: print('A') else: print('B') ပဵၼ်သင်?",
    ["B (ယွၼ်ႉ 0 ပဵၼ် False)", "A", "Error", "None"],
    "What is the result of: if 0: print('A') else: print('B')?",
  ),
  Quiz(
    258,
    "သင်ႇၶေႇ (Symbol) လႂ် ဢၼ်လူဝ်ႇသႂ်ႇ တီႈသုတ်းထႅဝ် 'if' ဢမ်ႇၼၼ် 'elif'?",
    [": (Colon)", "; (Semicolon)", "{", "ဢမ်ႇလူဝ်ႇသင်"],
    "Which symbol is required at the end of an 'if' or 'elif' line?",
  ),
  Quiz(
    259,
    "ၶေႃႈၵႂၢမ်း 'Nested If' မၢႆထိုင်သင်?",
    ["လိၵ်ႈသင်ႇ if ဢၼ်ယူႇၼႂ်း if ထႅင်ႈဢၼ်ၼိုင်ႈ", "if ဢၼ်မီး elif တၢင်းၼမ်", "if ဢၼ်ယူႇၼႂ်း Comment", "if ဢၼ်ဢမ်ႇလႅၼ်ႈသေပွၵ်ႈ"],
    "What is 'Nested If'?",
  ),
  Quiz(
    260,
    "Operator လႂ် ဢၼ်ၵႆႉၸႂ်ႉ တွၼ်ႈတႃႇႁူမ်ႈငဝ်းလၢႆး သွင်ဢၼ်ၼႂ်း 'if'?",
    ["and", "&&", "&", "++"],
    "Which operator is commonly used to combine two conditions in an 'if'?",
  ),

  // --- Topic 29: Match conditional statement (276-300) ---
  Quiz(
    276,
    "Python Version လႂ် ဢၼ်တႄႇသႂ်ႇ 'match' statement မႃး?",
    ["3.10", "3.8", "3.6", "2.7"],
    "Which Python version introduced the 'match' statement?",
  ),
  Quiz(
    277,
    "'match' statement ၼႆႉ မိူၼ်ၵၼ်တင်း ______ ၼႂ်းၽႃႇသႃႇတၢင်ႇမဵဝ်း။",
    ["Switch-Case", "For-Loop", "Try-Except", "If-Else"],
    "The 'match' statement is Python's version of ______ in other languages.",
  ),
  Quiz(
    278,
    "ၶေႃႈၵႂၢမ်းလႂ် ဢၼ်ၸႂ်ႉဝၢႆး 'match' တွၼ်ႈတႃႇမၵ်းမၼ်ႈ ငဝ်းလၢႆးတႅတ်ႈတေႃး?",
    ["case", "when", "if", "switch"],
    "Which keyword follows 'match' to define a specific case?",
  ),
  Quiz(
    279,
    "သင်ႇၶေႇ (Symbol) လႂ် ၸႂ်ႉပဵၼ် 'Wildcard' ဢမ်ႇၼၼ် ငဝ်းလၢႆး Default ၼႂ်း 'match'?",
    ["_ (Underscore)", "*", "default", "else"],
    "Which symbol is used as a 'wildcard' or default case in 'match'?",
  ),
  Quiz(
    280,
    "ၼႂ်းၼိုင်ႈ 'case' ၸၢင်ႈႁပ်ႉလႆႈ လၢႆလၢႆ Pattern ႁႃႉ?",
    ["လႆႈ, လူၺ်ႈၸႂ်ႉ Operator | (pipe)", "ဢမ်ႇလႆႈ", "ၸႂ်ႉလုၵ်ႈၼမ်ႉ (Comma) ၵူၺ်း", "ၸႂ်ႉ 'and' ၵူၺ်း"],
    "Can a single 'case' handle multiple patterns?",
  ),
  Quiz(
    281,
    "ၶေႃႈၵႂၢမ်း 'Guard' ၼႂ်း Match case မၢႆထိုင်သင်?",
    ["ငဝ်းလၢႆး 'if' ဢၼ်ထႅမ်သႂ်ႇၼႂ်း case", "Comment", "Variable ၶိုၵ်ႉတွၼ်း", "လွင်ႈႁူမ်ႇလူမ်ႈ"],
    "What is a 'Guard' in a match case?",
  ),
  Quiz(
    282,
    "Match statement ၼႆႉ လီလိူဝ် if-elif တွၼ်ႈတႃႇ ______။",
    ["Structural Pattern Matching", "ၵၢၼ်ၼပ်ႉပၢႆးၼပ်ႉယူဝ်းๆ", "ၵၢၼ် Print လိၵ်ႈ", "ၵၢၼ် Import module"],
    "Match statements are better than multiple if-elifs for ______.",
  ),
  Quiz(
    283,
    "ၽွၼ်းလႆႈၶွင်: match 1: case 1: print('A')?",
    ["A", "1", "Error", "None"],
    "Result of: match 1: case 1: print('A')?",
  ),

  // --- Topic 30: While loop statement (301-325) ---
  Quiz(
    301,
    "'while' loop တေပၼ်ႇယူႇတႃႇသေႇ ၵႃႈလႂ်ငဝ်းလၢႆးယင်းပဵၼ် ______။",
    ["True (မၢၼ်ႇ)", "False (ၽိတ်း)", "None", "Numeric"],
    "A 'while' loop runs as long as the condition is ______.",
  ),
  Quiz(
    302,
    "ၶေႃႈၵႂၢမ်း (Keyword) လႂ် ၸႂ်ႉတွၼ်ႈတႃႇ ၵိုတ်း Loop ၵမ်းလဵဝ်?",
    ["break", "stop", "exit", "end"],
    "Which keyword is used to stop a loop immediately?",
  ),
  Quiz(
    303,
    "ၶေႃႈၵႂၢမ်းလႂ် ၸႂ်ႉၶၢမ်ႈၵၢၼ်ပၼ်ႇႁွပ်ႈမိူဝ်ႈလဵဝ် သေၵႂႃႇႁွပ်ႈၼႃႈ?",
    ["continue", "skip", "next", "pass"],
    "Which keyword is used to skip the current iteration and move to the next?",
  ),
  Quiz(
    304,
    "တေပဵၼ်သင် သင်ငဝ်းလၢႆး 'while' ပဵၼ် True ဝႆႉတႃႇသေႇ?",
    ["တေပဵၼ် Infinite loop (ပၼ်ႇဢမ်ႇသုတ်း)", "Program တေလႅဝ်ၵမ်းလဵဝ်", "Python တေၵိုတ်းပၼ်ႁင်းၵူၺ်း", "မၼ်းတေလႅၼ်ႈၵမ်းလဵဝ်ၵူၺ်း"],
    "What happens if a 'while' condition is always True?",
  ),
  Quiz(
    305,
    "'while' loop မီးၸုမ်း 'else' လႆႈႁႃႉ?",
    ["လႆႈ, မၼ်းတေလႅၼ်ႈမိူဝ်ႈငဝ်းလၢႆးပဵၼ် False", "ဢမ်ႇလႆႈ", "လႆႈသင်မၼ်းပႃး break", "ၼႂ်း Python 2 ၵူၺ်း"],
    "Can a 'while' loop have an 'else' block?",
  ),
  Quiz(
    306,
    "ၸဝ်ႈၵဝ်ႇ တေထႅမ်ၵႃႈၶၼ်ပၼ် 'i' (Increment) ၼႂ်း while loop ၸိူင်ႉႁိုဝ်?",
    ["i += 1", "i++", "++i", "i.next()"],
    "How do you increment a counter 'i' in a while loop?",
  ),
  Quiz(
    307,
    "ၽွၼ်းလႆႈၶွင်: i=1; while i<3: print(i); i+=1?",
    ["1 လႄႈ 2", "1, 2, 3", "3", "Infinite loop"],
    "What is the result of: i=1; while i<3: print(i); i+=1?",
  ),

  // --- Topic 31: For loop statement (326-350) ---
  Quiz(
    326,
    "Python 'for' loop ၼႆႉ ပဵၼ်လူင်ၸႂ်ႉတွၼ်ႈတႃႇပၼ်ႇၼႂ်း ______။",
    ["Sequence (list, tuple, string, range)", "Math equation", "Variable name", "File size"],
    "A 'for' loop in Python is primarily used to iterate over a ______.",
  ),
  Quiz(
    327,
    "Function လႂ် ဢၼ်သၢင်ႈၸုမ်းမၢႆၼပ်ႉ တွၼ်ႈတႃႇ for loop?",
    ["range()", "list()", "sequence()", "generate()"],
    "Which function generates a sequence of numbers for a for loop?",
  ),
  Quiz(
    328,
    "range(5) ၼႆႉ သၢင်ႈမၢႆၼပ်ႉသင်?",
    ["0 တေႃႇ 4", "1 တေႃႇ 5", "0 တေႃႇ 5", "1 တေႃႇ 4"],
    "What does range(5) produce?",
  ),
  Quiz(
    329,
    "range(2, 10, 2) ၼႆႉ သၢင်ႈမၢႆၼပ်ႉသင်?",
    ["2, 4, 6, 8", "2, 10, 2", "2, 3...10", "10, 8, 6, 4, 2"],
    "What does range(2, 10, 2) produce?",
  ),
  Quiz(
    330,
    "ၸဝ်ႈၵဝ်ႇ တေပၼ်ႇ (Loop) ၼႂ်း Key လႄႈ Value ၶွင် Dictionary ၸိူင်ႉႁိုဝ်?",
    ["for k, v in dict.items():", "for k, v in dict:", "for x in dict.all():", "loop dict"],
    "How do you loop through a dictionary's keys and values?",
  ),
  Quiz(
    331,
    "ၶေႃႈၵႂၢမ်း 'pass' ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["တီႈဝႆႉတႅၼ်းတၢင် ၶူတ်ႉဢၼ်ပဝ်ႇဝႆႉ (ဢမ်ႇႁဵတ်းသင်)", "တွၼ်ႈတႃႇၵိုတ်း loop", "တွၼ်ႈတႃႇၶၢမ်ႈ Error", "တွၼ်ႈတႃႇ Print ၵႃႈၶၼ်ၼႃႈ"],
    "What is the 'pass' statement used for?",
  ),
  Quiz(
    332,
    "ၽွၼ်းလႆႈၶွင်: for x in 'Hi': print(x)?",
    ["H လႄႈ i", "Hi", "Error", "H i"],
    "Result of: for x in 'Hi': print(x)?",
  ),
  Quiz(
    333,
    "ၸဝ်ႈၵဝ်ႇ ၸၢင်ႈဢဝ် for loop သႂ်ႇၼႂ်း for loop ထႅင်ႈလႆႈႁႃႉ?",
    ["လႆႈ (Nested Loop)", "ဢမ်ႇလႆႈ", "လႆႈသွင်ပွၵ်ႈၵူၺ်း", "လႆႈသင်ပဵၼ် List ၵူၺ်း"],
    "Can you nest a for loop inside another for loop?",
  ),

  // --- Topic 32: try: except: statement (351-375) ---
  Quiz(
    351,
    "ၸုမ်း (Block) လႂ် ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ 'ၸၢမ်း' တူၺ်းၶူတ်ႉဝႃႈတေမီး Error ႁႃႉ?",
    ["try", "except", "error", "check"],
    "Which block is used to test a block of code for errors?",
  ),
  Quiz(
    352,
    "ၸုမ်းလႂ် ဢၼ်မီးၼႃႈၵၢၼ် ၸတ်းၵၢၼ် (Handle) Error မိူဝ်ႈမၼ်းပဵၼ်မႃး?",
    ["except", "try", "catch", "finally"],
    "Which block handles the error if one occurs?",
  ),
  Quiz(
    353,
    "ၸုမ်းလႂ် ဢၼ်တေလႅၼ်ႈ 'တႃႇသေႇ' မၢႆဝႃႈတေပဵၼ် Error ဢမ်ႇၼၼ်ၵေႃႈယႃႇ?",
    ["finally", "else", "end", "always"],
    "Which block runs regardless of whether an error occurred or not?",
  ),
  Quiz(
    354,
    "ၸုမ်းလႂ် ဢၼ်တေလႅၼ်ႈ 'ၵူၺ်းမိူဝ်ႈ' ဢမ်ႇပဵၼ် Error သေပိူင် ၼႂ်း try block?",
    ["else", "finally", "except", "then"],
    "Which block runs ONLY if no errors were raised in the try block?",
  ),
  Quiz(
    355,
    "တေၺွပ်း Error တႅတ်ႈတေႃး မိူၼ်ၼင်ႇ ၵၢၼ်ႁၢၼ်လူၺ်ႈသုၼ် (Zero division) ၸိူင်ႉႁိုဝ်?",
    ["except ZeroDivisionError:", "except Error:", "catch 0:", "if error == 0:"],
    "How do you catch a specific error like division by zero?",
  ),
  Quiz(
    356,
    "ၸဝ်ႈၵဝ်ႇ ၸၢင်ႈမီး 'except' လၢႆလၢႆဢၼ် တွၼ်ႈတႃႇ 'try' ဢၼ်လဵဝ်လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "ၼႂ်း Python 3.10+ ၵူၺ်း", "တွၼ်ႈတႃႇ Error ပၢႆးၼပ်ႉၵူၺ်း"],
    "Can you have multiple 'except' blocks for one 'try'?",
  ),
  Quiz(
    357,
    "ၼႂ်း Python, ဢၼ်လႂ် မိူၼ်ၵၼ်တင်း 'catch' ၼႂ်း Java?",
    ["except", "error", "handle", "receive"],
    "What is the equivalent of Java's 'catch' in Python?",
  ),
  Quiz(
    358,
    "တေပဵၼ်သင် သင်ပဵၼ် Error ၵူၺ်းၵႃႈဢမ်ႇမီး 'except' block?",
    ["Program တေလႅဝ် (Crashes)", "မၼ်းတေၶၢမ်ႈ Error ၵႂႃႇ", "မၼ်းတေ Print 'None'", "မၼ်းတေပိုတ်ႇၸၢၵ်ႈမႂ်ႇ"],
    "What happens if an error occurs but there is no 'except' block?",
  ),

  // --- Topic 33: Raise an exception (376-400) ---
  Quiz(
    376,
    "ၶေႃႈၵႂၢမ်းလႂ် ၸႂ်ႉတွၼ်ႈတႃႇ 'သင်ႇ' (Trigger) ႁႂ်ႈပဵၼ် Error လူၺ်ႈၵူၼ်းတႅမ်ႈၶူတ်ႉ?",
    ["raise", "throw", "error", "stop"],
    "Which keyword is used to manually trigger an error?",
  ),
  Quiz(
    377,
    "သၢႆယွၼ်ႉသင် ၸဝ်ႈၵဝ်ႇလူဝ်ႇ 'raise' Error ႁင်းၵူၺ်း?",
    ["တွၼ်ႈတႃႇၵိုတ်း Program မိူဝ်ႈငဝ်းလၢႆးဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉမႃးထိုင်", "တွၼ်ႈတႃႇမႄး Bug", "ႁႂ်ႈၶူတ်ႉဝႆးလိူဝ်ၵဝ်ႇ", "တွၼ်ႈတႃႇ Print ၶေႃႈၵႂၢမ်း"],
    "Why would you 'raise' an exception?",
  ),
  Quiz(
    378,
    "လွၵ်းလၢႆးတႅမ်ႈ (Syntax) ဢၼ်မၢၼ်ႇမႅၼ်ႈ တွၼ်ႈတႃႇ raise NameError?",
    ["raise NameError('msg')", "throw NameError", "error.NameError", "raise(NameError)"],
    "Correct syntax to raise a NameError?",
  ),
  Quiz(
    379,
    "ၸဝ်ႈၵဝ်ႇ ၸၢင်ႈ raise Error ဢၼ်ပႃးတင်း ၶေႃႈၵႂၢမ်း (Message) သုၼ်ႇတူဝ်လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "တွၼ်ႈတႃႇ String ၵူၺ်း", "ၼႂ်း Terminal ၵူၺ်း"],
    "Can you raise a custom message with an exception?",
  ),
  Quiz(
    380,
    "ၽွၼ်းလႆႈၶွင်: raise Exception('Oops') ပဵၼ်သင်?",
    ["Program တေၵိုတ်းသေ Print 'Exception: Oops'", "မၼ်းတေ Print 'Oops' သေသိုပ်ႇလႅၼ်ႈၵႂႃႇ", "ဢမ်ႇပဵၼ်သင်", "မၼ်းတေသၢင်ႈ Log file"],
    "What is the result of: raise Exception('Oops')?",
  ),
  Quiz(
    381,
    "ဢၼ်လႂ် ပဵၼ် Built-in Exception ၼႂ်း Python?",
    ["ValueError", "MistakeError", "CodeError", "LoopError"],
    "Which of these is a built-in exception?",
  ),
  Quiz(
    382,
    "ၸဝ်ႈၵဝ်ႇ ၸၢင်ႈ re-raise (သင်ႇ Error ၶိုၼ်း) ၼႂ်း except block လႆႈႁႃႉ?",
    ["လႆႈ, လူၺ်ႈၸႂ်ႉ 'raise' လၢႆလၢႆ", "ဢမ်ႇလႆႈ", "ၸႂ်ႉ 'retry' ၵူၺ်း", "ၼႂ်း while loop ၵူၺ်း"],
    "Can you re-raise the same exception inside an except block?",
  ),

  // --- Mixed & Advanced Flow Control (383-400) ---
  Quiz(
    383,
    "LBYL (Look Before You Leap) မၢႆထိုင်သင်?",
    ["ၵၢၼ်ၵူတ်ႇထတ်းငဝ်းလၢႆးဢွၼ်တၢင်းတေလႅၼ်ႈၶူတ်ႉ (ၸႂ်ႉ 'if')", "ၵၢၼ်ၸႂ်ႉ try-except တွၼ်ႈတႃႇၵူႈလွင်ႈ", "ၵၢၼ်လႅၼ်ႈၶူတ်ၺ်ႈဢမ်ႇၵူတ်ႇထတ်း", "Loop မဵဝ်းၼိုင်ႈ"],
    "What is 'LBYL' (Look Before You Leap)?",
  ),
  Quiz(
    384,
    "EAFP (Easier to Ask for Forgiveness than Permission) မၢႆထိုင်သင်?",
    ["ၵၢၼ်ၸႂ်ႉ 'try-except' တွၼ်ႈတႃႇၸတ်းၵၢၼ် Error ဢၼ်ၸၢင်ႈပဵၼ်", "ၵၢၼ်ၸႂ်ႉ 'if' ၵူတ်ႇထတ်းၵူႈလွင်ႈ", "ၵၢၼ်တႅမ်ႈၶူတ်ႉလူၺ်ႈဢမ်ႇမီး Error", "ၶေႃႈၵႂၢမ်းလပ်ႉ Python"],
    "What is 'EAFP' (Easier to Ask for Forgiveness than Permission)?",
  ),
  Quiz(
    385,
    "လွၵ်းလၢႆးလႂ် (LBYL ဢမ်ႇၼၼ် EAFP) ဢၼ်ပဵၼ် 'Pythonic' (မိူၼ် Python တႄႇတႄႇ) လိူဝ်?",
    ["EAFP", "LBYL", "မိူၼ်ၵၼ်", "ဢမ်ႇၸႂ်ႈတင်းသွင်ဢၼ်"],
    "Which style (LBYL or EAFP) is more 'Pythonic'?",
  ),
  Quiz(
    386,
    "ၽွၼ်းလႆႈၶွင်: range(3) ပဵၼ်သင်?",
    ["0, 1, 2", "1, 2, 3", "0, 1, 2, 3", "3, 2, 1"],
    "What is the output of: range(3)?",
  ),
  Quiz(
    387,
    "'break' ၼႂ်း Loop သွၼ်ႉ (Nested loop) ႁဵတ်းသင်?",
    ["ၵိုတ်း Loop ဢၼ်ယူႇၽၢႆႇၼႂ်းသုတ်းၵူၺ်း", "ၵိုတ်း Loop တင်းပိုၼ်း", "ပိုတ်ႇၸၢၵ်ႈမႂ်ႇ", "ၶၢမ်ႈၵႂႃႇၸူး 'else'"],
    "What does 'break' do in a nested loop?",
  ),
  Quiz(
    388,
    "ၸုမ်း 'finally' တေလႅၼ်ႈႁႃႉ သင် Program မီးၵၢၼ် 'return' ၼႂ်း try block?",
    ["လႅၼ်ႈ (Yes)", "ဢမ်ႇလႅၼ်ႈ (No)", "လႅၼ်ႈသင်ဢမ်ႇမီး Error", "ၼႂ်း Python 2 ၵူၺ်း"],
    "Does a 'finally' block run if the program 'returns' in the try block?",
  ),
  Quiz(
    389,
    "Error သင် ဢၼ်တေပဵၼ်မႃး ယွၼ်ႉ 10 / 0?",
    ["ZeroDivisionError", "MathError", "ValueError", "CalculationError"],
    "What error is raised by 10 / 0?",
  ),
  Quiz(
    390,
    "Error သင် ဢၼ်တေပဵၼ်မႃး ယွၼ်ႉ int('abc')?",
    ["ValueError", "TypeError", "NameError", "StringError"],
    "What error is raised by int('abc')?",
  ),
  Quiz(
    391,
    "Error သင် ဢၼ်တေပဵၼ်မႃး ယွၼ်ႉ '5' + 5?",
    ["TypeError", "ValueError", "MathError", "ConcatError"],
    "What error is raised by '5' + 5?",
  ),
  Quiz(
    392,
    "Error သင် ဢၼ်တေပဵၼ်မႃး မိူဝ်ႈၸႂ်ႉ Variable ဢၼ်ဢမ်ႇလႆႈမၵ်းမၼ်ႈဝႆႉ?",
    ["NameError", "VariableError", "DefineError", "NullError"],
    "What error is raised when a variable is not defined?",
  ),
  Quiz(
    393,
    "ၼႂ်း 'match' statement, 'case _' မၢႆထိုင်သင်?",
    ["ငဝ်းလၢႆး Default ဢၼ်ႁပ်ႉၵူႈလွင်ႈ", "ငဝ်းလၢႆး Error", "ငဝ်းလၢႆးဢွၼ်တၢင်းသုတ်း", "ငဝ်းလၢႆးဢၼ်လပ်ႉဝႆႉ"],
    "In a 'match' statement, what is 'case _'?",
  ),
  Quiz(
    394,
    "ၸဝ်ႈၵဝ်ႇ ၸႂ်ႉ 'else' တင်း 'for' loop လႆႈႁႃႉ?",
    ["လႆႈ, မၼ်းတေလႅၼ်ႈသင် loop ယဝ်ႉတူဝ်ႈလူၺ်ႈဢမ်ႇထုၵ်ႇ 'break'", "ဢမ်ႇလႆႈ", "ၸႂ်ႉတင်း 'if' ၵူၺ်း", "တွၼ်ႈတႃႇ Error ၵူၺ်း"],
    "Can you use 'else' with a 'for' loop?",
  ),
  Quiz(
    395,
    "တေဢဝ်တင်း Index လႄႈ Value ၼႂ်း for loop ၸိူင်ႉႁိုဝ်?",
    ["for i, v in enumerate(list):", "for i, v in list.items():", "for i, v in list:", "loop(index, value)"],
    "How do you get the index and value in a for loop?",
  ),
  Quiz(
    396,
    "ၶေႃႈၵႂၢမ်း 'iterable' မၢႆထိုင်သင်?",
    ["Object လႂ်ၵေႃႈယႃႇ ဢၼ်ၸၢင်ႈဢဝ်မႃးပၼ်ႇ Loop လႆႈ", "Function မဵဝ်းၼိုင်ႈ", "Operator ပၢႆးၼပ်ႉ", "Variable ဢၼ်လႅၵ်ႈလၢႆႈယူႇ"],
    "What is 'iterable'?",
  ),
  Quiz(
    397,
    "ၶေႃႈၵႂၢမ်းလႂ် ဢၼ်ပဵၼ် Null operation (တီႈဝႆႉတႅၼ်းတၢင်)?",
    ["pass", "None", "null", "break"],
    "Which keyword is a null operation (placeholder)?",
  ),
  Quiz(
    398,
    "Exception လႂ် ဢၼ်တေပဵၼ်မႃး မိူဝ်ႈၼဵၵ်း 'Ctrl+C'?",
    ["KeyboardInterrupt", "SystemExit", "StopIteration", "BreakError"],
    "Which exception is raised when 'Ctrl+C' is pressed?",
  ),
  Quiz(
    399,
    "ၶေႃႈၵႂၢမ်း 'Assertion' ၼႂ်း Python မၢႆထိုင်သင်?",
    ["ၵၢၼ်ၵူတ်ႇထတ်းငဝ်းလၢႆး တွၼ်ႈတႃႇၸွႆႈ Debugging", "Comment မဵဝ်းၼိုင်ႈ", "လွၵ်းလၢႆးတႅမ်ႈၸိုဝ်ႈ Variable", "Operator ပၢႆးၼပ်ႉ"],
    "What is an 'Assertion' in Python?",
  ),
  Quiz(
    400,
    "ၶေႃႈၵႂၢမ်းလႂ် ၸႂ်ႉတွၼ်ႈတႃႇ assertions?",
    ["assert", "check", "verify", "test"],
    "Which keyword is used for assertions?",
  ),
];
final List<Quiz> pythonQuizM5 = [
  // --- Topic 34: Functions (401-425) ---
  Quiz(
    401,
    "ၶေႃႈၵႂၢမ်း (Keyword) လႂ် ၸႂ်ႉတွၼ်ႈတႃႇသၢင်ႈ Function ၼႂ်း Python?",
    ["def", "function", "func", "define"],
    "Which keyword is used to create a function in Python?",
  ),
  Quiz(
    402,
    "ၸဝ်ႈၵဝ်ႇ တေႁွင်ႉၸႂ်ႉ (Call) Function ဢၼ်ၸိုဝ်ႈဝႃႈ 'my_func' ၸိူင်ႉႁိုဝ်?",
    ["my_func()", "call my_func()", "run my_func", "my_func.start()"],
    "How do you call a function named 'my_func'?",
  ),
  Quiz(
    403,
    "ၶေႃႈၵႂၢမ်း 'Parameter' ၼႂ်း Function မၢႆထိုင်သင်?",
    ["Variable ဢၼ်တႅမ်ႈဝႆႉၼႂ်း ပုမ်ႇၶဵတ်ႇ မိူဝ်ႈပိုတ်ႇသၢင်ႈ Function", "ၵႃႈၶၼ်ဢၼ်သူင်ႇပၼ် Function", "ၽွၼ်းလႆႈၶွင် Function", "Loop မဵဝ်းၼိုင်ႈ"],
    "What is a 'parameter' in a function?",
  ),
  Quiz(
    404,
    "ၶေႃႈၵႂၢမ်း 'Argument' ၼႂ်း Function မၢႆထိုင်သင်?",
    ["ၵႃႈၶၼ်တႄႇတႄႇ ဢၼ်သူင်ႇပၼ် Function မိူဝ်ႈႁွင်ႉၸႂ်ႉမၼ်း", "ၸိုဝ်ႈၶွင် Function", "ၸၼ်ႉၵၢၼ်ၶျွၵ်ႉထႅဝ်", "ၶေႃႈၵႂၢမ်းၼႄ Error"],
    "What is an 'argument' in a function?",
  ),
  Quiz(
    405,
    "ဝၢႆးလုၵ်ႈၼမ်ႉ ပုမ်ႇၶဵတ်ႇ ၼႂ်းၵၢၼ်ပိုတ်ႇသၢင်ႈ Function တေလႆႈသႂ်ႇသင်?",
    [": (Colon)", "; (Semicolon)", "{ (Brace)", "ဢမ်ႇလူဝ်ႇသႂ်ႇသင်"],
    "What follows the parentheses in a function definition?",
  ),
  Quiz(
    406,
    "Function ဢၼ်ဢမ်ႇပႃး Parameter သေဢၼ်ၼၼ်ႉ မီးလႆႈႁႃႉ?",
    ["လႆႈ (Yes)", "ဢမ်ႇလႆႈ (No)", "လႆႈသင်မၼ်းဢမ်ႇသူင်ႇၽွၼ်းလႆႈသင်", "ၼႂ်း Python 2 ၵူၺ်း"],
    "Can a function exist without any parameters?",
  ),
  Quiz(
    407,
    "ၶေႃႈၵႂၢမ်း 'Docstring' ၼႂ်း Function မၢႆထိုင်သင်?",
    ["လိၵ်ႈသျိင်းၼႄ ၼႃႈၵၢၼ်ၶွင် Function", "မဵဝ်းၶေႃႈမုၼ်း Variable", "လွၵ်းလၢႆးၶၢမ်ႈၶူတ်ႉ", "Log ၶွင် Error"],
    "What is 'Docstring' in a function?",
  ),
  Quiz(
    408,
    "ၸဝ်ႈၵဝ်ႇ လူဝ်ႇဝႆႉ Docstring တီႈလႂ်?",
    ["တီႈထႅဝ်ဝၢႆးသုတ်း ၶွင်ႁူဝ်ၶေႃႈ Function (Header)", "တီႈၼႃႈ 'def'", "တီႈသုတ်းသုတ်းၶွင် File", "ၼႂ်းလိၵ်ႈသင်ႇ return"],
    "Where should a Docstring be placed?",
  ),

  // --- Topic 35: Function Arguments (426-455) ---
  Quiz(
    426,
    "ၶေႃႈၵႂၢမ်း 'Positional Arguments' မၢႆထိုင်သင်?",
    ["Argument ဢၼ်လူဝ်ႇသူင်ႇပၼ် ၸွမ်းၼင်ႇၶပ်ႉယႅၼ်ႇဢၼ်မၢၼ်ႇမႅၼ်ႈ", "Argument ဢၼ်သူင်ႇၸွမ်းၸိုဝ်ႈ", "ၵႃႈၶၼ် Default", "Argument ဢၼ်လိူၵ်ႈသႂ်ႇၵေႃႈလႆႈဢမ်ႇသႂ်ႇၵေႃႈလႆႈ"],
    "What are 'Positional Arguments'?",
  ),
  Quiz(
    427,
    "ၶေႃႈၵႂၢမ်း 'Keyword Arguments' မၢႆထိုင်သင်?",
    ["Argument ဢၼ်သူင်ႇလူၺ်ႈၸႂ်ႉလွၵ်းလၢႆး 'key = value'", "Argument ဢၼ်လပ်ႉဝႆႉ", "Argument တွၼ်ႈတႃႇပၢႆးၼပ်ႉၵူၺ်း", "ၵႃႈၶၼ် Positional"],
    "What are 'Keyword Arguments'?",
  ),
  Quiz(
    428,
    "တေမၵ်းမၼ်ႈ 'Default Parameter Value' ၸိူင်ႉႁိုဝ်?",
    ["def my_func(country = 'Norway'):", "def my_func(country):", "country := 'Norway'", "set default 'Norway'"],
    "How do you define a 'Default Parameter Value'?",
  ),
  Quiz(
    429,
    "တေပဵၼ်သင် သင်ၸဝ်ႈၵဝ်ႇႁွင်ႉၸႂ်ႉ Function လူၺ်ႈဢမ်ႇသူင်ႇ Argument ပၼ် (သေတႃႉမၼ်းမီး Default parameter)?",
    ["မၼ်းတေၸႂ်ႉ ၵႃႈၶၼ် Default ၼၼ်ႉ", "မၼ်းတေၼႄ Error", "မၼ်းတေသူင်ႇၶိုၼ်း None", "မၼ်းတေၶၢမ်ႈ Function ၼၼ်ႉၵႂႃႇ"],
    "What happens if you call a function with a default parameter without passing an argument?",
  ),
  Quiz(
    430,
    "လွၵ်းလၢႆးတႅမ်ႈလႂ် ဢၼ်ပၼ် Function ႁပ်ႉဢဝ် Argument ပဵၼ် 'Tuple' လႆႈ? (Arbitrary Arguments)",
    ["*args", "**kwargs", "args[]", "all_args"],
    "Which syntax allows a function to receive a 'Tuple' of arguments? (Arbitrary Arguments)",
  ),
  Quiz(
    431,
    "လွၵ်းလၢႆးတႅမ်ႈလႂ် ဢၼ်ပၼ် Function ႁပ်ႉဢဝ် Argument ပဵၼ် 'Dictionary' လႆႈ?",
    ["**kwargs", "*args", "dict_args", "params"],
    "Which syntax allows a function to receive a 'Dictionary' of arguments?",
  ),
  Quiz(
    432,
    "ၼႂ်း '*args' ၼၼ်ႉ, လၢဝ် '*' ၼၼ်ႉ ႁဵတ်းသင်တႄႇတႄႇ?",
    ["မၼ်းတေႁေႃႇ (Pack) Argument တၢင်းၼမ် သႂ်ႇၼႂ်း Tuple ဢၼ်လဵဝ်", "မၼ်းတေၼပ်ႉၵႃႈၶၼ်ထႅမ်", "မၼ်းၼႄၸူး Memory address", "မၼ်းတေသၢင်ႈ List"],
    "In '*args', what does the '*' actually do?",
  ),
  Quiz(
    433,
    "ၸဝ်ႈၵဝ်ႇ ၸၢင်ႈၸႂ်ႉတင်း Positional လႄႈ Keyword arguments ႁူမ်ႈၵၼ် မိူဝ်ႈႁွင်ႉၸႂ်ႉလႆႈႁႃႉ?",
    ["လႆႈ, ၵူၺ်းၵႃႈ Positional တေလႆႈမႃးဢွၼ်တၢင်း", "လႆႈ, သူင်ႇၶပ်ႉယႅၼ်ႇၸိူင်ႉႁိုဝ်ၵေႃႈယႃႇ", "ဢမ်ႇလႆႈ", "လႆႈတွၼ်ႈတႃႇ Built-in functions ၵူၺ်း"],
    "Can you mix positional and keyword arguments in a call?",
  ),

  // --- Topic 36: Returning Values (456-485) ---
  Quiz(
    456,
    "ၶေႃႈၵႂၢမ်း (Keyword) လႂ် ၸႂ်ႉတွၼ်ႈတႃႇသူင်ႇ ၽွၼ်းလႆႈ (Result) ပွၵ်ႈၶိုၼ်းၸူး ၵူၼ်းႁွင်ႉၸႂ်ႉ?",
    ["return", "output", "send", "result"],
    "Which keyword is used to send a result back to the caller?",
  ),
  Quiz(
    457,
    "တေပဵၼ်သင်ၸူး ၶူတ်ႉၼႂ်း Function ဝၢႆးသေ လိၵ်ႈသင်ႇ 'return' ႁဵတ်းၵၢၼ်ယဝ်ႉ?",
    ["မၼ်းတေထုၵ်ႇၶၢမ်ႈပႅတ်ႈ (Function တေဢွၵ်ႇၵမ်းလဵဝ်)", "မၼ်းတေသိုပ်ႇလႅၼ်ႈၵႂႃႇထႅင်ႈ", "မၼ်းတေပႂ်ႉ 5 သိၵ်ႉၵၢၼ်ႉ", "မၼ်းတေႁဵတ်းႁႂ်ႈ Error"],
    "What happens to the code in a function after the 'return' statement is executed?",
  ),
  Quiz(
    458,
    "သင်ၼႂ်း Function ဢမ်ႇမီးလိၵ်ႈသင်ႇ 'return', မၼ်းတေသူင်ႇသင်ပွၵ်ႈၶိုၼ်း?",
    ["None", "0", "False", "String ပဝ်ႇ"],
    "What does a function return if there is no 'return' statement?",
  ),
  Quiz(
    459,
    "Function ၼႂ်း Python ၸၢင်ႈသူင်ႇ ၽွၼ်းလႆႈလၢႆလၢႆဢၼ် ၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်လႆႈႁႃႉ?",
    ["လႆႈ (ၵႆႉသူင်ႇဢွၵ်ႇပဵၼ် Tuple)", "ဢမ်ႇလႆႈ", "လႆႈသင်မၼ်းပဵၼ် String ၵူၺ်း", "ၼႂ်း Python 3.12+ ၵူၺ်း"],
    "Can a Python function return multiple values at once?",
  ),
  Quiz(
    460,
    "တေႁပ်ႉဢဝ် ၵႃႈၶၼ်လၢႆဢၼ်ဢၼ်သူင်ႇမႃး 'return 1, 2' ၸိူင်ႉႁိုဝ်?",
    ["a, b = func()", "x = func()", "လႆႈတင်း A လႄႈ B", "ႁဵတ်းဢမ်ႇလႆႈ"],
    "How do you capture multiple returned values: 'return 1, 2'?",
  ),
  Quiz(
    461,
    "လိၵ်ႈသင်ႇ 'return' ၼႆႉ မၼ်းတေလႆႈမီး တႃႇသေႇ ၼႂ်းၵူႈ Function ႁႃႉ?",
    ["ဢမ်ႇလူဝ်ႇမီးၵေႃႈလႆႈ", "လူဝ်ႇမီးတႃႇသေႇ", "လူဝ်ႇတွၼ်ႈတႃႇ Function ပၢႆးၼပ်ႉၵူၺ်း", "လူဝ်ႇတွၼ်ႈတႃႇ 'def' ၵူၺ်း"],
    "Is 'return' mandatory in every function?",
  ),
  Quiz(
    462,
    "ၽွၼ်းလႆႈၶွင် Function ဢၼ်မီးၵူၺ်းၶေႃႈၵႂၢမ်း 'pass' ပဵၼ်သင်?",
    ["None", "Error", "Undefined", "0"],
    "What is the output of a function that only contains 'pass'?",
  ),

  // --- Topic 37: User Input (486-505) ---
  Quiz(
    486,
    "Function လႂ် ၸႂ်ႉတွၼ်ႈတႃႇ ႁပ်ႉၶေႃႈမုၼ်းတႄႇတီႈ Keyboard?",
    ["input()", "get()", "scan()", "read()"],
    "Which function is used to get information from the keyboard?",
  ),
  Quiz(
    487,
    "မဵဝ်းၶေႃႈမုၼ်း (Data type) ပိုၼ်ႉຖານ ၶွင်ၵႃႈၶၼ်ဢၼ် input() သူင်ႇမႃးပဵၼ်သင်?",
    ["String (လိၵ်ႈ)", "Integer (မၢႆၼပ်ႉတဵမ်)", "Float (မၢႆၼပ်ႉလုၵ်ႈၼမ်ႉ)", "Boolean"],
    "What is the default data type of the value returned by input()?",
  ),
  Quiz(
    488,
    "တေႁပ်ႉဢဝ် ၶေႃႈမုၼ်းပဵၼ်မၢႆၼပ်ႉတဵမ် (Integer) တႄႇတီႈၵူၼ်းၸႂ်ႉ ၸိူင်ႉႁိုဝ်?",
    ["int(input())", "input(int)", "get_int()", "input().to_int()"],
    "How do you get an integer input from a user?",
  ),
  Quiz(
    489,
    "တေပဵၼ်သင် သင်ၵူၼ်းၸႂ်ႉတႅမ်ႈ 'abc' မိူဝ်ႈၸဝ်ႈၵဝ်ႇလႅၼ်ႈ int(input())?",
    ["ValueError (မၼ်းတေၼႄ Error)", "TypeError", "မၼ်းတေပဵၼ် 0", "မၼ်းတေၶၢမ်ႈတူဝ်လိၵ်ႈပႅတ်ႈ"],
    "What happens if the user enters 'abc' when you run int(input())?",
  ),
  Quiz(
    490,
    "ၸဝ်ႈၵဝ်ႇ ၸၢင်ႈတႅမ်ႈၶေႃႈၵႂၢမ်းသင်ႇ (Prompt) ဝႆႉၼႂ်း input() လႆႈႁႃႉ?",
    ["လႆႈ, မိူၼ်ၼင်ႇ input('Enter Name: ')", "ဢမ်ႇလႆႈ", "လႆႈသင်တႅမ်ႈ Print() ၸႅၵ်ႇဝႆႉ", "လႆႈတွၼ်ႈတႃႇမၢႆၼပ်ႉၵူၺ်း"],
    "Can you provide a prompt message inside input()?",
  ),

  // --- Topic 38: Python Lambda (506-530) ---
  Quiz(
    506,
    "Lambda function ၼႆႉ ပဵၼ်သင်?",
    ["Function လဵၵ်ႉๆ ဢၼ်ဢမ်ႇမီးၸိုဝ်ႈ", "Loop မဵဝ်းၼိုင်ႈ", "Library တွၼ်ႈတႃႇပၢႆးၼပ်ႉ", "မဵဝ်းၶေႃႈမုၼ်း Variable"],
    "What is a Lambda function?",
  ),
  Quiz(
    507,
    "ၶေႃႈၵႂၢမ်း (Keyword) လႂ် ၸႂ်ႉတွၼ်ႈတႃႇမၵ်းမၼ်ႈ Function ဢၼ်ဢမ်ႇမီးၸိုဝ်ႈ?",
    ["lambda", "anon", "L", "def_anon"],
    "Which keyword is used to define an anonymous function?",
  ),
  Quiz(
    508,
    "Lambda function ၼိုင်ႈဢၼ် ၸၢင်ႈမီး Expression (ၵၢၼ်ၼပ်ႉသွၼ်ႇ) လႆႈၵႃႈႁိုဝ်?",
    ["ဢၼ်လဵဝ်ၵူၺ်း", "ဢမ်ႇမီးတီႈသုတ်း", "ဢမ်ႇမီးသေဢၼ်", "သၢမ်ဢၼ်"],
    "How many expressions can a lambda function contain?",
  ),
  Quiz(
    509,
    "Lambda function ၸၢင်ႈႁပ်ႉ Argument လႆႈၵႃႈႁိုဝ်?",
    ["ဢမ်ႇမီးတီႈသုတ်း", "ဢၼ်လဵဝ်ၵူၺ်း", "သွင်ဢၼ်ၵူၺ်း", "ဢမ်ႇလႆႈသေဢၼ်"],
    "How many arguments can a lambda function take?",
  ),
  Quiz(
    510,
    "လွၵ်းလၢႆးတႅမ်ႈ (Syntax) ၶွင် lambda ဢၼ်မၢၼ်ႇမႅၼ်ႈ ပဵၼ်ဢၼ်လႂ်?",
    ["lambda a, b : a * b", "lambda(a, b) {a * b}", "lambda: a * b", "def lambda: a*b"],
    "Which of these is a valid lambda syntax?",
  ),
  Quiz(
    511,
    "သၢႆယွၼ်ႉသင် ႁဝ်းၸင်ႇၸႂ်ႉ Lambda functions?",
    ["တွၼ်ႈတႃႇၼႃႈၵၢၼ်ဢၼ်ပွတ်း ဢမ်ႇၼၼ် သူင်ႇပဵၼ် Argument ၸူး Function တၢင်ႇဢၼ်", "ႁႂ်ႈၶူတ်ႉလႅၼ်ႈဝႆးလိူဝ်", "တွၼ်ႈတႃႇတႅၼ်းတၢင် Function 'def' တင်းပိုၼ်း", "တွၼ်ႈတႃႇၸတ်းၵၢၼ် Memory"],
    "Why are lambda functions used?",
  ),
  Quiz(
    512,
    "ၽွၼ်းလႆႈၶွင်: (lambda x: x + 5)(10) ပဵၼ်သင်?",
    ["15", "10", "5", "Error"],
    "What is the result of: (lambda x: x + 5)(10)?",
  ),
  Quiz(
    513,
    "Built-in functions လႂ် ဢၼ်ပိူၼ်ႈၵႆႉၸႂ်ႉတင်း lambda?",
    ["filter(), map(), reduce()", "print(), input()", "range(), len()", "type(), id()"],
    "Which built-in functions are commonly used with lambda?",
  ),

  // --- Topic 39: Scope (531-550) ---
  Quiz(
    531,
    "ၶေႃႈၵႂၢမ်း 'Scope' (ၶွပ်ႇၶဵတ်း) မၢႆထိုင်သင်?",
    ["ပိုၼ်ႉတီႈ ဢၼ် Variable ၼၼ်ႉ ထုၵ်ႇႁူႉၸၵ်း လႄႈ ၸႂ်ႉတိုဝ်းလႆႈ", "ၵႂၢမ်းဝႆးၶွင် Function", "တၢင်းယႂ်ႇ File", "Library မဵဝ်းၼိုင်ႈ"],
    "What is 'Scope'?",
  ),
  Quiz(
    532,
    "ၶေႃႈၵႂၢမ်း 'Local Scope' မၢႆထိုင်သင်?",
    ["Variable ဢၼ်သၢင်ႈဝႆႉ ၼႂ်း Function", "Variable ဢၼ်သၢင်ႈဝႆႉ တီႈၼွၵ်ႈ Function တင်းပိုၼ်း", "Keyword ဢၼ်ပႃးမႃးၼႂ်း Python", "Variable ဢၼ်ယူႇၼႂ်း File တၢင်ႇဢၼ်"],
    "What is a 'Local Scope'?",
  ),
  Quiz(
    533,
    "ၶေႃႈၵႂၢမ်း 'Global Scope' မၢႆထိုင်သင်?",
    ["Variable ဢၼ်သၢင်ႈဝႆႉ ၼႂ်းပိုၼ်ႉတီႈလူင် ၶွင် Script (ၼွၵ်ႈ Function)", "Variable ဢၼ်ယူႇၼႂ်း Loop", "Keyword ၶွင် Python", "Variable ဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈသေပွၵ်ႈ"],
    "What is 'Global Scope'?",
  ),
  Quiz(
    534,
    "Local variable ၸၢင်ႈၶဝ်ႈထိုင်လႆႈ တႄႇတီႈၼွၵ်ႈ Function မၼ်းႁႃႉ?",
    ["ဢမ်ႇလႆႈ (No)", "လႆႈ (Yes)", "လႆႈသင်မၼ်းပဵၼ်မၢႆၼပ်ႉတဵမ်", "လႆႈသင် Function ၼၼ်ႉထုၵ်ႇႁွင်ႉၸႂ်ႉ"],
    "Can a local variable be accessed outside its function?",
  ),
  Quiz(
    535,
    "ၶေႃႈၵႂၢမ်း (Keyword) လႂ် ၸႂ်ႉတွၼ်ႈတႃႇ မႄးၵႃႈၶၼ် Global variable တႄႇတီႈၼႂ်း Function?",
    ["global", "extern", "share", "public"],
    "Which keyword is used to modify a global variable inside a function?",
  ),
  Quiz(
    536,
    "Scope 'Nonlocal' ၼႆႉ ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["တွၼ်ႈတႃႇမႄး Variable ဢၼ်ယူႇၼႂ်း Outer function (Function ဢၼ်ႁေႃႇဝႆႉ)", "ႁဵတ်းႁႂ်ႈ Variable ပဵၼ် Global", "မွတ်ႇ Variable", "ႁႂ်ႈ Loop လႅၼ်ႈဝႆး"],
    "What is 'Nonlocal' scope used for?",
  ),
  Quiz(
    537,
    "လွင်ႈၶပ်ႉယႅၼ်ႇၵူတ်ႇထတ်း 'LEGB' ၼၼ်ႉ ပဵၼ်ၸိူင်ႉႁိုဝ်?",
    ["Local, Enclosing, Global, Built-in", "Local, Easy, Global, Basic", "List, Every, Great, Book", "Logic, Entry, Global, Base"],
    "What is the 'LEGB' rule order?",
  ),
  Quiz(
    538,
    "သင် Local လႄႈ Global variable မီးၸိုဝ်ႈမိူၼ်ၵၼ်, Function တေလိူၵ်ႈၸႂ်ႉဢၼ်လႂ်ဢွၼ်တၢင်း?",
    ["Local", "Global", "မၼ်းတေၼႄ Error", "တင်းသွင်ဢၼ်"],
    "If a local and global variable have the same name, which one does the function use first?",
  ),
  Quiz(
    539,
    "ၽွၼ်းလႆႈၶွင်: x = 10; def f(): x = 5; f(); print(x) တေပဵၼ်သင်?",
    ["10", "5", "Error", "None"],
    "What is the result of: x = 10; def f(): x = 5; f(); print(x)?",
  ),
  Quiz(
    540,
    "ၽွၼ်းလႆႈၶွင်: x = 10; def f(): global x; x = 5; f(); print(x) တေပဵၼ်သင်?",
    ["5", "10", "Error", "15"],
    "What is the result of: x = 10; def f(): global x; x = 5; f(); print(x)?",
  ),

  // --- Mixed Module 5 Review (541-550) ---
  Quiz(
    541,
    "ၶေႃႈၵႂၢမ်း 'Recursion' မၢႆထိုင်သင်?",
    ["Function ဢၼ်ႁွင်ႉၸႂ်ႉ တူဝ်မၼ်းၶိုၼ်း", "Loop ဢၼ်ဢမ်ႇမီးတီႈသုတ်း", "Error မဵဝ်းၼိုင်ႈ", "လွၵ်းလၢႆးမွတ်ႇ Variable"],
    "What is 'Recursion'?",
  ),
  Quiz(
    542,
    "ၶေႃႈၵႂၢမ်း 'Callback' မၢႆထိုင်သင်?",
    ["ၵၢၼ်သူင်ႇ Function ၼိုင်ႈဢၼ် ၶဝ်ႈၵႂႃႇပဵၼ် Argument ၶွင်ထႅင်ႈ Function ၼိုင်ႈဢၼ်", "ၵၢၼ်ႁွင်ႉၸႂ်ႉ Function သွင်ပွၵ်ႈ", "ၵၢၼ်သူင်ႇၶိုၼ်း Error", "မဵဝ်းၶေႃႈမုၼ်း String"],
    "What is a 'Callback'?",
  ),
  Quiz(
    543,
    "ၽွၼ်းလႆႈၶွင်: print(len([1,2,3])) ပဵၼ်သင်?",
    ["3", "2", "4", "Error"],
    "What is the result of: print(len([1,2,3]))?",
  ),
  Quiz(
    544,
    "ၼႃႈၵၢၼ်ၶွင် 'args' လႄႈ 'kwargs' ပဵၼ်သင်?",
    ["တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ Function ႁပ်ႉ Argument လႆႈၵူႈတၢင်းၼမ်", "ႁႂ်ႈၶူတ်ႉပဵၼ်လွင်ႈလပ်ႉ", "တွၼ်ႈတႃႇႁႂ်ႈပၢႆးၼပ်ႉမၢၼ်ႇမႅၼ်ႈလိူဝ်", "တွၼ်ႈတႃႇၸႂ်ႉတႅၼ်း 'def'"],
    "What is the purpose of 'args' and 'kwargs'?",
  ),
  Quiz(
    545,
    "ၸဝ်ႈၵဝ်ႇ ၸၢင်ႈသၢင်ႈ Function သွၼ်ႉဝႆႉၼႂ်း Function (Nest) လႆႈႁႃႉ?",
    ["လႆႈ (Yes)", "ဢမ်ႇလႆႈ (No)", "ၼႂ်း Python 2 ၵူၺ်း", "လႆႈသင်မၼ်းပဵၼ် lambda ၵူၺ်း"],
    "Can you nest functions inside other functions?",
  ),
  Quiz(
    546,
    "ၽွၼ်းလႆႈၶွင်: def f(a, b=2): return a+b; print(f(1)) ပဵၼ်သင်?",
    ["3", "1", "2", "Error"],
    "What is the output of: def f(a, b=2): return a+b; print(f(1))?",
  ),
  Quiz(
    547,
    "Function လႂ် ဢၼ်ၸႂ်ႉလႅၵ်ႈ String ပဵၼ်တူဝ်ယႂ်ႇ ၼႂ်း function map()?",
    ["str.upper", "upper()", "toUpper", "UPPER"],
    "Which function is used to convert a string to uppercase in a map() function?",
  ),
  Quiz(
    548,
    "Function filter() ၼၼ်ႉ ႁဵတ်းသင်?",
    ["သၢင်ႈ List မႂ်ႇ ဢၼ်လိူၵ်ႈဢဝ်ၶေႃႈမုၼ်း ၸွမ်းၼင်ႇ Function ဢၼ်ပဵၼ် True", "မွတ်ႇ List", "ၸတ်းၶပ်ႉ List", "လႅၵ်ႈမဵဝ်းၶေႃႈမုၼ်း"],
    "What does the filter() function do?",
  ),
  Quiz(
    549,
    "Function ၼႂ်း Python ၼႆႉ ထုၵ်ႇၼပ်ႉဝႃႈပဵၼ် Object ဢၼ်ၼိုင်ႈႁႃႉ?",
    ["ၸႂ်ႈ (Yes)", "ဢမ်ႇၸႂ်ႈ (No)", "ၸႂ်ႈသင်မၼ်းသူင်ႇၵႃႈၶၼ်ပွၵ်ႈၶိုၼ်း", "ၸႂ်ႈတွၼ်ႈတႃႇ lambda ၵူၺ်း"],
    "Is a function an object in Python?",
  ),
  Quiz(
    550,
    "ၶေႃႈၵႂၢမ်း 'Built-in' scope မၢႆထိုင်သင်?",
    ["ၸိုဝ်ႈဢၼ်မၵ်းမၼ်ႈဝႆႉယဝ်ႉ ၼႂ်း Standard library ၶွင် Python (မိူၼ်ၼင်ႇ len, print)", "ၸိုဝ်ႈဢၼ်ၸဝ်ႈၵဝ်ႇသၢင်ႈမႃးႁင်းၵူၺ်း", "ၸိုဝ်ႈ Terminal", "ၸိုဝ်ႈ Folder"],
    "What is the 'Built-in' scope?",
  ),
];
final List<Quiz> pythonQuizM6 = [
  // --- Topic 40: Module in Python (551-565) ---
  Quiz(
    551,
    "Module ၼႂ်း Python မၢႆထိုင်သင်?",
    ["File ဢၼ်ၵဵပ်းဝႆႉၶူတ်ႉ Python", "မဵဝ်းၶေႃႈမုၼ်း Variable", "တီႈၵဵပ်းႁၢင်ႈထၢႆႇ", "တွၼ်ႈ Hardware"],
    "What is a module in Python?",
  ),
  Quiz(
    552,
    "ၶေႃႈၵႂၢမ်း (Keyword) လႂ် ၸႂ်ႉတွၼ်ႈတႃႇဢဝ် Module ၶဝ်ႈမႃးၸႂ်ႉ (Import)?",
    ["import", "using", "include", "require"],
    "Which keyword is used to import a module?",
  ),
  Quiz(
    553,
    "ဢၼ်လႂ် ပဵၼ် Built-in module (ဢၼ်ပႃးမႃးဝႆႉယဝ်ႉ) ၼႂ်း Python?",
    ["platform", "html5", "css", "django"],
    "Which of these is a built-in Python module?",
  ),
  Quiz(
    554,
    "ၸဝ်ႈၵဝ်ႇ တေၶဝ်ႈထိုင် Function 'greet' ဢၼ်ယူႇၼႂ်း module 'mymodule' ၸိူင်ႉႁိုဝ်?",
    ["mymodule.greet()", "greet()", "mymodule->greet()", "mymodule:greet()"],
    "How do you access a function 'greet' inside a module 'mymodule'?",
  ),
  Quiz(
    555,
    "Function လႂ် ၸႂ်ႉတွၼ်ႈတႃႇၼႄ သဵၼ်ႈၸိုဝ်ႈတင်းပိုၼ်း ဢၼ်မၵ်းမၼ်ႈဝႆႉၼႂ်း Module?",
    ["dir()", "list()", "help()", "show()"],
    "Which function lists all the defined names in a module?",
  ),

  // --- Topic 41: Variables in module (566-575) ---
  Quiz(
    566,
    "ၼႂ်း Module ၼိုင်ႈဢၼ် ပႃး Variable (မိူၼ်ၼင်ႇ list, dict) လႆႈႁႃႉ?",
    ["လႆႈ (Yes)", "ဢမ်ႇလႆႈ (No)", "လႆႈသင်ပဵၼ် String ၵူၺ်း", "လႆႈသင်ပဵၼ် Integer ၵူၺ်း"],
    "Can a module contain variables (dictionaries, lists, objects)?",
  ),
  Quiz(
    570,
    "ၵႆႉဝႆႉလိၵ်ႈသင်ႇ 'import' တီႈလႂ် ၼႂ်း File?",
    ["တီႈၼိူဝ်သုတ်းၶွင် File", "ၼႂ်း Function လူင် (Main)", "တီႈပိုၼ်ႉသုတ်း", "ၼႂ်း Folder ၸႅၵ်ႇဝႆႉ"],
    "Where should 'import' statements usually be placed?",
  ),

  // --- Topic 42: Renaming a module (576-585) ---
  Quiz(
    576,
    "ၶေႃႈၵႂၢမ်းလႂ် ၸႂ်ႉတွၼ်ႈတႃႇသၢင်ႈ ၸိုဝ်ႈလဵၼ်ႈ (Alias) ပၼ် Module?",
    ["as", "alias", "name", "rename"],
    "Which keyword is used to create an alias for a module?",
  ),
  Quiz(
    577,
    "လွၵ်းလၢႆးတႅမ်ႈ (Syntax) ဢၼ်မၢၼ်ႇမႅၼ်ႈ တွၼ်ႈတႃႇလႅၵ်ႈ 'math' ပဵၼ် 'm'?",
    ["import math as m", "rename math to m", "import m from math", "alias math m"],
    "Correct syntax to rename 'math' as 'm'?",
  ),

  // --- Topic 43: from import module (586-600) ---
  Quiz(
    586,
    "တေ Import 'ၵူၺ်း' ၵႃႈၶၼ် 'pi' တႄႇတီႈ Module 'math' ၸိူင်ႉႁိုဝ်?",
    ["from math import pi", "import pi from math", "import math.pi", "from math get pi"],
    "How do you import ONLY the 'pi' constant from the 'math' module?",
  ),
  Quiz(
    587,
    "မိူဝ်ႈၸႂ်ႉ 'from...import' ယဝ်ႉ, ၸဝ်ႈၵဝ်ႇယင်းလူဝ်ႇတႅမ်ႈၸိုဝ်ႈ Module တီႈၼႃႈမၼ်း (မိူၼ်ၼင်ႇ math.pi) ယူႇႁႃႉ?",
    ["ဢမ်ႇလူဝ်ႇ (No)", "လူဝ်ႇ (Yes)", "လူဝ်ႇတွၼ်ႈတႃႇ Function ၵူၺ်း", "လူဝ်ႇတွၼ်ႈတႃႇ Variable ၵူၺ်း"],
    "When using 'from...import', do you need the module name prefix (e.g., math.pi)?",
  ),
  Quiz(
    588,
    "လိၵ်ႈသင်ႇ 'from math import *' ၼၼ်ႉ ႁဵတ်းသင်?",
    ["Import ၸိုဝ်ႈၵူႈဢၼ် တႄႇတီႈ Module math", "Import မၢႆၼပ်ႉတဵမ်ၵူၺ်း", "မွတ်ႇ Module math ပႅတ်ႈ", "ဢမ်ႇ Import သင်သေပိူင်"],
    "What does 'from math import *' do?",
  ),

  // --- Topic 44: Class and Object (601-620) ---
  Quiz(
    601,
    "Class ၼႂ်း Python မၢႆထိုင်သင်?",
    ["ပဵၼ် ပိူင်ၽႅၼ် (Blueprint) တွၼ်ႈတႃႇသၢင်ႈ Object", "Loop မဵဝ်းၼိုင်ႈ", "Function", "List"],
    "What is a Class in Python?",
  ),
  Quiz(
    602,
    "Object မၢႆထိုင်သင်?",
    ["ပဵၼ်တူဝ်တႄႇ (Instance) ဢၼ်သၢင်ႈမႃးတႄႇတီႈ Class", "ၸိုဝ်ႈ File", "ၶေႃႈၵႂၢမ်းလပ်ႉ (Keyword)", "Operator ပၢႆးၼပ်ႉ"],
    "What is an Object?",
  ),
  Quiz(
    603,
    "ၶေႃႈၵႂၢမ်း (Keyword) လႂ် ၸႂ်ႉတွၼ်ႈတႃႇသၢင်ႈ Class?",
    ["class", "struct", "new", "blueprint"],
    "Which keyword is used to create a class?",
  ),
  Quiz(
    604,
    "တေသၢင်ႈ Object 'p1' တႄႇတီႈ Class 'Person' ၸိူင်ႉႁိုဝ်?",
    ["p1 = Person()", "Person p1 = new Person()", "p1 := Person", "create p1 from Person"],
    "How do you create an object 'p1' from class 'Person'?",
  ),

  // --- Topic 45: Methods (621-635) ---
  Quiz(
    621,
    "Method မၢႆထိုင်သင်?",
    ["Function ဢၼ်ပဵၼ်ၶွင် Object ဢမ်ႇၼၼ် Class", "Variable ၼႂ်း Class", "လွၵ်းလၢႆးသႂ်ႇ Python", "Comment မဵဝ်းၼိုင်ႈ"],
    "What is a method?",
  ),
  Quiz(
    622,
    "Parameter တူဝ်ဢွၼ်တၢင်းသုတ်း ၶွင် Method ၼႂ်း Class ၵႆႉပဵၼ်သင်?",
    ["self", "this", "cls", "object"],
    "What is the first parameter of any method in a class by convention?",
  ),
  Quiz(
    623,
    "ၸဝ်ႈၵဝ်ႇ လႅၵ်ႈၸိုဝ်ႈ 'self' ပဵၼ်ၸိုဝ်ႈတၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ 'myself') လႆႈႁႃႉ?",
    ["လႆႈ, ၵူၺ်းၵႃႈပိူၼ်ႈဢမ်ႇသူၼ်ပၼ်", "ဢမ်ႇလႆႈ", "ၼႂ်း Python 2 ၵူၺ်း", "တွၼ်ႈတႃႇ String ၵူၺ်း"],
    "Can 'self' be named something else (like 'myself')?",
  ),

  // --- Topic 46: The __init__() method (636-650) ---
  Quiz(
    636,
    "ၼႃႈၵၢၼ်ၶွင် Method __init__() ပဵၼ်သင်?",
    ["တွၼ်ႈတႃႇပၼ်ၵႃႈၶၼ်တႄႇတႄႇ (Initialize) ပၼ် Attribute ၶွင် Object", "တွၼ်ႈတႃႇမွတ်ႇ Object", "တွၼ်ႈတႃႇ Print ၸိုဝ်ႈ Class", "တွၼ်ႈတႃႇတႄႇ Program"],
    "What is the purpose of the __init__() method?",
  ),
  Quiz(
    637,
    "Method __init__() ၼႆႉ တေလႅၼ်ႈ (Execute) မိူဝ်ႈလႂ်?",
    ["လႅၼ်ႈႁင်းၵူၺ်း မိူဝ်ႈသၢင်ႈ Object မႂ်ႇ", "မိူဝ်ႈႁွင်ႉၸႂ်ႉ Function", "မိူဝ်ႈသုတ်း Script", "ဢမ်ႇလႅၼ်ႈသေပွၵ်ႈ"],
    "When is __init__() executed?",
  ),
  Quiz(
    638,
    "လွၵ်းလၢႆးတႅမ်ႈ Constructor ဢၼ်မၢၼ်ႇမႅၼ်ႈ ပဵၼ်ဢၼ်လႂ်?",
    ["def __init__(self):", "def init(self):", "void init()", "construct(self):"],
    "Which of these is the correct way to write the constructor?",
  ),

  // --- Topic 47: The __str__() method (651-660) ---
  Quiz(
    651,
    "Method __str__() ၼႆႉ ႁဵတ်းသင်?",
    ["ၵုမ်းထိူင်းၽွၼ်းလႆႈ မိူဝ်ႈ Object ถုၵ်ႇလႅၵ်ႈပဵၼ် String", "မွတ်ႇ String", "ႁူမ်ႈ String သွင်ဢၼ်", "ၵူတ်ႇထတ်းဝႃႈ String ပဝ်ႇႁႃႉ"],
    "What does the __str__() method do?",
  ),
  Quiz(
    652,
    "တေပဵၼ်သင် သင်ဢမ်ႇလႆႈမၵ်းမၼ်ႈ __str__() ဝႆႉသေ ၸဝ်ႈၵဝ်ႇ Print Object ၼၼ်ႉ?",
    ["မၼ်းတေ Print တီႈယူႇ Memory/မဵဝ်းၶေႃႈမုၼ်း ၶွင် Object", "မၼ်းတေ Print 'None'", "မၼ်းတေပဵၼ် Error", "မၼ်းတေ Print ပဝ်ႇ"],
    "What happens if __str__() is NOT defined and you print the object?",
  ),

  // --- Topic 48: Inheritance (661-685) ---
  Quiz(
    661,
    "Inheritance (ၵၢၼ်သိုပ်ႇၶႅၼ်း) မၢႆထိုင်သင်?",
    ["မိူဝ်ႈ Class ၼိုင်ႈဢၼ် ႁပ်ႉဢဝ်ၵုၼ်းၼပ်ႉတႄႇတီႈထႅင်ႈ Class ၼိုင်ႈဢၼ်", "ၵၢၼ်ၵေႃႇပီႇၶူတ်ႉလူၺ်ႈမိုဝ်း", "လွၵ်းလၢႆးလပ်ႉၶေႃႈမုၼ်း", "Loop မဵဝ်းၼိုင်ႈ"],
    "What is Inheritance?",
  ),
  Quiz(
    662,
    "Class ဢၼ်ထုၵ်ႇသိုပ်ႇၶႅၼ်း (ဢၼ်ယူႇလိူဝ်) ၼၼ်ႉ ႁွင်ႉဝႃႈသင်?",
    ["Parent class (ဢမ်ႇၼၼ် Base class)", "Child class", "Module", "Method"],
    "The class being inherited from is called the ______.",
  ),
  Quiz(
    663,
    "Class ဢၼ်ၵႂႃႇသိုပ်ႇၶႅၼ်းပိူၼ်ႈ (ဢၼ်ယူႇတႂ်ႈ) ၼၼ်ႉ ႁွင်ႉဝႃႈသင်?",
    ["Child class (ဢမ်ႇၼၼ် Derived class)", "Parent class", "Blueprint", "Global"],
    "The class that inherits is called the ______.",
  ),
  Quiz(
    664,
    "တေသၢင်ႈ Class 'Student' ႁႂ်ႈသိုပ်ႇၶႅၼ်းတႄႇတီႈ 'Person' ၸိူင်ႉႁိုဝ်?",
    ["class Student(Person):", "class Student inherits Person:", "class Student < Person", "class Student : Person"],
    "How do you create a class 'Student' that inherits from 'Person'?",
  ),
  Quiz(
    665,
    "Function လႂ် ဢၼ်ပၼ်သုၼ်ႇ Child class ႁွင်ႉၸႂ်ႉ Method ၶွင် Parent class?",
    ["super()", "parent()", "base()", "this()"],
    "Which function allows the child class to call a method from the parent?",
  ),

  // --- Topic 49: Polymorphism (686-695) ---
  Quiz(
    686,
    "Polymorphism မၢႆထိုင်သင်?",
    ["မီးလၢႆႁၢင်ႈၽၢင် (Many forms)", "ဢမ်ႇမီးႁၢင်ႈၽၢင်", "မီးႁၢင်ႈၽၢင်လဵဝ်", "လပ်ႉႁၢင်ႈၽၢင်ဝႆႉ"],
    "What does Polymorphism mean?",
  ),
  Quiz(
    687,
    "ၼႃႈတၢင်းၶွင် Polymorphism ပဵၼ်သင်?",
    ["တွၼ်ႈတႃႇႁႂ်ႈ Class ဢၼ်ပႅၵ်ႇၵၼ် ထုၵ်ႇၸတ်းၵၢၼ်မိူၼ်ပဵၼ်မဵဝ်းလဵဝ်ၵၼ်", "ႁႂ်ႈၶူတ်ႉလႅၼ်ႈဝႆးလိူဝ်", "တွၼ်ႈတႃႇႁႄႉၵင်ႈ Variable", "တွၼ်ႈတႃႇယွမ်းၵၢၼ်ၸႂ်ႉ Memory"],
    "What is the goal of Polymorphism?",
  ),

  // --- Topic 50: Operator Polymorphism (696-705) ---
  Quiz(
    696,
    "Operator '+' ပဵၼ် Polymorphic ၼႂ်း Python ၸိူင်ႉႁိုဝ်?",
    ["မၼ်းထႅမ်မၢႆၼပ်ႉ လႆႈတင်း သိုပ်ႇလိၵ်ႈ (String) လႆႈ", "မၼ်းထႅမ်မၢႆၼပ်ႉလႆႈၵူၺ်း", "မၼ်းႁဵတ်းၵၢၼ်မိူၼ် Loop", "မၼ်းဢမ်ႇၸႂ်ႈ Polymorphic"],
    "How is the '+' operator polymorphic in Python?",
  ),
  Quiz(
    697,
    "Operator '*' ပဵၼ် Polymorphic ၸိူင်ႉႁိုဝ်?",
    ["မၼ်းၼပ်ႉမၢႆၼပ်ႉ လႆႈတင်း ႁဵတ်းႁႂ်ႈ String ပွၵ်ႈၶိုၼ်းလႆႈ", "မၼ်းၸႂ်ႉတွၼ်ႈတႃႇပၢႆးၼပ်ႉၵူၺ်း", "မၼ်းသၢင်ႈ Module မႂ်ႇ", "မၼ်းပဵၼ် Comment"],
    "How is '*' polymorphic?",
  ),

  // --- Topic 51: Function Polymorphism (706-715) ---
  Quiz(
    706,
    "Function len() ၼႆႉ ပဵၼ် Polymorphic ၸိူင်ႉႁိုဝ်?",
    ["မၼ်းၸႂ်ႉလႆႈတင်း String, List, Tuple ဢမ်ႇၼၼ် Dict", "မၼ်းၸႂ်ႉလႆႈတင်း List ၵူၺ်း", "မၼ်းလႅၵ်ႈၸွမ်း OS", "မၼ်းပဵၼ် Operator ပၢႆးၼပ်ႉ"],
    "How is len() polymorphic?",
  ),

  // --- Topic 52: Method Polymorphism (716-730) ---
  Quiz(
    716,
    "Method Overriding မၢႆထိုင်သင်?",
    ["မိူဝ်ႈ Child class တႅမ်ႈၶူတ်ႉ Method ၶိုၼ်း ႁႂ်ႈပႅၵ်ႇပိူင်ႈတင်း Parent", "ၵၢၼ်လႅၵ်ႈၸိုဝ်ႈ Method", "ၵၢၼ်မွတ်ႇ Method", "ၵၢၼ်ႁွင်ႉၸႂ်ႉ Method သွင်ပွၵ်ႈ"],
    "What is Method Overriding?",
  ),
  Quiz(
    717,
    "သင် Parent လႄႈ Child မီး Method 'move()' မိူၼ်ၵၼ်, ဢၼ်လႂ် တေလႅၼ်ႈ တွၼ်ႈတႃႇ Object ၶွင် Child?",
    ["Method ၶွင် Child", "Method ၶွင် Parent", "လႅၼ်ႈတင်းသွင်ဢၼ်", "ဢမ်ႇလႅၼ်ႈသေဢၼ်"],
    "If a parent and child both have a 'move()' method, which one runs for the child object?",
  ),

  // --- Mixed & Advanced OOP (731-750) ---
  Quiz(
    731,
    "Encapsulation မၢႆထိုင်သင်?",
    ["ၵၢၼ်ႁႄႉၵင်ႈၵၢၼ်ၶဝ်ႈထိုင် Method လႄႈ Variable တွၼ်ႈတႃႇႁႄႉၵင်ႈၶေႃႈမုၼ်း", "ၵၢၼ်သိုပ်ႇၶႅၼ်းၶူတ်ႉ", "ၵၢၼ်ပၼ်ႇ Loop ၼႂ်း Object", "ၵၢၼ် Print Object"],
    "What is Encapsulation?",
  ),
  Quiz(
    732,
    "တေၼႄဝႃႈ Attribute ၼၼ်ႉ ပဵၼ် 'private' (သုၼ်ႇတူဝ်) ၼႂ်း Python ၸိူင်ႉႁိုဝ်?",
    ["ၸႂ်ႉ Underscore တီႈၼႃႈၸိုဝ်ႈ (မိူၼ်ၼင်ႇ _name ဢမ်ႇၼၼ် __name)", "ၸႂ်ႉၶေႃႈၵႂၢမ်း 'private'", "ၸႂ်ႉပုမ်ႇၶဵတ်ႇ Braces", "တႅမ်ႈၸိုဝ်ႈပဵၼ်တူဝ်ယႂ်ႇ"],
    "How do you indicate a 'private' attribute in Python (by convention)?",
  ),
  Quiz(
    733,
    "Python ၸွႆႈထႅမ် Multiple inheritance (သိုပ်ႇၶႅၼ်းတႄႇတီႈလၢႆ Class) ႁႃႉ?",
    ["ၸွႆႈ (Yes)", "ဢမ်ႇၸွႆႈ (No)", "တွၼ်ႈတႃႇ String ၵူၺ်း", "ၼႂ်း Python 2 ၵူၺ်း"],
    "Is multiple inheritance supported in Python?",
  ),
  Quiz(
    734,
    "Abstract Class မၢႆထိုင်သင်?",
    ["Class ဢၼ်သၢင်ႈပဵၼ် Object ဢမ်ႇလႆႈ သေ ၸႂ်ႉပဵၼ်တူဝ်ယၢင်ႇ (Template) ၵူၺ်း", "Class ဢၼ်ဢမ်ႇမီးၸိုဝ်ႈ", "Module မဵဝ်းၼိုင်ႈ", "List ယူဝ်းๆ"],
    "What is an 'Abstract' class?",
  ),
  Quiz(
    735,
    "Module လႂ် ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇသၢင်ႈ Abstract classes ၼႂ်း Python?",
    ["abc", "math", "sys", "os"],
    "Which module is used to create abstract classes in Python?",
  ),
  Quiz(
    740,
    "ၽွၼ်းလႆႈၶွင် isinstance(p1, Person) ပဵၼ်သင်?",
    ["ပဵၼ် True သင် p1 ပဵၼ် Object ဢၼ်သၢင်ႈတႄႇတီႈ Person", "False", "Error", "ၸိုဝ်ႈၶွင် p1"],
    "What is the result of isinstance(p1, Person)?",
  ),
  Quiz(
    750,
    "OOP ၼႆႉ သူၼ်ၸႂ် (Focus) ၼိူဝ်သင်ပဵၼ်လူင်?",
    ["Object လႄႈ ၶေႃႈမုၼ်း (Data)", "ၶၵ်ႉတွၼ်ႈ လႄႈ Function", "Loop လႄႈ If", "Memory လႄႈ CPU"],
    "Object-oriented programming focuses on ______.",
  ),
];final List<Quiz> pythonQuizM7 = [
  // --- Topic 53: File Input/Output (751-760) ---
  Quiz(
    751,
    "Function လႂ် ဢၼ်ပႃးမႃးၼႂ်း Python (Built-in) ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇပိုတ်ႇ File?",
    ["open()", "file()", "access()", "load()"],
    "Which built-in function is used to open a file in Python?",
  ),
  Quiz(
    752,
    "Function open() ၼႆႉ ၵႆႉတေလႆႈသႂ်ႇ Parameter ဢေႇသုတ်းၵႃႈႁိုဝ်?",
    ["သွင်ဢၼ် (ၸိုဝ်ႈ File လႄႈ Mode)", "ဢၼ်လဵဝ်", "သၢမ်ဢၼ်", "သီႇဢၼ်"],
    "How many parameters does the open() function typically take at minimum?",
  ),
  Quiz(
    753,
    "မိူဝ်ႈပိုတ်ႇ File, Mode လႂ် ဢၼ်ပဵၼ်ၵႃႈၶၼ် Default (ၵႃႈၶၼ်ၵဝ်ႇ)?",
    ["'r' (Read - လူ)", "'w' (Write - တႅမ်ႈ)", "'a' (Append - ထႅမ်)", "'x' (Create - သၢင်ႈ)"],
    "Which mode is the default when opening a file?",
  ),
  Quiz(
    754,
    "Mode လႂ် ၸႂ်ႉတွၼ်ႈတႃႇပိုတ်ႇ File ဢၼ်ပဵၼ် 'Binary' (မိူၼ်ၼင်ႇ ႁၢင်ႈထၢႆႇ)?",
    ["'rb'", "'rt'", "'bw'", "'r'"],
    "Which mode is used to open a file for 'binary' reading (like images)?",
  ),
  Quiz(
    755,
    "သၢႆယွၼ်ႉသင် ၵၢၼ်ပိတ်း (Close) File ဝၢႆးၸႂ်ႉယဝ်ႉ ၸင်ႇလမ်ႇလွင်ႈ?",
    ["တွၼ်ႈတႃႇထႅမ်ပိုၼ်ႉတီႈလွတ်ႈ (Resources) ပၼ် System", "ႁႂ်ႈ File ယႂ်ႇလိူဝ်ၵဝ်ႇ", "တွၼ်ႈတႃႇသႂ်ႇၵေႃး File", "တွၼ်ႈတႃႇမွတ်ႇ File"],
    "What is the importance of closing a file after use?",
  ),

  // --- Topic 54: Read a file (761-775) ---
  Quiz(
    761,
    "Method လႂ် ဢၼ်လူၶေႃႈမုၼ်းၼႂ်း File တင်းပိုၼ်း?",
    ["read()", "readline()", "readlines()", "get()"],
    "Which method reads the entire content of a file?",
  ),
  Quiz(
    762,
    "တေလူၶေႃႈမုၼ်းၵူၺ်း 5 တူဝ်လိၵ်ႈဢွၼ်တၢင်းသုတ်း ၸိူင်ႉႁိုဝ်?",
    ["f.read(5)", "f.read[5]", "f.readline(5)", "f.get(5)"],
    "How do you read only the first 5 characters of a file?",
  ),
  Quiz(
    763,
    "Method လႂ် ဢၼ်သူင်ႇၶိုၼ်းၶေႃႈမုၼ်း ထႅဝ်ၼိုင်ႈ (One line) ပဵၼ် String?",
    ["readline()", "readlines()", "read()", "next()"],
    "Which method returns one line from the file as a string?",
  ),
  Quiz(
    764,
    "Method လႂ် ဢၼ်သူင်ႇၶိုၼ်းပဵၼ် List ဢၼ်ပႃးၶေႃႈမုၼ်းၵူႈထႅဝ် ပဵၼ်ႁူဝ်ၶေႃႈၼႂ်း List?",
    ["readlines()", "readline()", "readall()", "listfile()"],
    "Which method returns a list containing each line in the file as an item?",
  ),
  Quiz(
    765,
    "လွၵ်းလၢႆးဢၼ်လီသုတ်း တွၼ်ႈတႃႇပၼ်ႇ Loop လူ File ทีละထႅဝ် ပဵၼ်သင်?",
    ["for x in f:", "while f.has_lines():", "f.foreach()", "loop(f)"],
    "What is the best way to loop through a file line by line?",
  ),
  Quiz(
    766,
    "f.close() ၼၼ်ႉ ႁဵတ်းသင်?",
    ["ပိတ်း File ဢၼ်ပိုတ်ႇဝႆႉ", "မွတ်ႇ File", "သိမ်း File ပဵၼ် PDF", "လႅၵ်ႈၸိုဝ်ႈ File"],
    "What does f.close() do?",
  ),
  Quiz(
    767,
    "လိၵ်ႈသင်ႇ (Statement) လႂ် ဢၼ်ပိတ်း File ပၼ်ႁင်းၵူၺ်း ပႃးတင်းမိူဝ်ႈပဵၼ် Error?",
    ["with open(...) as f:", "try...finally", "လႆႈတင်း A လႄႈ B", "auto_close()"],
    "Which statement automatically closes a file even if an error occurs?",
  ),

  // --- Topic 55: Create or Write to a file (776-790) ---
  Quiz(
    776,
    "Mode လႂ် ဢၼ်တေတႅမ်ႈတပ်ႉ (Overwrite) ၶေႃႈမုၼ်းၵဝ်ႇတင်းပိုၼ်း ၼႂ်း File?",
    ["'w' (Write)", "'a' (Append)", "'r' (Read)", "'x' (Create)"],
    "Which mode will overwrite any existing content in a file?",
  ),
  Quiz(
    777,
    "Mode လႂ် ဢၼ်ထႅမ်ၶေႃႈမုၼ်း သႂ်ႇၽၢႆႇလင် File ဢၼ်မီးဝႆႉယဝ်ႉ?",
    ["'a' (Append)", "'w' (Write)", "'r+'", "'x'"],
    "Which mode adds content to the end of an existing file?",
  ),
  Quiz(
    778,
    "Mode လႂ် ဢၼ်တေၼႄ Error သင်ဝႃႈ File ၼၼ်ႉမီးဝႆႉယဝ်ႉ?",
    ["'x' (Create)", "'w'", "'a'", "'r'"],
    "Which mode will return an error if the file already exists?",
  ),
  Quiz(
    779,
    "Method လႂ် ၸႂ်ႉတွၼ်ႈတႃႇတႅမ်ႈ String သႂ်ႇၼႂ်း File?",
    ["write()", "print()", "save()", "append()"],
    "Which method is used to write a string to a file?",
  ),
  Quiz(
    780,
    "တေထႅမ်ထႅဝ်မႂ်ႇ (New line) မိူဝ်ႈတိုၵ်ႉတႅမ်ႈ File ၸိူင်ႉႁိုဝ်?",
    ["ထႅမ် '\\n' သႂ်ႇၼႂ်း String", "ၸႂ်ႉ Method newline()", "ၼဵၵ်း Enter ၼႂ်းၶူတ်ႉ", "မၼ်းပဵၼ်ႁင်းၵူၺ်း"],
    "How do you add a new line while writing to a file?",
  ),
  Quiz(
    781,
    "Mode လႂ် ဢၼ်ပၼ်သုၼ်ႇ လူ (Read) လႄႈ တႅမ်ႈ (Write) တင်းသွင်ယၢင်ႇ?",
    ["'r+'", "'w'", "'a'", "'x'"],
    "Which mode allows both reading and writing?",
  ),

  // --- Topic 56: Delete a file or folder (791-800) ---
  Quiz(
    791,
    "Module လႂ် ဢၼ်လူဝ်ႇ Import တွၼ်ႈတႃႇမွတ်ႇ File ၼႂ်း Python?",
    ["os", "sys", "file", "shutil"],
    "Which module must be imported to delete files in Python?",
  ),
  Quiz(
    792,
    "Function လႂ် ၸႂ်ႉတွၼ်ႈတႃႇမွတ်ႇ File?",
    ["os.remove()", "os.delete()", "os.clear()", "os.unlink()"],
    "Which function is used to delete a file?",
  ),
  Quiz(
    793,
    "တေၵူတ်ႇထတ်းဝႃႈ File မီးယူႇႁႃႉ ဢွၼ်တၢင်းတေမွတ်ႇ ၸိူင်ႉႁိုဝ်?",
    ["os.path.exists()", "file.check()", "os.find()", "path.verify()"],
    "How do you check if a file exists before deleting it?",
  ),
  Quiz(
    794,
    "Function လႂ် ၸႂ်ႉတွၼ်ႈတႃႇမွတ်ႇ Folder ဢၼ်ပဝ်ႇ (Empty folder)?",
    ["os.rmdir()", "os.remove()", "os.delete_dir()", "os.clear()"],
    "Which function is used to remove an empty folder?",
  ),
  Quiz(
    795,
    "Module/Method လႂ် ၸႂ်ႉတွၼ်ႈတႃႇမွတ်ႇ Folder လႄႈ ၶေႃႈမုၼ်းၼႂ်းမၼ်းတင်းပိုၼ်း?",
    ["shutil.rmtree()", "os.rmdir()", "os.delete_all()", "sys.exit()"],
    "Which module/method is used to delete a folder and all its contents?",
  ),
  Quiz(
    796,
    "တေပဵၼ်သင် သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ os.remove() ၼိူဝ် File ဢၼ်ဢမ်ႇမီးတႄႇ?",
    ["FileNotFoundError", "Program တေၶၢမ်ႈၵႂႃႇလၢႆလၢႆ", "မၼ်းတေသၢင်ႈ File မႂ်ႇ", "TypeError"],
    "What happens if you try to os.remove() a file that doesn't exist?",
  ),
  Quiz(
    797,
    "ၸဝ်ႈၵဝ်ႇ ၸၢင်ႈမွတ်ႇ File မိူဝ်ႈတိုၵ်ႉပိုတ်ႇဝႆႉၼႂ်း Script ႁႃႉ?",
    ["ဢမ်ႇလႆႈ (မၼ်းၸၢင်ႈပဵၼ် PermissionError)", "လႆႈ", "ၼႂ်း Linux ၵူၺ်း", "ၼႂ်း Windows ၵူၺ်း"],
    "Can you delete a file while it is still open in the script?",
  ),
  Quiz(
    798,
    "'rt' ၼႂ်း open() မၢႆထိုင်သင်?",
    ["Read Text (လူလိၵ်ႈ - ၵႃႈၶၼ် Standard)", "Read Table", "Run Time", "Read Total"],
    "What does 'rt' mean in open()?",
  ),
  Quiz(
    799,
    "ၼႃႈတၢင်းၶွင် f.seek(0) ပဵၼ်သင်?",
    ["ၶၢႆႉတူဝ်ၼႄ (Pointer) ၵႂႃႇတီႈႁူဝ် File ၶိုၼ်း", "ႁႃမၢႆၼပ်ႉသုၼ် (Zero) ၼႂ်း File", "မွတ်ႇ File", "ၶူၼ်ႉႁႃ Index 0"],
    "What is the purpose of f.seek(0)?",
  ),
  Quiz(
    800,
    "'Buffer' ၼႂ်းၵၢၼ်ၸတ်းၵၢၼ် File မၢႆထိုင်သင်?",
    ["Memory ၸူဝ်ႈၶၢဝ်း ဢၼ်ၸႂ်ႉမိူဝ်ႈသူင်ႇၶေႃႈမုၼ်း", "ၸိုဝ်ႈ File", "ပုမ်ႇမွတ်ႇ", "Error မဵဝ်းၼိုင်ႈ"],
    "What is the 'buffer' in file handling?",
  ),
];
final List<Quiz> pythonQuizM8 = [
  // --- Topic 57: What is an API? (801-815) ---
  Quiz(
    801,
    "API ၼႆႉ တူဝ်ယႅၼ်ႇမၼ်းပဵၼ်သင်?",
    ["Application Programming Interface", "Advanced Program Integration", "Automated Protocol Input", "Application Process Indicator"],
    "What does API stand for?",
  ),
  Quiz(
    802,
    "ၼႃႈၵၢၼ်လူင်ၶွင် API ပဵၼ်သင်?",
    ["တွၼ်ႈတႃႇပၼ် Software သွင်ဢၼ် လၢတ်ႈတေႃႇၵွင်ႉသိုပ်ႇၵၼ်လႆႈ", "တွၼ်ႈတႃႇသၢင်ႈလွၵ်းၼႃႈလိၵ်ႉ ဝႅပ်ႉသၢႆႉ", "တွၼ်ႈတႃႇသိမ်းၶေႃႈမုၼ်းၼႂ်း Hard drive", "တွၼ်ႈတႃႇပိၼ်ႇၶူတ်ႉ Python"],
    "What is the primary purpose of an API?",
  ),
  Quiz(
    803,
    "ၼႂ်းလွင်ႈ API, 'Request' မၢႆထိုင်သင်?",
    ["ၶေႃႈၵႂၢမ်းဢၼ်သူင်ႇၸူး Server တွၼ်ႈတႃႇထၢမ်ဢဝ်ၶေႃႈမုၼ်း", "ၶေႃႈမုၼ်းဢၼ်လႆႈႁပ်ႉတႄႇတီႈ Server", "Error မဵဝ်းၼိုင်ႈ", "Variable ၼႂ်း Program"],
    "In the context of APIs, what is a 'Request'?",
  ),
  Quiz(
    804,
    "HTTP Method လႂ် ဢၼ်ပိူၼ်ႈၵႆႉၸႂ်ႉသုတ်း တွၼ်ႈတႃႇ 'ၵႂႃႇဢဝ်' (Get) ၶေႃႈမုၼ်းတႄႇတီႈ API?",
    ["GET", "POST", "PUSH", "DELETE"],
    "Which HTTP method is most commonly used to 'fetch' or 'get' data from an API?",
  ),
  Quiz(
    805,
    "ၶေႃႈၵႂၢမ်း 'Endpoint' မၢႆထိုင်သင်?",
    ["တီႈယူႇ URL ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၶဝ်ႈထိုင် ၵၢၼ်ၸွႆႈထႅမ် API ဢၼ်မၵ်းမၼ်ႈဝႆႉ", "တီႈသုတ်းၶွင် Script Python", "Loop မဵဝ်းၼိုင်ႈ", "ပုမ်ႇၶဵတ်ႇဢၼ်ပိတ်းဝႆႉ"],
    "What is an 'Endpoint'?",
  ),
  Quiz(
    806,
    "ၼႂ်းၵၢၼ်သိုပ်ႇတေႃႇ API, 'Server' ပဵၼ်သင်?",
    ["ၶွမ်ႇပိဝ်ႇတႃႇ ဢၼ်မီးၼႃႈၵၢၼ်ပၼ်ၶေႃႈမုၼ်း ဢမ်ႇၼၼ် ၵၢၼ်ၸွႆႈထႅမ်", "ၶွမ်ႇပိဝ်ႇတႃႇ ဢၼ်ထၢမ်ႁႃၶေႃႈမုၼ်း", "သၢႆ Internet", "ၶိူင်ႈပိၼ်ႇလိၵ်ႈ Python"],
    "What is the 'Server' in an API relationship?",
  ),
  Quiz(
    807,
    "ၼႂ်းၵၢၼ်သိုပ်ႇတေႃႇ API, 'Client' ပဵၼ်သင်?",
    ["Application ဢမ်ႇၼၼ် Script ဢၼ်ပဵၼ်ၵူၼ်းသူင်ႇ Request", "Database", "ၵူၼ်းပၼ်တီႈယူႇ ဝႅပ်ႉသၢႆႉ", "Router"],
    "What is the 'Client' in an API relationship?",
  ),
  Quiz(
    808,
    "REST API ၼႆႉ ပဵၼ်သင်?",
    ["ပိူင်သၢင်ႈ Standard တွၼ်ႈတႃႇပၼ်ၶွမ်ႇပိဝ်ႇတႃႇလၢတ်ႈတေႃႇၵၼ်", "API ဢၼ်ႁဵတ်းၵၢၼ်မိူဝ်ႈၶွမ်ႇပိဝ်ႇတႃႇၼွၼ်းယူႇၵူၺ်း", "Loop ၼႂ်း Python", "Library ပၢႆးၼပ်ႉ"],
    "What is a 'REST API'?",
  ),
  Quiz(
    809,
    "ၼႂ်း URL 'https://api.example.com/v1/users' ၼၼ်ႉ တွၼ်ႈလႂ်ပဵၼ် Endpoint?",
    ["/users", "https://", "com", ".api"],
    "Which part of the URL 'https://api.example.com/v1/users' is the endpoint?",
  ),
  Quiz(
    810,
    "ၶေႃႈၵႂၢမ်း 'Status Code' မၢႆထိုင်သင်?",
    ["မၢႆၼပ်ႉဢၼ် Server သူင်ႇမႃး တွၼ်ႈတႃႇၼႄၽွၼ်းလႆႈၶွင် Request", "Password လပ်ႉ", "ၵႂၢမ်းဝႆး Internet", "Variable ၼႂ်း Python"],
    "What is a 'Status Code'?",
  ),

  // --- Topic 58: Installing and importing requests dependency (811-825) ---
  Quiz(
    811,
    "Library ၽၢႆႇၼွၵ်ႈဢၼ်လႂ် ဢၼ်ၸိုဝ်ႈသဵင်ယႂ်ႇသုတ်း တွၼ်ႈတႃႇၸႂ်ႉ HTTP Request ၼႂ်း Python?",
    ["requests", "http-lib", "urllib", "api-python"],
    "Which external library is the most popular for making HTTP requests in Python?",
  ),
  Quiz(
    812,
    "တေၸႂ်ႉ Terminal သႂ်ႇ (Install) Library 'requests' ၸိူင်ႉႁိုဝ်?",
    ["pip install requests", "npm install requests", "python get requests", "install requests"],
    "How do you install the 'requests' library using terminal?",
  ),
  Quiz(
    813,
    "တေဢဝ် Library requests ၶဝ်ႈမႃးၸႂ်ႉၼႂ်း Script ၸိူင်ႉႁိုဝ်?",
    ["import requests", "using requests", "include requests", "require requests"],
    "How do you bring the requests library into your script?",
  ),
  Quiz(
    814,
    "Status Code '200' မၢႆထိုင်သင်?",
    ["Success (ၵၢၼ်သူင်ႇထၢမ် ယဝ်ႉတူဝ်ႈလီ)", "Not Found (ႁႃဢမ်ႇႁၼ်)", "Server Error (Server လူႉ)", "Unauthorized (ဢမ်ႇမီးသုၼ်ႇ)"],
    "What does a '200' Status Code mean in a response?",
  ),
  Quiz(
    815,
    "Status Code '404' မၢႆထိုင်သင်?",
    ["Not Found (ဢမ်ႇမီးၶေႃႈမုၼ်းၼၼ်ႉယူႇ)", "Success", "Bad Gateway", "Forbidden"],
    "What does a '404' Status Code mean?",
  ),
  Quiz(
    816,
    "Status Code '500' မၢႆထိုင်သင်?",
    ["Internal Server Error (Server မီးပၼ်ႁႃၽၢႆႇၼႂ်း)", "Success", "Unauthorized", "Not Found"],
    "What does a '500' Status Code mean?",
  ),
  Quiz(
    817,
    "Status code လႂ် ဢၼ်မၢႆထိုင် 'Unauthorized' (လိုမ်းသႂ်ႇ API Key)?",
    ["401", "200", "404", "500"],
    "Which status code means 'Unauthorized' (missing API Key)?",
  ),
  Quiz(
    818,
    "Method လႂ် ၼႂ်း requests library ဢၼ်ၸႂ်ႉသူင်ႇ GET Request?",
    ["requests.get()", "requests.fetch()", "requests.post()", "requests.receive()"],
    "Which method is used to send a GET request using the requests library?",
  ),
  Quiz(
    819,
    "သင် 'r' ပဵၼ် Response object, တေဢဝ်ၶေႃႈမုၼ်းပဵၼ် တူဝ်လိၵ်ႈလၢႆလၢႆ (Raw text) ၸိူင်ႉႁိုဝ်?",
    ["r.text", "r.content()", "r.get_text", "r.string"],
    "If 'r' is the response object, how do you get the raw text content?",
  ),
  Quiz(
    820,
    "r.status_code ၼၼ်ႉ သူင်ႇၵႃႈၶၼ်သင်ပွၵ်ႈၶိုၼ်း?",
    ["မၢႆၼပ်ႉတဵမ် (မိူၼ်ၼင်ႇ 200 ဢမ်ႇၼၼ် 404)", "String", "Boolean", "None"],
    "What does r.status_code return?",
  ),
  Quiz(
    821,
    "တေသူင်ႇ Headers ၵႂႃႇၸွမ်း Request ၸိူင်ႉႁိုဝ်?",
    ["requests.get(url, headers={'key': 'value'})", "requests.get(url + headers)", "headers.send(url)", "import headers"],
    "How do you send headers with a request?",
  ),
  Quiz(
    822,
    "ၼႃႈတၢင်းၶွင် Parameter 'timeout' ၼႂ်း requests.get() ပဵၼ်သင်?",
    ["တွၼ်ႈတႃႇၵိုတ်းၵၢၼ်ပႂ်ႉ ၽွၼ်းလႆႈ ဝၢႆးၶၢဝ်းယၢမ်းဢၼ်မၵ်းမၼ်ႈဝႆႉ", "ႁႂ်ႈသူင်ႇၶေႃႈမုၼ်းဝႆးလိူဝ်", "ႁႂ်ႈသူင်ႇၶိုၼ်းလၢႆပွၵ်ႈ", "ႁႂ်ႈတႄႇလႃႈလူင်း"],
    "What is the purpose of the 'timeout' parameter in requests.get()?",
  ),

  // --- Topic 60: Understanding JSON (826-850) ---
  Quiz(
    826,
    "JSON ၼႆႉ တူဝ်ယႅၼ်ႇမၼ်းပဵၼ်သင်?",
    ["JavaScript Object Notation", "Java Standard Output Network", "Joint Solved Object Name", "Just Some Ordinary Notes"],
    "What does JSON stand for?",
  ),
  Quiz(
    827,
    "JSON ၼႆႉ ပဵၼ်လူင်ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း ၼႂ်းၵႄႈ Server လႄႈ Web application", "တႅမ်ႈပၢႆးၼပ်ႉ", "သၢင်ႈႁၢင်ႈ 3D", "ပိၼ်ႇၶူတ်ႉ"],
    "JSON is primarily used for ______.",
  ),
  Quiz(
    828,
    "ၶေႃႈမုၼ်း JSON ၼႆႉ မိူၼ်တင်း Data type လႂ်ၼႂ်း Python သုတ်း?",
    ["Dictionary", "List", "Tuple", "Set"],
    "JSON data looks very similar to which Python data type?",
  ),
  Quiz(
    829,
    "Method လႂ် ဢၼ်လႅၵ်ႈၶေႃႈမုၼ်း JSON တႄႇတီႈ Response ႁႂ်ႈပဵၼ် Dictionary ၼႂ်း Python?",
    ["response.json()", "response.to_dict()", "json.load()", "response.text()"],
    "Which method converts a Response object's JSON content into a Python dictionary?",
  ),
  Quiz(
    830,
    "Module လႂ် ၼႂ်း Python ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၸႅၵ်ႇ (Parse) String JSON?",
    ["json", "requests", "math", "os"],
    "Which Python module is built-in for parsing JSON strings?",
  ),
  Quiz(
    831,
    "ၶေႃႈၵႂၢမ်း 'Serialization' ၼႂ်း JSON မၢႆထိုင်သင်?",
    ["ၵၢၼ်လႅၵ်ႈ Python object ႁႂ်ႈပဵၼ် String JSON", "ၵၢၼ်လူ File", "ၵၢၼ်မွတ်ႇ API", "ၵၢၼ်ၸတ်းၶပ်ႉ List"],
    "What is 'Serialization' in JSON?",
  ),
  Quiz(
    832,
    "Function လႂ် ဢၼ်လႅၵ်ႈ Python dictionary ႁႂ်ႈပဵၼ် String JSON?",
    ["json.dumps()", "json.loads()", "json.parse()", "dict.to_json()"],
    "Which function converts a Python dictionary into a JSON string?",
  ),
  Quiz(
    833,
    "Function လႂ် ဢၼ်လႅၵ်ႈ String JSON ပွၵ်ႈၶိုၼ်းပဵၼ် Python dictionary?",
    ["json.loads()", "json.dumps()", "json.parse()", "dict.from_json()"],
    "Which function converts a JSON string back into a Python dictionary?",
  ),
  Quiz(
    834,
    "လွင်ႈပႅၵ်ႇပိူင်ႈ ၼႂ်းၵႄႈ json.dump() လႄႈ json.dumps() ပဵၼ်သင်?",
    ["dump() တႅမ်ႈသႂ်ႇၼႂ်း File, dumps() သူင်ႇၶိုၼ်းပဵၼ် String", "မိူၼ်ၵၼ်", "dump() ဝႆးလိူဝ်", "dumps() ၸႂ်ႉတွၼ်ႈတႃႇ List"],
    "What is the difference between json.dump() and json.dumps()?",
  ),
  Quiz(
    835,
    "လွင်ႈပႅၵ်ႇပိူင်ႈ ၼႂ်းၵႄႈ json.load() လႄႈ json.loads() ပဵၼ်သင်?",
    ["load() လူတႄႇတီႈ File, loads() လူတႄႇတီႈ String", "မိူၼ်ၵၼ်", "load() ၸႂ်ႉတွၼ်ႈတႃႇမၢႆၼပ်ႉတဵမ်", "loads() ၸႂ်ႉတွၼ်ႈတႃႇ Boolean"],
    "What is the difference between json.load() and json.loads()?",
  ),
  Quiz(
    836,
    "ၼႂ်း JSON, Key တေလႆႈသႂ်ႇဝႆႉၼႂ်းသင်?",
    ["Double quotes \" \"", "Single quotes ' '", "Brackets [ ]", "ဢမ်ႇလူဝ်ႇသႂ်ႇသင်"],
    "In JSON, what must keys be wrapped in?",
  ),
  Quiz(
    837,
    "JSON object ပႃး List လႆႈႁႃႉ?",
    ["လႆႈ (ၼႂ်း JSON ႁွင်ႉဝႃႈ Array)", "ဢမ်ႇလႆႈ", "လႆႈသင်ပႃး String ၵူၺ်း", "လႆႈၼႂ်း Python ၵူၺ်း"],
    "Can a JSON object contain a list?",
  ),
  Quiz(
    838,
    "Parameter 'indent' ၼႂ်း json.dumps(data, indent=4) ႁဵတ်းသင်?",
    ["ထႅမ်တီႈပဝ်ႇ ႁႂ်ႈၵူၼ်းလူ JSON လႆႈငၢႆႈ", "မွတ်ႇၶေႃႈမုၼ်း", "သႂ်ႇၵေႃး String", "ႁႂ်ႈၶူတ်ႉလႅၼ်ႈဝႆး"],
    "What does 'indent' do in json.dumps(data, indent=4)?",
  ),
  Quiz(
    839,
    "ၵႃႈၶၼ်လႂ် ၼႂ်း JSON ဢၼ်မိူၼ်ၵၼ်တင်း 'None' ၼႂ်း Python?",
    ["null", "none", "nil", "0"],
    "Which value in JSON is equivalent to Python's 'None'?",
  ),
  Quiz(
    840,
    "ၵႃႈၶၼ်လႂ် ၼႂ်း JSON ဢၼ်မိူၼ်ၵၼ်တင်း 'True' ၼႂ်း Python?",
    ["true (တူဝ်လိၵ်ႈလဵၵ်ႉ)", "TRUE", "Yes", "1"],
    "Which value in JSON is equivalent to Python's 'True'?",
  ),
  Quiz(
    841,
    "ၶေႃႈၵႂၢမ်း 'Deserialization' မၢႆထိုင်သင်?",
    ["ၵၢၼ်လႅၵ်ႈ String JSON ပွၵ်ႈၶိုၼ်းပဵၼ် Python object", "ၵၢၼ်မွတ်ႇ Variable", "ၵၢၼ်သူင်ႇ API request", "ၵၢၼ်လူတ်ႇ Library"],
    "What is 'Deserialization'?",
  ),
  Quiz(
    842,
    "တေပဵၼ်သင် သင်ၸဝ်ႈၵဝ်ႇၶတ်းၸႂ် Parse String JSON ဢၼ်ဢမ်ႇမၢၼ်ႇမႅၼ်ႈ?",
    ["json.decoder.JSONDecodeError", "မၼ်းသူင်ႇၶိုၼ်း None", "မၼ်းတေပဵၼ် Dict ပဝ်ႇ", "ၶွမ်ႇပိဝ်ႇတႃႇတေလႅဝ်"],
    "What happens if you try to parse an invalid JSON string?",
  ),
  Quiz(
    843,
    "သင် JSON ပဵၼ် {'user': {'id': 1}}, တေဢဝ်မၢႆ ID ၼႂ်း Python ၸိူင်ႉႁိုဝ်?",
    ["data['user']['id']", "data['id']", "data[1]", "data.user.id"],
    "If a JSON is {'user': {'id': 1}}, how do you get the ID in Python?",
  ),
  Quiz(
    844,
    "API Key ၼႆႉ ပဵၼ်သင်?",
    ["မၢႆ ID တႅတ်ႈတေႃး ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၵူတ်ႇထတ်းတူဝ်ၵူၼ်းၸႂ်ႉ", "Password တွၼ်ႈတႃႇ PC ၸဝ်ႈၵဝ်ႇ", "Variable မဵဝ်းၼိုင်ႈၼႂ်း Python", "လွၵ်းလၢႆးပိုတ်ႇၵေႃး File"],
    "What is an API Key?",
  ),
  Quiz(
    845,
    "သၢႆယွၼ်ႉသင် API လႄႈ JSON ၸင်ႇထုၵ်ႇၸႂ်ႉႁူမ်ႈၵၼ်?",
    ["ယွၼ်ႉ JSON မၼ်းမဝ် လႄႈ ၸၢၵ်ႈပွင်ႇၸႂ်လႆႈငၢႆႈ", "ယွၼ်ႉ Python ပဵၼ်ၵူၼ်းသၢင်ႈတင်းသွင်ယၢင်ႇ", "ယွၼ်ႉ JSON ဝႆးလိူဝ် Internet", "ဢမ်ႇလႆႈၸႂ်ႉႁူမ်ႈၵၼ်"],
    "Why are APIs and JSON used together?",
  ),
  Quiz(
    846,
    "ၶေႃႈၵႂၢမ်း 'Query Parameters' ၼႂ်း URL (တူဝ်ယၢင်ႇ: ?q=python) မၢႆထိုင်သင်?",
    ["ၶေႃႈမုၼ်းထႅမ် ဢၼ်သူင်ႇၸူး API တွၼ်ႈတႃႇလိူၵ်ႈ (Filter) ၽွၼ်းလႆႈ", "Error မဵဝ်းၼိုင်ႈ", "တီႈသုတ်းၶွင် Script", "Comment ၼႂ်း Python"],
    "What does 'Query Parameters' mean in a URL (e.g., ?q=python)?",
  ),
  Quiz(
    847,
    "တူဝ်လိၵ်ႈလႂ် ဢၼ်ၸႂ်ႉတႄႇ Query string ၼႂ်း URL?",
    ["?", "&", "#", "/"],
    "Which character starts the query string in a URL?",
  ),
  Quiz(
    848,
    "တူဝ်လိၵ်ႈလႂ် ဢၼ်ၸႂ်ႉၸႅၵ်ႇ Query parameters လၢႆလၢႆဢၼ်ၼႂ်း URL?",
    ["&", "?", "\$", "@"],
    "Which character separates multiple query parameters in a URL?",
  ),
  Quiz(
    849,
    "Python list ၸၢင်ႈလႅၵ်ႈပဵၼ် JSON array လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈသင်မၼ်းလဵၵ်ႉၵူၺ်း", "လႆႈသင်မၼ်းပႃးမၢႆၼပ်ႉၵူၺ်း"],
    "Can a Python list be converted to a JSON array?",
  ),
  Quiz(
    850,
    "API ၸွႆႈႁဵတ်းႁႂ်ႈ Program Python ပဵၼ် ______။",
    ["Dynamic လႄႈ ၸႂ်ႉၶေႃႈမုၼ်းပဵၼ်လူင် (Data-driven)", "Static (ဢမ်ႇတူင်ႉၼိုင်)", "လႃႈလူင်း", "ၸႂ်ႉလႆႈၼႂ်းပိုၼ်ႉတီႈၵူၺ်း"],
    "APIs allow Python programs to become ______.",
  ),
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