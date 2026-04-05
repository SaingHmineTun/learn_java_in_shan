import 'package:tmkacademy/utils/utils.dart';

import '../utils/quiz.dart';

const Map<int, String> mysqlTopics = {
  1: "Foundations of Databases",
  2: "Data Modeling & Design",
  3: "Data Definition Language (DDL)",
  4: "Data Manipulation & Querying (The Core)",
  5: "Advanced Data Retrieval",
  6: "Programmable Database Objects",
  7: "Transactions & Security",
  8: "Performance & Optimization",
};

const Map<int, Map<int, String>> mysqlModules = {
  1: {
    1: "Foundations: From Flat Files to Relational Databases",
    2: "The SQL Language: DDL, DML, DQL, and DCL",
    3: "MySQL Ecosystem: Server Engine vs. Workbench GUI",
    4: "Connection Architecture: Ports, Hosts, and Socket Basics",
    5: "Database Hierarchy: Instances, Schemas, Tables, and Rows",
    6: "Installation & Unicode: Configuring utf8mb4 for Shan Text",
  },
  2: {
    7: "Data Modeling: Entities, Attributes, and Primary Keys",
    8: "Key Strategies: Surrogate vs. Natural & Auto-Increment",
    9: "One-to-Many (1:N): The Backbone of Relational Design",
    10: "Many-to-Many (M:N): Understanding Junction Tables",
    11: "One-to-One (1:1): Use Cases for Table Splitting",
    12: "Normalization I: The 1st Normal Form (Atomicity)",
    13: "Normalization II: The 2nd and 3rd Normal Forms",
    14: "Visual Design: EER Modeling in MySQL Workbench",
    15: "Engineering: Forward and Reverse Schema Generation",
  },
  3: {
    16: "DDL Basics: Creating and Managing Schemas and Tables",
    17: "String Data Types: CHAR, VARCHAR, and TEXT Selection",
    18: "Numeric Data: INT, DECIMAL, and Floating Point Logic",
    19: "Temporal Data I: DATE, TIME, and YEAR Types",
    20: "Temporal Data II: DATETIME vs. TIMESTAMP and Timezones",
    21: "Integrity Constraints: NOT NULL, UNIQUE, and DEFAULT",
    22: "The CHECK Constraint: Business Rules at the DB Level",
    23: "Primary Keys: Single vs. Composite Key Implementation",
    24: "Relational Logic: Foreign Keys and Referential Integrity",
    25: "Cascading Actions: ON DELETE and ON UPDATE Logic",
    26: "Schema Evolution: The ALTER TABLE Command in Detail",
    27: "Data Removal Logic: DROP vs. TRUNCATE vs. DELETE",
  },
  4: {
    28: "DML Syntax: Professional INSERT and INSERT IGNORE",
    29: "Data Modification: Secure UPDATE and DELETE Operations",
    30: "The SELECT Clause: Expressions, Aliasing, and Literals",
    31: "Basic Filtering: Comparison and Logical Operators",
    32: "Range and Set Filtering: Using BETWEEN and IN",
    33: "Pattern Matching I: The LIKE Operator and Wildcards",
    34: "Pattern Matching II: Introduction to REGEXP (Regex)",
    35: "Nullability: The IS NULL and IS NOT NULL Logic",
    36: "Sorting: Advanced ORDER BY (Multi-column and Custom)",
    37: "Pagination: OFFSET and LIMIT for App Development",
    38: "Math Functions: ABS, ROUND, CEIL, and FLOOR",
    39: "String Functions: CONCAT, SUBSTRING, and REPLACE",
  },
  5: {
    40: "Join Fundamentals: The Concept of Table Linking",
    41: "The INNER JOIN: Extracting Matching Records",
    42: "Outer Joins I: Mastering LEFT JOIN Logic",
    43: "Outer Joins II: RIGHT JOIN and FULL OUTER Alternatives",
    44: "The Self-Join: Hierarchical Data and Row Comparison",
    45: "Multi-Table Joins: Connecting 3+ Tables Safely",
    46: "Aggregate Functions: SUM, AVG, MIN, MAX, and COUNT",
    47: "Grouping Logic: The GROUP BY Clause",
    48: "Advanced Grouping: The HAVING Clause vs. WHERE",
    49: "Subqueries I: Scalar and Column Nested SELECTs",
    50: "Subqueries II: Correlated Subqueries and EXISTS",
    51: "Set Operations: UNION and Common Table Expressions (CTEs)",
  },
  6: {
    52: "Views: Virtual Tables for Security and Simplicity",
    53: "Stored Procedures: Reusable Code with Parameters",
    54: "Logic & Control: Variables, IF-ELSE, and CASE",
    55: "Iterative Logic: WHILE and REPEAT Loops in SQL",
    56: "Triggers: Automating Audits and Data Sync",
    57: "Events: Scheduling Automated Database Tasks",
  },
  7: {
    58: "Transactions: Atomicity and the ACID Properties",
    59: "Transaction Control: COMMIT, ROLLBACK, and Savepoints",
    60: "Concurrency: Isolation Levels and Read Phenomena",
    61: "Access Control: User Management and GRANT/REVOKE",
    62: "Security: Encryption and Role-Based Access (RBAC)",
    63: "Backup & Recovery: Logical Dumps and Restoration",
  },
  8: {
    64: "The Execution Plan: Understanding EXPLAIN",
    65: "Indexing I: B-Trees and Primary/Unique Indexes",
    66: "Indexing II: Composite and Covering Index Strategies",
    67: "Query Refactoring: Optimizing for Performance",
    68: "Join Optimization: Indexing for Fast Connections",
    69: "Maintenance: ANALYZE and Slow Query Logs",
    70: "Server Tuning: Buffer Pools and Memory Basics",
  },
};

final Map<int, Lesson> mysqlLessons = {
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
  14: Lesson(2, 14),
  15: Lesson(2, 15),
  16: Lesson(3, 16),
  17: Lesson(3, 17),
  18: Lesson(3, 18),
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
  37: Lesson(4, 37),
  38: Lesson(4, 38),
  39: Lesson(4, 39),
  40: Lesson(5, 40),
  41: Lesson(5, 41),
  42: Lesson(5, 42),
  43: Lesson(5, 43),
  44: Lesson(5, 44),
  45: Lesson(5, 45),
  46: Lesson(5, 46),
  47: Lesson(5, 47),
  48: Lesson(5, 48),
  49: Lesson(5, 49),
  50: Lesson(5, 50),
  51: Lesson(5, 51),
  52: Lesson(6, 52),
  53: Lesson(6, 53),
  54: Lesson(6, 54),
  55: Lesson(6, 55),
  56: Lesson(6, 56),
  57: Lesson(6, 57),
  58: Lesson(7, 58),
  59: Lesson(7, 59),
  60: Lesson(7, 60),
  61: Lesson(7, 61),
  62: Lesson(7, 62),
  63: Lesson(7, 63),
  64: Lesson(8, 64),
  65: Lesson(8, 65),
  66: Lesson(8, 66),
  67: Lesson(8, 67),
  68: Lesson(8, 68),
  69: Lesson(8, 69),
  70: Lesson(8, 70),
};

List<Quiz> mysqlQuizM1 = [
  Quiz(1, "RDBMS ပဵၼ်သင်?", [
    "ပိူင်ၸတ်းၵၢၼ် Database ဢၼ်မီးၵၢၼ်ၵွင်ႉၵၢႆႇၵၼ်",
    "ၾၢႆႇ Excel",
    "Software တႃႇတႅမ်ႈလိၵ်ႈ",
    "ပိူင်သၢင်ႈ Website",
  ], "What is RDBMS?"),

  Quiz(2, "SQL ၼႆႉ ယေႃႈမႃးတီႈသင်?", [
    "Structured Query Language",
    "Simple Quality Language",
    "Server Quick Link",
    "Standard Query Logic",
  ], "What does SQL stand for?"),

  Quiz(3, "MySQL Default Port ပဵၼ်မၢႆလၢႆ?", [
    "3306",
    "8080",
    "21",
    "443",
  ], "What is the default port for MySQL?"),

  Quiz(
    4,
    "ၵၢၼ်သၢင်ႈ Table မႂ်ႇၼႆႉ ပဵၼ် SQL ၸုမ်းလႂ်?",
    ["DDL", "DML", "DQL", "DCL"],
    "Creating a new table belongs to which SQL category?",
  ),

  Quiz(
    5,
    "ၵၢၼ်သွၵ်ႈႁႃၶေႃႈမုၼ်း (SELECT) ပဵၼ် SQL ၸုမ်းလႂ်?",
    ["DQL", "DDL", "DML", "DCL"],
    "Querying data (SELECT) belongs to which SQL category?",
  ),

  Quiz(
    6,
    "ၵၢၼ်မႄးလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း (UPDATE) ပဵၼ် SQL ၸုမ်းလႂ်?",
    ["DML", "DDL", "DQL", "DCL"],
    "Updating existing data belongs to which SQL category?",
  ),

  Quiz(
    7,
    "ၵၢၼ်ပၼ်သုၼ်ႇၸႂ်ႉ (GRANT) ပဵၼ် SQL ၸုမ်းလႂ်?",
    ["DCL", "DDL", "DML", "DQL"],
    "Granting permissions belongs to which SQL category?",
  ),

  Quiz(8, "Flat File ပဵၼ်သင်?", [
    "ၾၢႆႇၶေႃႈမုၼ်းဢၼ်ဢမ်ႇမီးၵၢၼ်ၵွင်ႉၵၢႆႇၵၼ် (မိူၼ်ၼင်ႇ .txt)",
    "Database ဢၼ်မီး Table တင်းၼမ်",
    "ပိူင်သၢင်ႈ Server",
    "Software တႃႇသၢင်ႈ Diagram",
  ], "What is a Flat File?"),

  Quiz(9, "MySQL Workbench ပဵၼ်သင်?", [
    "ၼႃႈတႃ Software (GUI) တႃႇၸတ်းၵၢၼ် Database",
    "တူဝ် Engine ဢၼ်သိမ်းၶေႃႈမုၼ်း",
    "ၽႃႇသႃႇတႅမ်ႈ Code",
    "ပိူင် Network ၵွင်ႉၵၢႆႇ",
  ], "What is MySQL Workbench?"),

  Quiz(10, "MySQL Server ပဵၼ်သင်?", [
    "တူဝ် Engine ဢၼ်ႁဵတ်းၵၢၼ်သိမ်း လႄႈ ၸတ်းၵၢၼ်ၶေႃႈမုၼ်း",
    "Software တႃႇတႅမ်ႈ Diagram",
    "Web Browser",
    "Operating System",
  ], "What is MySQL Server?"),

  Quiz(
    11,
    "Localhost မီး IP Address ပဵၼ်သင်?",
    ["127.0.0.1", "192.168.1.1", "8.8.8.8", "0.0.0.0"],
    "What is the IP address for Localhost?",
  ),

  Quiz(12, "Instance ပဵၼ်သင်?", [
    "တူဝ် MySQL Server ဢၼ် Install ဝႆႉၼႂ်းၶွမ်း",
    "ထႅဝ်ၼွၼ်းၼႂ်း Table",
    "ၸိုဝ်ႈ Column",
    "ပိူင်ၵွင်ႉၵၢႆႇ Network",
  ], "What is an Instance in database hierarchy?"),

  Quiz(13, "Schema ၼႆႉ မိူၼ်သင်?", [
    "Database (ထူင်သိမ်း Table တင်းၼမ်)",
    "ထႅဝ်တင်ႈ (Column)",
    "တူဝ်ၼပ်ႉ (Integer)",
    "Password ၶဝ်ႈ Database",
  ], "What is a Schema in MySQL?"),

  Quiz(14, "Row ၼႂ်း Table ပဵၼ်သင်?", [
    "ၶေႃႈမုၼ်းတဵမ်ထူၼ်ႈ ၼိုင်ႈဢၼ် (Record)",
    "ႁူဝ်ၶေႃႈၶေႃႈမုၼ်း",
    "ၸိုဝ်ႈ Database",
    "ၵွပ်းလိၵ်ႈ (Font)",
  ], "What is a Row in a table?"),

  Quiz(15, "Column ၼႂ်း Table ပဵၼ်သင်?", [
    "ႁူဝ်ၶေႃႈဢၼ်မၵ်းမၼ်ႈ ပိူင်ၶေႃႈမုၼ်း (Field)",
    "ၶေႃႈမုၼ်းထႅဝ်ၼွၼ်း",
    "ၸိုဝ်ႈ Password",
    "တူဝ် Engine Server",
  ], "What is a Column in a table?"),

  Quiz(
    16,
    "ၵွပ်းလိၵ်ႈ (Encoding) ဢၼ်မၢၼ်ႇမႅၼ်ႈသုတ်း တႃႇလိၵ်ႈတႆး ပဵၼ်သင်?",
    ["utf8mb4", "latin1", "ascii", "utf16_le"],
    "Which encoding is best for Shan text?",
  ),

  Quiz(
    17,
    "ၵွပ်းလိၵ်ႈ utf8mb4 သိမ်းလႆႈၵူၺ်း ဢင်းၵိတ်းၵူၺ်းႁႃႉ?",
    [
      "ဢမ်ႇၸႂ်ႈ၊ သိမ်းလႆႈၵူႈၽႃႇသႃႇတင်း Emoji",
      "ၸႂ်ႈယဝ်ႉ",
      "သိမ်းလႆႈၵူၺ်းတူဝ်ၼပ်ႉ",
      "သိမ်းလႆႈၵူၺ်းလိၵ်ႈတႆး",
    ],
    "Does utf8mb4 only store English characters?",
  ),

  Quiz(18, "Data Inconsistency ပဵၼ်သင်?", [
    "ၶေႃႈမုၼ်းၽိတ်းပိူၼ်ႈ ၵွပ်ႈမႄးဢမ်ႇတူဝ်ႈထိုင်",
    "ၵၢၼ်သိမ်းၶေႃႈမုၼ်းလွတ်ႈၽေး",
    "ၵၢၼ်သွၵ်ႈႁႃၶေႃႈမုၼ်းၽႅဝ်း",
    "ၵၢၼ်သၢင်ႈ Table မႂ်ႇ",
  ], "What is Data Inconsistency?"),

  Quiz(19, "Data Redundancy ပဵၼ်သင်?", [
    "ၵၢၼ်သိမ်းၶေႃႈမုၼ်းသမ်ႉၵၼ်လၢႆတီႈ ဢၼ်ဢမ်ႇလူဝ်ႇ",
    "ၵၢၼ်ၵွင်ႉ Table ၸွမ်းၵၼ်",
    "ၵၢၼ်တင်ႈ Password",
    "ၵၢၼ်မၵ်းမၼ်ႈ Column",
  ], "What is Data Redundancy?"),

  Quiz(20, "Root User ပဵၼ်သင်?", [
    "User Admin ဢၼ်မီးသုၼ်ႇသုင်သုတ်း ၼႂ်း DB",
    "User ဢၼ်လူလႆႈၶေႃႈမုၼ်းၵူၺ်း",
    "ၸိုဝ်ႈ Database",
    "ပိူင်ၵွင်ႉၵၢႆႇ Socket",
  ], "What is the Root User in MySQL?"),

  Quiz(21, "Persistence မၵ်းထိုင်သင်?", [
    "ၶေႃႈမုၼ်းတေတိုၼ်းမီးယူႇ တေႃႇၾႆးတၢႆၵေႃႈဢမ်ႇႁၢႆ",
    "ၶေႃႈမုၼ်းၸၢင်ႈႁၢႆလႆႈငၢႆႈငၢႆႈ",
    "ၵၢၼ်တႅမ်ႈ Code ၼႂ်း Dart",
    "လွင်ႈၽႅဝ်းၶေႃႈမုၼ်း",
  ], "What does Persistence mean in databases?"),

  Quiz(
    22,
    "Statement SQL ၼိုင်ႈဢၼ် ၵႆႉသုတ်းတင်းသင်?",
    ["Semi-colon (;)", "Comma (,)", "Dot (.)", "Colon (:)"],
    "How is an SQL statement usually terminated?",
  ),

  Quiz(23, "TCP/IP ၸႂ်ႉႁဵတ်းသင် ၼႂ်း MySQL?", [
    "တႃႇၵွင်ႉၵၢႆႇၸူး Server ၼႂ်း Network",
    "တႃႇသၢင်ႈ Table",
    "တႃႇသိမ်းလိၵ်ႈတႆး",
    "တႃႇမၵ်းမၼ်ႈ Primary Key",
  ], "What is TCP/IP used for in MySQL?"),

  Quiz(24, "Collation ၼႂ်း DB ၸႂ်ႉႁဵတ်းသင်?", [
    "တႃႇမၵ်းမၼ်ႈလၢႆးၸတ်းလႅၼ်ႇ (Sorting) လႄႈ တႅၵ်ႈတူၺ်းလိၵ်ႈ",
    "တႃႇသိမ်းတူဝ်ၼပ်ႉၵူၺ်း",
    "တႃႇတင်ႈ Password",
    "တႃႇပၼ်သုၼ်ႇ Network",
  ], "What is Collation used for?"),

  Quiz(25, "Mojibake မၵ်းထိုင်သင်?", [
    "လိၵ်ႈဢွၵ်ႇမႃးပဵၼ်ႁၢင်ႈယုင်ႈ (????) ၵွပ်း Encoding ၽိတ်း",
    "ၸိုဝ်ႈ Database",
    "လၢႆးၵွင်ႉၵၢႆႇ Server",
    "ၵၢၼ်သၢင်ႈ Primary Key",
  ], "What is Mojibake?"),

  Quiz(
    26,
    "ALTER TABLE ပဵၼ် SQL ၸုမ်းလႂ်?",
    ["DDL", "DML", "DQL", "DCL"],
    "ALTER TABLE belongs to which SQL category?",
  ),

  Quiz(
    27,
    "INSERT INTO ပဵၼ် SQL ၸုမ်းလႂ်?",
    ["DML", "DDL", "DQL", "DCL"],
    "INSERT INTO belongs to which SQL category?",
  ),

  Quiz(
    28,
    "DROP DATABASE ပဵၼ် SQL ၸုမ်းလႂ်?",
    ["DDL", "DML", "DQL", "DCL"],
    "DROP DATABASE belongs to which SQL category?",
  ),

  Quiz(29, "REVOKE ပဵၼ် SQL ၸုမ်းလႂ်?", [
    "DCL",
    "DDL",
    "DML",
    "DQL",
  ], "REVOKE belongs to which SQL category?"),

  Quiz(
    30,
    "သင်ၶႂ်ႈမႄး Table ၵဝ်ႇ ႁႂ်ႈပဵၼ် utf8mb4 လူဝ်ႇၸႂ်ႉ Keyword သင်?",
    [
      "ALTER TABLE ... CONVERT TO",
      "UPDATE TABLE",
      "SELECT TABLE",
      "GRANT TABLE",
    ],
    "How do you convert an existing table to utf8mb4?",
  ),

  Quiz(31, "Relationship ၼႂ်း DB ပဵၼ်သင်?", [
    "ၵၢၼ်ၵွင်ႉၵၢႆႇၵၼ် ၼႂ်းၵႄႈ Table တင်း Table",
    "ၵၢၼ် Install MySQL",
    "ၸိုဝ်ႈ Password Server",
    "လၢႆးၸတ်းလႅၼ်ႇ Column",
  ], "What is a Relationship in a database?"),

  Quiz(32, "Metadata မၵ်းထိုင်သင်?", [
    "ၶေႃႈမုၼ်းဢၼ်လၢတ်ႈၼႄ လွင်ႈပိူင်သၢင်ႈ Database",
    "ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း",
    "ၸိုဝ်ႈ User",
    "Port 3306",
  ], "What is Metadata?"),

  Quiz(33, "ASCII သိမ်းလိၵ်ႈတႆးလႆႈႁႃႉ?", [
    "ဢမ်ႇလႆႈ",
    "လႆႈ",
    "လႆႈၵူၺ်းတူဝ်မႄႈလိၵ်ႈ",
    "လႆႈၵူၺ်းတူဝ်ၼပ်ႉတႆး",
  ], "Can ASCII store Shan text?"),

  Quiz(34, "MySQL Installer ၸွႆႈႁဵတ်းသင်?", [
    "ၸွႆႈ Install Server, Workbench လႄႈ Products ၵူႈပိူင်",
    "ၸွႆႈတႅမ်ႈ Code Dart",
    "ၸွႆႈ Design Website",
    "ၸွႆႈပၼ်သုၼ်ႇ Internet",
  ], "What does MySQL Installer do?"),

  Quiz(
    35,
    "MySQL Community Server ပဵၼ် Software မိၼိုင်ႇ?",
    ["Free Software", "Paid Software", "Trial Version", "Mobile App"],
    "Is MySQL Community Server free?",
  ),

  Quiz(36, "3306 ပဵၼ်မၢႆသင်?", [
    "MySQL Default Port",
    "IP Address",
    "User ID",
    "Password",
  ], "What is 3306?"),

  Quiz(37, "Primary Key ပဵၼ်သင်?", [
    "Column ဢၼ်မၵ်းမၼ်ႈ Row ၼိုင်ႈဢၼ် ဢမ်ႇႁႂ်ႈမိူၼ်ၵၼ်",
    "ၸိုဝ်ႈ Database",
    "Port ၵွင်ႉၵၢႆႇ",
    "Password Admin",
  ], "What is a Primary Key?"),

  Quiz(38, "Scalability မၵ်းထိုင်သင်?", [
    "လွင်ႈဢၼ် DB သိမ်းၶေႃႈမုၼ်းလႆႈၼမ်လိူဝ်မႃး ႁင်းမၼ်း",
    "လွင်ႈဢၼ် DB ႁၢႆၵႂႃႇ",
    "လွင်ႈပိတ်း Server",
    "လွင်ႈတႅမ်ႈ Code",
  ], "What does Scalability mean?"),

  Quiz(39, "SQL ပဵၼ်ၽႃႇသႃႇမိၼိုင်ႇ?", [
    "Declarative Language",
    "Procedural Language",
    "Object Oriented Language",
    "Hardware Language",
  ], "What type of language is SQL?"),

  Quiz(
    40,
    "Client-Server Architecture မၵ်းထိုင်သင်?",
    [
      "လၢႆးႁဵတ်းၵၢၼ် ဢၼ် Client ၵွင်ႉၸူး Server တႃႇဢဝ်ၶေႃႈမုၼ်း",
      "လၢႆးသၢင်ႈ Table ၵူၺ်း",
      "လၢႆး Install ၶွမ်း",
      "လၢႆးမႄးလိၵ်ႈတႆး",
    ],
    "What is Client-Server Architecture?",
  ),

  Quiz(41, "GUI ယေႃႈမႃးတီႈသင်?", [
    "Graphical User Interface",
    "General User Instance",
    "Global Unit Identifier",
    "Grand User Index",
  ], "What does GUI stand for?"),

  Quiz(42, "Unicode ပဵၼ်သင်?", [
    "Standard ၵွပ်းလိၵ်ႈ ဢၼ်သိမ်းလႆႈၵူႈၽႃႇသႃႇ ၼႂ်းလုမ်ႈၾႃႉ",
    "ၸိုဝ်ႈ Password",
    "မၢႆ Port",
    "Software တႅမ်ႈလိၵ်ႈ",
  ], "What is Unicode?"),

  Quiz(43, "utf8mb4_unicode_ci ၸႂ်ႉတႃႇသင်?", [
    "Collation ဢၼ်မၢၼ်ႇမႅၼ်ႈသုတ်း တႃႇ Unicode",
    "တႃႇမၵ်းမၼ်ႈ IP Address",
    "တႃႇ Install Server",
    "တႃႇတႅမ်ႈ HTML",
  ], "What is utf8mb4_unicode_ci used for?"),

  Quiz(
    44,
    "Field ၼႆႉ ပဵၼ်ၸိုဝ်ႈထႅင်ႈဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇသင်?",
    ["Column", "Row", "Database", "Server"],
    "Field is another name for?",
  ),

  Quiz(
    45,
    "Record ၼႆႉ ပဵၼ်ၸိုဝ်ႈထႅင်ႈဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇသင်?",
    ["Row", "Column", "Table", "Schema"],
    "Record is another name for?",
  ),

  Quiz(46, "Data Integrity မၵ်းထိုင်သင်?", [
    "လွင်ႈမၢၼ်ႇမႅၼ်ႈ လႄႈ မၼ်ႈၵိုမ်း ၶေႃႈမုၼ်း",
    "လွင်ႈႁၢႆၶေႃႈမုၼ်း",
    "လွင်ႈတႅမ်ႈ Code ၽိတ်း",
    "လွင်ႈပိတ်း Server",
  ], "What is Data Integrity?"),

  Quiz(47, "Query မၵ်းထိုင်သင်?", [
    "ၶေႃႈၵႂၢမ်း SQL ဢၼ်သူင်ႇၵႂႃႇထၢမ် Database",
    "ၵၢၼ် Install Software",
    "ၸိုဝ်ႈ User",
    "မၢႆ Port",
  ], "What is a Query?"),

  Quiz(48, "127.0.0.1 ပဵၼ်သင်?", [
    "Loopback Address (Localhost)",
    "Server Password",
    "Database ID",
    "Primary Key",
  ], "What is 127.0.0.1?"),

  Quiz(49, "DBMS ယေႃႈမႃးတီႈသင်?", [
    "Database Management System",
    "Data Basic Maker Software",
    "Direct Base Main Server",
    "Distributed Backup Main System",
  ], "What does DBMS stand for?"),

  Quiz(
    50,
    "utf8mb4 ၼႆႉ ၼိုင်ႈတူဝ်လိၵ်ႈ သိမ်းလႆႈၵူႈ Byte?",
    ["4 Bytes", "1 Byte", "2 Bytes", "8 Bytes"],
    "How many bytes per character can utf8mb4 store up to?",
  ),
];
List<Quiz> mysqlQuizM2 = [
  // --- Lesson 7: Entities, Attributes, & PK ---
  Quiz(
    51,
    "Entity မၢႆထိုင်သင် ၼႂ်းပိူင်သၢင်ႈ Database?",
    [
      "တူဝ်ၶေႃႈမုၼ်းလူင် မိူၼ်ၼင်ႇ Table (Noun)",
      "ႁူဝ်ၶေႃႈၶေႃႈမုၼ်း (Column)",
      "ၵၢၼ်ၵွင်ႉ Table",
      "လၢႆးတႅမ်ႈ Code",
    ],
    "What is an Entity in a database?",
  ),
  Quiz(52, "Attribute ပဵၼ်သင် ၼႂ်း Table?", [
    "ႁူဝ်ၶေႃႈၶေႃႈမုၼ်း ဢၼ်လၢတ်ႈၼႄလွင်ႈ Entity",
    "မၢႆၼပ်ႉ ID ႁင်းတူဝ်",
    "တူဝ် Database Engine",
    "သေႃးလပ်ႉ Admin",
  ], "What is an Attribute in a table?"),
  Quiz(
    53,
    "Primary Key (PK) လူဝ်ႇမီးၵုၼ်ႇလၵ်ႉသၼႃႇသင်?",
    [
      "Unique လႄႈ Not Null (ဢမ်ႇမိူၼ်ပိူၼ်ႈ လႄႈ ဢမ်ႇပဝ်ႇ)",
      "သိမ်းလိၵ်ႈလႆႈယၢဝ်းယၢဝ်း",
      "မီးလႆႈလၢႆလၢႆဢၼ် ၼႂ်း Table ၼိုင်ႈဢၼ်",
      "လႅၵ်ႈလၢႆႈလႆႈၵူႈဝၼ်း",
    ],
    "What characteristics must a Primary Key have?",
  ),
  Quiz(54, "Data Modeling ႁဵတ်းသင်လႄႈ လွင်ႈလူင်?", [
    "တႃႇဝူၼ်ႉပိူင်သၢင်ႈ ဢွၼ်တၢင်းတေတႅမ်ႈ Code တႄႉ",
    "တႃႇ Install MySQL",
    "တႃႇပၼ် Password User",
    "တႃႇ Download Software",
  ], "Why is Data Modeling important?"),
  Quiz(
    55,
    "ၼႂ်း Table 'Students' ... 'Student_ID' ထုၵ်ႇလီပဵၼ်သင်?",
    ["Primary Key", "Attribute ธรรมဒါ", "Foreign Key", "Database Name"],
    "What should 'Student_ID' be in a Students table?",
  ),

  // --- Lesson 8: Surrogate vs Natural Keys ---
  Quiz(56, "Natural Key ပဵၼ်သင်?", [
    "ဢဝ်ၶေႃႈမုၼ်းဢၼ်မီးယူႇယဝ်ႉ (မိူၼ်ၼင်ႇ NRC) မႃးႁဵတ်း PK",
    "သၢင်ႈမၢႆၼပ်ႉမႂ်ႇ (ID) တႃႇ DB ၵူၺ်း",
    "လၢႆးၵွင်ႉ 1:1",
    "ၵၢၼ်ၸႅၵ်ႇ Table",
  ], "What is a Natural Key?"),
  Quiz(57, "Surrogate Key ပဵၼ်သင်?", [
    "သၢင်ႈမၢႆတွင်းမႂ်ႇ (ID) ဢၼ်ဢမ်ႇမီးတီႈပွင်ႇၼွၵ်ႈ DB",
    "ဢဝ်မၢႆၾၢင် (NRC) မႃးၸႂ်ႉ",
    "ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း",
    "လၢႆးၵွင်ႉ Table",
  ], "What is a Surrogate Key?"),
  Quiz(
    58,
    "AUTO_INCREMENT ၵႆႉၸႂ်ႉၸွမ်း Key ပိူင်လႂ်?",
    ["Surrogate Key", "Natural Key", "Composite Key", "Foreign Key"],
    "Which key type usually uses AUTO_INCREMENT?",
  ),
  Quiz(
    59,
    "ၽွၼ်းလီ Surrogate Key ပဵၼ်သင်?",
    [
      "မၼ်းတေဢမ်ႇလႅၵ်ႈလၢႆႈ (Static) လႄႈ ၵွင်ႉ Table ငၢႆႈ",
      "မီးတီႈပွင်ႇတႃႇၵူၼ်းၸႂ်ႉ App",
      "ႁဵတ်းႁႂ်ႈ DB လဵၵ်ႉၵႂႃႇ",
      "ဢမ်ႇလူဝ်ႇၸႂ်ႉ ID",
    ],
    "What is an advantage of a Surrogate Key?",
  ),
  Quiz(60, "UUID ပဵၼ် Key ပိူင်လႂ်?", [
    "Surrogate Key ဢၼ်ယၢဝ်း လႄႈ Unique ၵူႈ Server",
    "Natural Key",
    "Primary Key ဢၼ်ပဵၼ်တူဝ်ၼပ်ႉ 1, 2, 3",
    "Foreign Key",
  ], "What kind of key is a UUID?"),

  // --- Lesson 9: One-to-Many (1:N) ---
  Quiz(
    61,
    "Relationship ပိူင်လႂ် ဢၼ်လႆႈၸႂ်ႉၼမ်လိူဝ်ပိူၼ်ႈ?",
    [
      "One-to-Many (1:N)",
      "One-to-One (1:1)",
      "Many-to-Many (M:N)",
      "Zero-to-One",
    ],
    "Which relationship type is most common?",
  ),
  Quiz(
    62,
    "Foreign Key (FK) လူဝ်ႇယူႇတီႈၽၢႆႇလႂ်?",
    [
      "ၽၢႆႇ Many (Child Table)",
      "ၽၢႆႇ One (Parent Table)",
      "ယူႇတီႈလႂ်ၵေႃႈလႆႈ",
      "ဢမ်ႇလူဝ်ႇမီး FK",
    ],
    "Where should a Foreign Key (FK) be placed?",
  ),
  Quiz(
    63,
    "ၼႂ်းၵႄႈ 'Department' (1) လႄႈ 'Employee' (N) ... FK ယူႇတီႈလႂ်?",
    ["Employee Table", "Department Table", "ယူႇတင်းသွင် Table", "ဢမ်ႇလူဝ်ႇမီး"],
    "In a Dept-Employee (1:N) setup, where is the FK?",
  ),
  Quiz(64, "Parent Table မၵ်းထိုင်သင်?", [
    "Table ဢၼ်မီး Primary Key ဢၼ်ပိူၼ်ႈမႃးၵွင်ႉ (ၽၢႆႇ One)",
    "Table ဢၼ်မီး Foreign Key",
    "Junction Table",
    "Database တင်းသဵင်ႈ",
  ], "What is a Parent Table?"),
  Quiz(65, "Referential Integrity မၵ်းထိုင်သင်?", [
    "လွင်ႈမၢၼ်ႇမႅၼ်ႈ ၼႂ်းၵၢၼ်ၵွင်ႉ FK ၸူး PK",
    "လွင်ႈဝႆး DB",
    "လွင်ႈသိမ်းလိၵ်ႈတႆး",
    "လွင်ႈတင်ႈ Password",
  ], "What is Referential Integrity?"),

  // --- Lesson 10: Many-to-Many (M:N) ---
  Quiz(
    66,
    "Many-to-Many (M:N) လူဝ်ႇသင်တႃႇၵွင်ႉ Table?",
    [
      "Junction Table (Table တူဝ်ၵၢင်)",
      "Primary Key တူဝ်လဵဝ်",
      "Excel File",
      "User Password",
    ],
    "What is needed to resolve a Many-to-Many relationship?",
  ),
  Quiz(
    67,
    "ၼႂ်းၵႄႈ 'Students' လႄႈ 'Courses' ပဵၼ် Relationship ပိူင်လႂ်?",
    [
      "Many-to-Many (M:N)",
      "One-to-One (1:1)",
      "One-to-Many (1:N)",
      "ဢမ်ႇၵွင်ႉၵၢႆႇၵၼ်",
    ],
    "What is the relationship between Students and Courses?",
  ),
  Quiz(
    68,
    "Junction Table ၵႆႉသိမ်းသင်ဝႆႉ?",
    [
      "Foreign Keys ဢၼ်မႃးတီႈ Table သွင်ၽၢႆႇ",
      "ၸိုဝ်ႈ Database",
      "Password Admin",
      "Unicode Font",
    ],
    "What does a Junction Table typically store?",
  ),
  Quiz(
    69,
    "Composite Primary Key ၼႂ်း Junction Table ပဵၼ်သင်?",
    [
      "ၵၢၼ်ဢဝ် FK သွင်ဢၼ် ႁူမ်ႈၵၼ်ပဵၼ် PK",
      "ID ဢၼ်ၼပ်ႉႁင်းတူဝ်",
      "ၸိုဝ်ႈ User",
      "မၢႆ Port",
    ],
    "What is a Composite PK in a Junction Table?",
  ),
  Quiz(70, "ႁဵတ်းသင်လူဝ်ႇ Junction Table?", [
    "တႃႇတႅၵ်ႇ M:N ႁႂ်ႈပဵၼ် 1:N သွင်ဢၼ်",
    "တႃႇသိမ်း Password",
    "တႃႇႁဵတ်းႁႂ်ႈ DB ဝႆးလိူဝ်",
    "တႃႇ Delete ၶေႃႈမုၼ်း",
  ], "Why is a Junction Table necessary?"),

  // --- Lesson 11: One-to-One (1:1) ---
  Quiz(
    71,
    "One-to-One (1:1) ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "Table Splitting (ၸႅၵ်ႇ Table တႃႇ Security)",
      "ၵွင်ႉလုၵ်ႈႁဵၼ်း တင်း ၶိူင်ႈလိၵ်ႈ",
      "ၼပ်ႉမၢႆ ID ႁင်းတူဝ်",
      "တႅမ်ႈ SQL Code",
    ],
    "What is a common use case for 1:1 relationships?",
  ),
  Quiz(72, "Vertical Partitioning မၢႆထိုင်သင်?", [
    "ၵၢၼ်ၸႅၵ်ႇ Table ၸွမ်း Column (1:1 Relationship)",
    "ၵၢၼ်ထႅမ် Row",
    "ၵၢၼ် Normalization",
    "ၵၢၼ် Backup",
  ], "What is Vertical Partitioning?"),
  Quiz(
    73,
    "တႃႇမၵ်းမၼ်ႈ 1:1 ... FK လူဝ်ႇမီး Constraint သင်?",
    ["UNIQUE", "NOT NULL ၵူၺ်း", "DEFAULT", "CHECK"],
    "What constraint is needed on a 1:1 Foreign Key?",
  ),
  Quiz(
    74,
    "ၵူၼ်း 1 ၵေႃႉ တင်း မၢႆၾၢင် (NRC) 1 ဢၼ် ပဵၼ်ပိူင်လႂ်?",
    [
      "One-to-One (1:1)",
      "One-to-Many (1:N)",
      "Many-to-Many (M:N)",
      "ဢမ်ႇၵွင်ႉၵၢႆႇၵၼ်",
    ],
    "Person and NRC ID represents which relationship?",
  ),
  Quiz(
    75,
    "ႁဵတ်းသင်လႄႈ ၸႅၵ်ႇ Password ဝႆႉထႅင်ႈ Table ၼိုင်ႈ (1:1)?",
    [
      "တႃႇလွင်ႈလွတ်ႈၽေး (Security)",
      "တႃႇႁႂ်ႈသိမ်းၶေႃႈမုၼ်းလႆႈၼမ်",
      "တႃႇႁႂ်ႈတႅမ်ႈ Code ငၢႆႈ",
      "တႃႇႁႂ်ႈ Font ဢွၵ်ႇမၢၼ်ႇ",
    ],
    "Why split passwords into a separate table (1:1)?",
  ),

  // --- Lesson 12: 1st Normal Form (1NF) ---
  Quiz(76, "Normalization ပဵၼ်သင်?", [
    "ၵၢၼ်ၸတ်းပိူင် Table ႁႂ်ႈယွမ်းလွင်ႈသိမ်းၶေႃႈမုၼ်းသွၼ်ႉၵၼ်",
    "ၵၢၼ် Install MySQL",
    "ၵၢၼ်တႅမ်ႈ Application",
    "ၵၢၼ်ပၼ်သုၼ်ႇ Internet",
  ], "What is Normalization?"),
  Quiz(77, "Atomicity ၼႂ်း 1NF မၢႆထိုင်သင်?", [
    "1 Cell (လုၵ်း) လူဝ်ႇမီး 1 Value (ၵႃႈၶၼ်) ၵူၺ်း",
    "ၵၢၼ်ၵွင်ႉ Table",
    "ၵၢၼ်ၼပ်ႉ ID ႁင်းတူဝ်",
    "ၸိုဝ်ႈ Table တေလႆႈယၢဝ်း",
  ], "What does Atomicity mean in 1NF?"),
  Quiz(
    78,
    "သင် Column 'Hobbies' သိမ်း 'Reading, Coding' ႁူမ်ႈၵၼ်... ပဵၼ်သင်?",
    [
      "ဢမ်ႇပဵၼ် 1NF (Multi-valued attribute)",
      "ပဵၼ် 1NF ယဝ်ႉ",
      "ပဵၼ် 2NF",
      "ပဵၼ် Primary Key",
    ],
    "Is a comma-separated list of hobbies 1NF compliant?",
  ),
  Quiz(79, "Repeating Groups မၢႆထိုင်သင်?", [
    "ၵၢၼ်ၸႂ်ႉ Column မိူၼ်ၵၼ် မိူၼ်ၼင်ႇ Phone1, Phone2",
    "ၵၢၼ်ၸႅၵ်ႇ Table",
    "ၵၢၼ်ၵွင်ႉ Foreign Key",
    "ၵၢၼ်တႅမ်ႈ SQL Script",
  ], "What are Repeating Groups?"),
  Quiz(80, "ပၵ်းၵၢၼ် 1NF ပႃးသင်လၢႆလၢႆ?", [
    "Atomic Values, Unique Column Names, လႄႈ PK",
    "Foreign Keys ၵူၺ်း",
    "Junction Table",
    "Unicode Character Set",
  ], "What are the requirements for 1NF?"),

  // --- Lesson 13: 2NF & 3NF ---
  Quiz(81, "တႃႇပဵၼ် 2NF လူဝ်ႇမီးသင်ဢွၼ်တၢင်း?", [
    "တေလႆႈပဵၼ် 1NF ယဝ်ႉတူဝ်ႈ",
    "တေလႆႈမီး Foreign Key ၼမ်",
    "တေလႆႈမီး 10 Tables",
    "တေလႆႈ Install Workbench",
  ], "What is the prerequisite for 2NF?"),
  Quiz(
    82,
    "Partial Dependency ပဵၼ်ပၼ်ႁႃ ၼႂ်းၸၼ်ႉလႂ်?",
    [
      "2nd Normal Form (2NF)",
      "1st Normal Form (1NF)",
      "3rd Normal Form (3NF)",
      "BNCF",
    ],
    "Partial Dependency is an issue in which stage?",
  ),
  Quiz(83, "Transitive Dependency မၢႆထိုင်သင်?", [
    "Column ၵွင်ႉၸူး Column ဢၼ်ဢမ်ႇၸႂ်ႈ PK",
    "Column ၵွင်ႉၸူး Primary Key တူဝ်လဵဝ်",
    "ၵၢၼ်ၵွင်ႉ Table ၶၢမ်ႈ Database",
    "ၵၢၼ် Delete Table",
  ], "What is Transitive Dependency?"),
  Quiz(84, "3rd Normal Form (3NF) ၵႄႈလိတ်ႈပၼ်ႁႃသင်?", [
    "Transitive Dependency",
    "Multi-valued Attributes",
    "Primary Key Missing",
    "Unicode Issues",
  ], "What problem does 3NF solve?"),
  Quiz(85, "Redundancy ပဵၼ်သင်?", [
    "ၵၢၼ်သိမ်းၶေႃႈမုၼ်းသွၼ်ႉၵၼ် ဢၼ်ဢမ်ႇလူဝ်ႇ",
    "လွင်ႈဝႆး Database",
    "လွင်ႈလွတ်ႈၽေး Security",
    "လၢႆးတႅမ်ႈ Diagram",
  ], "What is Data Redundancy?"),

  // --- Lesson 14: EER Modeling ---
  Quiz(86, "EER Diagram ၸႂ်ႉတႃႇသင်?", [
    "တႃႇတႅမ်ႈႁၢင်ႈပိူင်သၢင်ႈ Database ႁႂ်ႈႁၼ်ၸႅၼ်ႇလႅင်း",
    "တႃႇ Install Server",
    "တႃႇတႅမ်ႈ Code Flutter",
    "တႃႇသိမ်းလိၵ်ႈတႆး",
  ], "What is an EER Diagram used for?"),
  Quiz(
    87,
    "Crow's Foot Notation ၼႂ်း Diagram မၢႆထိုင်သင်?",
    [
      "လၢႆးတႅမ်ႈသဵၼ်ႈၵွင်ႉ (Many ၸႂ်ႉႁၢင်ႈတိၼ်ၵႃ)",
      "ၸိုဝ်ႈ Database",
      "မၢႆ Port",
      "လၢႆး Install ၶွမ်း",
    ],
    "What does Crow's Foot Notation represent?",
  ),
  Quiz(
    88,
    "ၼႂ်း Workbench ... ႁၢင်ႈ 3 ၶႃ (တိၼ်ၵႃ) ၼႄသင်?",
    ["Many (N) Relationship", "One (1) Relationship", "Primary Key", "Index"],
    "What does the 3-pronged symbol mean in Workbench?",
  ),
  Quiz(89, "Cardinality မၢႆထိုင်သင်?", [
    "ၼပ်ႉတၢင်းၼမ် ၼႂ်းၵၢၼ်ၵွင်ႉၵၢႆႇ (1:1, 1:N, M:N)",
    "လွင်ႈဝႆး Query",
    "မၢႆၼပ်ႉ Table",
    "ၸိုဝ်ႈ User",
  ], "What is Cardinality?"),
  Quiz(
    90,
    "Identifying Relationship မၢႆထိုင်သင်?",
    [
      "သဵၼ်ႈၵွင်ႉ ဢၼ် Child လူဝ်ႇ PK Parent တႃႇမၵ်းထိုင် Identity",
      "သဵၼ်ႈၵွင်ႉ ธรรมဒါ",
      "ၵၢၼ် Delete Table",
      "ၵၢၼ် Backup",
    ],
    "What is an Identifying Relationship?",
  ),

  // --- Lesson 15: Engineering ---
  Quiz(91, "Forward Engineering ပဵၼ်သင်?", [
    "ၵၢၼ်လႅၵ်ႈ Diagram ပဵၼ် Database တႄႉတႄႉ",
    "ၵၢၼ်လႅၵ်ႈ Database ပဵၼ် Diagram",
    "ၵၢၼ် Install MySQL",
    "ၵၢၼ် Update Windows",
  ], "What is Forward Engineering?"),
  Quiz(92, "Reverse Engineering ပဵၼ်သင်?", [
    "ၵၢၼ်ဢဝ် Database ဢၼ်မီးယူႇယဝ်ႉ မႃးထွၼ်ပဵၼ် Diagram",
    "ၵၢၼ်သၢင်ႈ Table မႂ်ႇၸွမ်းႁၢင်ႈ",
    "ၵၢၼ် Delete Database",
    "ၵၢၼ် Reset Password",
  ], "What is Reverse Engineering?"),
  Quiz(93, "SQL Script ပဵၼ်သင်?", [
    "သဵၼ်ႈမၢႆ Code SQL ဢၼ်ၸႂ်ႉသၢင်ႈ Database",
    "လိၵ်ႈတႆး Unicode",
    "ႁၢင်ႈ Diagram",
    "Software Workbench",
  ], "What is an SQL Script?"),
  Quiz(
    94,
    "ၽွၼ်းလီ Forward Engineering ပဵၼ်သင်?",
    [
      "သၢင်ႈ Table လႆႈဝႆး လႄႈ ဢမ်ႇၽိတ်း Syntax",
      "ႁဵတ်းႁႂ်ႈ DB ဝႆးလိူဝ်",
      "တႃႇသိမ်း Emoji",
      "တႃႇ Backup ၶေႃႈမုၼ်း",
    ],
    "What is an advantage of Forward Engineering?",
  ),
  Quiz(95, "Synchronization မၢႆထိုင်သင်?", [
    "ၵၢၼ်ႁဵတ်းႁႂ်ႈ Diagram လႄႈ DB တႄႉတႉ မိူၼ်ၵၼ်",
    "ၵၢၼ် Delete ၶေႃႈမုၼ်း",
    "ၵၢၼ်ၵွင်ႉ Internet",
    "ၵၢၼ်မႄး Spellings",
  ], "What is Database Synchronization?"),

  // --- Mix of Module 2 Key Concepts ---
  Quiz(
    96,
    "Entity Relationship (ER) မၢႆထိုင်သင်?",
    [
      "ၵၢၼ်ဝူၼ်ႉလွင်ႈၵွင်ႉၵၢႆႇၵၼ် ၼႂ်းၵႄႈ Entities",
      "ၵၢၼ် Install Server",
      "ၸိုဝ်ႈ User",
      "မၢႆ Port 3306",
    ],
    "What does Entity Relationship (ER) mean?",
  ),
  Quiz(
    97,
    "Non-Identifying Relationship ၼႄႁၢင်ႈသင် ၼႂ်း Workbench?",
    [
      "သဵၼ်ႈၶၢတ်ႇ (Dashed Line)",
      "သဵၼ်ႈၵိုတ်း (Solid Line)",
      "သဵၼ်ႈလႅင်",
      "ဢမ်ႇမီးသဵၼ်ႈ",
    ],
    "How is a Non-Identifying relationship shown in Workbench?",
  ),
  Quiz(98, "Composite Key မၢႆထိုင်သင်?", [
    "Primary Key ဢၼ်ဢဝ် Column လၢႆဢၼ်မႃးႁူမ်ႈၵၼ်",
    "ID ဢၼ်ၼပ်ႉႁင်းတူဝ်",
    "Foreign Key တူဝ်လဵဝ်",
    "Database Name",
  ], "What is a Composite Key?"),
  Quiz(99, "Data Integrity ပဵၼ်သင်?", [
    "လွင်ႈမၢၼ်ႇမႅၼ်ႈ လႄႈ မၼ်ႈၵိုမ်း ၶေႃႈမုၼ်း",
    "လွင်ႈသိမ်းလိၵ်ႈတႆး",
    "လွင်ႈလွတ်ႈၽေး Network",
    "လွင်ႈဝႆး Hardware",
  ], "What is Data Integrity?"),
  Quiz(
    100,
    "သဵၼ်ႈၵိုတ်း (Solid Line) ၼႂ်း EER မၢႆထိုင်သင်?",
    [
      "Identifying Relationship",
      "Non-Identifying Relationship",
      "Many-to-Many",
      "One-to-One",
    ],
    "What does a Solid Line represent in EER?",
  ),

  // (Adding more to reach 75 quizzes for this module)
  Quiz(
    101,
    "Attribute ဢၼ်ဢမ်ႇၸၢင်ႈပဝ်ႇ (Empty) လႆႈ ႁွင်ႉဝႃႈ?",
    ["NOT NULL", "NULL", "DEFAULT", "UNIQUE"],
    "What do you call an attribute that cannot be empty?",
  ),
  Quiz(
    102,
    "ၵႃႈၶၼ်ဢၼ် DB တေထႅမ်ပၼ်ႁင်းတူဝ် သင်ႁဝ်းဢမ်ႇသႂ်ႇ ႁွင်ႉဝႃႈ?",
    ["DEFAULT", "PRIMARY KEY", "FOREIGN KEY", "CHECK"],
    "What is a value filled by the DB if not provided?",
  ),
  Quiz(
    103,
    "Constraint ဢၼ်ၸႂ်ႉႁၢမ်ႈ ဢမ်ႇႁႂ်ႈၶေႃႈမုၼ်းသမ်ႉၵၼ် ႁွင်ႉဝႃႈ?",
    ["UNIQUE", "NOT NULL", "PRIMARY KEY", "INDEX"],
    "Which constraint prevents duplicate values?",
  ),
  Quiz(104, "ERD ယေႃႈမႃးတီႈသင်?", [
    "Entity Relationship Diagram",
    "Electronic Record Data",
    "Engine Relational Design",
    "Every Row Database",
  ], "What does ERD stand for?"),
  Quiz(
    105,
    "တူဝ်ယင်ႇ 1:N ၼႂ်း App Gallery ပဵၼ်သင်?",
    [
      "Category ၼိုင်ႈဢၼ် မီး App လၢႆဢၼ်",
      "App ၼိုင်ႈဢၼ် မီး User ၵေႃႉလဵဝ်",
      "Category ၼိုင်ႈဢၼ် မီး 1 App ၵူၺ်း",
      "User ၵူႈၵေႃႉ ၸႂ်ႉ Password မိူၼ်ၵၼ်",
    ],
    "Give an example of 1:N in an App Gallery.",
  ),
  Quiz(
    106,
    "သင်လူဝ်ႇသိမ်း Salary ဢၼ်လပ်ႉဝႆႉ ႁဝ်းထုၵ်ႇလီႁဵတ်းႁိုဝ်?",
    [
      "ၸႅၵ်ႇဝႆႉထႅင်ႈ Table ၼိုင်ႈ (1:1 Relationship)",
      "သႂ်ႇဝႆႉၼႂ်း Table Students",
      "တႅမ်ႈဝႆႉၼႂ်း Excel",
      "ဢမ်ႇလူဝ်ႇသိမ်း",
    ],
    "How should sensitive Salary data be stored?",
  ),
  Quiz(
    107,
    "Junction Table လူဝ်ႇမီး Primary Key ႁႃႉ?",
    [
      "လူဝ်ႇ (ၵႆႉပဵၼ် Composite PK ဢမ်ႇၼၼ် Auto-ID)",
      "ဢမ်ႇလူဝ်ႇ",
      "လူဝ်ႇၵူၺ်း Foreign Key",
      "လူဝ်ႇၵူၺ်း Name",
    ],
    "Does a Junction Table need a Primary Key?",
  ),
  Quiz(
    108,
    "normalization ၸၼ်ႉလႂ် ဢၼ် Developer ၵႆႉႁဵတ်းထိုင်?",
    ["3NF", "10NF", "1NF ၵူၺ်း", "ဢမ်ႇႁဵတ်းၵေႃႈလႆႈ"],
    "Which normalization level is standard for developers?",
  ),
  Quiz(
    109,
    "Forward Engineer မီးဝႆႉၼႂ်း Menu လႂ် ၼႂ်း Workbench?",
    ["Database Menu", "Edit Menu", "View Menu", "Help Menu"],
    "Where is Forward Engineer located in Workbench?",
  ),
  Quiz(
    110,
    "ၸၼ်ႉ Normalization ဢၼ်မၵ်းမၼ်ႈ 'No Partial Dependency'?",
    ["2NF", "1NF", "3NF", "BNCF"],
    "Which normalization level removes Partial Dependency?",
  ),
  Quiz(
    111,
    "ၸၼ်ႉ Normalization ဢၼ်မၵ်းမၼ်ႈ 'No Transitive Dependency'?",
    ["3NF", "2NF", "1NF", "4NF"],
    "Which normalization level removes Transitive Dependency?",
  ),
  Quiz(112, "Foreign Key ၸၢင်ႈပဵၼ် NULL လႆႈႁႃႉ?", [
    "လႆႈ (သင်မၼ်းဢမ်ႇၸႂ်ႈ Identifying Relationship)",
    "ဢမ်ႇလႆႈ တႃႇသေႇ",
    "လႆႈၵူၺ်းၼႂ်း Primary Key",
    "လႆႈၵူၺ်းၼႂ်း Table လူင်",
  ], "Can a Foreign Key be NULL?"),
  Quiz(113, "EER Modeler ၸွႆႈႁဝ်းႁၼ်သင်?", [
    "သဵၼ်ႈၵွင်ႉ (Relationships) ၼႂ်းၵႄႈ Tables",
    "Code Java",
    "သဵၼ်ႈတၢင်း Internet",
    "ႁၢင်ႈၵူၼ်းၸႂ်ႉ App",
  ], "What does the EER Modeler help visualize?"),
  Quiz(
    114,
    "မိူဝ်ႈႁဵတ်း Reverse Engineering ... ႁဝ်းလူဝ်ႇသင်?",
    [
      "Connection ၸူး Database Server",
      "ၾၢႆႇ Photoshop",
      "လိၵ်ႈတႆး Font ၵဝ်ႇ",
      "Internet ဢၼ်ၽႅဝ်း",
    ],
    "What is required for Reverse Engineering?",
  ),
  Quiz(
    115,
    "ၼႂ်း Workbench ... AI မၢႆထိုင်သင်?",
    [
      "Auto Increment",
      "Artificial Intelligence",
      "Access Index",
      "Attribute Identifier",
    ],
    "What does 'AI' mean in MySQL Workbench context?",
  ),
  Quiz(116, "ၼႂ်း Workbench ... NN မၢႆထိုင်သင်?", [
    "Not Null",
    "New Name",
    "Next Node",
    "Network Note",
  ], "What does 'NN' mean in Workbench?"),
  Quiz(117, "ၼႂ်း Workbench ... PK မၢႆထိုင်သင်?", [
    "Primary Key",
    "Public Key",
    "Private Key",
    "Product Key",
  ], "What does 'PK' mean in Workbench?"),
  Quiz(118, "သဵၼ်ႈၵွင်ႉ 1:N ၼႂ်း ERD မီးႁၢင်ႈသင်?", [
    "ၽၢႆႇၼိုင်ႈပဵၼ် 1 သေ ၽၢႆႇၼိုင်ႈပဵၼ် တိၼ်ၵႃ",
    "သဵၼ်ႈလႅင်သွင်ထႅဝ်",
    "ႁၢင်ႈတူဝ်ၼပ်ႉ 100",
    "ဢမ်ႇမီးသဵၼ်ႈ",
  ], "How is 1:N visualized in an ERD?"),
  Quiz(
    119,
    "သင် Database ယုင်ႈယၢင်ႈၼမ်လွၼ်ႉၵႂႃႇ ႁဝ်းထုၵ်ႇလီႁဵတ်းႁိုဝ်?",
    ["Normalization", "Delete Tables", "Change Password", "Install New MySQL"],
    "What should you do if a database becomes too complex?",
  ),
  Quiz(
    120,
    "ၵၢၼ်ဢဝ် 'City' ဢွၵ်ႇပဵၼ် Table မႂ်ႇ ၵွပ်ႈမၼ်းၵွင်ႉၸွမ်း 'Zip' ပဵၼ်ၵၢၼ်ႁဵတ်းသင်?",
    [
      "3NF Normalization",
      "1NF Normalization",
      "Forward Engineering",
      "Reverse Engineering",
    ],
    "Splitting 'City' due to 'Zip' dependency is which process?",
  ),
  Quiz(
    121,
    "Composite Key ၸၢင်ႈပႃး Column လၢႆဢၼ်?",
    ["2 ဢၼ် ၶိုၼ်ႈၼိူဝ်", "1 ဢၼ်ၵူၺ်း", "ဢမ်ႇပႃး Column လႆႈ", "ပႃးလႆႈၵူၺ်း ID"],
    "How many columns can a Composite Key have?",
  ),
  Quiz(
    122,
    "Referential Integrity Constraint ႁၢမ်ႈသင်?",
    [
      "ႁၢမ်ႈ INSERT FK ဢၼ်ဢမ်ႇမီးၼႂ်း Parent PK",
      "ႁၢမ်ႈတႅမ်ႈလိၵ်ႈတႆး",
      "ႁၢမ်ႈပိုတ်ႇ Workbench",
      "ႁၢမ်ႈ Delete Database",
    ],
    "What does a Referential Integrity Constraint prevent?",
  ),
  Quiz(
    123,
    "EER Diagram ၼႄလွင်ႈ Logical Design ႁႃႉ?",
    ["ၸႂ်ႉယဝ်ႉ", "ဢမ်ႇၸႂ်ႈ", "ၼႄၵူၺ်း Code", "ၼႄၵူၺ်း User"],
    "Does an EER Diagram represent Logical Design?",
  ),
  Quiz(
    124,
    "Script ဢၼ်လႆႈမႃးတီႈ Forward Engineering ၸႂ်ႉ SQL ၸုမ်းလႂ်ၼမ်?",
    [
      "DDL (CREATE, ALTER...)",
      "DML (INSERT, UPDATE...)",
      "DQL (SELECT...)",
      "DCL (GRANT...)",
    ],
    "Which SQL category is dominant in a Forward Engineering script?",
  ),
  Quiz(
    125,
    "တွၼ်ႈတႃႇသၢင်ႈ DB ႁႂ်ႈပဵၼ် Mobile App လီသုတ်း လူဝ်ႇဝူၼ်ႉသင်?",
    [
      "Data Modeling ႁႂ်ႈမၢၼ်ႇမႅၼ်ႈ လႄႈ ယွမ်း Redundancy",
      "ဝူၼ်ႉလွင်ႈ Password ၵူၺ်း",
      "ဝူၼ်ႉလွင်ႈ Font ၵူၺ်း",
      "ဢမ်ႇလူဝ်ႇဝူၼ်ႉသင်",
    ],
    "What is key to designing a DB for a Mobile App?",
  ),
];
List<Quiz> mysqlQuizM3 = [
  // --- Lesson 16: DDL Basics ---
  Quiz(126, "DDL ယေႃႈမႃးတီႈသင်?", [
    "Data Definition Language",
    "Data Detail Logic",
    "Database Design Level",
    "Direct Data Link",
  ], "What does DDL stand for?"),

  Quiz(
    127,
    "ၶေႃႈၵႂၢမ်းလႂ် ပဵၼ် DDL Command?",
    ["INSERT", "SELECT", "CREATE", "UPDATE"],
    "Which of the following is a DDL command?",
  ),

  Quiz(
    128,
    "သင်ၶႂ်ႈသၢင်ႈ Database မႂ်ႇ လူဝ်ႇၸႂ်ႉ Command သင်?",
    ["MAKE DATABASE", "CREATE DATABASE", "NEW DATABASE", "ADD DATABASE"],
    "Which command is used to create a new database?",
  ),

  Quiz(
    129,
    "Command လႂ် ၸႂ်ႉတႃႇယႃႉ Database တင်းမူတ်းပႅတ်ႈ?",
    ["DELETE DATABASE", "REMOVE DATABASE", "DROP DATABASE", "CLEAR DATABASE"],
    "Which command is used to delete an entire database?",
  ),

  Quiz(130, "IF NOT EXISTS ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇႁၢမ်ႈ Error သင်မီး Database ၼၼ်ႉဝႆႉယူႇယဝ်ႉ",
    "တႃႇသၢင်ႈ Database ဢၼ်ပဝ်ႇ",
    "တႃႇပၼ် Password",
    "တႃႇ Check Connection",
  ], "What is the purpose of IF NOT EXISTS?"),

  // --- Lesson 17: String Data Types ---
  Quiz(
    131,
    "Type လႂ် ဢၼ်ၸႂ်ႉတႃႇသိမ်း 'ၸိုဝ်ႈ' ဢၼ်မီးတၢင်းယၢဝ်းဢမ်ႇမိူၼ်ၵၼ်?",
    ["CHAR", "VARCHAR", "INT", "TEXT"],
    "Which type is best for names with varying lengths?",
  ),

  Quiz(
    132,
    "CHAR တင်း VARCHAR ပႅၵ်ႇၵၼ်တီႈလႂ်?",
    [
      "CHAR ပဵၼ် Fixed length သေ VARCHAR ပဵၼ် Variable length",
      "VARCHAR ဝႆးလိူဝ် CHAR",
      "CHAR သိမ်းလိၵ်ႈလႆႈၼမ်လိူဝ်",
      "ဢမ်ႇပႅၵ်ႇၵၼ်သင်",
    ],
    "What is the difference between CHAR and VARCHAR?",
  ),

  Quiz(
    133,
    "သင်လူဝ်ႇသိမ်း လိၵ်ႈဢၼ်ယၢဝ်းၼမ် (မိူၼ်ၼင်ႇ ပိုၼ်း) လူဝ်ႇၸႂ်ႉသင်?",
    ["VARCHAR(255)", "CHAR(255)", "TEXT", "SHORTINT"],
    "Which type should be used for long text like a biography?",
  ),

  Quiz(134, "VARCHAR(100) မၢႆထိုင်သင်?", [
    "သိမ်းလိၵ်ႈလႆႈၼမ်သုတ်း 100 တူဝ်",
    "သိမ်းလိၵ်ႈလႆႈ 100 bytes တႃႇသေႇ",
    "သိမ်းတူဝ်ၼပ်ႉ 100 ဢၼ်",
    "ပဵၼ်ၸိုဝ်ႈ Table",
  ], "What does VARCHAR(100) specify?"),

  Quiz(
    135,
    "Data Type လႂ် ဢၼ်ၸႂ်ႉ Disk Space ဢေႇလိူဝ် သင်သိမ်းလိၵ်ႈပွတ်း?",
    ["VARCHAR", "CHAR", "LONGTEXT", "BLOB"],
    "Which data type uses less disk space for short strings?",
  ),

  // --- Lesson 18: Numeric Data Types ---
  Quiz(
    136,
    "Type လႂ် မၢၼ်ႇမႅၼ်ႈသုတ်း တႃႇသိမ်း 'ငိုၼ်း' (Price/Money)?",
    ["FLOAT", "DOUBLE", "DECIMAL", "INT"],
    "Which type is best for storing monetary values?",
  ),

  Quiz(
    137,
    "TINYINT ၵႆႉၸႂ်ႉသိမ်းၶေႃႈမုၼ်းပိူင်လႂ်?",
    [
      "တူဝ်ၼပ်ႉဢၼ်လဵၵ်ႉ (မိူၼ်ၼင်ႇ ဢႃႇယု)",
      "ၵႃႈၶၼ်ငိုၼ်းလၢၼ်ႉ",
      "ၸိုဝ်ႈၵူၼ်း",
      "ဝၼ်းထီႉ",
    ],
    "What is TINYINT typically used for?",
  ),

  Quiz(138, "UNSIGNED မၢႆထိုင်သင်?", [
    "သိမ်းလႆႈၵူၺ်း တူဝ်ၼပ်ႉဢၼ်ပဵၼ် ပွတ်းၼိူဝ် (0 ၶိုၼ်ႈၼိူဝ်)",
    "သိမ်းလႆႈၵူၺ်း တူဝ်ၼပ်ႉၶိုတ်း (-)",
    "ဢမ်ႇမီး Primary Key",
    "မၵ်းထိုင် ၶေႃႈမုၼ်းပဝ်ႇ",
  ], "What does the UNSIGNED attribute mean?"),

  Quiz(139, "DECIMAL(10, 2) မၢႆထိုင်သင်?", [
    "တူဝ်ၼပ်ႉတင်းမူတ်း 10 တူဝ် ပႃးၽၢႆႇလင်ၸုၵ်ႉ 2 တူဝ်",
    "တူဝ်ၼပ်ႉ 10 ၸုၵ်ႉ 2",
    "သိမ်းလႆႈၵူၺ်း 10.2",
    "မၢႆထိုင် ဝၼ်းထီႉ",
  ], "What does DECIMAL(10, 2) represent?"),

  Quiz(
    140,
    "FLOAT လႄႈ DOUBLE ၸၢင်ႈမီးပၼ်ႁႃသင်?",
    [
      "Rounding Errors (ၶေႃႈမုၼ်းၶၢတ်ႇဢိတ်းဢွတ်း)",
      "သိမ်းတူဝ်ၼပ်ႉဢမ်ႇလႆႈ",
      "ဝႆးလိူဝ် INT",
      "ဢမ်ႇမီးပၼ်ႁႃသင်",
    ],
    "What issue can occur with FLOAT and DOUBLE types?",
  ),

  // --- Lesson 19 & 20: Temporal Data ---
  Quiz(
    141,
    "DATE Type သိမ်းၶေႃႈမုၼ်းၼႂ်း Format လႂ်?",
    ["YYYY-MM-DD", "DD-MM-YYYY", "MM-DD-YYYY", "YYYY/DD/MM"],
    "What is the standard format for DATE type?",
  ),

  Quiz(
    142,
    "TIMESTAMP တင်း DATETIME ပႅၵ်ႇၵၼ်တီႈလႂ်?",
    [
      "TIMESTAMP လႅၵ်ႈလၢႆႈၸွမ်း TimeZone",
      "DATETIME ဝႆးလိူဝ်",
      "TIMESTAMP သိမ်းလႆႈယၢဝ်းလိူဝ်",
      "ဢမ်ႇပႅၵ်ႇၵၼ်သင်",
    ],
    "What is a key difference between TIMESTAMP and DATETIME?",
  ),

  Quiz(
    143,
    "TIMESTAMP သိမ်းလႆႈထိုင် ပီႊလႂ်?",
    ["ပီႊ 2038", "ပီႊ 9999", "ပီႊ 2050", "ပီႊ 2100"],
    "What is the maximum year a TIMESTAMP can store?",
  ),

  Quiz(
    144,
    "YEAR Type ၸႂ်ႉ Disk Space ၵႃႈလၢႆ?",
    ["1 byte", "4 bytes", "8 bytes", "16 bytes"],
    "How much storage does the YEAR type use?",
  ),

  Quiz(
    145,
    "သင်လူဝ်ႇသိမ်း ၶၢဝ်းယၢမ်းတႄႇႁဵၼ်း (မိူၼ်ၼင်ႇ 09:00:00) လူဝ်ႇၸႂ်ႉသင်?",
    ["TIME", "DATE", "YEAR", "TIMESTAMP"],
    "Which type is best for storing a class start time?",
  ),

  // --- Lesson 21 & 22: Constraints & CHECK ---
  Quiz(
    146,
    "NOT NULL Constraint မၢႆထိုင်သင်?",
    [
      "ႁၢမ်ႈဝႆႉလုၵ်းပဝ်ႇ (Empty)",
      "ပၼ်သုၼ်ႇဝႆႉပဝ်ႇ",
      "ႁၢမ်ႈသွၼ်ႉၵၼ်",
      "မၵ်းမၼ်ႈၵႃႈၶၼ် Default",
    ],
    "What does the NOT NULL constraint mean?",
  ),

  Quiz(
    147,
    "UNIQUE Constraint ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "ႁၢမ်ႈၶေႃႈမုၼ်း 'သွၼ်ႉ' (Duplicate) ၵၼ်",
      "တႃႇပၼ် ID ႁင်းတူဝ်",
      "တႃႇၵွင်ႉ Table",
      "တႃႇၸႅတ်ႈတူဝ်ၼပ်ႉ",
    ],
    "What is the purpose of the UNIQUE constraint?",
  ),

  Quiz(
    148,
    "DEFAULT ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "ထႅမ်ၶေႃႈမုၼ်းပၼ်ႁင်းတူဝ် မိူဝ်ႈဢမ်ႇသႂ်ႇၵႃႈၶၼ်",
      "တႃႇယႃႉ Table",
      "တႃႇပၼ်သုၼ်ႇ Admin",
      "တႃႇ Check Error",
    ],
    "What is the purpose of the DEFAULT constraint?",
  ),

  Quiz(
    149,
    "CHECK Constraint တႄႇၸႂ်ႉလႆႈၼႂ်း MySQL Version လႂ်?",
    ["8.0.16 ၶိုၼ်းၼိူဝ်", "5.7", "5.6", "8.0.1"],
    "Since which MySQL version is CHECK constraint fully supported?",
  ),

  Quiz(
    150,
    "Constraint လႂ် ၸႂ်ႉမၵ်းမၼ်ႈဝႃႈ 'ဢႃႇယု တေလႆႈယႂ်ႇလိူဝ် 18'?",
    ["CHECK", "UNIQUE", "NOT NULL", "DEFAULT"],
    "Which constraint ensures 'age must be greater than 18'?",
  ),

  // --- Lesson 23: Primary Keys ---
  Quiz(
    151,
    "Primary Key (PK) လူဝ်ႇမီးၵုၼ်ႇလၵ်ႉသၼႃႇသင်?",
    [
      "NOT NULL လႄႈ UNIQUE",
      "ပဵၼ် NULL လႆႈ",
      "ပဵၼ်တူဝ်လိၵ်ႈၵူၺ်း",
      "မီးလႆႈလၢႆဢၼ်ၼႂ်း Table ၼိုင်ႈဢၼ်",
    ],
    "What characteristics must a Primary Key have?",
  ),

  Quiz(152, "Composite Primary Key မၢႆထိုင်သင်?", [
    "ဢဝ် Column လၢႆဢၼ်မႃးႁူမ်ႈၵၼ်ပဵၼ် PK",
    "PK ဢၼ်ပဵၼ် ID ႁင်းတူဝ်",
    "PK ဢၼ်ၵွင်ႉၸူး Table ၼွၵ်ႈ",
    "PK ဢၼ်မီးတူဝ်ၼပ်ႉလၢႆဢၼ်",
  ], "What is a Composite Primary Key?"),

  Quiz(
    153,
    "ၼႂ်း Table ၼိုင်ႈဢၼ် မီး Primary Key လႆႈၵႃႈလၢႆ?",
    ["1 ဢၼ်", "2 ဢၼ်", "မီးလႆႈဢမ်ႇမၵ်းမၼ်ႈ", "ဢမ်ႇလူဝ်ႇမီးၵေႃႈလႆႈ"],
    "How many Primary Keys can a table have?",
  ),

  Quiz(
    154,
    "AUTO_INCREMENT ၵႆႉၸႂ်ႉၸွမ်း Key ပိူင်လႂ်?",
    ["Primary Key", "Foreign Key", "Natural Key", "Composite Key"],
    "AUTO_INCREMENT is commonly used with which key?",
  ),

  Quiz(
    155,
    "ႁဵတ်းသင်လႄႈ ႁဝ်းဢမ်ႇထုၵ်ႇလီလႅၵ်ႈလၢႆႈၵႃႈၶၼ် Primary Key?",
    [
      "ၵွပ်ႈမၼ်းတေယႃႉၵၢၼ်ၵွင်ႉၵၢႆႇတင်း Table ၼွၵ်ႈ",
      "ၵွပ်ႈမၼ်းတေႁဵတ်းႁႂ်ႈ DB ဝႆးလိူဝ်",
      "ၵွပ်ႈမၼ်းပဵၼ် NULL ဢမ်ႇလႆႈ",
      "ဢမ်ႇမီးလွင်ႈတၢင်းသင်",
    ],
    "Why should Primary Key values remain stable?",
  ),

  // --- Lesson 24 & 25: Foreign Keys & Cascading ---
  Quiz(156, "Foreign Key (FK) ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇၵွင်ႉ Table ၼိုင်ႈ ၸူး PK ၶေႃႈထႅင်ႈ Table ၼိုင်ႈ",
    "တႃႇယႃႉ Table",
    "တႃႇပၼ် ID ႁင်းတူဝ်",
    "တႃႇသိမ်း Password",
  ], "What is a Foreign Key used for?"),

  Quiz(157, "Referential Integrity မၵ်းထိုင်သင်?", [
    "လွင်ႈမၢၼ်ႇမႅၼ်ႈ ၼႂ်းၵၢၼ်ၵွင်ႉ FK ၸူး PK",
    "လွင်ႈဝႆး Database",
    "လွင်ႈသၢင်ႈ Table",
    "လွင်ႈ Backup",
  ], "What is Referential Integrity?"),

  Quiz(158, "ON DELETE CASCADE မၢႆထိုင်သင်?", [
    "သင်ယႃႉ Parent... Child တေႁၢႆၸွမ်းၵၼ်",
    "သင်ယႃႉ Parent... Child တေပဵၼ် NULL",
    "ႁၢမ်ႈယႃႉ Parent",
    "ဢမ်ႇႁဵတ်းသင်",
  ], "What does ON DELETE CASCADE do?"),

  Quiz(159, "ON DELETE SET NULL ၸႂ်ႉမိူဝ်ႈလႂ်?", [
    "မိူဝ်ႈၶႂ်ႈႁႂ်ႈ Child ယင်းမီးယူႇ ၵူၺ်းၵႃႈ ဢမ်ႇမီး Parent ၵွင်ႉယဝ်ႉ",
    "မိူဝ်ႈၶႂ်ႈယႃႉ Child ပႅတ်ႈ",
    "မိူဝ်ႈၶႂ်ႈမႄး ID",
    "မိူဝ်ႈၶႂ်ႈ Reset ID",
  ], "When is ON DELETE SET NULL used?"),

  Quiz(
    160,
    "RESTRICT Option ႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?",
    [
      "ႁၢမ်ႈယႃႉ Parent သင်ယင်းမီး Child ၵွင်ႉဝႆႉယူႇ",
      "ယႃႉပႅတ်ႈတင်းမူတ်း",
      "ပၼ်ယႃႉလႆႈၵမ်းလဵဝ်",
      "ပိၼ်ႇပဵၼ် Default",
    ],
    "How does the RESTRICT option work?",
  ),

  // --- Lesson 26: ALTER TABLE ---
  Quiz(161, "ALTER TABLE ၸႂ်ႉတႃႇသင်?", [
    "တႃႇမႄးပိူင်သၢင်ႈ Table ဢၼ်မီးဝႆႉယဝ်ႉ",
    "တႃႇသၢင်ႈ Table မႂ်ႇ",
    "တႃႇယႃႉ Table",
    "တႃႇထႅမ် Row",
  ], "What is the purpose of ALTER TABLE?"),

  Quiz(
    162,
    "သင်လူဝ်ႇထႅမ် Column မႂ်ႇ ၼႂ်း Table ၵဝ်ႇ လူဝ်ႇၸႂ်ႉ Command သင်?",
    [
      "ALTER TABLE ... ADD",
      "ALTER TABLE ... CHANGE",
      "UPDATE TABLE",
      "CREATE COLUMN",
    ],
    "Which command adds a new column to an existing table?",
  ),

  Quiz(163, "MODIFY COLUMN ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "လႅၵ်ႈ Data Type ဢမ်ႇၼၼ် Constraint",
    "ယႃႉ Column",
    "ပိၼ်ႇၸိုဝ်ႈ Table",
    "သၢင်ႈ Table",
  ], "What is MODIFY COLUMN used for?"),

  Quiz(164, "RENAME COLUMN ၸွႆႈသင်?", [
    "ပိၼ်ႇၸိုဝ်ႈ Column",
    "ပိၼ်ႇၸိုဝ်ႈ Table",
    "လႅၵ်ႈ Data Type",
    "ယႃႉ Column",
  ], "What does RENAME COLUMN do?"),

  Quiz(165, "DROP COLUMN ၸွႆႈသင်?", [
    "ယႃႉ Column ၼိုင်ႈဢၼ်ပႅတ်ႈ",
    "ယႃႉ Table ပႅတ်ႈ",
    "လၢင်ႉၶေႃႈမုၼ်း",
    "ထႅမ် Column",
  ], "What does DROP COLUMN do?"),

  // --- Lesson 27: DROP vs TRUNCATE vs DELETE ---
  Quiz(
    166,
    "TRUNCATE တင်း DELETE ပႅၵ်ႇၵၼ်တီႈလႂ်?",
    [
      "TRUNCATE လၢင်ႉတင်း Table လႄႈ Reset ID",
      "DELETE ဝႆးလိူဝ်",
      "TRUNCATE ၸၢင်ႈၸႂ်ႉ WHERE Clause",
      "ဢမ်ႇပႅၵ်ႇၵၼ်သင်",
    ],
    "What is a difference between TRUNCATE and DELETE?",
  ),

  Quiz(167, "DROP TABLE ႁဵတ်းသင်?", [
    "ယႃႉပႅတ်ႈတင်း Structure လႄႈ Data",
    "လၢင်ႉၵူၺ်းၶေႃႈမုၼ်း",
    "မႄးၸိုဝ်ႈ Table",
    "Backup Table",
  ], "What does DROP TABLE do?"),

  Quiz(
    168,
    "Command လႂ် ဝႆးလိူဝ်ပိူၼ်ႈ တႃႇလၢင်ႉၶေႃႈမုၼ်း 1 လၢၼ်ႉထႅဝ်?",
    ["TRUNCATE", "DELETE", "DROP", "ALTER"],
    "Which command is fastest for clearing millions of rows?",
  ),

  Quiz(
    169,
    "DELETE Command ပဵၼ် SQL ၸုမ်းလႂ်?",
    ["DML", "DDL", "DQL", "DCL"],
    "Which SQL category does DELETE belong to?",
  ),

  Quiz(
    170,
    "သင်ၸႂ်ႉ TRUNCATE ယဝ်ႉ AUTO_INCREMENT တေပဵၼ်ႁိုဝ်?",
    ["ၶိုၼ်းတႄႇတီႈ 1 မႂ်ႇ", "သိုပ်ႇမၢႆၵဝ်ႇ", "ပဵၼ် NULL", "Error"],
    "What happens to AUTO_INCREMENT after a TRUNCATE?",
  ),

  // --- More Practice Questions (171-250) ---
  // (Continuing with mixed topics from Module 3 to reach 125 count)
  Quiz(
    171,
    "DDL Command လႂ် ၸႂ်ႉတႃႇမၵ်းမၼ်ႈ Database ဢၼ်တေၸႂ်ႉ?",
    ["USE", "CREATE", "ALTER", "DROP"],
    "Which command selects the database to use?",
  ),

  Quiz(
    172,
    "CHAR(10) သိမ်းလိၵ်ႈ 3 တူဝ်... မၼ်းတေၸႂ်ႉ Disk Space ၵႃႈလၢႆ?",
    ["10 bytes (ထႅမ် Space ပၼ်)", "3 bytes", "13 bytes", "0 bytes"],
    "How much space does CHAR(10) use for a 3-letter word?",
  ),

  Quiz(
    173,
    "VARCHAR(10) သိမ်းလိၵ်ႈ 3 တူဝ်... မၼ်းတေၸႂ်ႉ Disk Space ၵႃႈလၢႆ?",
    ["3 bytes (+ 1 byte overhead)", "10 bytes", "1 byte", "11 bytes"],
    "How much space does VARCHAR(10) use for a 3-letter word?",
  ),

  Quiz(
    174,
    "LONGTEXT သိမ်းလိၵ်ႈလႆႈၼမ်သုတ်းၵႃႈလၢႆ?",
    ["4GB", "64KB", "16MB", "1GB"],
    "What is the maximum size of LONGTEXT?",
  ),

  Quiz(175, "BIT Data Type ၸႂ်ႉသိမ်းသင်?", [
    "Bit values (0 လႄႈ 1)",
    "လိၵ်ႈယၢဝ်း",
    "ဝၼ်းထီႉ",
    "ငိုၼ်း",
  ], "What does the BIT data type store?"),

  Quiz(
    176,
    "INT UNSIGNED သိမ်းတူဝ်ၼပ်ႉလႆႈယႂ်ႇလိူဝ် INT သႅၼ်ႇသိုၵ်း (Signed) ၵႃႈလၢႆ?",
    ["2 ပုၼ်ႈ", "10 ပုၼ်ႈ", "မိူၼ်ၵၼ်", "4 ပုၼ်ႈ"],
    "How much larger is the positive range of UNSIGNED INT vs SIGNED?",
  ),

  Quiz(
    177,
    "MEDIUMINT သိမ်းတူဝ်ၼပ်ႉလႆႈထိုင်ၵႃႈလၢႆ?",
    [
      "8 လၢၼ်ႉ (Signed) / 16 လၢၼ်ႉ (Unsigned)",
      "127",
      "2 ပီႇလီႇယႅၼ်ႇ",
      "32,767",
    ],
    "What is the range of MEDIUMINT?",
  ),

  Quiz(
    178,
    "သင်သိမ်းငိုၼ်းလူၺ်ႈ FLOAT... ၸၢင်ႈမီးပၼ်ႁႃသင် မိူဝ်ႈၼပ်ႉသွၼ်ႇ?",
    [
      "ၵႃႈငိုၼ်းမၢင်ၸိူဝ်း တေလူတ်းႁၢႆ ဢမ်ႇၼၼ် ထႅမ်မႃးဢိတ်းၼိုင်ႈ",
      "ငိုၼ်းတေပဵၼ် NULL",
      "Error ၵမ်းလဵဝ်",
      "ဢမ်ႇမီးသင်",
    ],
    "What problem can occur when calculating money stored as FLOAT?",
  ),

  Quiz(
    179,
    "YEAR(4) တင်း YEAR(2) ၼႂ်း MySQL မႂ်ႇ... ပဵၼ်ႁိုဝ်?",
    [
      "MySQL မႂ်ႇ ၸႂ်ႉ YEAR(4) ၵူၺ်းယဝ်ႉ",
      "မိူၼ်ၵၼ်",
      "YEAR(2) ဝႆးလိူဝ်",
      "YEAR(4) ၸႃႉလိူဝ်",
    ],
    "In recent MySQL, how is YEAR(2) handled?",
  ),

  Quiz(
    180,
    "DATETIME ၸႂ်ႉ Disk Space ၵႃႈလၢႆ (MySQL 5.6.4+)?",
    ["5 bytes (+ fractional seconds)", "8 bytes", "4 bytes", "2 bytes"],
    "How much space does DATETIME use in newer MySQL?",
  ),

  Quiz(181, "TIMESTAMP ၸႂ်ႉ Disk Space ၵႃႈလၢႆ?", [
    "4 bytes",
    "8 bytes",
    "5 bytes",
    "1 byte",
  ], "How much space does TIMESTAMP use?"),

  Quiz(
    182,
    "Current Time တႅတ်ႈတေႃးသုတ်း ၼႂ်း MySQL ႁွင်ႉဝႃႈသင်?",
    ["CURRENT_TIMESTAMP", "NOW()", "SYSDATE()", "တင်းမူတ်းထုၵ်ႇၵူႈၶေႃႈ"],
    "What functions provide the current date and time?",
  ),

  Quiz(
    183,
    "PRIMARY KEY ၼိုင်ႈဢၼ် ပႃး Column လႆႈၵႃႈလၢႆ?",
    [
      "လၢႆ Column ၵေႃႈလႆႈ (Composite)",
      "1 Column ၵူၺ်း",
      "2 Columns ၵူၺ်း",
      "ဢမ်ႇပႃးသေ Column",
    ],
    "How many columns can be part of a single Primary Key?",
  ),

  Quiz(
    184,
    "UNIQUE Key ၼိုင်ႈဢၼ် ပဵၼ် NULL လႆႈႁႃႉ?",
    [
      "လႆႈ (သင်ဢမ်ႇတင်ႈ NOT NULL)",
      "ဢမ်ႇလႆႈ တႃႇသေႇ",
      "လႆႈၵူၺ်း 1 ဢၼ်",
      "လႆႈၵူၺ်း ၼႂ်း Table လဵၵ်ႉ",
    ],
    "Can a UNIQUE key contain NULL values?",
  ),

  Quiz(
    185,
    "Foreign Key Constraint ၸွႆႈႁၢမ်ႈသင်?",
    [
      "Orphan Records (ၶေႃႈမုၼ်းဢၼ်ဢမ်ႇမီး Parent)",
      "Duplicate Records",
      "Null Records",
      "Long Strings",
    ],
    "What does a Foreign Key constraint prevent?",
  ),

  Quiz(
    186,
    "CASCADE မၢႆထိုင်သင် ၼႂ်းၽႃႇသႃႇဢင်းၵိတ်း?",
    [
      "ၼမ်ႉတူၵ်းတႃတ်ႇ ဢၼ်လႆလူင်းၸၼ်ႉၸၼ်ႉ",
      "ၵၢၼ်ပိၵ်ႉ",
      "ၵၢၼ်သၢင်ႈ",
      "ၵၢၼ်လႅၵ်ႈ",
    ],
    "What does the word 'Cascade' literally imply?",
  ),

  Quiz(187, "SHOW CREATE TABLE students; ၸွႆႈသင်?", [
    "တူၺ်း Code SQL ဢၼ်ၸႂ်ႉသၢင်ႈ Table ၼၼ်ႉ",
    "တူၺ်းၶေႃႈမုၼ်းၼႂ်း Table",
    "ယႃႉ Table",
    "မႄး Table",
  ], "What does SHOW CREATE TABLE do?"),

  Quiz(
    188,
    "DESCRIBE students; မိူၼ်တင်း Command လႂ်?",
    [
      "EXPLAIN students;",
      "SHOW students;",
      "SELECT students;",
      "DROP students;",
    ],
    "Which command is equivalent to DESCRIBE?",
  ),

  Quiz(
    189,
    "PRIMARY KEY ၼိုင်ႈဢၼ် ပဵၼ် Foreign Key တႃႇ Table ၼွၵ်ႈလႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်းၼႂ်း 1:1", "လႆႈၵူၺ်းၼႂ်း M:N"],
    "Can a Primary Key also be a Foreign Key?",
  ),

  Quiz(
    190,
    "INDEX ၼႂ်း Database ၸွႆႈသင်?",
    [
      "ၸွႆႈႁႂ်ႈသွၵ်ႈႁႃ (Search) ၶေႃႈမုၼ်းဝႆးလိူဝ်",
      "ၸွႆႈႁႂ်ႈသိမ်းၶေႃႈမုၼ်းလႆႈၼမ်",
      "ၸွႆႈႁၢမ်ႈ Error",
      "ၸွႆႈပၼ် Password",
    ],
    "What is the purpose of an INDEX in a database?",
  ),

  Quiz(
    191,
    "CHARACTER SET utf8mb4 ၸွႆႈသင်?",
    [
      "ၸွႆႈႁႂ်ႈသိမ်းလိၵ်ႈလႆႈၵူႈၽႃႇသႃႇ (ပႃးတင်းလိၵ်ႈတႆး လႄႈ Emoji)",
      "ၸွႆႈႁႂ်ႈ DB ဝႆးလိူဝ်",
      "ၸွႆႈယႃႉ Error",
      "ၸွႆႈပၼ် Security",
    ],
    "What is the benefit of utf8mb4 character set?",
  ),

  Quiz(192, "COLLATE utf8mb4_unicode_ci မၢႆထိုင်သင်?", [
    "လၢႆးတူၺ်း လႄႈ လၢႆးၸႅၵ်ႇ (Sort/Compare) လိၵ်ႈ",
    "လၢႆးသိမ်းလိၵ်ႈ",
    "လၢႆး Delete",
    "လၢႆး Update",
  ], "What does COLLATE specify?"),

  Quiz(
    193,
    "AUTO_INCREMENT တႄႇၼပ်ႉတီႈ 100 လႆႈႁႃႉ?",
    [
      "လႆႈ (ၸႂ်ႉ ALTER TABLE)",
      "ဢမ်ႇလႆႈ (တိုၼ်းတႄႇတီႈ 1)",
      "လႆႈၵူၺ်း ၼႂ်း Table မႂ်ႇ",
      "လႆႈၵူၺ်း ၼႂ်း Table လူင်",
    ],
    "Can AUTO_INCREMENT start from 100?",
  ),

  Quiz(
    194,
    "Schema တင်း Database ၼႂ်း MySQL ပႅၵ်ႇၵၼ်ႁိုဝ်?",
    [
      "မိူၼ်ၵၼ် (Synonyms)",
      "Schema ယႂ်ႇလိူဝ်",
      "Database ယႂ်ႇလိူဝ်",
      "ဢမ်ႇၵွင်ႉၵၢႆႇၵၼ်",
    ],
    "Are Schema and Database different in MySQL?",
  ),

  Quiz(195, "Metadata ပဵၼ်သင်?", [
    "ၶေႃႈမုၼ်း ဢၼ်လၢတ်ႈၼႄလွင်ႈ ၶေႃႈမုၼ်း (Data about data)",
    "ၶေႃႈမုၼ်းယႃႉ",
    "ၶေႃႈမုၼ်းၵဝ်ႇ",
    "ၶေႃႈမုၼ်းလပ်ႉ",
  ], "What is Metadata?"),

  Quiz(196, "Information Schema ပဵၼ်သင်?", [
    "Database ဢၼ်သိမ်း Metadata ၶေႃႈမုၼ်း DB တင်းမူတ်း",
    "Table တွၼ်ႈတႃႇ Admin",
    "Website MySQL",
    "Error Log",
  ], "What is the Information Schema?"),

  Quiz(
    197,
    "RENAME TABLE students TO learners; ၸွႆႈသင်?",
    ["ပိၼ်ႇၸိုဝ်ႈ Table", "ယႃႉ Table", "သၢင်ႈ Table", "မႄး Column"],
    "What does RENAME TABLE do?",
  ),

  Quiz(
    198,
    "Storage Engine လႂ် ဢၼ် MySQL ၸႂ်ႉပဵၼ် Default (Version 5.5+)?",
    ["InnoDB", "MyISAM", "Memory", "CSV"],
    "What is the default storage engine in modern MySQL?",
  ),

  Quiz(
    199,
    "Engine InnoDB ၵျလိူဝ် MyISAM တီႈလႂ်?",
    [
      "ထႅမ်ပႃး Foreign Keys လႄႈ Transactions",
      "ဝႆးလိူဝ်",
      "သိမ်းၶေႃႈမုၼ်းလႆႈၼမ်လိူဝ်",
      "ဢမ်ႇမီးသင်",
    ],
    "Why is InnoDB better than MyISAM?",
  ),

  Quiz(200, "TRUNCATE ပဵၼ် DDL ၵွပ်ႈသင်?", [
    "ၵွပ်ႈမၼ်းယႃႉ Table သေ သၢင်ႈမႂ်ႇ (Drop and Recreate)",
    "ၵွပ်ႈမၼ်းဝႆး",
    "ၵွပ်ႈမၼ်းယႃႉ Row",
    "ၵွပ်ႈမၼ်းပဵၼ် SQL",
  ], "Why is TRUNCATE considered a DDL command?"),

  Quiz(201, "BLOB Data Type ၸႂ်ႉသိမ်းသင်?", [
    "Binary Large Objects (မိူၼ်ၼင်ႇ ႁၢင်ႈ၊ ၾၢႆႇ)",
    "လိၵ်ႈပွတ်း",
    "တူဝ်ၼပ်ႉ",
    "ဝၼ်းထီႉ",
  ], "What does the BLOB data type store?"),

  Quiz(
    202,
    "JSON Data Type မီးၼႂ်း MySQL တႄႇ Version လႂ်?",
    ["5.7.8 ၶိုၼ်းၼိူဝ်", "5.5", "5.1", "8.0.1"],
    "Since which version does MySQL support the JSON data type?",
  ),

  Quiz(203, "ENUM Data Type ၸွႆႈသင်?", [
    "မၵ်းမၼ်ႈသဵၼ်ႈမၢႆလိၵ်ႈ ဢၼ်ပၼ်လိူၵ်ႈၵူၺ်း (မိူၼ်ၼင်ႇ S, M, L)",
    "သိမ်းတူဝ်ၼပ်ႉ",
    "သိမ်းဝၼ်းထီႉ",
    "သိမ်းႁၢင်ႈ",
  ], "What is the ENUM data type used for?"),

  Quiz(204, "SET Data Type ပႅၵ်ႇတင်း ENUM တီႈလႂ်?", [
    "SET လိူၵ်ႈလႆႈလၢႆၵႃႈၶၼ် (Multiple values)",
    "ENUM လိူၵ်ႈလႆႈလၢႆၵႃႈၶၼ်",
    "မိူၼ်ၵၼ်",
    "ENUM ဝႆးလိူဝ်",
  ], "How does SET differ from ENUM?"),

  Quiz(205, "ZEROFILL ၸွႆႈသင်?", [
    "ထႅမ်သုၼ် (0) ၽၢႆႇၼႃႈ ႁႂ်ႈတဵမ်တၢင်းယၢဝ်း Column",
    "ယႃႉသုၼ်ပႅတ်ႈ",
    "ႁၢမ်ႈသႂ်ႇသုၼ်",
    "Reset ID",
  ], "What does the ZEROFILL attribute do?"),

  Quiz(206, "ON UPDATE CASCADE ၸွႆႈသင်?", [
    "သင်မႄး PK ၼႂ်း Parent... FK ၼႂ်း Child တေမႄးၸွမ်း",
    "သင်မႄး PK... Child တေႁၢႆ",
    "ႁၢမ်ႈမႄး PK",
    "ဢမ်ႇႁဵတ်းသင်",
  ], "What does ON UPDATE CASCADE do?"),

  Quiz(
    115,
    "ၼႂ်း Workbench ... AI မၢႆထိုင်သင်?",
    [
      "Auto Increment",
      "Artificial Intelligence",
      "Access Index",
      "Attribute Identifier",
    ],
    "What does 'AI' mean in MySQL Workbench context?",
  ),

  Quiz(
    207,
    "BINARY Data Type ပႅၵ်ႇတင်း CHAR ၸိူင်ႉႁိုဝ်?",
    [
      "သိမ်း Binary strings (bytes) တႅၼ်းလိၵ်ႈ (characters)",
      "ဝႆးလိူဝ်",
      "ယႂ်ႇလိူဝ်",
      "မိူၼ်ၵၼ်",
    ],
    "How does BINARY differ from CHAR?",
  ),

  Quiz(
    208,
    "VARBINARY တင်း VARCHAR ပႅၵ်ႇၵၼ်ၸိူင်ႉႁိုဝ်?",
    [
      "VARBINARY သိမ်း Variable-length binary strings",
      "VARCHAR ဝႆးလိူဝ်",
      "မိူၼ်ၵၼ်",
      "VARBINARY ဢမ်ႇသိမ်းလိၵ်ႈလႆႈ",
    ],
    "How does VARBINARY differ from VARCHAR?",
  ),

  Quiz(
    209,
    "COMMENT 'text' ၼႂ်း CREATE TABLE ၸွႆႈသင်?",
    [
      "တႅမ်ႈမၢႆတွင်း (Note) လၢတ်ႈၼႄလွင်ႈ Column/Table",
      "ပဵၼ် Code ႁဵတ်းၵၢၼ်",
      "ပဵၼ် Password",
      "ယႃႉ Error",
    ],
    "What is the purpose of COMMENT in a table definition?",
  ),

  Quiz(
    210,
    "STRICT_TRANS_TABLES မၢႆထိုင်သင်?",
    [
      "ပိူင် (Mode) ဢၼ်ၸႅတ်ႈၶေႃႈမုၼ်း ႁႂ်ႈတႅတ်ႈတေႃး (Strict Mode)",
      "လၢႆး Delete",
      "လၢႆး Update",
      "လၢႆး Backup",
    ],
    "What does STRICT_TRANS_TABLES refer to?",
  ),

  Quiz(
    211,
    "တူဝ်ၼပ်ႉ 123.45 သိမ်းၼႂ်း DECIMAL(5, 2) လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ (တူဝ်ၼပ်ႉၼမ်လွၼ်ႉ)", "လႆႈၵူၺ်း 123", "လႆႈၵူၺ်း 45"],
    "Can 123.45 be stored in DECIMAL(5, 2)?",
  ),

  Quiz(
    212,
    "တူဝ်ၼပ်ႉ 1234.5 သိမ်းၼႂ်း DECIMAL(5, 2) လႆႈႁႃႉ?",
    [
      "ဢမ်ႇလႆႈ (လူဝ်ႇ DECIMAL(6, 2) ၸင်ႇတေလႆႈ)",
      "လႆႈ",
      "လႆႈၵူၺ်း 1234",
      "Error ၵမ်းလဵဝ်",
    ],
    "Can 1234.5 be stored in DECIMAL(5, 2)?",
  ),

  Quiz(
    213,
    "Data Type လႂ် ဢၼ်သိမ်းလႆႈၵူၺ်း 'M' ဢမ်ႇၼၼ် 'F' ႁႂ်ႈယွမ်း Disk Space သုတ်း?",
    ["ENUM('M', 'F')", "VARCHAR(1)", "CHAR(1)", "TINYINT"],
    "Which data type is most storage-efficient for 'M' or 'F' values?",
  ),

  Quiz(
    214,
    "Primary Key ပဵၼ် AUTO_INCREMENT... ႁဝ်း INSERT ၵႃႈၶၼ်သႂ်ႇႁင်းၵူၺ်းလႆႈႁႃႉ?",
    [
      "လႆႈ",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်း ၼႂ်း ID ဢၼ်ဢမ်ႇပႆႇမီး",
      "လႆႈၵူၺ်း ၼႂ်း Table လူင်",
    ],
    "Can you manually insert a value into an AUTO_INCREMENT column?",
  ),

  Quiz(
    215,
    "SERIAL Data Type ၼႂ်း MySQL ပဵၼ်သင်?",
    [
      "BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE",
      "VARCHAR",
      "DATE",
      "INT",
    ],
    "What does the SERIAL data type represent in MySQL?",
  ),

  Quiz(
    216,
    "CHECK Constraint ၸၢင်ႈၸႂ်ႉ Function 'NOW()' လႆႈႁႃႉ?",
    [
      "ဢမ်ႇလႆႈ (တေလႆႈပဵၼ် Constant/Literal values)",
      "လႆႈ",
      "လႆႈၵူၺ်းၼႂ်း 8.0.20",
      "လႆႈၵူၺ်းၼႂ်း 5.7",
    ],
    "Can NOW() be used within a CHECK constraint?",
  ),

  Quiz(
    217,
    "Foreign Key ၼိုင်ႈဢၼ် ၵွင်ႉၸူး Primary Key ၼႂ်း Table တူဝ်မၼ်းၵူၺ်း (Self-referencing) လႆႈႁႃႉ?",
    [
      "လႆႈ (မိူၼ်ၼင်ႇ Manager_ID ၵွင်ႉၸူး Employee_ID)",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်း ၼႂ်း 1:1",
      "လႆႈၵူၺ်း ၼႂ်း M:N",
    ],
    "Can a table have a Foreign Key referencing its own Primary Key?",
  ),

  Quiz(
    218,
    "Index ၸၢင်ႈႁဵတ်းႁႂ်ႈ INSERT/UPDATE ၸႃႉလိူဝ်ၵဝ်ႇႁႃႉ?",
    [
      "ၸႂ်ႈ (ၵွပ်ႈ DB လူဝ်ႇမႄး Index ၸွမ်း)",
      "ဢမ်ႇၸႂ်ႈ (ဝႆးလိူဝ်တႃႇသေႇ)",
      "မိူၼ်ၵဝ်ႇ",
      "ဢမ်ႇၵွင်ႉၵၢႆႇၵၼ်",
    ],
    "Does an index slow down INSERT and UPDATE operations?",
  ),

  Quiz(
    219,
    "Command လႂ် ၸွႆႈတူၺ်းဝႃႈ MySQL Version လႂ် ဢၼ်ႁဝ်းၸႂ်ႉယူႇ?",
    ["SELECT VERSION();", "SHOW VERSION;", "CHECK VERSION;", "GET VERSION;"],
    "Which command displays the current MySQL version?",
  ),

  Quiz(
    220,
    "AUTO_INCREMENT ၸၢင်ႈပဵၼ် BIGINT လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်း INT", "လႆႈၵူၺ်း TINYINT"],
    "Can an AUTO_INCREMENT column be a BIGINT?",
  ),

  Quiz(
    221,
    "VARCHAR(255) တင်း VARCHAR(256) ပႅၵ်ႇၵၼ်ၸိူင်ႉႁိုဝ် ၼႂ်း Storage?",
    [
      "256 ၸႂ်ႉ 2 bytes တႃႇမၢႆတၢင်းယၢဝ်း (Overhead)",
      "255 ဝႆးလိူဝ်",
      "မိူၼ်ၵၼ်",
      "256 သိမ်းလိၵ်ႈဢမ်ႇလႆႈ",
    ],
    "How does VARCHAR(255) storage differ from VARCHAR(256)?",
  ),

  Quiz(
    222,
    "တႃႇသၢင်ႈ Table ဢၼ်မိူၼ်တင်း Table ၵဝ်ႇ (Structure Only)...?",
    [
      "CREATE TABLE new_table LIKE old_table;",
      "CREATE TABLE new_table AS old_table;",
      "COPY TABLE old_table;",
      "CLONE TABLE old_table;",
    ],
    "How to create a table with the same structure as another?",
  ),

  Quiz(
    223,
    "တႃႇသၢင်ႈ Table မႂ်ႇ ပႃးတင်း ၶေႃႈမုၼ်း လုၵ်ႉတီႈ Table ၵဝ်ႇ...?",
    [
      "CREATE TABLE new_table AS SELECT * FROM old_table;",
      "CREATE TABLE new_table LIKE old_table;",
      "INSERT INTO new_table SELECT * FROM old_table;",
      "ဢမ်ႇမီး Command ၼၼ်ႉ",
    ],
    "How to create a table and populate it with data from another?",
  ),

  Quiz(
    224,
    "ALTER TABLE students AUTO_INCREMENT = 1000; ၸွႆႈသင်?",
    [
      "မၵ်းမၼ်ႈႁႂ်ႈ ID တႄႇၼပ်ႉတီႈ 1000",
      "မၵ်းမၼ်ႈႁႂ်ႈမီး 1000 ထႅဝ်",
      "ယႃႉ ID 1000",
      "Update ID တင်းမူတ်း",
    ],
    "What does 'ALTER TABLE ... AUTO_INCREMENT = 1000' do?",
  ),

  Quiz(
    225,
    "TRUNCATE တင်း DROP TABLE ... ဢၼ်လႂ် ဢဝ် Structure ဝႆႉ?",
    ["TRUNCATE", "DROP", "တင်းသွင်ဢၼ်", "ဢမ်ႇမီးသေဢၼ်"],
    "Which one keeps the table structure: TRUNCATE or DROP?",
  ),

  Quiz(
    226,
    "Command လႂ် ၸွႆႈတူၺ်း Table တင်းမူတ်း ၼႂ်း Database?",
    ["SHOW TABLES;", "LIST TABLES;", "GET TABLES;", "SELECT TABLES;"],
    "Which command lists all tables in the current database?",
  ),

  Quiz(
    227,
    "Default Character Set ၼႂ်း MySQL 8.0 ပဵၼ်သင်?",
    ["utf8mb4", "latin1", "utf8", "ascii"],
    "What is the default character set in MySQL 8.0?",
  ),

  Quiz(
    228,
    "Constraint လႂ် ဢၼ်ၸႂ်ႉၸႅတ်ႈဝႃႈ 'Email လူဝ်ႇမီး @'?",
    ["CHECK (email LIKE '%@%')", "UNIQUE", "NOT NULL", "DEFAULT"],
    "Which constraint can check if an email contains '@'?",
  ),

  Quiz(
    229,
    "FLOAT(5, 3) သိမ်း 12.34567 တေပဵၼ်ႁိုဝ်?",
    ["ပဵၼ် 12.346 (Round up)", "Error", "ပဵၼ် 12.345", "ပဵၼ် 12"],
    "What happens if you store 12.34567 in FLOAT(5, 3)?",
  ),

  Quiz(
    230,
    "သင်လူဝ်ႇသိမ်း ႁၢင်ႈ (Image) ၼႂ်း Database တႄႉတႄႉ... လူဝ်ႇၸႂ်ႉသင်?",
    ["LONGBLOB", "LONGTEXT", "VARCHAR(MAX)", "DECIMAL"],
    "Which type is suitable for storing large image files?",
  ),

  Quiz(
    231,
    "Foreign Key ၸၢင်ႈမီးလၢႆဢၼ် ၼႂ်း Table ၼိုင်ႈဢၼ်ႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်း 1 ဢၼ်", "လႆႈၵူၺ်း ၼႂ်း Junction Table"],
    "Can a table have multiple Foreign Keys?",
  ),

  Quiz(232, "Primary Key ၸၢင်ႈပဵၼ် VARCHAR လႆႈႁႃႉ?", [
    "လႆႈ",
    "ဢမ်ႇလႆႈ",
    "လႆႈၵူၺ်း ၼႂ်း 1NF",
    "လႆႈၵူၺ်း ၼႂ်း SQL ၵဝ်ႇ",
  ], "Can a Primary Key be a VARCHAR?"),

  Quiz(
    233,
    "ALTER TABLE students DROP PRIMARY KEY; ႁဵတ်းသင်?",
    [
      "ယႃႉပၵ်းၵၢၼ် PK ပႅတ်ႈ (ၵူၺ်းၵႃႈ Column ယင်းမီးယူႇ)",
      "ယႃႉ Column ID ပႅတ်ႈ",
      "ယႃႉ Table ပႅတ်ႈ",
      "Update PK",
    ],
    "What does 'ALTER TABLE ... DROP PRIMARY KEY' do?",
  ),

  Quiz(
    234,
    "DDL Command လႂ် ၸွႆႈပၼ်သုၼ်ႇ User (Granting permissions)?",
    [
      "GRANT (ပဵၼ် DCL ၵူၺ်းၵႃႈ ၵႆႉဝူၼ်ႉႁူမ်ႈ DDL)",
      "ALTER",
      "CREATE",
      "SELECT",
    ],
    "Which command gives permissions to a user?",
  ),

  Quiz(235, "CREATE TEMPORARY TABLE ... ၸွႆႈသင်?", [
    "သၢင်ႈ Table ၸူဝ်ႈၶၢဝ်း ဢၼ်တေႁၢႆၵႂႃႇ မိူဝ်ႈပိၵ်ႉ Session",
    "သၢင်ႈ Table ဝႆး",
    "သၢင်ႈ Table လပ်ႉ",
    "သၢင်ႈ Table ဢၼ်ယႃႉဢမ်ႇလႆႈ",
  ], "What is a TEMPORARY table?"),

  Quiz(
    236,
    "INDEX တင်း UNIQUE INDEX ပႅၵ်ႇၵၼ်ၸိူင်ႉႁိုဝ်?",
    [
      "UNIQUE INDEX ႁၢမ်ႈၶေႃႈမုၼ်းသွၼ်ႉၵၼ်",
      "INDEX ဝႆးလိူဝ်",
      "မိူၼ်ၵၼ်",
      "UNIQUE INDEX ၸႃႉလိူဝ်",
    ],
    "Difference between INDEX and UNIQUE INDEX?",
  ),

  Quiz(237, "FULLTEXT INDEX ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇသွၵ်ႈႁႃလိၵ်ႈၼႂ်း TEXT Column ႁႂ်ႈဝႆးလိူဝ် (Full-text search)",
    "တႃႇသိမ်းႁၢင်ႈ",
    "တႃႇသိမ်း ID",
    "တႃႇၵွင်ႉ Table",
  ], "What is a FULLTEXT index used for?"),

  Quiz(
    238,
    "MySQL 8.0 ၸၢင်ႈ 'Hide' Index လႆႈႁႃႉ (Invisible Index)?",
    [
      "လႆႈ (တႃႇၸၢမ်းတူၺ်း Performance ဢွၼ်တၢင်းတေ Delete)",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်း ၼႂ်း InnoDB",
      "လႆႈၵူၺ်း ၼႂ်း Cloud",
    ],
    "What is an Invisible Index in MySQL 8.0?",
  ),

  Quiz(
    239,
    "PRIMARY KEY ၸၢင်ႈပဵၼ် Invisible လႆႁႃႉ?",
    ["ဢမ်ႇလႆႈ", "လႆႈ", "လႆႈၵူၺ်းၼႂ်း 8.0.23", "လႆႈၵူၺ်းၼႂ်း DB လဵၵ်ႉ"],
    "Can a Primary Key be an Invisible Index?",
  ),

  Quiz(
    240,
    "Command လႂ် ၸွႆႈတူၺ်း Database တင်းမူတ်း?",
    [
      "SHOW DATABASES;",
      "LIST DATABASES;",
      "GET DATABASES;",
      "SELECT DATABASES;",
    ],
    "Which command lists all databases?",
  ),

  Quiz(
    241,
    "CREATE DATABASE `my-db`; ႁဵတ်းသင်လႄႈ လူဝ်ႇၸႂ်ႉ Backticks (`)?",
    [
      "ၵွပ်ႈမီး တူဝ်တတ်း (-) ၼႂ်းၸိုဝ်ႈ",
      "ၵွပ်ႈပဵၼ် MySQL",
      "ၵွပ်ႈမၼ်းႁၢင်ႈလီ",
      "ဢမ်ႇလူဝ်ႇၸႂ်ႉၵေႃႈလႆႈ",
    ],
    "Why use backticks in 'CREATE DATABASE `my-db`'?",
  ),

  Quiz(
    242,
    "Constraint လႂ် ၸွႆႈမၵ်းမၼ်ႈဝႃႈ 'ၵႃႈၶၼ်တေလႆႈပဵၼ် 1, 2, ဢမ်ႇၼၼ် 3 ၵူၺ်း'?",
    ["CHECK (col IN (1, 2, 3))", "UNIQUE", "DEFAULT", "NOT NULL"],
    "Which constraint limits values to 1, 2, or 3?",
  ),

  Quiz(
    243,
    "ALTER TABLE students MODIFY id INT AUTO_INCREMENT; သင် ID မီးယူႇယဝ်ႉ 10...?",
    [
      "မၼ်းတေတႄႇၼပ်ႉ 11 တႃႇ Row မႂ်ႇ",
      "မၼ်းတေ Reset ပဵၼ် 1",
      "Error",
      "ဢမ်ႇမီးသင်လႅၵ်ႈလၢႆႈ",
    ],
    "What happens if you MODIFY a column to AUTO_INCREMENT when data exists?",
  ),

  Quiz(
    244,
    "Primary Key တင်း Unique Key ... ဢၼ်လႂ်ပဵၼ် Foreign Key တႃႇ Table ၼွၵ်ႈလႆႈ?",
    ["တင်းသွင်ဢၼ်", "PK ၵူၺ်း", "UK ၵူၺ်း", "ဢမ်ႇမီးသေဢၼ်"],
    "Can both Primary Key and Unique Key be referenced by a Foreign Key?",
  ),

  Quiz(245, "SET SQL_SAFE_UPDATES = 1; ၸွႆႈသင်?", [
    "ႁၢမ်ႈ UPDATE/DELETE သင်ဢမ်ႇမီး WHERE Clause ၸွမ်း PK/Key",
    "ပၼ် Update လႆႈၵူႈတီႈ",
    "ယႃႉ DB ပႅတ်ႈ",
    "Backup DB",
  ], "What does SQL_SAFE_UPDATES do?"),

  Quiz(
    246,
    "DROP DATABASE သင်တႅမ်ႈၸိုဝ်ႈၽိတ်း တေပဵၼ်ႁိုဝ်?",
    [
      "Error (Unknown database)",
      "ဢမ်ႇပဵၼ်သင်",
      "ယႃႉ DB ဢၼ်မီးယူႇ",
      "သၢင်ႈ DB မႂ်ႇ",
    ],
    "What happens if you DROP a non-existent database?",
  ),

  Quiz(
    247,
    "DROP DATABASE IF EXISTS my_db; ၸွႆႈသင်?",
    [
      "ယႃႉသင်မီးယူႇ... သင်ဢမ်ႇမီးၵေႃႈ ဢမ်ႇပၼ် Error",
      "ယႃႉတႃႇသေႇ",
      "သၢင်ႈ DB",
      "Check Connection",
    ],
    "Benefit of 'DROP DATABASE IF EXISTS'?",
  ),

  Quiz(
    248,
    "VARCHAR(65535) ပဵၼ် တၢင်းယၢဝ်းၼမ်သုတ်း ၼႂ်း 1 Row ႁႃႉ?",
    ["ၸႂ်ႈ (မၼ်းပဵၼ် Row Size Limit)", "ဢမ်ႇၸႂ်ႈ", "64KB", "16MB"],
    "Is VARCHAR(65535) the maximum row size limit?",
  ),

  Quiz(
    249,
    "Storage Engine လႂ် ၸႂ်ႉသိမ်းၶေႃႈမုၼ်းၼႂ်း RAM ၵူၺ်း (ဝႆးလိူဝ်ပိူၼ်ႈ)?",
    ["MEMORY", "InnoDB", "MyISAM", "ARCHIVE"],
    "Which storage engine stores data only in RAM?",
  ),

  Quiz(
    250,
    "ယဝ်ႉယဝ်ႉၶႃႈ Module 3! SQL ၸုမ်းလႂ် ဢၼ်ႁဝ်းတေလဵပ်ႈႁဵၼ်း သိုပ်ႇၵႂႃႇ?",
    ["DML (INSERT, UPDATE, DELETE)", "DDL ထႅင်ႈ", "DCL", "TCL"],
    "Which SQL category is next after DDL?",
  ),
];
List<Quiz> mysqlQuizM4 = [
  // --- Lesson 28: INSERT & INSERT IGNORE (251-262) ---
  Quiz(251, "DML ယေႃႈမႃးတီႈသင်?", [
    "Data Manipulation Language",
    "Data Maintenance Logic",
    "Database Management Link",
    "Direct Model Language",
  ], "What does DML stand for?"),
  Quiz(
    252,
    "ၶေႃႈၵႂၢမ်းလႂ် ပဵၼ် DML Command?",
    ["INSERT", "CREATE", "DROP", "ALTER"],
    "Which of the following is a DML command?",
  ),
  Quiz(253, "INSERT INTO ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇသႂ်ႇၶေႃႈမုၼ်းမႂ်ႇၶဝ်ႈၼႂ်း Table",
    "တႃႇသၢင်ႈ Table မႂ်ႇ",
    "တႃႇမႄးပိူင်သၢင်ႈ Table",
    "တႃႇယႃႉ Table",
  ], "What is the purpose of INSERT INTO?"),
  Quiz(
    254,
    "လၢႆးတႅမ်ႈ INSERT ဢၼ် Professional သုတ်း?",
    [
      "တေလႆႈမၵ်းမၼ်ႈၸိုဝ်ႈ Column",
      "တႅမ်ႈၸိုဝ်ႈ Table ၵူၺ်း",
      "သႂ်ႇၵူၺ်း Value",
      "ဢမ်ႇလူဝ်ႇသႂ်ႇသင်",
    ],
    "What is the professional way to write an INSERT statement?",
  ),
  Quiz(255, "INSERT IGNORE ၸွႆႈသင်?", [
    "ၶၢမ်ႈ Error မိူဝ်ႈမီး Key သွၼ်ႉၵၼ်",
    "ယႃႉၶေႃႈမုၼ်းၵဝ်ႇ",
    "မႄးၶေႃႈမုၼ်း",
    "ပိတ်း Database",
  ], "What does INSERT IGNORE do?"),
  Quiz(256, "Multi-row INSERT မၢႆထိုင်သင်?", [
    "ၵၢၼ်သႂ်ႇလၢႆထႅဝ် ၼႂ်း Command ပွၵ်ႈလဵဝ်",
    "ၵၢၼ်သႂ်ႇၼႂ်းလၢႆ Table",
    "ၵၢၼ်သၢင်ႈလၢႆ Table",
    "ၵၢၼ် Update ၶေႃႈမုၼ်း",
  ], "What is a multi-row INSERT?"),
  Quiz(
    257,
    "INSERT INTO ... SELECT ၸႂ်ႉမိူဝ်ႈလႂ်?",
    [
      "ဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉ Table ၼိုင်ႈ ၵႂႃႇသႂ်ႇထႅင်ႈ Table ၼိုင်ႈ",
      "တႃႇသၢင်ႈ Table",
      "တႃႇယႃႉ Row",
      "တႃႇမႄး Column",
    ],
    "When is INSERT INTO ... SELECT used?",
  ),
  Quiz(
    258,
    "သင်သႂ်ႇ Value ဢမ်ႇတူဝ်ႇတင်း Column ၼႂ်း INSERT?",
    [
      "မၼ်းတေပဵၼ် Error",
      "မၼ်းတေသႂ်ႇ NULL ပၼ်",
      "မၼ်းတေၶၢမ်ႈၵႂႃႇ",
      "မၼ်းတေယႃႉ Table",
    ],
    "What happens if values don't match columns in INSERT?",
  ),
  Quiz(
    259,
    "VALUE တင်း VALUES ၼႂ်း MySQL ပႅၵ်ႇၵၼ်ႁႃႉ?",
    [
      "မိူၼ်ၵၼ် (Synonyms)",
      "VALUE ဝႆးလိူဝ်",
      "VALUES ၸႂ်ႉတွၼ်ႈတႃႇ Single row ၵူၺ်း",
      "ဢမ်ႇမိူၼ်ၵၼ်",
    ],
    "Are VALUE and VALUES different in MySQL?",
  ),
  Quiz(260, "Bulk Insert ၸွႆႈသင်?", [
    "ၸွႆႈႁႂ်ႈသႂ်ႇၶေႃႈမုၼ်းၼမ်ၼမ် လႆႈဝႆးလိူဝ်ၵဝ်ႇ",
    "ၸွႆႈယႃႉ Table",
    "ၸွႆႈပၼ် Password",
    "ၸွႆႈႁဵတ်း Backup",
  ], "What is the benefit of Bulk Insert?"),
  Quiz(
    261,
    "Default Value တေဢွၵ်ႇမႃးမိူဝ်ႈလႂ် ၼႂ်း INSERT?",
    [
      "မိူဝ်ႈႁဝ်းဢမ်ႇသူင်ႇၵႃႈၶၼ် Column ၼၼ်ႉၵႂႃႇ",
      "မိူဝ်ႈႁဝ်းသူင်ႇ NULL ၵႂႃႇ",
      "မိူဝ်ႈမီး Error",
      "မိူဝ်ႈ Table တဵမ်",
    ],
    "When does a default value appear during INSERT?",
  ),
  Quiz(
    262,
    "INSERT ၸၢင်ႈသႂ်ႇ Expression (မိူၼ်ၼင်ႇ 5+5) လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်းၼႂ်း ID", "လႆႈၵူၺ်းၼႂ်း VARCHAR"],
    "Can you use expressions in an INSERT statement?",
  ),

  // --- Lesson 29: UPDATE & DELETE (263-275) ---
  Quiz(
    263,
    "UPDATE Command ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇမႄးၶေႃႈမုၼ်း ဢၼ်မီးဝႆႉယူႇယဝ်ႉ",
      "တႃႇသၢင်ႈ Table",
      "တႃႇယႃႉ Row",
      "တႃႇလႅၵ်ႈ Data Type",
    ],
    "What is the purpose of the UPDATE command?",
  ),
  Quiz(
    264,
    "SET Keyword ၼႂ်း UPDATE ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "မၵ်းမၼ်ႈ Column လႄႈ Value ဢၼ်တေမႄး",
      "လိူၵ်ႈ Table",
      "မၵ်းမၼ်ႈ Condition",
      "ယႃႉၶေႃႈမုၼ်း",
    ],
    "What is the SET keyword used for in UPDATE?",
  ),
  Quiz(
    265,
    "သင် UPDATE ဢမ်ႇမီး WHERE...?",
    [
      "ၶေႃႈမုၼ်းတေလႅၵ်ႈပဵၼ်ဢၼ်လဵဝ်ၵၼ် တင်းမူတ်း",
      "မၼ်းတေ Error",
      "မၼ်းတေဢမ်ႇမႄးသင်",
      "မၼ်းတေသၢင်ႈ Table မႂ်ႇ",
    ],
    "What happens if UPDATE has no WHERE clause?",
  ),
  Quiz(266, "DELETE FROM students; ႁဵတ်းသင်?", [
    "ယႃႉၶေႃႈမုၼ်းပႅတ်ႈတင်း Table",
    "ယႃႉ Table Structure",
    "မႄးၶေႃႈမုၼ်း",
    "ဢမ်ႇႁဵတ်းသင်",
  ], "What does DELETE FROM students; do?"),
  Quiz(267, "Safe Updates Mode ၸွႆႈသင်?", [
    "ႁၢမ်ႈ UPDATE/DELETE သင်ဢမ်ႇၸႂ်ႉ Primary Key ၼႂ်း WHERE",
    "ၸွႆႈဝႆး",
    "ၸွႆႈ Backup",
    "ၸွႆႈ Search",
  ], "What is the role of Safe Updates Mode?"),
  Quiz(
    268,
    "Soft Delete ၵႆႉၸႂ်ႉ Column ပိူင်လႂ်?",
    ["BOOLEAN ဢမ်ႇၼၼ် TINYINT (is_deleted)", "VARCHAR", "DATE", "PRIMARY KEY"],
    "Which column type is common for Soft Delete?",
  ),
  Quiz(
    269,
    "UPDATE ၸၢင်ႈမႄးလၢႆလၢႆ Column ႁူမ်ႈၵၼ်လႆႈႁႃႉ?",
    [
      "လႆႈ (ၸႂ်ႉၶိူင်ႈမၢႆ Comma ',')",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်း 2 Column",
      "လႆႈၵူၺ်းၼႂ်း ID",
    ],
    "Can UPDATE modify multiple columns at once?",
  ),
  Quiz(
    270,
    "TRUNCATE တင်း DELETE FROM (ဢမ်ႇမီး WHERE) ပႅၵ်ႇၵၼ်တီႈလႂ်?",
    [
      "TRUNCATE ပဵၼ် DDL သေ Reset Auto-ID",
      "DELETE ဝႆးလိူဝ်",
      "TRUNCATE ၸၢင်ႈ Rollback",
      "ဢမ်ႇပႅၵ်ႇၵၼ်သင်",
    ],
    "Difference between TRUNCATE and DELETE without WHERE?",
  ),
  Quiz(
    271,
    "သင် UPDATE ... SET age = age + 1 ... တေပဵၼ်သင်?",
    [
      "ထႅမ်ဢႃႇယု 1 ပီႊ တႃႇၵူႈၵေႃႉ",
      "ဢႃႇယုတေပဵၼ် 1",
      "Error",
      "ဢႃႇယုတေပဵၼ် NULL",
    ],
    "What does SET age = age + 1 do?",
  ),
  Quiz(272, "DELETE ၸၢင်ႈၸႂ်ႉ LIMIT လႆႈႁႃႉ?", [
    "လႆႈ (တႃႇယႃႉၵူၺ်းၸွမ်းတၢင်းၼမ် ဢၼ်လိူၵ်ႈဝႆႉ)",
    "ဢမ်ႇလႆႈ",
    "လႆႈၵူၺ်းၼႂ်း SELECT",
    "လႆႈၵူၺ်းၼႂ်း UPDATE",
  ], "Can DELETE use a LIMIT clause?"),
  Quiz(
    273,
    "ပၵ်းၵၢၼ် DML ဢၼ်လႂ် ဢၼ်လူဝ်ႇလႆႈမီး WHERE တႃႇသေႇ?",
    ["UPDATE လႄႈ DELETE", "INSERT", "CREATE", "DESCRIBE"],
    "Which DML commands should always have a WHERE clause?",
  ),
  Quiz(
    274,
    "သင် DELETE ၺႃး Row ဢၼ်ပိူၼ်ႈၵွင်ႉ FK ဝႆႉ (RESTRICT)...?",
    [
      "မၼ်းတေ Error လႄႈ ဢမ်ႇပၼ်ယႃႉ",
      "မၼ်းတေယႃႉပႃး Parent",
      "မၼ်းတေပဵၼ် NULL",
      "မၼ်းတေယႃႉလႆႈၵမ်းလဵဝ်",
    ],
    "What if DELETE hits a RESTRICT foreign key?",
  ),
  Quiz(275, "လၢႆးမႄးၶေႃႈမုၼ်း ဢၼ်လွတ်ႈၽေးသုတ်း?", [
    "SELECT တူၺ်းဢွၼ်တၢင်းတေ UPDATE/DELETE",
    "တႅမ်ႈ Code ဝႆးဝႆး",
    "ဢမ်ႇလူဝ်ႇသႂ်ႇ WHERE",
    "ယႃႉ Table သၢင်ႈမႂ်ႇ",
  ], "Safest way to modify data?"),

  // --- Lesson 30: SELECT Clause (276-288) ---
  Quiz(276, "SELECT Clause ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "မၵ်းမၼ်ႈ Column ဢၼ်တေဢဝ်ဢွၵ်ႇမႃးၼႄ",
    "လိူၵ်ႈ Table",
    "မၵ်းမၼ်ႈ Condition",
    "ၸတ်းလႅၼ်ႇ",
  ], "What is the SELECT clause used for?"),
  Quiz(277, "SELECT * မၢႆထိုင်သင်?", [
    "ဢဝ်ၵူႈ Column ၼႂ်း Table",
    "ဢဝ်ၵူႈ Table",
    "ယႃႉၶေႃႈမုၼ်း",
    "မႄးၶေႃႈမုၼ်း",
  ], "What does SELECT * mean?"),
  Quiz(
    278,
    "Alias (AS) ၼႂ်း SELECT ၸွႆႈသင်?",
    [
      "ပၼ်ၸိုဝ်ႈမႂ်ႇ (Temporary) တႃႇ Column",
      "လႅၵ်ႈ Data Type",
      "သၢင်ႈ PK",
      "ပၼ် Password",
    ],
    "What is the use of Alias (AS) in SELECT?",
  ),
  Quiz(
    279,
    "SELECT 5 + 5; တေဢွၵ်ႇၽွၼ်းလႆႈၵႃႈလၢႆ?",
    ["10", "55", "5 + 5", "Error"],
    "What is the result of SELECT 5 + 5;?",
  ),
  Quiz(
    280,
    "Literal Value ၼႂ်း SELECT မၢႆထိုင်သင်?",
    [
      "ၵႃႈၶၼ်တႅတ်ႈတေႃး (String/Number) ဢၼ်ဢမ်ႇလုၵ်ႉတီႈ Column",
      "ၸိုဝ်ႈ Table",
      "မၢႆ ID",
      "Function",
    ],
    "What is a Literal value in SELECT?",
  ),
  Quiz(281, "SELECT DISTINCT ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "ယႃႉၶေႃႈမုၼ်းဢၼ်သွၼ်ႉၵၼ် ၼႂ်း Output",
    "သၢင်ႈ Table",
    "ယႃႉ Table",
    "မႄး Column",
  ], "What is SELECT DISTINCT used for?"),
  Quiz(
    282,
    "သင် SELECT name, 'Shan' AS group... 'Shan' တေဢွၵ်ႇမႃးၵႃႈလၢႆထႅဝ်?",
    [
      "ဢွၵ်ႇၸွမ်းၵူႈထႅဝ် ၼႂ်း Result set",
      "ဢွၵ်ႇၵူၺ်းထႅဝ် 1",
      "ဢမ်ႇဢွၵ်ႇ",
      "ဢွၵ်ႇၵူၺ်း 10 ထႅဝ်",
    ],
    "In 'SELECT name, 'Shan' AS group', how often does 'Shan' appear?",
  ),
  Quiz(
    283,
    "Alias ၸၢင်ႈမီး Space (မိူၼ်ၼင်ႇ 'Full Name') လႆႈႁႃႉ?",
    [
      "လႆႈ (သင်ၸႂ်ႉ Quotes '...')",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်းၼႂ်း ID",
      "လႆႈၵူၺ်းၼႂ်း TEXT",
    ],
    "Can an Alias have spaces?",
  ),
  Quiz(284, "SELECT NOW(); ၼႄသင်?", [
    "ဝၼ်းထီႉ လႄႈ ၶၢဝ်းယၢမ်း ဝိၼႃတီႇၼႆႉ",
    "ၸိုဝ်ႈ User",
    "Version Database",
    "ၸိုဝ်ႈ Table",
  ], "What does SELECT NOW(); show?"),
  Quiz(
    285,
    "ႁဵတ်းသင်လႄႈ ႁဝ်းဢမ်ႇထုၵ်ႇလီၸႂ်ႉ SELECT * ၼႂ်း App တႄႉ?",
    [
      "ၵွပ်ႈမၼ်းသူင်ႇ Data ၼမ်လူၼ်ႉ သေႁဵတ်းႁႂ်ႈ App ၸႃႉ",
      "မၼ်းတေ Error",
      "မၼ်းတေယႃႉ DB",
      "မၼ်းတေမီး Error Logic",
    ],
    "Why avoid SELECT * in production apps?",
  ),
  Quiz(
    286,
    "SELECT ၸၢင်ႈၼပ်ႉသွၼ်ႇ Math Expression လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်း 1 ဢၼ်", "လႆႈၵူၺ်း +, -"],
    "Can SELECT perform math expressions?",
  ),
  Quiz(
    287,
    "AS Keyword ၸၢင်ႈၶၢမ်ႈ (Skip) ပႅတ်ႈလႆႈႁႃႉ?",
    [
      "လႆႈ (တႅမ်ႈၸိုဝ်ႈ Alias ဝႆႉၽၢႆႇလင်ၵမ်းလဵဝ်)",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်းၼႂ်း Table",
      "လႆႈၵူၺ်းၼႂ်း SELECT",
    ],
    "Can you omit the AS keyword?",
  ),
  Quiz(
    288,
    "တၢင်းၼမ် Column ၼႂ်း SELECT မၵ်းမၼ်ႈသင်?",
    [
      "တၢင်းၼမ် Column ဢၼ်တေဢွၵ်ႇၼႄ (Vertical Structure)",
      "တၢင်းၼမ်ထႅဝ်",
      "တၢင်းၼမ် Table",
      "တၢင်းၼမ် User",
    ],
    "What does the number of columns in SELECT determine?",
  ),

  // --- Lesson 31: Basic Filtering (289-301) ---
  Quiz(
    289,
    "WHERE Clause ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "လိူၵ်ႈ (Filter) ၶေႃႈမုၼ်း ၸွမ်းၼင်ႇသႅၼ်ႇသိုၵ်း",
      "ၸတ်းလႅၼ်ႇ",
      "သႂ်ႇၶေႃႈမုၼ်း",
      "ယႃႉ Table",
    ],
    "What is the purpose of the WHERE clause?",
  ),
  Quiz(290, "Comparison Operator '!=' မၢႆထိုင်သင်?", [
    "ဢမ်ႇတူဝ်ႇၵၼ် (Not Equal)",
    "တူဝ်ႇၵၼ်",
    "ယႂ်ႇလိူဝ်",
    "ယွမ်းလိူဝ်",
  ], "What does '!=' mean?"),
  Quiz(291, "Logical Operator 'AND' တေပဵၼ် True မိူဝ်ႈလႂ်?", [
    "မိူဝ်ႈတင်းသွင်ၽၢႆႇ မၢၼ်ႇမႅၼ်ႈတင်းသွင်",
    "မိူဝ်ႈၽၢႆႇလႂ်ၽၢႆႇၼိုင်ႈ မၢၼ်ႇမႅၼ်ႈ",
    "မိူဝ်ႈပဵၼ် NULL",
    "မိူဝ်ႈဢမ်ႇမီးၶေႃႈမုၼ်း",
  ], "When is AND true?"),
  Quiz(292, "Logical Operator 'OR' တေပဵၼ် True မိူဝ်ႈလႂ်?", [
    "မိူဝ်ႈမီးၽၢႆႇလႂ်ၽၢႆႇၼိုင်ႈ မၢၼ်ႇမႅၼ်ႈ",
    "မိူဝ်ႈတေလႆႈမၢၼ်ႇမႅၼ်ႈတင်းသွင်",
    "မိူဝ်ႈပဵၼ် NULL",
    "ဢမ်ႇမီး True",
  ], "When is OR true?"),
  Quiz(
    293,
    "Operator '<>' မိူၼ်တင်း Operator လႂ်?",
    ["!=", "==", ">=", "<="],
    "Which operator is equivalent to '<>'?",
  ),
  Quiz(294, "Logical Operator 'NOT' ၸွႆႈသင်?", [
    "ပိၼ်ႇၵႃႈၶၼ် (True ਪဵၼ် False)",
    "တွၵ်ႇလိၵ်ႈ",
    "ၼပ်ႉသွၼ်ႇ",
    "ယႃႉၶေႃႈမုၼ်း",
  ], "What does the NOT operator do?"),
  Quiz(
    295,
    "ဝူတ်း '()' ၼႂ်း WHERE ၸွႆႈသင်?",
    [
      "မၵ်းမၼ်ႈဝႃႈ ႁႂ်ႈၼပ်ႉသွၼ်ႇ Logic တွၼ်ႈလႂ်ဢွၼ်တၢင်း",
      "ပၼ်ၸိုဝ်ႈ",
      "လႅၵ်ႈ Type",
      "ႁၢမ်ႈ Error",
    ],
    "What is the purpose of parentheses in WHERE?",
  ),
  Quiz(
    296,
    "WHERE age >= 18 AND age <= 25 ႁႃသင်?",
    [
      "ႁႃၵူၼ်းဢႃႇယု 18 ထိုင် 25",
      "ႁႃၵူၼ်းဢႃႇယု 18 ၵူၺ်း",
      "ႁႃၵူၼ်းဢႃႇယု 25 ၵူၺ်း",
      "ႁႃၵူၼ်းဢႃႇယု 0-18",
    ],
    "What does WHERE age >= 18 AND age <= 25 search for?",
  ),
  Quiz(
    297,
    "WHERE price > 100 OR category = 'A' ႁႃသင်?",
    [
      "ၵုၼ်ႇဢၼ်ၵႃႈၶၼ် > 100 ဢမ်ႇၼၼ် ပဵၼ် Category A",
      "ၵုၼ်ႇ Category A ဢၼ်ၵႃႈၶၼ် > 100 ၵူၺ်း",
      "ၵုၼ်ႇၵူႈပိူင်",
      "ဢမ်ႇမီးသင်",
    ],
    "What does WHERE price > 100 OR category = 'A' search for?",
  ),
  Quiz(
    298,
    "MySQL String Comparison ၸႅၵ်ႇ Case (A vs a) ႁႃႉ?",
    [
      "ၵမ်ႈၼမ် ဢမ်ႇၸႅၵ်ႇ (Case-insensitive)",
      "ၸႅၵ်ႇတႃႇသေႇ",
      "ၸႅၵ်ႇၵူၺ်းၼႂ်း ID",
      "ၸႅၵ်ႇၵူၺ်းၼႂ်း TEXT",
    ],
    "Is MySQL string comparison case-sensitive by default?",
  ),
  Quiz(
    299,
    "WHERE NOT city = 'Muse' ႁႃသင်?",
    [
      "ႁႃၵူၼ်းဢၼ်ဢမ်ႇယူႇ 'Muse'",
      "ႁႃၵူၼ်းယူႇ 'Muse'",
      "ႁႃၵူၼ်းၵူႈၵေႃႉ",
      "Error",
    ],
    "What does WHERE NOT city = 'Muse' search for?",
  ),
  Quiz(
    300,
    "သင် WHERE မီး AND လႄႈ OR ႁူမ်ႈၵၼ်... ဢၼ်လႂ်ႁဵတ်းၵၢၼ်ဢွၼ်တၢင်း?",
    ["AND (Precedence ယႂ်ႇလိူဝ်)", "OR", "ႁဵတ်းၸွမ်းၵၼ်", "ဢမ်ႇမီးပၵ်းၵၢၼ်"],
    "Which has higher precedence: AND or OR?",
  ),
  Quiz(
    301,
    "Arithmetic Operator ၸၢင်ႈၸႂ်ႉၼႂ်း WHERE လႆႈႁႃႉ?",
    [
      "လႆႈ (မိူၼ်ၼင်ႇ WHERE age + 1 > 20)",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်း +, -",
      "လႆႈၵူၺ်းၼႂ်း SELECT",
    ],
    "Can arithmetic operators be used in WHERE?",
  ),

  // --- Lesson 32: BETWEEN and IN (302-314) ---
  Quiz(302, "BETWEEN Operator ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "လိူၵ်ႈၶေႃႈမုၼ်း ၼႂ်းၵႄႈၵႃႈၶၼ်သွင်ဢၼ်",
    "လိူၵ်ႈၼႂ်းသဵၼ်ႈမၢႆ",
    "ယႃႉၶေႃႈမုၼ်း",
    "မႄးၸိုဝ်ႈ",
  ], "What is BETWEEN used for?"),
  Quiz(303, "BETWEEN 10 AND 20 ပႃးမၢႆ 10 လႄႈ 20 ႁႃႉ?", [
    "ၸႂ်ႈ (Inclusive)",
    "ဢမ်ႇၸႂ်ႈ",
    "ပႃးၵူၺ်း 10",
    "ပႃးၵူၺ်း 20",
  ], "Is BETWEEN inclusive?"),
  Quiz(304, "IN Operator ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "လိူၵ်ႈၶေႃႈမုၼ်း ဢၼ်မၢၼ်ႇမႅၼ်ႈၸွမ်း ၼႂ်းသဵၼ်ႈမၢႆ",
    "လိူၵ်ႈၼႂ်းၵႄႈ",
    "ယႃႉၶေႃႈမုၼ်း",
    "မႄး Column",
  ], "What is IN used for?"),
  Quiz(
    305,
    "IN ('A', 'B') မိူၼ်တင်း Logical Operator လႂ်?",
    ["OR (col='A' OR col='B')", "AND", "NOT", "XOR"],
    "Which operator is equivalent to IN?",
  ),
  Quiz(306, "NOT BETWEEN 1 AND 10 ႁႃသင်?", [
    "ၵႃႈၶၼ်ဢၼ်ဢေႇလိူဝ် 1 ဢမ်ႇၼၼ် ယႂ်ႇလိူဝ် 10",
    "ၵႃႈၶၼ် 1-10",
    "ၵႃႈၶၼ် 1 ၵူၺ်း",
    "ၵႃႈၶၼ် 10 ၵူၺ်း",
  ], "What does NOT BETWEEN 1 AND 10 find?"),
  Quiz(307, "NOT IN ('A', 'B') ႁႃသင်?", [
    "ၵႃႈၶၼ်ဢၼ်ဢမ်ႇၸႂ်ႈ 'A' လႄႈ 'B'",
    "ၵႃႈၶၼ် 'A' လႄႈ 'B'",
    "ၵႃႈၶၼ် 'A' ၵူၺ်း",
    "ၵႃႈၶၼ် 'B' ၵူၺ်း",
  ], "What does NOT IN ('A', 'B') find?"),
  Quiz(
    308,
    "BETWEEN ၸၢင်ႈၸႂ်ႉတင်း ဝၼ်းထီႉ (Dates) လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်းၼႂ်း တူဝ်ၼပ်ႉ", "လႆႈၵူၺ်းၼႂ်း လိၵ်ႈ"],
    "Can BETWEEN be used with dates?",
  ),
  Quiz(
    309,
    "IN Operator ၸၢင်ႈသႂ်ႇ Subquery ၼႂ်းမၼ်းလႆႈႁႃႉ?",
    [
      "လႆႈ (Power ဢၼ်လွင်ႈယႂ်ႇသုတ်း)",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်း 1 ဢၼ်",
      "လႆႈၵူၺ်းၼႂ်း ID",
    ],
    "Can IN contain a subquery?",
  ),
  Quiz(310, "BETWEEN 'A' AND 'C' ႁႃသင်?", [
    "ႁႃလိၵ်ႈဢၼ်တႄႇလူၺ်ႈ A, B, C",
    "ႁႃတူဝ်ၼပ်ႉ",
    "ႁႃ NULL",
    "Error",
  ], "What does BETWEEN 'A' AND 'C' find?"),
  Quiz(
    311,
    "IN Operator တေမၼ်ႈၵိုမ်းမိူဝ်ႈမီး NULL ႁႃႉ?",
    ["ဢမ်ႇ (NULL ဢမ်ႇဢွၵ်ႇမႃးၼႂ်း IN)", "ၸႂ်ႈ", "မၢင်ပွၵ်ႈ", "Error"],
    "Does IN include NULL values?",
  ),
  Quiz(
    312,
    "ႁဵတ်းသင်လႄႈ ၸႂ်ႉ IN လီလိူဝ် OR လၢႆလၢႆဢၼ်?",
    [
      "ၵွပ်ႈမၼ်းလူငၢႆႈ လႄႈ DB သွၵ်ႈႁႃဝႆးလိူဝ်",
      "မၼ်း Error ဢေႇ",
      "မၼ်းပၼ် Password",
      "မၼ်းယႃႉ Table",
    ],
    "Why is IN better than multiple ORs?",
  ),
  Quiz(
    313,
    "NOT IN () သင်ၼႂ်းဝူတ်းမီး NULL ... တေပဵၼ်သင်?",
    [
      "မၼ်းတေဢမ်ႇဢွၵ်ႇသင်မႃး (Empty Result)",
      "မၼ်းတေဢွၵ်ႇၵူႈဢၼ်",
      "မၼ်းတေ Error",
      "မၼ်းတေဢွၵ်ႇ NULL",
    ],
    "What if NOT IN contains a NULL?",
  ),
  Quiz(
    314,
    "IN ၸၢင်ႈသႂ်ႇၵႃႈၶၼ်လၢႆပိူင် (Mixed types) လႆႈႁႃႉ?",
    [
      "လႆႈ (ၵူၺ်းၵႃႈ ဢမ်ႇထုၵ်ႇလီႁဵတ်း)",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်းၼႂ်း VARCHAR",
      "လႆႈၵူၺ်းၼႂ်း INT",
    ],
    "Can IN contain mixed types?",
  ),

  // --- Lesson 33: LIKE and Wildcards (315-327) ---
  Quiz(315, "LIKE Operator ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "သွၵ်ႈႁႃလိၵ်ႈ ၸွမ်းၼင်ႇႁွႆးလိၵ်ႈ (Pattern Matching)",
    "လိူၵ်ႈၼႂ်းၵႄႈ",
    "ယႃႉ Table",
    "မႄး Column",
  ], "What is LIKE used for?"),
  Quiz(316, "Wildcard '%' (Percent) တႅၼ်းသင်?", [
    "တူဝ်လိၵ်ႈၵႃႈလၢႆတူဝ်ၵေႃႈလႆႈ (0 ၶိုၼ်ႈၼိူဝ်)",
    "1 တူဝ်တႅတ်ႈတေႃး",
    "မၢႆထိုင် % တႄႉတႄႉ",
    "Space",
  ], "What does '%' represent?"),
  Quiz(317, "Wildcard '_' (Underscore) တႅၼ်းသင်?", [
    "တူဝ်လိၵ်ႈ 1 တူဝ်တႅတ်ႈတေႃး",
    "ၵႃႈလၢႆတူဝ်ၵေႃႈလႆႈ",
    "Space",
    "NULL",
  ], "What does '_' represent?"),
  Quiz(318, "LIKE 'A%' ႁႃသင်?", [
    "တႄႇလူၺ်ႈ 'A'",
    "သုတ်းလူၺ်ႈ 'A'",
    "မီး 'A' ယူႇၵႄႈၵၢင်",
    "ပဵၼ် 'A' တူဝ်လဵဝ်",
  ], "What does LIKE 'A%' find?"),
  Quiz(319, "LIKE '%A' ႁႃသင်?", [
    "သုတ်းလူၺ်ႈ 'A'",
    "တႄႇလူၺ်ႈ 'A'",
    "မီး 'A' ယူႇၵႄႈၵၢင်",
    "ပဵၼ် 'A' တွၼ်ႈၼႃႈ",
  ], "What does LIKE '%A' find?"),
  Quiz(320, "LIKE '%A%' ႁႃသင်?", [
    "မီး 'A' ယူႇတီႈလႂ်ၵေႃႈလႆႈ",
    "တႄႇလူၺ်ႈ 'A'",
    "သုတ်းလူၺ်ႈ 'A'",
    "ပဵၼ် 'A' တူဝ်လဵဝ်",
  ], "What does LIKE '%A%' find?"),
  Quiz(321, "LIKE '_A%' ႁႃသင်?", [
    "တူဝ်လိၵ်ႈတူဝ်တီႈသွင် ပဵၼ် 'A'",
    "တႄႇလူၺ်ႈ 'A'",
    "တူဝ်လိၵ်ႈတူဝ်တီႈၼိုင်ႈ ပဵၼ် 'A'",
    "Error",
  ], "What does LIKE '_A%' find?"),
  Quiz(322, "NOT LIKE 'A%' ႁႃသင်?", [
    "ဢၼ်ဢမ်ႇတႄႇလူၺ်ႈ 'A'",
    "ဢၼ်တႄႇလူၺ်ႈ 'A'",
    "ဢၼ်ပဵၼ် 'A' ၵူၺ်း",
    "Error",
  ], "What does NOT LIKE 'A%' find?"),
  Quiz(
    323,
    "Escape Character '\' ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇႁႃတူဝ် '%' ဢမ်ႇၼၼ် '_' တႄႉတႄႉ",
      "တႃႇယႃႉ Row",
      "တႃႇပၼ် Space",
      "တႃႇတႄႇၼႃႈမႂ်ႇ",
    ],
    "What is the escape character used for?",
  ),
  Quiz(
    324,
    "LIKE ဝႆးလိူဝ် REGEXP ႁႃႉ?",
    [
      "ၸႂ်ႈ (Pattern ပိုၼ်ႉထၢၼ် LIKE ဝႆးလိူဝ်)",
      "ဢမ်ႇၸႂ်ႈ",
      "မိူၼ်ၵၼ်",
      "Error",
    ],
    "Is LIKE faster than REGEXP for simple patterns?",
  ),
  Quiz(325, "LIKE '____' (4 underscores) ႁႃသင်?", [
    "လိၵ်ႈဢၼ်မီး 4 တူဝ်တႅတ်ႈတေႃး",
    "လိၵ်ႈဢၼ်မီး 4 တွၼ်ႈ",
    "လိၵ်ႈဢၼ်တႄႇလူၺ်ႈ 4",
    "Error",
  ], "What does LIKE '____' find?"),
  Quiz(326, "MySQL LIKE ၸႅၵ်ႇ Case (A vs a) ႁႃႉ?", [
    "ဢမ်ႇ (Default case-insensitive)",
    "ၸႅၵ်ႇ",
    "ၸႅၵ်ႇၵူၺ်းၼႂ်း ID",
    "Error",
  ], "Is LIKE case-sensitive in MySQL?"),
  Quiz(
    327,
    "LIKE ၸၢင်ႈၸႂ်ႉတင်း တူဝ်ၼပ်ႉ (Numeric) လႆႈႁႃႉ?",
    [
      "လႆႈ (MySQL တေပိၼ်ႇပဵၼ် String ႁင်းမၼ်း)",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်းၼႂ်း VARCHAR",
      "Error",
    ],
    "Can LIKE be used with numeric values?",
  ),

  // --- Lesson 34: REGEXP (328-340) ---
  Quiz(328, "REGEXP ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "သွၵ်ႈႁႃႁွႆးလိၵ်ႈ ဢၼ်ယုင်ႈယၢင်ႈ လႄႈ ၵျလိူဝ် (Regex)",
    "လိူၵ်ႈၼႂ်းၵႄႈ",
    "ယႃႉ Table",
    "မႄး Column",
  ], "What is REGEXP used for?"),
  Quiz(329, "တူဝ် '^' ၼႂ်း REGEXP မၢႆထိုင်သင်?", [
    "တႄႇလူၺ်ႈ (Beginning)",
    "သုတ်းလူၺ်ႈ",
    "ဢမ်ႇၼၼ်",
    "တူဝ်လိၵ်ႈ 1 တူဝ်",
  ], "What does '^' mean?"),
  Quiz(330, "တူဝ် '\$' ၼႂ်း REGEXP မၢႆထိုင်သင်?", [
    "သုတ်းလူၺ်ႈ (End)",
    "တႄႇလူၺ်ႈ",
    "ဢမ်ႇၼၼ်",
    "Space",
  ], "What does '\$' mean?"),
  Quiz(331, "တူဝ် '|' ၼႂ်း REGEXP မၢႆထိုင်သင်?", [
    "ဢမ်ႇၼၼ် (OR)",
    "လႄႈ (AND)",
    "တႄႇလူၺ်ႈ",
    "သုတ်းလူၺ်ႈ",
  ], "What does '|' mean?"),
  Quiz(332, "REGEXP 'A|B' ႁႃသင်?", [
    "မီး 'A' ဢမ်ႇၼၼ် 'B'",
    "မီးတင်း 'A' လႄႈ 'B'",
    "တႄႇလူၺ်ႈ 'A'",
    "သုတ်းလူၺ်ႈ 'B'",
  ], "What does 'A|B' find?"),
  Quiz(333, "တူဝ် '.' (Dot) ၼႂ်း REGEXP မၢႆထိုင်သင်?", [
    "တူဝ်လိၵ်ႈ 1 တူဝ် (Any character)",
    "တူဝ်လိၵ်ႈၵႃႈလၢႆတူဝ်",
    "မၢႆထိုင် '.' တႄႉတႄႉ",
    "End",
  ], "What does '.' mean?"),
  Quiz(334, "REGEXP '[abc]' ႁႃသင်?", [
    "မီးတူဝ် 'a', 'b', ဢမ်ႇၼၼ် 'c' ၼႂ်းဝူတ်း",
    "တႄႇလူၺ်ႈ 'abc'",
    "သုတ်းလူၺ်ႈ 'abc'",
    "Error",
  ], "What does '[abc]' find?"),
  Quiz(335, "REGEXP '[a-z]' ႁႃသင်?", [
    "တူဝ်လိၵ်ႈ ယူႇၼႂ်းၵႄႈ a ထိုင် z",
    "တူဝ်လိၵ်ႈ 'a' လႄႈ 'z' ၵူၺ်း",
    "Error",
    "NULL",
  ], "What does '[a-z]' find?"),
  Quiz(336, "REGEXP '^Sai' ႁႃသင်?", [
    "ၸိုဝ်ႈဢၼ်တႄႇလူၺ်ႈ 'Sai'",
    "ၸိုဝ်ႈဢၼ်သုတ်းလူၺ်ႈ 'Sai'",
    "ၸိုဝ်ႈဢၼ်မီး 'Sai' ယူႇၵႄႈၵၢင်",
    "Error",
  ], "What does '^Sai' find?"),
  Quiz(337, "REGEXP 'Mao\$' ႁႃသင်?", [
    "ၸိုဝ်ႈဢၼ်သုတ်းလူၺ်ႈ 'Mao'",
    "ၸိုဝ်ႈဢၼ်တႄႇလူၺ်ႈ 'Mao'",
    "Error",
    "NULL",
  ], "What does 'Mao\$' find?"),
  Quiz(338, "REGEXP '[0-9]' ႁႃသင်?", [
    "လိၵ်ႈဢၼ်မီးတူဝ်ၼပ်ႉယူႇၼႂ်းမၼ်း",
    "လိၵ်ႈဢၼ်မီး 0-9 တူဝ်",
    "Error",
    "NULL",
  ], "What does '[0-9]' find?"),
  Quiz(339, "REGEXP ၸၢင်ႈၸႅၵ်ႇ Case (BINARY) လႆႈႁႃႉ?", [
    "လႆႈ (ၸႂ်ႉ REGEXP BINARY)",
    "ဢမ်ႇလႆႈ",
    "လႆႈတႃႇသေႇ",
    "Error",
  ], "Can REGEXP be case-sensitive?"),
  Quiz(340, "REGEXP '^[A-Z]' ႁႃသင်?", [
    "တႄႇလူၺ်ႈ တူဝ်လိၵ်ႈဢင်းၵိတ်းတူဝ်ယႂ်ႇ",
    "သုတ်းလူၺ်ႈ",
    "Error",
    "NULL",
  ], "What does '^[A-Z]' find?"),

  // --- Lesson 35: Nullability (341-353) ---
  Quiz(341, "NULL မၢႆထိုင်သင်?", [
    "ဢမ်ႇႁူႉၵႃႈၶၼ် (Unknown/Missing)",
    "သုၼ် (0)",
    "လိၵ်ႈပဝ်ႇ ('')",
    "Space",
  ], "What does NULL mean?"),
  Quiz(342, "IS NULL ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "သွၵ်ႈႁႃၶေႃႈမုၼ်းပဝ်ႇ (NULL)",
    "သွၵ်ႈႁႃတူဝ်ၼပ်ႉ 0",
    "ယႃႉ Row",
    "မႄး Column",
  ], "What is IS NULL used for?"),
  Quiz(343, "IS NOT NULL ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "သွၵ်ႈႁႃၶေႃႈမုၼ်း ဢၼ်မီးၵႃႈၶၼ်တႅတ်ႈတေႃး",
    "သွၵ်ႈႁႃ NULL",
    "Error",
    "NULL",
  ], "What is IS NOT NULL used for?"),
  Quiz(344, "ႁဵတ်းသင် phone = NULL ၸႂ်ႉဢမ်ႇလႆႈ?", [
    "ၵွပ်ႈ NULL ဢမ်ႇၸႂ်ႈၵႃႈၶၼ် (Value) ဢၼ်တႅၵ်ႈၵၼ်လႆႈ",
    "မၼ်း Error",
    "မၼ်းပဵၼ် Space",
    "Error",
  ], "Why doesn't phone = NULL work?"),
  Quiz(
    345,
    "Three-valued Logic ၼႂ်း SQL ပႃးသင်လၢႆလၢႆ?",
    ["True, False, Unknown (NULL)", "True, False", "0, 1", "NULL ၵူၺ်း"],
    "What are the components of three-valued logic?",
  ),
  Quiz(346, "10 > NULL ၽွၼ်းလႆႈတေပဵၼ်သင်?", [
    "Unknown (NULL)",
    "True",
    "False",
    "Error",
  ], "What is the result of 10 > NULL?"),
  Quiz(347, "IFNULL(col, 'N/A') ၸွႆႈသင်?", [
    "သင် col ပဵၼ် NULL ႁႂ်ႈၼႄ 'N/A' တႅၼ်း",
    "ယႃႉ NULL",
    "ပၼ် NULL",
    "Error",
  ], "What does IFNULL(col, 'N/A') do?"),
  Quiz(348, "COALESCE() ၸွႆႈသင်?", [
    "ဢဝ်ၵႃႈၶၼ်ဢွၼ်တၢင်းသုတ်း ဢၼ်ဢမ်ႇၸႂ်ႈ NULL ၼႂ်းသဵၼ်ႈမၢႆ",
    "ၼပ်ႉသွၼ်ႇ",
    "ယႃႉ Table",
    "Error",
  ], "What does COALESCE() do?"),
  Quiz(
    349,
    "Empty String ('') တင်း NULL မိူၼ်ၵၼ်ႁႃႉ?",
    [
      "ဢမ်ႇမိူၼ် (Empty string မီးၵႃႈၶၼ် ၵူၺ်းၵႃႈ NULL ဢမ်ႇမီး)",
      "မိူၼ်",
      "မၢင်ပွၵ်ႈ",
      "Error",
    ],
    "Is Empty String the same as NULL?",
  ),
  Quiz(350, "IS NULL ၸၢင်ႈၸႂ်ႉၼႂ်း UPDATE လႆႈႁႃႉ?", [
    "လႆႈ (မိူၼ်ၼင်ႇ WHERE col IS NULL)",
    "ဢမ်ႇလႆႈ",
    "လႆႈၵူၺ်းၼႂ်း SELECT",
    "Error",
  ], "Can IS NULL be used in UPDATE?"),
  Quiz(
    351,
    "MySQL ၸတ်းလႅၼ်ႇ NULL ဝႆႉတီႈလႂ် မိူဝ်ႈ ORDER BY ASC?",
    ["ဝႆးၽၢႆႇၼႃႈသုတ်း (ဢေႇသုတ်း)", "ဝႆႉၽၢႆႇလင်", "ယူႇၵႄႈၵၢင်", "Error"],
    "Where does MySQL place NULLs in ORDER BY ASC?",
  ),
  Quiz(
    352,
    "ISNULL(col) (Function) မိူၼ်တင်း IS NULL (Operator) ႁႃႉ?",
    ["မိူၼ်ၵၼ် (MySQL သွင်လၢႆး)", "ဢမ်ႇမိူၼ်", "Error", "NULL"],
    "Is ISNULL(col) the same as IS NULL?",
  ),
  Quiz(
    353,
    "NOT (col IS NULL) မိူၼ်တင်းသင်?",
    ["col IS NOT NULL", "col = NULL", "Error", "NULL"],
    "What is equivalent to NOT (col IS NULL)?",
  ),

  // --- Lesson 36: Sorting (354-366) ---
  Quiz(354, "ORDER BY ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "ၸတ်းလႅၼ်ႇၶေႃႈမုၼ်း (Sorting)",
    "လိူၵ်ႈၶေႃႈမုၼ်း",
    "ယႃႉၶေႃႈမုၼ်း",
    "မႄး Table",
  ], "What is the purpose of ORDER BY?"),
  Quiz(355, "ASC ၸတ်းၸိူင်ႉႁိုဝ်?", [
    "တီႈဢေႇ ၶိုၼ်ႈၵႂႃႇၼမ် (A-Z, 1-100)",
    "တီႈၼမ် လုင်းမႃးဢေႇ",
    "Error",
    "NULL",
  ], "How does ASC sort?"),
  Quiz(356, "DESC ၸတ်းၸိူင်ႉႁိုဝ်?", [
    "တီႈၼမ် လုင်းမႃးဢေႇ (Z-A, 100-1)",
    "တီႈဢေႇ ၶိုၼ်ႈၵႂႃႇၼမ်",
    "Error",
    "NULL",
  ], "How does DESC sort?"),
  Quiz(357, "ORDER BY col1, col2 မၢႆထိုင်သင်?", [
    "ၸတ်းၸွမ်း col1 ဢွၼ်တၢင်း သေၸင်ႇၸတ်း col2",
    "ၸတ်းႁူမ်ႈၵၼ်",
    "Error",
    "NULL",
  ], "What does ORDER BY col1, col2 mean?"),
  Quiz(358, "Default sorting ၼႂ်း MySQL ပဵၼ်သင်?", [
    "ASC",
    "DESC",
    "Random",
    "NULL",
  ], "What is the default sort order?"),
  Quiz(359, "ORDER BY RAND() ၸွႆႈသင်?", [
    "ၸတ်းလႅၼ်ႇၶေႃႈမုၼ်း လွၼ်ႉလႃႈ (Random)",
    "ၸတ်းၸွမ်း ID",
    "Error",
    "NULL",
  ], "What does ORDER BY RAND() do?"),
  Quiz(
    360,
    "FIELD() Function ၼႂ်း ORDER BY ၸွႆႈသင်?",
    [
      "ၸတ်းလႅၼ်ႇ ၸွမ်းၼင်ႇသဵၼ်ႈမၢႆ ဢၼ်ႁဝ်းမၵ်းမၼ်ႈ",
      "ၸတ်းၸွမ်း A-Z",
      "Error",
      "NULL",
    ],
    "What is FIELD() used for in sorting?",
  ),
  Quiz(361, "ORDER BY ၸၢင်ႈၸႂ်ႉ Alias ၸိုဝ်ႈမႂ်ႇလႆႈႁႃႉ?", [
    "လႆႈ (MySQL ပၼ်သုၼ်ႇ)",
    "ဢမ်ႇလႆႈ",
    "လႆႈၵူၺ်းၼႂ်း ID",
    "Error",
  ], "Can ORDER BY use an Alias?"),
  Quiz(362, "ORDER BY 2 မၢႆထိုင်သင်?", [
    "ၸတ်းၸွမ်း Column တူဝ်တီႈသွင် ၼႂ်း SELECT",
    "ၸတ်းၸွမ်းမၢႆ 2",
    "Error",
    "NULL",
  ], "What does ORDER BY 2 mean?"),
  Quiz(
    363,
    "ႁဵတ်းသင်လႄႈ ဢမ်ႇထုၵ်ႇလီၸႂ်ႉ ORDER BY ၼပ်ႉမၢႆ (မိူၼ်ၼင်ႇ 1, 2)?",
    [
      "ၵွပ်ႈသင် Table လႅၵ်ႈမႃး... Query တေၸတ်းၽိတ်း",
      "မၼ်း Error",
      "မၼ်းၸႃႉ",
      "Error",
    ],
    "Why avoid sorting by column index?",
  ),
  Quiz(
    364,
    "ORDER BY DESC ... NULL တေယူႇတီႈလႂ်?",
    ["ယူႇတႂ်ႈသုတ်း (ၽၢႆႇလင်)", "ယူႇၼိူဝ်သုတ်း", "ယူႇၵႄႈၵၢင်", "Error"],
    "Where do NULLs go in ORDER BY DESC?",
  ),
  Quiz(
    365,
    "Sorting ၸွမ်း Column ဢၼ်မီး Index ၸွႆႈသင်?",
    ["ၸွႆႈႁႂ်ႈ Query ဝႆးလိူဝ်တႄႉတႄႉ", "ၸွႆႈယႃႉ Table", "Error", "NULL"],
    "How does sorting on an indexed column help?",
  ),
  Quiz(
    366,
    "ORDER BY ၸၢင်ႈၸႂ်ႉ Math Expression (မိူၼ်ၼင်ႇ price * quantity) လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်းၼႂ်း SELECT", "Error"],
    "Can ORDER BY use math expressions?",
  ),

  // --- Lesson 37: Pagination (367-379) ---
  Quiz(367, "LIMIT ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "မၵ်းမၼ်ႈတၢင်းၼမ်ထႅဝ် ဢၼ်တေဢဝ်ဢွၵ်ႇမႃးၼႄ",
    "ၸတ်းလႅၼ်ႇ",
    "ယႃႉ Table",
    "Error",
  ], "What is LIMIT used for?"),
  Quiz(368, "OFFSET ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "ၶၢမ်ႈ (Skip) ၶေႃႈမုၼ်းတွၼ်ႈၼႃႈ",
    "မၵ်းမၼ်ႈတၢင်းၼမ်",
    "Error",
    "NULL",
  ], "What is OFFSET used for?"),
  Quiz(369, "LIMIT 10 ၼႄသင်?", [
    "ၼႄ 10 ထႅဝ်ဢွၼ်တၢင်းသုတ်း",
    "ၼႄ 10 ထႅဝ်ၽၢႆႇလင်",
    "Error",
    "NULL",
  ], "What does LIMIT 10 show?"),
  Quiz(370, "LIMIT 5, 10 မၢႆထိုင်သင်?", [
    "ၶၢမ်ႈ 5 ဢဝ် 10 (LIMIT 10 OFFSET 5)",
    "ၶၢမ်ႈ 10 ဢဝ် 5",
    "Error",
    "NULL",
  ], "What does LIMIT 5, 10 mean?"),
  Quiz(
    371,
    "Pagination ၼႂ်း App ၸႂ်ႉ Logic လႂ်?",
    ["LIMIT လႄႈ OFFSET", "WHERE ၵူၺ်း", "ORDER BY ၵူၺ်း", "Error"],
    "What logic is used for pagination?",
  ),
  Quiz(
    372,
    "OFFSET = (page-1) * items ... သင် Page 2, Items 10... OFFSET ပဵၼ်ၵႃႈလၢႆ?",
    ["10", "20", "0", "5"],
    "If Page 2 and 10 items, what is the OFFSET?",
  ),
  Quiz(373, "LIMIT ၸၢင်ႈၸႂ်ႉၼႂ်း UPDATE လႆႈႁႃႉ?", [
    "လႆႈ (တႃႇမၵ်းမၼ်ႈထႅဝ် ဢၼ်တေမႄး)",
    "ဢမ်ႇလႆႈ",
    "လႆႈၵူၺ်းၼႂ်း SELECT",
    "Error",
  ], "Can LIMIT be used in UPDATE?"),
  Quiz(374, "LIMIT ၸၢင်ႈၸႂ်ႉၼႂ်း DELETE လႆႈႁႃႉ?", [
    "လႆႈ (တႃႇယႃႉၵူၺ်းမၢင်ထႅဝ်)",
    "ဢမ်ႇလႆႈ",
    "Error",
    "NULL",
  ], "Can LIMIT be used in DELETE?"),
  Quiz(
    375,
    "သင် OFFSET ၼမ်ၼမ် (မိူၼ်ၼင်ႇ 1 လၢၼ်ႉ)... တေပဵၼ်သင်?",
    ["Query တေၸႃႉလိူဝ်ၵဝ်ႇ", "Query တေဝႆး", "Error", "NULL"],
    "What if OFFSET is very high?",
  ),
  Quiz(
    376,
    "OFFSET ၸၢင်ႈၸႂ်ႉလူၺ်ႈဢမ်ႇမီး LIMIT လႆႈႁႃႉ?",
    ["ဢမ်ႇလႆႈ (တေလႆႈမီး LIMIT ၸွမ်းတႃႇသေႇ)", "လႆႈ", "Error", "NULL"],
    "Can OFFSET exist without LIMIT?",
  ),
  Quiz(
    377,
    "ORDER BY လူဝ်ႇမီးဢွၼ်တၢင်း LIMIT ႁႃႉ?",
    ["ၸႂ်ႈ (တေလႆႈၸတ်းလႅၼ်ႇ ၸင်ႇတေတတ်းလႆႈမၢၼ်ႇ)", "ဢမ်ႇၸႂ်ႈ", "Error", "NULL"],
    "Should ORDER BY come before LIMIT?",
  ),
  Quiz(378, "LIMIT 1 ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇဢဝ်ၵူၺ်း 1 ထႅဝ် (မိူၼ်ၼင်ႇ ႁႃၵႃႈၶၼ်သုင်သုတ်း)",
    "ယႃႉ Table",
    "Error",
    "NULL",
  ], "What is LIMIT 1 commonly used for?"),
  Quiz(
    379,
    "SELECT ... LIMIT 5 OFFSET 0 မိူၼ်တင်းသင်?",
    ["SELECT ... LIMIT 5", "SELECT ... OFFSET 5", "Error", "NULL"],
    "What is equivalent to LIMIT 5 OFFSET 0?",
  ),

  // --- Lesson 38: Math Functions (380-390) ---
  Quiz(380, "ABS(-5) ၽွၼ်းလႆႈတေပဵၼ်ၵႃႈလၢႆ?", [
    "5",
    "-5",
    "0",
    "Error",
  ], "What is the result of ABS(-5)?"),
  Quiz(381, "ROUND(1.5) ၽွၼ်းလႆႈတေပဵၼ်ၵႃႈလၢႆ?", [
    "2",
    "1",
    "1.5",
    "0",
  ], "What is the result of ROUND(1.5)?"),
  Quiz(382, "ROUND(1.4) ၽွၼ်းလႆႈတေပဵၼ်ၵႃႈလၢႆ?", [
    "1",
    "2",
    "1.4",
    "0",
  ], "What is the result of ROUND(1.4)?"),
  Quiz(383, "CEIL(1.1) ၽွၼ်းလႆႈတေပဵၼ်ၵႃႈလၢႆ?", [
    "2",
    "1",
    "1.1",
    "0",
  ], "What is the result of CEIL(1.1)?"),
  Quiz(384, "FLOOR(1.9) ၽွၼ်းလႆႈတေပဵၼ်ၵႃႈလၢႆ?", [
    "1",
    "2",
    "1.9",
    "0",
  ], "What is the result of FLOOR(1.9)?"),
  Quiz(
    385,
    "CEIL() တင်း FLOOR() ပႅၵ်ႇၵၼ်ၸိူင်ႉႁိုဝ်?",
    ["CEIL ၼပ်ႉၶိုၼ်ႈ သေ FLOOR ၼပ်ႉလူင်း", "မိူၼ်ၵၼ်", "Error", "NULL"],
    "Difference between CEIL and FLOOR?",
  ),
  Quiz(386, "ROUND(123.456, 1) တေပဵၼ်ၵႃႈလၢႆ?", [
    "123.5",
    "123.4",
    "123",
    "124",
  ], "What is ROUND(123.456, 1)?"),
  Quiz(387, "RAND() ဢွၵ်ႇတူဝ်ၼပ်ႉယူႇၼႂ်းၵႄႈလႂ်?", [
    "0 ထိုင် 1",
    "1 ထိုင် 100",
    "0 ထိုင် 100",
    "Error",
  ], "What range does RAND() return?"),
  Quiz(388, "SQRT(16) ၽွၼ်းလႆႈတေပဵၼ်ၵႃႈလၢႆ?", [
    "4",
    "8",
    "16",
    "2",
  ], "What is SQRT(16)?"),
  Quiz(389, "POW(2, 3) ၽွၼ်းလႆႈတေပဵၼ်ၵႃႈလၢႆ?", [
    "8",
    "6",
    "5",
    "9",
  ], "What is POW(2, 3)?"),
  Quiz(390, "MOD(10, 3) (Remainder) တေပဵၼ်ၵႃႈလၢႆ?", [
    "1",
    "3",
    "0",
    "10",
  ], "What is MOD(10, 3)?"),

  // --- Lesson 39: String Functions (391-400) ---
  Quiz(391, "CONCAT('A', 'B') တေပဵၼ်သင်?", [
    "'AB'",
    "'A B'",
    "'A'",
    "'B'",
  ], "What is CONCAT('A', 'B')?"),
  Quiz(
    392,
    "CONCAT_WS('-', 'A', 'B') (With Separator) တေပဵၼ်သင်?",
    ["'A-B'", "'AB'", "'A B'", "'-AB'"],
    "What is CONCAT_WS('-', 'A', 'B')?",
  ),
  Quiz(
    393,
    "SUBSTRING('ShanState', 1, 4) တေပဵၼ်သင်?",
    ["'Shan'", "'Stat'", "'anSt'", "'State'"],
    "What is SUBSTRING('ShanState', 1, 4)?",
  ),
  Quiz(394, "LENGTH('ABC') တေၼႄၵႃႈလၢႆ?", [
    "3",
    "2",
    "4",
    "0",
  ], "What is the LENGTH of 'ABC'?"),
  Quiz(395, "UPPER('abc') တေပဵၼ်သင်?", [
    "'ABC'",
    "'abc'",
    "'Abc'",
    "Error",
  ], "What is UPPER('abc')?"),
  Quiz(396, "LOWER('ABC') တေပဵၼ်သင်?", [
    "'abc'",
    "'ABC'",
    "'Abc'",
    "Error",
  ], "What is LOWER('ABC')?"),
  Quiz(397, "TRIM('  abc  ') ၸွႆႈသင်?", [
    "ယႃႉ Space ၽၢႆႇၼႃႈ လႄႈ ၽၢႆႇလင်ပႅတ်း",
    "တွၵ်ႇလိၵ်ႈ",
    "လႅၵ်ႈ Type",
    "Error",
  ], "What does TRIM() do?"),
  Quiz(
    398,
    "REPLACE('Banana', 'a', 'o') တေပဵၼ်သင်?",
    ["'Bonono'", "'Banana'", "'Bonana'", "Error"],
    "What is REPLACE('Banana', 'a', 'o')?",
  ),
  Quiz(399, "LEFT('Hello', 2) တေပဵၼ်သင်?", [
    "'He'",
    "'lo'",
    "'Hel'",
    "'ello'",
  ], "What is LEFT('Hello', 2)?"),
  Quiz(400, "RIGHT('Hello', 2) တေပဵၼ်သင်?", [
    "'lo'",
    "'He'",
    "'ello'",
    "'Hel'",
  ], "What is RIGHT('Hello', 2)?"),
];
List<Quiz> mysqlQuizM5 = [
  // --- Lesson 40: Join Fundamentals (401-412) ---
  Quiz(401, "JOIN ၼႂ်း SQL ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇၵွင်ႉၶေႃႈမုၼ်းလုၵ်ႉတီႈလၢႆ Table မႃးၼႄႁူမ်ႈၵၼ်",
    "တႃႇယႃႉ Table ပႅတ်ႈ",
    "တႃႇသၢင်ႈ Database မႂ်ႇ",
    "တႃႇပၼ် Password ၶေႃႈမုၼ်း",
  ], "What is the purpose of JOIN in SQL?"),

  Quiz(
    402,
    "Primary Key (PK) ၼႂ်းၵၢၼ် Join မိူၼ်တင်းသင်?",
    [
      "မၢႆသေႃးတႅတ်ႈတေႃး ၼႂ်း Table တူဝ်မႄႈ",
      "မၢႆသူင်ႇ ၼႂ်း Table တူဝ်လုၵ်ႈ",
      "ၸိုဝ်ႈ Table",
      "ၶေႃႈမုၼ်းဢၼ်ႁၢႆဝႆႉ",
    ],
    "What is a Primary Key (PK) in the context of joining?",
  ),

  Quiz(
    403,
    "Foreign Key (FK) ၼႂ်းၵၢၼ် Join မိူၼ်တင်းသင်?",
    [
      "မၢႆသူင်ႇ ၼႂ်း Table တူဝ်လုၵ်ႈ ဢၼ်ၵွင်ႉၸူး PK",
      "မၢႆသေႃးတႅတ်ႈတေႃး",
      "Password Database",
      "Column ဢၼ်ပဝ်ႇဝႆႉ",
    ],
    "What is a Foreign Key (FK) in the context of joining?",
  ),

  Quiz(
    404,
    "Table Alias (AS) ၸွႆႈသင်ၼႂ်းၵၢၼ် Join?",
    [
      "ၸွႆႈႁႂ်ႈပၼ်ၸိုဝ်ႈပွတ်းသေ တႅမ်ႈ Query လႆႈငၢႆႈ လႄႈ ဝႆး",
      "ၸွႆႈႁႂ်ႈ Database ႁဵတ်းၵၢၼ်ဝႆး",
      "ၸွႆႈယႃႉၶေႃႈမုၼ်းသွၼ်ႉ",
      "ၸွႆႈပၼ် Permission",
    ],
    "How does Table Alias help in a JOIN query?",
  ),

  Quiz(
    405,
    "ၶေႃႈၵႂၢမ်း 'ON' ၼႂ်း JOIN ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇမၵ်းမၼ်ႈ Column ဢၼ်တေဢဝ် PK လႄႈ FK မႃးတႅၵ်ႈၵၼ်",
      "တႃႇလိူၵ်ႈ Table",
      "တႃႇၸတ်းလႅၼ်ႇၶေႃႈမုၼ်း",
      "တႃႇတတ်းၶေႃႈမုၼ်း",
    ],
    "What is the 'ON' clause used for in a JOIN?",
  ),

  Quiz(
    406,
    "Relationship ပိူင် 1:N မၢႆထိုင်သင်?",
    [
      "ၶေႃႈမုၼ်း 1 ထႅဝ် ၼႂ်း Table A ၵွင်ႉၸူးလႆႈ လၢႆထႅဝ် ၼႂ်း Table B",
      "ၶေႃႈမုၼ်း 1 ထႅဝ် ၵွင်ႉၸူးလႆႈ 1 ထႅဝ်ၵူၺ်း",
      "Table A တင်း B မိူၼ်ၵၼ်",
      "ဢမ်ႇမီးသဵၼ်ႈၵွင်ႉၸူးၵၼ်",
    ],
    "What does a 1:N relationship mean?",
  ),

  Quiz(407, "Junction Table ၸႂ်ႉမိူဝ်ႈလႂ်?", [
    "မိူဝ်ႈမီး Relationship ပိူင် Many-to-Many (M:N)",
    "မိူဝ်ႈမီး Relationship ပိူင် 1:1",
    "မိူဝ်ႈၶႂ်ႈယႃႉ Table",
    "မိူဝ်ႈၶႂ်ႈ Backup ၶေႃႈမုၼ်း",
  ], "When is a Junction Table used?"),

  Quiz(
    408,
    "Ambiguous Column Error တေပဵၼ်မိူဝ်ႈလႂ်?",
    [
      "မိူဝ်ႈ Table သွင်ဢၼ် မီးၸိုဝ်ႈ Column မိူၼ်ၵၼ် သေႁဝ်းဢမ်ႇလၢတ်ႈၸႅၼ်ႇလႅင်း",
      "မိူဝ်ႈ Join ၽိတ်း ID",
      "မိူဝ်ႈဢမ်ႇမီးၶေႃႈမုၼ်း",
      "မိူဝ်ႈတႅမ်ႈ SELECT * ",
    ],
    "When does an Ambiguous Column error occur?",
  ),

  Quiz(409, "Parent Table မၢႆထိုင်သင်?", [
    "Table ဢၼ်မီး Primary Key ဢၼ်ပိူၼ်ႈမႃးၵွင်ႉၸူး",
    "Table ဢၼ်မီး Foreign Key",
    "Table ဢၼ်ပဝ်ႇဝႆႉ",
    "Table ဢၼ်ယႃႉပႅတ်ႈယဝ်ႉ",
  ], "What is a Parent Table?"),

  Quiz(410, "Child Table မၢႆထိုင်သင်?", [
    "Table ဢၼ်မီး Foreign Key သူင်ႇၵႂႃႇၸူး PK",
    "Table ဢၼ်မီး Primary Key ၵူၺ်း",
    "Database တူဝ်မႄႈ",
    "Table ၸူဝ်ႈၶၢဝ်း",
  ], "What is a Child Table?"),

  Quiz(
    411,
    "SELECT s.name FROM students s; တူဝ် 's' ၼၼ်ႉပဵၼ်သင်?",
    ["Table Alias", "Column Name", "Database Name", "Function"],
    "In 'FROM students s', what is 's'?",
  ),

  Quiz(
    412,
    "ႁဝ်းၸၢင်ႈ Join Table ဢၼ်ဢမ်ႇမီး FK ၵွင်ႉၸူး PK လႆႈႁႃႉ?",
    [
      "လႆႈ ၵူၺ်းၵႃႈ ၶေႃႈမုၼ်းတေဢွၵ်ႇမႃးသုၼ်ႇလုၼ်ႇ (Cartesian Product)",
      "ဢမ်ႇလႆႈတႃႇသေႇ",
      "လႆႈၵူၺ်းၼႂ်း MySQL",
      "လႆႈၵူၺ်းသင်ပဵၼ် ID",
    ],
    "Can you join tables without a PK/FK relationship?",
  ),

  // --- Lesson 41: INNER JOIN (413-424) ---
  Quiz(
    413,
    "INNER JOIN တေၼႄၶေႃႈမုၼ်းပိူင်လႂ်?",
    [
      "ၼႄၵူၺ်းထႅဝ်ဢၼ်မီးၵႃႈၶၼ်ၵွင်ႉၵၼ်ၺႃး တင်းသွင်ၽၢႆႇ",
      "ၼႄၶေႃႈမုၼ်းတင်းမူတ်း",
      "ၼႄၵူၺ်းထႅဝ်ၽၢႆႇသၢႆႉ",
      "ၼႄၵူၺ်းထႅဝ်ဢၼ်ဢမ်ႇမိူၼ်ၵၼ်",
    ],
    "What records does INNER JOIN return?",
  ),

  Quiz(
    414,
    "သင်လုၵ်ႈႁဵၼ်းဢမ်ႇပႆႇမီးႁွင်ႈ (Class ID = NULL) တေဢွၵ်ႇၼႂ်း INNER JOIN ႁႃႉ?",
    ["ဢမ်ႇဢွၵ်ႇ", "ဢွၵ်ႇ", "ဢွၵ်ႇပဵၼ် NULL", "Error"],
    "Will a record with NULL foreign key show up in an INNER JOIN?",
  ),

  Quiz(
    415,
    "Default Join ၼႂ်း MySQL ပဵၼ်သင်?",
    ["INNER JOIN", "LEFT JOIN", "RIGHT JOIN", "FULL JOIN"],
    "What is the default JOIN type in MySQL?",
  ),

  Quiz(
    416,
    "Venn Diagram တွၼ်ႈ 'ၵႄႈၵၢင်' (Intersection) တႅၼ်း Join ပိူင်လႂ်?",
    ["INNER JOIN", "OUTER JOIN", "SELF JOIN", "CROSS JOIN"],
    "The intersection in a Venn Diagram represents which JOIN?",
  ),

  Quiz(
    417,
    "INNER JOIN ၸၢင်ႈၸႂ်ႉ WHERE ၸွမ်းလႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်းၼႂ်း SELECT", "လႆႈၵူၺ်းၼႂ်း ID"],
    "Can you use a WHERE clause with an INNER JOIN?",
  ),

  Quiz(
    418,
    "Syntax ဢၼ်မၢၼ်ႇမႅၼ်ႈႁင်း INNER JOIN?",
    [
      "SELECT * FROM A INNER JOIN B ON A.id = B.id",
      "SELECT * FROM A JOIN B WHERE A.id = B.id",
      "SELECT * FROM A, B",
      "SELECT * FROM A INNER B",
    ],
    "What is the correct syntax for an INNER JOIN?",
  ),

  Quiz(
    419,
    "သင် Join ၵၼ်ယဝ်ႉ ဢမ်ႇမီးထႅဝ်လႂ် Match ၵၼ်... တေပဵၼ်သင်?",
    [
      "ဢွၵ်ႇမႃးပဵၼ် Empty Result (ဢမ်ႇၼႄသင်)",
      "Error",
      "ၼႄ NULL တင်းမူတ်း",
      "ယႃႉ Table",
    ],
    "What happens if no records match in an INNER JOIN?",
  ),

  Quiz(
    420,
    "INNER JOIN တင်း JOIN မိူၼ်ၵၼ်ႁႃႉ?",
    ["မိူၼ်ၵၼ် (Synonyms)", "ဢမ်ႇမိူၼ်", "JOIN ဝႆးလိူဝ်", "INNER JOIN ၵျလိူဝ်"],
    "Are INNER JOIN and JOIN the same in MySQL?",
  ),

  Quiz(
    421,
    "ႁဵတ်းသင်လႄႈ INNER JOIN ပဵၼ်ဢၼ်ပိူၼ်ႈၸႂ်ႉၼမ်လိူဝ်ပိူၼ်ႈ?",
    [
      "ၵွပ်ႈမၼ်းၼႄၵူၺ်းၶေႃႈမုၼ်းဢၼ်မၢၼ်ႇမႅၼ်ႈ (Accuracy)",
      "ၵွပ်ႈမၼ်းတႅမ်ႈငၢႆႈသုတ်း",
      "ၵွပ်ႈမၼ်းပၼ် NULL",
      "ၵွပ်ႈမၼ်းယႃႉ Table",
    ],
    "Why is INNER JOIN the most commonly used join?",
  ),

  Quiz(422, "Equijoin မၢႆထိုင်သင်?", [
    "JOIN ဢၼ်ၸႂ်ႉၶိူင်ႈမၢႆ '=' ၼႂ်း ON",
    "JOIN ဢၼ်ဢမ်ႇၸႂ်ႉ ID",
    "JOIN ဢၼ်မီးလၢႆ Table",
    "JOIN ဢၼ်ယႃႉ Row",
  ], "What is an Equijoin?"),

  Quiz(
    423,
    "INNER JOIN ၸၢင်ႈ Join လၢႆလၢႆ Column ႁူမ်ႈၵၼ်လႆႈႁႃႉ?",
    [
      "လႆႈ (ၸႂ်ႉ AND ၼႂ်း ON)",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်း 1 Column",
      "လႆႈၵူၺ်းၼႂ်း WHERE",
    ],
    "Can INNER JOIN match on multiple columns?",
  ),

  Quiz(
    424,
    "သင်ၼႂ်း ON မီး NULL = NULL... မၼ်းတေ Match ႁႃႉ?",
    ["ဢမ်ႇ Match (ၵွပ်ႈ NULL ဢမ်ႇတႅၵ်ႈၵၼ်လႆႈ)", "Match", "Error", "ၼႄ NULL"],
    "Does NULL = NULL result in a match in INNER JOIN?",
  ),

  // --- Lesson 42: LEFT JOIN (425-436) ---
  Quiz(425, "LEFT JOIN တေၼႄၶေႃႈမုၼ်းပိူင်လႂ်?", [
    "ၼႄၵူႈထႅဝ်တီႈ Table ၽၢႆႇသၢႆႉ လႄႈ ဢၼ် Match ၵၼ်တီႈၽၢႆႇၶႂႃ",
    "ၼႄၵူၺ်း ဢၼ် Match ၵၼ်",
    "ၼႄၵူႈထႅဝ်တီႈ Table ၽၢႆႇၶႂႃ",
    "ၼႄၵူၺ်း ဢၼ်ပဵၼ် NULL",
  ], "What records does LEFT JOIN return?"),

  Quiz(
    426,
    "သင်ထႅဝ်တီႈၽၢႆႇသၢႆႉ ဢမ်ႇမီးတူဝ် Match တီႈၽၢႆႇၶႂႃ... ၽၢႆႇၶႂႃတေၼႄသင်?",
    ["NULL", "0", "Error", "Empty String"],
    "What is displayed for non-matching records on the right side of a LEFT JOIN?",
  ),

  Quiz(
    427,
    "LEFT OUTER JOIN တင်း LEFT JOIN မိူၼ်ၵၼ်ႁႃႉ?",
    ["မိူၼ်ၵၼ်", "ဢမ်ႇမိူၼ်", "OUTER ဝႆးလိူဝ်", "LEFT ဝႆးလိူဝ်"],
    "Are LEFT OUTER JOIN and LEFT JOIN the same?",
  ),

  Quiz(428, "ႁဵတ်းသင်လႄႈ ႁဝ်းလူဝ်ႇၸႂ်ႉ LEFT JOIN?", [
    "တွၼ်ႈတႃႇဝႆႉ (Preserve) ၶေႃႈမုၼ်းဢွၼ်တၢင်း ဢမ်ႇႁႂ်ႈႁၢႆပႅတ်ႈ",
    "တွၼ်ႈတႃႇယႃႉ Row",
    "တွၼ်ႈတႃႇႁႂ်ႈ Query ဝႆး",
    "တွၼ်ႈတႃႇၼပ်ႉ SUM",
  ], "Why would you use a LEFT JOIN?"),

  Quiz(
    429,
    "LEFT JOIN ၸွႆႈႁႃ 'Gaps' (ၶေႃႈမုၼ်းဢၼ်ႁၢႆ) လႆႈၸိူင်ႉႁိုဝ်?",
    [
      "ၸႂ်ႉ WHERE ... IS NULL ၸွမ်းၽၢႆႇၶႂႃ",
      "ၸႂ်ႉ WHERE ... = 0",
      "ၸႂ်ႉ ORDER BY",
      "ၸႂ်ႉ LIMIT",
    ],
    "How can LEFT JOIN find gaps in data?",
  ),

  Quiz(
    430,
    "Table ဢၼ်ယူႇၽၢႆႇလင်ၶေႃႈၵႂၢမ်း FROM ပဵၼ် Table ၽၢႆႇလႂ်?",
    ["Left Table", "Right Table", "Center Table", "Secondary Table"],
    "In 'FROM A LEFT JOIN B', which table is the Left table?",
  ),

  Quiz(
    431,
    "Table ဢၼ်ယူႇၽၢႆႇလင်ၶေႃႈၵႂၢမ်း LEFT JOIN ပဵၼ် Table ၽၢႆႇလႂ်?",
    ["Right Table", "Left Table", "Primary Table", "Main Table"],
    "In 'FROM A LEFT JOIN B', which table is the Right table?",
  ),

  Quiz(
    432,
    "သင်ပဵၼ် LEFT JOIN... တၢင်းၼမ်ထႅဝ် တေယွမ်းလိူဝ် INNER JOIN လႆႈႁႃႉ?",
    [
      "ဢမ်ႇလႆႈ (တေၼမ်လိူဝ် ဢမ်ႇၼၼ် တူဝ်ႇၵၼ်တႃႇသေႇ)",
      "လႆႈ",
      "တေတူဝ်ႇၵၼ်တႃႇသေႇ",
      "Error",
    ],
    "Can a LEFT JOIN return fewer rows than an INNER JOIN on the same tables?",
  ),

  Quiz(
    433,
    "ၵၢၼ်ဝႆႉလႅၼ်ႇ Table (Order) ၼႂ်း LEFT JOIN လွင်ႈယႂ်ႇႁႃႉ?",
    [
      "ယႂ်ႇတႄႉတႄႉ (ပိၼ်ႇၽၢႆႇၵၼ် ၽွၼ်းလႆႈလႅၵ်ႈ)",
      "ဢမ်ႇယႂ်ႇ",
      "ယႂ်ႇၵူၺ်းၼႂ်း ID",
      "ယႂ်ႇၵူၺ်းၼႂ်း SELECT",
    ],
    "Does the table order matter in a LEFT JOIN?",
  ),

  Quiz(
    434,
    "LEFT JOIN ၸၢင်ႈ Join ၸူး Table လဵဝ်ၵၼ် လၢႆလၢႆပွၵ်ႈလႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်း 2 ပွၵ်ႈ", "Error"],
    "Can you use multiple LEFT JOINs in one query?",
  ),

  Quiz(
    435,
    "Result set ႁင်း LEFT JOIN တေပႃး NULL မိူဝ်ႈလႂ်?",
    [
      "မိူဝ်ႈၶေႃႈမုၼ်းၽၢႆႇသၢႆႉ ဢမ်ႇမီးတူဝ် Match တီႈၽၢႆႇၶႂႃ",
      "မိူဝ်ႈမီး Error",
      "မိူဝ်ႈ Table ပဝ်ႇ",
      "မိူဝ်ႈ SELECT NULL",
    ],
    "When does a LEFT JOIN result contain NULLs?",
  ),

  Quiz(
    436,
    "LEFT JOIN ၸၢင်ႈၸႂ်ႉတွၼ်ႈတႃႇႁဵတ်း Full List ၶႅၵ်ႇႁႃႉ?",
    [
      "ၸႂ်ႈ (တွၼ်ႈတႃႇၼႄၸိုဝ်ႈၶႅၵ်ႇၵူႈၵေႃႉ)",
      "ဢမ်ႇၸႂ်ႈ",
      "လႆႈၵူၺ်းၼႂ်း Report",
      "Error",
    ],
    "Can LEFT JOIN be used to create a full guest list?",
  ),

  // --- Lesson 43: RIGHT JOIN & FULL JOIN (437-448) ---
  Quiz(
    437,
    "RIGHT JOIN တေၼႄၶေႃႈမုၼ်းပိူင်လႂ်?",
    [
      "ၼႄၵူႈထႅဝ်တီႈ Table ၽၢႆႇၶႂႃ လႄႈ ဢၼ် Match ၵၼ်တီႈၽၢႆႇသၢႆႉ",
      "ၼႄၵူႈထႅဝ်တီႈ Table ၽၢႆႇသၢႆႉ",
      "ၼႄၵူၺ်း ဢၼ် Match",
      "ၼႄ NULL ၵူၺ်း",
    ],
    "What records does RIGHT JOIN return?",
  ),

  Quiz(
    438,
    "MySQL မီး Command 'FULL OUTER JOIN' တႅတ်ႈတေႃးႁႃႉ?",
    [
      "ဢမ်ႇမီး (လူဝ်ႇၸႂ်ႉ UNION တႃႇႁဵတ်းတႅၼ်း)",
      "မီး",
      "မီးၵူၺ်းၼႂ်း Version မႂ်ႇ",
      "မီးၵူၺ်းၼႂ်း Workbench",
    ],
    "Does MySQL support FULL OUTER JOIN natively?",
  ),

  Quiz(
    439,
    "ႁဝ်းၸၢင်ႈလႅၵ်ႈ RIGHT JOIN ႁႂ်ႈပဵၼ် LEFT JOIN လႆႈၸိူင်ႉႁိုဝ်?",
    ["ပိၼ်ႇတီႈယူႇ Table ဢွၼ်တၢင်း-ၽၢႆႇလင်", "လႅၵ်ႈ AS", "လႅၵ်ႈ ON", "ဢမ်ႇလႆႈ"],
    "How can you convert a RIGHT JOIN to a LEFT JOIN?",
  ),

  Quiz(440, "UNION ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇႁူမ်ႈၽွၼ်းလႆႈ (Result sets) သွင်ဢၼ်ၶဝ်ႈၵၼ်",
    "တႃႇယႃႉ Row",
    "တႃႇ Join Table",
    "တႃႇၼပ်ႉ SUM",
  ], "What is UNION used for?"),

  Quiz(
    441,
    "FULL JOIN တေၼႄၶေႃႈမုၼ်းပိူင်လႂ်?",
    [
      "ၼႄၵူႈထႅဝ် လုၵ်ႉတင်းသွင် Table (Match လႄႈ Unmatch)",
      "ၼႄၵူၺ်း ဢၼ် Match",
      "ၼႄၵူၺ်း ဢၼ်ပဵၼ် NULL",
      "Error",
    ],
    "What records does a FULL JOIN return?",
  ),

  Quiz(
    442,
    "ႁဵတ်းသင်လႄႈ Developer ၵမ်ႈၼမ် လိူၵ်ႈၸႂ်ႉ LEFT JOIN လိူဝ် RIGHT JOIN?",
    [
      "ၵွပ်ႈမၼ်းလူငၢႆႈ (Readability) လုၵ်ႉသၢႆႉၵႂႃႇၶႂႃ",
      "ၵွပ်ႈ LEFT JOIN ဝႆးလိူဝ်",
      "ၵွပ်ႈ RIGHT JOIN မီး Error ၼမ်",
      "ၵွပ်ႈ MySQL ဢမ်ႇပၼ်ၸႂ်ႉ",
    ],
    "Why do developers prefer LEFT JOIN over RIGHT JOIN?",
  ),

  Quiz(
    443,
    "သင် Table ၽၢႆႇၶႂႃမီး 10 ထႅဝ် ဢၼ်ဢမ်ႇ Match... RIGHT JOIN တေၼႄၵႃႈလၢႆထႅဝ်?",
    [
      "ၼႄတင်း 10 ထႅဝ် (သေၽၢႆႇသၢႆႉပဵၼ် NULL)",
      "ဢမ်ႇၼႄ",
      "ၼႄၵူၺ်း 1 ထႅဝ်",
      "Error",
    ],
    "How many rows will a RIGHT JOIN show for 10 non-matching right-side records?",
  ),

  Quiz(
    444,
    "FULL JOIN ၸွႆႈသင်ၼႂ်းၵၢၼ်ၵူတ်ႇထတ်း (Auditing)?",
    [
      "ၸွႆႈႁႃၶေႃႈမုၼ်းဢၼ်ၵိုတ်း (Orphan records) တင်းသွင်ၽၢႆႇ",
      "ၸွႆႈယႃႉ Table",
      "ၸွႆႈ Backup",
      "ၸွႆႈပၼ် Password",
    ],
    "How does FULL JOIN help in auditing?",
  ),

  Quiz(
    445,
    "UNION တင်း UNION ALL ပႅၵ်ႇၵၼ်တီႈလႂ်?",
    [
      "UNION ယႃႉထႅဝ်ဢၼ်မိူၼ်ၵၼ်၊ UNION ALL ဢဝ်တင်းမူတ်း",
      "UNION ALL ဝႆးလိူဝ်",
      "UNION ဢဝ်တင်းမူတ်း",
      "ဢမ်ႇပႅၵ်ႇၵၼ်",
    ],
    "Difference between UNION and UNION ALL?",
  ),

  Quiz(
    446,
    "Syntax တႃႇႁဵတ်း FULL JOIN ၼႂ်း MySQL?",
    [
      "LEFT JOIN ... UNION ... RIGHT JOIN",
      "FULL JOIN ... ON",
      "SELECT * FROM A, B",
      "JOIN ALL",
    ],
    "What is the syntax for simulating FULL JOIN in MySQL?",
  ),

  Quiz(
    447,
    "UNION ALL ဝႆးလိူဝ် UNION ၵွပ်ႈသင်?",
    [
      "ၵွပ်ႈမၼ်းဢမ်ႇလူဝ်ႇလႅၼ်ႇသွၵ်ႈႁႃ ထႅဝ်ဢၼ်မိူၼ်ၵၼ် (Distinct check)",
      "ၵွပ်ႈမၼ်းပဵၼ် Command မႂ်ႇ",
      "ၵွပ်ႈမၼ်းၸႂ်ႉ Memory ဢေႇ",
      "Error",
    ],
    "Why is UNION ALL faster than UNION?",
  ),

  Quiz(
    448,
    "တွၼ်ႈတႃႇၸႂ်ႉ UNION... တၢင်းၼမ် Column တေလႆႈပဵၼ်ၸိူင်ႉႁိုဝ်?",
    [
      "တေလႆႈတူဝ်ႇၵၼ် (Same number of columns)",
      "ဢမ်ႇလူဝ်ႇတူဝ်ႇၵၼ်",
      "ၽၢႆႇၼိုင်ႈ ၼမ်လိူဝ်လႆႈ",
      "Error",
    ],
    "What requirement is there for columns when using UNION?",
  ),

  // --- Lesson 44: SELF JOIN (449-460) ---
  Quiz(449, "SELF JOIN မၢႆထိုင်သင်?", [
    "ၵၢၼ် Join Table ဢၼ်လဵဝ်ၵၼ် သွင်ပွၵ်ႈ",
    "ၵၢၼ် Join တူဝ်ႇၵၼ်",
    "ၵၢၼ်ယႃႉ Table",
    "ၵၢၼ် Join 3 Tables",
  ], "What is a SELF JOIN?"),

  Quiz(
    450,
    "ၼႂ်း SELF JOIN... တွၼ်ႈဢၼ်လွင်ႈယႂ်ႇသုတ်းပဵၼ်သင်?",
    [
      "ၵၢၼ်ပၼ်ၸိုဝ်ႈ Alias ႁႂ်ႈပႅၵ်ႇၵၼ်",
      "ၵၢၼ်ပၼ် Password",
      "ၵၢၼ်သၢင်ႈ Table မႂ်ႇ",
      "ၵၢၼ်ယႃႉ Primary Key",
    ],
    "What is the most important part of a SELF JOIN?",
  ),

  Quiz(
    451,
    "Hierarchical Data တူဝ်ယင်ႇမၼ်းပဵၼ်သင်?",
    [
      "သဵၼ်ႈမၢႆ ႁူဝ်ၼႃႈ လႄႈ လုၵ်ႈၼွင်ႉ (Org Chart)",
      "သဵၼ်ႈမၢႆၵုၼ်ႇ",
      "သဵၼ်ႈမၢႆဝဵင်း",
      "သဵၼ်ႈမၢႆ ID",
    ],
    "What is an example of hierarchical data?",
  ),

  Quiz(452, "ႁဵတ်းသင်လႄႈ ႁဝ်းလူဝ်ႇၸႂ်ႉ SELF JOIN?", [
    "မိူဝ်ႈၶေႃႈမုၼ်းမီးသဵၼ်ႈၵွင်ႉၸူးတူဝ်မၼ်းၶိုၼ်း (Recursive)",
    "မိူဝ်ႈၶႂ်ႈ Join 2 Tables",
    "မိူဝ်ႈၶႂ်ႈယႃႉ Row",
    "မိူဝ်ႈၶႂ်ႈၼပ်ႉ SUM",
  ], "Why would you use a SELF JOIN?"),

  Quiz(
    453,
    "Manager ID ၵွင်ႉၸူး Employee ID ၼႂ်း Table လဵဝ်ၵၼ် ပဵၼ် Join ပိူင်လႂ်?",
    ["SELF JOIN", "INNER JOIN", "LEFT JOIN", "CROSS JOIN"],
    "Manager ID linked to Employee ID in the same table is which join?",
  ),

  Quiz(454, "Unary Relationship မၢႆထိုင်သင်?", [
    "သဵၼ်ႈၵွင်ႉၼႂ်း Table တူဝ်လဵဝ်",
    "သဵၼ်ႈၵွင်ႉ 2 Tables",
    "သဵၼ်ႈၵွင်ႉ 3 Tables",
    "ဢမ်ႇမီးသဵၼ်ႈၵွင်ႉ",
  ], "What is a Unary Relationship?"),

  Quiz(
    455,
    "ၼႂ်း SELF JOIN... သင်ၶႂ်ႈႁႃ 'လုၵ်ႈႁဵၼ်းယူႇဝဵင်းလဵဝ်ၵၼ်' လူဝ်ႇၸႅတ်ႈသင်?",
    [
      "a.city = b.city AND a.id <> b.id",
      "a.id = b.id",
      "a.city = b.city",
      "Error",
    ],
    "How to find students in the same city using SELF JOIN?",
  ),

  Quiz(
    456,
    "ႁဵတ်းသင်လႄႈ ႁဝ်းလူဝ်ႇၸႂ်ႉ Alias ၼႂ်း SELF JOIN?",
    [
      "တွၼ်ႈတႃႇၸႅၵ်ႇဝႃႈ Column လႂ် လုၵ်ႉတီႈ 'Role' လႂ်",
      "တွၼ်ႈတႃႇႁႂ်ႈ Query ဝႆး",
      "တွၼ်ႈတႃႇယႃႉ Table",
      "ဢမ်ႇလူဝ်ႇၸႂ်ႉၵေႃႈလႆႈ",
    ],
    "Why are aliases necessary in a SELF JOIN?",
  ),

  Quiz(457, "SELF JOIN ၸၢင်ႈၸႂ်ႉ LEFT JOIN လႆႈႁႃႉ?", [
    "လႆႈ (မိူၼ်ၼင်ႇ တႃႇၼႄ CEO ဢၼ်ဢမ်ႇမီးႁူဝ်ၼႃႈ)",
    "ဢမ်ႇလႆႈ",
    "လႆႈၵူၺ်း INNER",
    "Error",
  ], "Can a SELF JOIN be a LEFT JOIN?"),

  Quiz(
    458,
    "Recursive relationship တူဝ်ယင်ႇမၼ်းပဵၼ်သင်?",
    [
      "Comments လႄႈ Replies ၼႂ်း Table လဵဝ်ၵၼ်",
      "Students လႄႈ Courses",
      "Products လႄႈ Orders",
      "Error",
    ],
    "What is an example of a recursive relationship?",
  ),

  Quiz(
    459,
    "SELECT e.name, m.name FROM emp e, emp m ... ၼႆႉပဵၼ်သင်?",
    ["SELF JOIN (Older Syntax)", "INNER JOIN", "CROSS JOIN", "Error"],
    "What type of join is 'FROM emp e, emp m'?",
  ),

  Quiz(
    460,
    "SELF JOIN ၸၢင်ႈ Join လၢႆလၢႆၸၼ်ႉလႆႈႁႃႉ?",
    [
      "လႆႈ (Staff -> Supervisor -> Manager)",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်း 2 ၸၼ်ႉ",
      "Error",
    ],
    "Can a SELF JOIN have multiple levels?",
  ),

  // --- Lesson 45: MULTI-TABLE JOIN (461-472) ---
  Quiz(461, "Multi-table Join မၢႆထိုင်သင်?", [
    "ၵၢၼ် Join 3 Tables ၶိုၼ်ႈၼိူဝ်",
    "ၵၢၼ် Join 2 Tables",
    "ၵၢၼ်ယႃႉ Table",
    "ၵၢၼ် SELECT ၵူၺ်း",
  ], "What is a multi-table join?"),

  Quiz(462, "Bridge Table ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇၵွင်ႉ Table သွင်ဢၼ် ဢၼ်ဢမ်ႇၵွင်ႉၵၼ်တႅတ်ႈတေႃး",
    "တႃႇယႃႉၶေႃႈမုၼ်း",
    "တႃႇ Backup",
    "တႃႇပၼ် Password",
  ], "What is a Bridge Table used for?"),

  Quiz(
    463,
    "သင် Join 3 Tables (A, B, C)... လူဝ်ႇမီး JOIN Keyword ၵႃႈလၢႆဢၼ်?",
    ["2 ဢၼ်", "3 ဢၼ်", "1 ဢၼ်", "4 ဢၼ်"],
    "How many JOIN keywords are needed to join 3 tables?",
  ),

  Quiz(
    464,
    "Junction Table တူဝ်ယင်ႇမၼ်းပဵၼ်သင်?",
    [
      "Enrollments (ၵွင်ႉ Students လႄႈ Courses)",
      "Students",
      "Courses",
      "Error",
    ],
    "What is an example of a junction table?",
  ),

  Quiz(
    465,
    "Multi-table Join ၸၢင်ႈမေႃး (Mix) INNER လႄႈ LEFT လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်း INNER", "လႆႈၵူၺ်း LEFT"],
    "Can you mix INNER and LEFT joins in a multi-table join?",
  ),

  Quiz(
    466,
    "သင် Join Table ၼမ်ႁႅင်း (မိူၼ်ၼင်ႇ 10+) တေပဵၼ်သင်?",
    [
      "Query တေၸႃႉလိူဝ်ၵဝ်ႇ (Performance drop)",
      "Query တေဝႆး",
      "Error",
      "ယႃႉ Database",
    ],
    "What happens if you join too many tables (e.g., 10+)?",
  ),

  Quiz(
    467,
    "ၼႂ်း Multi-table Join... Order ႁင်း JOIN လွင်ႈယႂ်ႇႁႃႉ?",
    [
      "ယႂ်ႇ (လူဝ်ႇၵွင်ႉပဵၼ်သၢႆၸိူၵ်ႈ တႄႇတီႈ Main Table)",
      "ဢမ်ႇယႂ်ႇ",
      "ယႂ်ႇၵူၺ်းၼႂ်း ID",
      "Error",
    ],
    "Does the join order matter in a multi-table join?",
  ),

  Quiz(
    468,
    "Junction Table ၵႆႉမီးသင်ယူႇၼႂ်းမၼ်း?",
    [
      "Foreign Keys လုၵ်ႉတီႈသွင် Table",
      "Primary Key ၵူၺ်း",
      "ၶေႃႈမုၼ်းလိၵ်ႈယၢဝ်းယၢဝ်း",
      "Error",
    ],
    "What does a junction table usually contain?",
  ),

  Quiz(469, "Join Path မၢႆထိုင်သင်?", [
    "သဵၼ်ႈတၢင်းၵၢၼ်ၵွင်ႉ Table (A -> B -> C)",
    "ၸိုဝ်ႈ Table",
    "ID",
    "Error",
  ], "What is a Join Path?"),

  Quiz(
    470,
    "SELECT ... FROM A JOIN B ON A.id = B.id JOIN C ON B.id = C.id; ပဵၼ်သင်?",
    ["Multi-table Join", "Self Join", "Union", "Error"],
    "Identify: FROM A JOIN B ON... JOIN C ON...",
  ),

  Quiz(
    471,
    "ႁဵတ်းသင်လႄႈ ႁဝ်းလူဝ်ႇ Alias ၼႂ်း Multi-table Join?",
    [
      "တွၼ်ႈတႃႇႁႂ်ႈ Code သႅၼ်ႈသႂ် လႄႈ ၸႅၵ်ႇ Column လႆႈငၢႆႈ",
      "တွၼ်ႈတႃႇႁႂ်ႈ Query ဝႆး",
      "တွၼ်ႈတႃႇယႃႉ Row",
      "ဢမ်ႇလူဝ်ႇၸႂ်ႉ",
    ],
    "Why are aliases used in multi-table joins?",
  ),

  Quiz(
    472,
    "Many-to-Many Relationship လူဝ်ႇ Table ၵႃႈလၢႆဢၼ် တႃႇ Join?",
    ["3 ဢၼ် (2 Data Tables + 1 Junction Table)", "2 ဢၼ်", "1 ဢၼ်", "4 ဢၼ်"],
    "How many tables are involved in joining a Many-to-Many relationship?",
  ),

  // --- Lesson 46: AGGREGATE FUNCTIONS (473-484) ---
  Quiz(473, "Aggregate Functions မၢႆထိုင်သင်?", [
    "Functions ဢၼ်ဢဝ်ၶေႃႈမုၼ်းလၢႆထႅဝ် မႃးၼပ်ႉသွၼ်ႇပဵၼ်ၵႃႈၶၼ်လဵဝ်",
    "Functions ဢၼ်ယႃႉ Row",
    "Functions ဢၼ်မႄး Table",
    "Functions ၸတ်းလႅၼ်ႇ",
  ], "What are aggregate functions?"),

  Quiz(474, "COUNT(*) ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "ၼပ်ႉတၢင်းၼမ်ထႅဝ်တင်းမူတ်း (ပႃးတင်း NULL)",
    "ႁူမ်ႈငိုၼ်း",
    "ႁႃၵႄႈၵၢင်",
    "Error",
  ], "What does COUNT(*) do?"),

  Quiz(475, "SUM() ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "ႁူမ်ႈၵႃႈၶၼ်တူဝ်ၼပ်ႉတင်းမူတ်း",
    "ၼပ်ႉထႅဝ်",
    "ႁႃၵႃႈၶၼ်ဢေႇသုတ်း",
    "Error",
  ], "What is the purpose of SUM()?"),

  Quiz(476, "AVG() ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "ႁႃၵႃႈၶၼ်ၵႄႈၵၢင် (Average)",
    "ႁူမ်ႈငိုၼ်း",
    "ၼပ်ႉထႅဝ်",
    "Error",
  ], "What is the purpose of AVG()?"),

  Quiz(477, "MIN() လႄႈ MAX() ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "ႁႃၵႃႈၶၼ်ဢေႇသုတ်း လႄႈ ၼမ်သုတ်း",
    "ၼပ်ႉထႅဝ်",
    "ႁႃၵႄႈၵၢင်",
    "Error",
  ], "What do MIN() and MAX() do?"),

  Quiz(
    478,
    "Aggregate Functions တေႁဵတ်းၸိူင်ႉႁိုဝ် တင်း NULL?",
    [
      "ၶၢမ်ႈ (Ignore) NULL ပႅတ်ႈ (ၼွၵ်ႈသေ COUNT(*))",
      "ၼပ်ႉပဵၼ် 0",
      "Error",
      "ယႃႉ Row",
    ],
    "How do aggregate functions handle NULL values?",
  ),

  Quiz(
    479,
    "COUNT(column_name) တင်း COUNT(*) ပႅၵ်ႇၵၼ်ၸိူင်ႉႁိုဝ်?",
    [
      "COUNT(col) ဢမ်ႇၼပ်ႉ NULL, COUNT(*) ၼပ်ႉတင်းမူတ်း",
      "မိူၼ်ၵၼ်",
      "COUNT(*) ဝႆးလိူဝ်",
      "Error",
    ],
    "Difference between COUNT(column) and COUNT(*)?",
  ),

  Quiz(
    480,
    "SELECT SUM(price) FROM products WHERE cat_id = 1; ႁဵတ်းသင်?",
    [
      "ႁူမ်ႈငိုၼ်းၵုၼ်ႇ ၵူၺ်းၼႂ်း Category 1",
      "ႁူမ်ႈငိုၼ်းၵုၼ်ႇတင်း Table",
      "ၼပ်ႉၵုၼ်ႇ",
      "Error",
    ],
    "What does SUM(price) with a WHERE clause do?",
  ),

  Quiz(
    481,
    "SELECT COUNT(DISTINCT city) FROM students; ႁဵတ်းသင်?",
    [
      "ၼပ်ႉဝဵင်း ဢၼ်ဢမ်ႇမိူၼ်ၵၼ် (Unique cities)",
      "ၼပ်ႉလုၵ်ႈႁဵၼ်းတင်းမူတ်း",
      "ၼပ်ႉဝဵင်းတင်းမူတ်း (ပႃးတင်းဢၼ်သမ်ႉၵၼ်)",
      "Error",
    ],
    "What does COUNT(DISTINCT city) do?",
  ),

  Quiz(
    482,
    "AVG() ၸၢင်ႈၸႂ်ႉတင်း Column လိၵ်ႈ (VARCHAR) လႆႈႁႃႉ?",
    [
      "ဢမ်ႇလႆႈ (လႆႈၵူၺ်းတူဝ်ၼပ်ႉ Numeric)",
      "လႆႈ",
      "လႆႈၵူၺ်းၼႂ်း MySQL",
      "Error",
    ],
    "Can AVG() be used on a VARCHAR column?",
  ),

  Quiz(483, "MAX(name) တေၼႄသင်?", [
    "ၸိုဝ်ႈဢၼ်ယူႇၽၢႆႇလင်သုတ်း ၸွမ်းတူဝ်လိၵ်ႈ (Z-A)",
    "ၸိုဝ်ႈဢၼ်ယၢဝ်းသုတ်း",
    "Error",
    "NULL",
  ], "What does MAX() return on a string column?"),

  Quiz(
    484,
    "ႁဵတ်းသင်လႄႈ ႁဝ်းလူဝ်ႇၸႂ်ႉ 'AS' ၸွမ်း Aggregate Function?",
    [
      "တွၼ်ႈတႃႇပၼ်ၸိုဝ်ႈ Column ႁႂ်ႈ App ႁဝ်းလူငၢႆႈ",
      "တွၼ်ႈတႃႇႁႂ်ႈ Query ဝႆး",
      "တွၼ်ႈတႃႇယႃႉ Row",
      "ဢမ်ႇလူဝ်ႇၸႂ်ႉ",
    ],
    "Why use 'AS' with aggregate functions?",
  ),

  // --- Lesson 47: GROUP BY (485-496) ---
  Quiz(485, "GROUP BY ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "ၸႅၵ်ႇထႅဝ်ဢၼ်မိူၼ်ၵၼ် ပဵၼ်ၸုမ်း သေၼပ်ႉသွၼ်ႇ",
    "ၸတ်းလႅၼ်ႇၶေႃႈမုၼ်း",
    "ယႃႉ Row",
    "Join Table",
  ], "What is the purpose of GROUP BY?"),

  Quiz(
    486,
    "SELECT Rule ၼႂ်း GROUP BY မၢႆထိုင်သင်?",
    [
      "Column ဢၼ် SELECT မႃး (ဢၼ်ဢမ်ႇၸႂ်ႈ Aggregate) တေလႆႈမီးၼႂ်း GROUP BY",
      "SELECT * လႆႈတႃႇသေႇ",
      "ဢမ်ႇလူဝ်ႇ GROUP BY ၵေႃႈလႆႈ",
      "Error",
    ],
    "What is the SELECT rule in GROUP BY?",
  ),

  Quiz(
    487,
    "SELECT city, COUNT(*) FROM students GROUP BY city; ၼႄသင်?",
    [
      "ၼႄတၢင်းၼမ်လုၵ်ႈႁဵၼ်း ၸႅၵ်ႇၸွမ်းဝဵင်း",
      "ၼႄၸိုဝ်ႈလုၵ်ႈႁဵၼ်းၵူႈၵေႃႉ",
      "ၼႄဝဵင်းလဵဝ်ၵူၺ်း",
      "Error",
    ],
    "What does GROUP BY city show?",
  ),

  Quiz(
    488,
    "GROUP BY ၸၢင်ႈၸႅၵ်ႇလၢႆလၢႆ Column ႁူမ်ႈၵၼ်လႆႈႁႃႉ?",
    [
      "လႆႈ (မိူၼ်ၼင်ႇ GROUP BY city, gender)",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်း 1 Column",
      "Error",
    ],
    "Can you group by multiple columns?",
  ),

  Quiz(
    489,
    "WHERE တင်း GROUP BY ဢၼ်လႂ်ႁဵတ်းၵၢၼ်ဢွၼ်တၢင်း?",
    [
      "WHERE (Filter ဢွၼ်တၢင်း ၸင်ႇ Group)",
      "GROUP BY",
      "ႁဵတ်းၸွမ်းၵၼ်",
      "Error",
    ],
    "Which is executed first: WHERE or GROUP BY?",
  ),

  Quiz(
    490,
    "Granularity ၼႂ်း Grouping မၢႆထိုင်သင်?",
    ["ၸၼ်ႉတၢင်းၸႅၼ်ႇလႅင်း ၼႂ်းၵၢၼ်ၸႅၵ်ႇၸုမ်း", "တၢင်းၼမ် Table", "ID", "Error"],
    "What is granularity in grouping?",
  ),

  Quiz(
    491,
    "သင် SELECT name, COUNT(*) ... GROUP BY city; (MySQL Version ၵဝ်ႇ)?",
    [
      "မၼ်းတေလိူၵ်ႈဢဝ် 'name' ဢၼ်ၼိုင်ႈမႃးၼႄ (ဢၼ်ဢမ်ႇမၢၼ်ႇမႅၼ်ႈ)",
      "မၼ်းတေ Error တႃႇသေႇ",
      "မၼ်းတေၼႄၵူႈၸိုဝ်ႈ",
      "Error",
    ],
    "What happens if you SELECT name but GROUP BY city?",
  ),

  Quiz(492, "GROUP BY ၸၢင်ႈၸႂ်ႉတင်း JOIN လႆႈႁႃႉ?", [
    "လႆႈ (ၵႆႉၸႂ်ႉတႃႇႁဵတ်း Report)",
    "ဢမ်ႇလႆႈ",
    "လႆႈၵူၺ်း INNER JOIN",
    "Error",
  ], "Can GROUP BY be used with JOIN?"),

  Quiz(
    493,
    "ORDER BY ယူႇၽၢႆႇၼႃႈ ႁိုဝ် ၽၢႆႇလင် GROUP BY?",
    [
      "ၽၢႆႇလင် (GROUP BY ဢွၼ်တၢင်း ၸင်ႇ ORDER BY)",
      "ၽၢႆႇၼႃႈ",
      "ယူႇတီႈလႂ်ၵေႃႈလႆႈ",
      "Error",
    ],
    "Does ORDER BY come before or after GROUP BY?",
  ),

  Quiz(
    494,
    "GROUP BY ၸၢင်ႈၸႂ်ႉ Expression (မိူၼ်ၼင်ႇ YEAR(date)) လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်း Column", "Error"],
    "Can you group by an expression like YEAR(date)?",
  ),

  Quiz(495, "Aggregation မၢႆထိုင်သင်?", [
    "ၵၢၼ်ႁူမ်ႈၶေႃႈမုၼ်းပဵၼ်ၸုမ်း လႄႈ ၼပ်ႉသွၼ်ႇ",
    "ၵၢၼ်ယႃႉ Row",
    "ၵၢၼ် Join",
    "Error",
  ], "What does aggregation mean?"),

  Quiz(
    496,
    "SELECT cat_id, SUM(price) FROM products GROUP BY cat_id; ႁဵတ်းသင်?",
    ["ႁူမ်ႈငိုၼ်းၵုၼ်ႇ ၸႅၵ်ႇၸွမ်း Category", "ၼပ်ႉၵုၼ်ႇ", "ႁႃၵႄႈၵၢင်", "Error"],
    "What does grouping by cat_id with SUM(price) do?",
  ),

  // --- Lesson 48: HAVING vs WHERE (497-508) ---
  Quiz(497, "HAVING ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇတတ်း (Filter) 'ၸုမ်း' ဝၢႆးသေ GROUP BY",
    "တႃႇတတ်းထႅဝ် ဢွၼ်တၢင်း GROUP BY",
    "တႃႇ Join Table",
    "တႃႇယႃႉ Row",
  ], "What is the purpose of HAVING?"),

  Quiz(
    498,
    "WHERE တင်း HAVING ပႅၵ်ႇၵၼ်တီႈလႂ်?",
    [
      "WHERE တတ်းထႅဝ် (Row), HAVING တတ်းၸုမ်း (Group)",
      "မိူၼ်ၵၼ်",
      "HAVING ဝႆးလိူဝ်",
      "Error",
    ],
    "Difference between WHERE and HAVING?",
  ),

  Quiz(
    499,
    "ႁဝ်းၸၢင်ႈၸႂ်ႉ Aggregate Function (မိူၼ်ၼင်ႇ SUM) ၼႂ်း WHERE လႆႈႁႃႉ?",
    ["ဢမ်ႇလႆႈ (လူဝ်ႇၸႂ်ႉၼႂ်း HAVING)", "လႆႈ", "လႆႈမၢင်ပွၵ်ႈ", "Error"],
    "Can aggregate functions be used in a WHERE clause?",
  ),

  Quiz(500, "HAVING COUNT(*) > 5 ႁဵတ်းသင်?", [
    "လိူၵ်ႈၵူၺ်းၸုမ်းဢၼ်မီးၶေႃႈမုၼ်း ၼမ်လိူဝ် 5 ထႅဝ်",
    "ၼပ်ႉထႅဝ်တင်းမူတ်း",
    "ယႃႉ 5 ထႅဝ်",
    "Error",
  ], "What does HAVING COUNT(*) > 5 do?"),

  Quiz(
    501,
    "ၸၼ်ႉၵၢၼ်ႁဵတ်းၵၢၼ် (Order of Execution) ဢၼ်မၢၼ်ႇမႅၼ်ႈ?",
    [
      "FROM -> WHERE -> GROUP BY -> HAVING -> SELECT",
      "SELECT -> FROM -> WHERE",
      "WHERE -> FROM -> HAVING",
      "GROUP BY -> WHERE -> SELECT",
    ],
    "What is the correct logical order of execution?",
  ),

  Quiz(
    502,
    "ႁဵတ်းသင်လႄႈ ႁဝ်းထုၵ်ႇလီတတ်း (Filter) ၼႂ်း WHERE လိူဝ် HAVING?",
    [
      "ၵွပ်ႈမၼ်းယွမ်းၵၢၼ်သူင်ႇၶေႃႈမုၼ်းၵႂႃႇၼပ်ႉ (Performance)",
      "ၵွပ်ႈ WHERE တႅမ်ႈငၢႆႈ",
      "ၵွပ်ႈ HAVING ၸႃႉလိူဝ်",
      "Error",
    ],
    "Why prefer WHERE over HAVING when possible?",
  ),

  Quiz(
    503,
    "HAVING ၸၢင်ႈၸႂ်ႉ Alias ၼႂ်း MySQL လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်းၼႂ်း WHERE", "Error"],
    "Can HAVING use an alias in MySQL?",
  ),

  Quiz(504, "WHERE ၸၢင်ႈၸႂ်ႉ Alias လႆႈႁႃႉ?", [
    "ဢမ်ႇလႆႈ (ၵွပ်ႈ SELECT ယဝ်ႉဝၢႆး WHERE)",
    "လႆႈ",
    "လႆႈၵူၺ်းတူဝ်ၼပ်ႉ",
    "Error",
  ], "Can WHERE use an alias?"),

  Quiz(
    505,
    "HAVING ၸၢင်ႈၸႂ်ႉလူၺ်ႈဢမ်ႇမီး GROUP BY လႆႈႁႃႉ?",
    ["လႆႈ (မၼ်းတေၼပ်ႉတင်း Table ပဵၼ် 1 ၸုမ်း)", "ဢမ်ႇလႆႈ", "Error", "NULL"],
    "Can HAVING exist without a GROUP BY?",
  ),

  Quiz(
    506,
    "SELECT city FROM students GROUP BY city HAVING city = 'Muse'; ၼႆႉလီႁႃႉ?",
    [
      "ဢမ်ႇလီ (ထုၵ်ႇလီတတ်း 'Muse' ၼႂ်း WHERE ဝႆႉဢွၼ်တၢင်း)",
      "လီတႄႉတႄႉ",
      "Error",
      "NULL",
    ],
    "Is filtering a simple column in HAVING efficient?",
  ),

  Quiz(507, "Aggregate Predicate မၢႆထိုင်သင်?", [
    "သႅၼ်ႇသိုၵ်း ဢၼ်ယူႇၼႂ်း HAVING (မိူၼ်ၼင်ႇ SUM > 100)",
    "WHERE Clause",
    "SELECT Clause",
    "Error",
  ], "What is an aggregate predicate?"),

  Quiz(
    508,
    "သင်ၶႂ်ႈႁႃ 'ဝဵင်းဢၼ်မီးလုၵ်ႈႁဵၼ်းယိင်း ၼမ်လိူဝ် 10 ၵေႃႉ'?",
    [
      "WHERE gender='F' ... GROUP BY city HAVING COUNT(*) > 10",
      "HAVING gender='F' AND COUNT(*) > 10",
      "WHERE COUNT(*) > 10",
      "Error",
    ],
    "How to find cities with more than 10 female students?",
  ),

  // --- Lesson 49: SUBQUERIES I (509-520) ---
  Quiz(509, "Subquery မၢႆထိုင်သင်?", [
    "Query ဢၼ်တႅမ်ႈဝႆႉၼႂ်းၶွပ်ႇ ( ) ၼႂ်းထႅင်ႈ Query ၼိုင်ႈ",
    "Query ဢၼ်ယႃႉ Table",
    "Query ဢၼ်ဝႆးႁႅင်း",
    "Error",
  ], "What is a subquery?"),

  Quiz(
    510,
    "Scalar Subquery သူင်ႇၽွၼ်းလႆႈမႃးၵႃႈလၢႆ?",
    ["1 ထႅဝ် လႄႈ 1 Column (ၵႃႈၶၼ်လဵဝ်)", "လၢႆထႅဝ်", "လၢႆ Column", "တင်း Table"],
    "What does a scalar subquery return?",
  ),

  Quiz(
    511,
    "Inner Query တင်း Outer Query ဢၼ်လႂ်ႁဵတ်းၵၢၼ်ဢွၼ်တၢင်း?",
    [
      "Inner Query (ၼႂ်းၶွပ်ႇ)",
      "Outer Query (ၼွၵ်ႈၶွပ်ႇ)",
      "ႁဵတ်းၸွမ်းၵၼ်",
      "Error",
    ],
    "Which is executed first: Inner or Outer query?",
  ),

  Quiz(
    512,
    "ႁဵတ်းသင်လႄႈ ႁဝ်းၸႂ်ႉ Subquery ၼႂ်း WHERE?",
    [
      "တွၼ်ႈတႃႇတႅၵ်ႈ (Compare) ၵႃႈၶၼ် ဢၼ်ႁဝ်းဢမ်ႇပႆႇႁူႉတႅတ်ႈတေႃး",
      "တွၼ်ႈတႃႇ Join Table",
      "တွၼ်ႈတႃႇယႃႉ Row",
      "Error",
    ],
    "Why use a subquery in a WHERE clause?",
  ),

  Quiz(513, "Nested SELECT မၢႆထိုင်သင်?", [
    "ၵၢၼ်သႂ်ႇ Subquery ဝႆႉၼႂ်း SELECT Clause",
    "ၵၢၼ်ယႃႉ Table",
    "ၵၢၼ် Join",
    "Error",
  ], "What is a nested SELECT?"),

  Quiz(
    514,
    "သင် Scalar Subquery သူင်ႇမႃး 2 ထႅဝ်... Query တေပဵၼ်သင်?",
    [
      "Error (Subquery returns more than 1 row)",
      "မၼ်းတေလိူၵ်ႈဢဝ်ဢၼ်ၼိုင်ႈ",
      "မၼ်းတေၼႄ NULL",
      "Error",
    ],
    "What happens if a scalar subquery returns 2 rows?",
  ),

  Quiz(
    515,
    "Subquery ၼႂ်း SELECT Clause လူဝ်ႇမီးသင်တႃႇသေႇ?",
    ["AS (Alias) တႃႇပၼ်ၸိုဝ်ႈ Column", "WHERE Clause", "GROUP BY", "Error"],
    "What should a subquery in the SELECT clause always have?",
  ),

  Quiz(516, "Derived Table မၢႆထိုင်သင်?", [
    "Subquery ဢၼ်ယူႇၼႂ်း FROM Clause",
    "Primary Table",
    "Temporary Table",
    "Error",
  ], "What is a Derived Table?"),

  Quiz(
    517,
    "Subquery ၸၢင်ႈၸႂ်ႉ Operator 'IN' ၸွမ်းလႆႈႁႃႉ?",
    [
      "လႆႈ (မိူၼ်ၼင်ႇ WHERE id IN (SELECT...))",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်း Scalar",
      "Error",
    ],
    "Can a subquery be used with the 'IN' operator?",
  ),

  Quiz(
    518,
    "Subquery vs JOIN: ဢၼ်လႂ်ဝႆးလိူဝ် (Performance)?",
    ["JOIN (ၵမ်ႈၼမ်)", "Subquery", "မိူၼ်ၵၼ်", "Error"],
    "Which is generally faster: Subquery or JOIN?",
  ),

  Quiz(
    519,
    "ႁႃၵုၼ်ႇဢၼ်ပႅင်းလိူဝ် 'ၵႃႈၵႄႈၵၢင်' (AVG) လူဝ်ႇၸႂ်ႉသင်?",
    [
      "WHERE price > (SELECT AVG(price) FROM products)",
      "WHERE price > AVG(price)",
      "HAVING price > AVG",
      "Error",
    ],
    "How to find products priced above average?",
  ),

  Quiz(
    520,
    "Subquery ၸၢင်ႈသွၼ်ႉၵၼ် (Nested) လၢႆၸၼ်ႉလႆႈႁႃႉ?",
    ["လႆႈ (ၵူၺ်းၵႃႈ ၸႃႉ လႄႈ လူယၢပ်ႇ)", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်း 2 ၸၼ်ႉ", "Error"],
    "Can subqueries be nested multiple levels deep?",
  ),

  // --- Lesson 50: CORRELATED SUBQUERIES (521-532) ---
  Quiz(521, "Correlated Subquery မၢႆထိုင်သင်?", [
    "Subquery ဢၼ်ပိုင်ႈဢိင် (Refer) ၶေႃႈမုၼ်းလုၵ်ႉတီႈ Outer Query",
    "Subquery ဢၼ်ႁဵတ်းၵၢၼ်ႁင်းမၼ်း",
    "Query ဢၼ်ယႃႉ Table",
    "Error",
  ], "What is a correlated subquery?"),

  Quiz(522, "EXISTS Operator ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "ၸႅတ်ႈတူၺ်းဝႃႈ Subquery သူင်ႇထႅဝ် (Row) မႃးႁႃႉ",
    "ႁႃၵႃႈၶၼ် SUM",
    "Join Table",
    "Error",
  ], "What is the purpose of EXISTS?"),

  Quiz(
    523,
    "Correlated Subquery ႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?",
    [
      "Row-by-Row (ထႅဝ်ပၼ်ထႅဝ်)",
      "ႁဵတ်းၵမ်းလဵဝ်တင်း Table",
      "ဝႆးလိူဝ် JOIN",
      "Error",
    ],
    "How does a correlated subquery execute?",
  ),

  Quiz(
    524,
    "ၼႂ်း EXISTS (SELECT ...) ... ႁဵတ်းသင်ႁဝ်းၵႆႉၸႂ်ႉ 'SELECT 1'?",
    [
      "ၵွပ်ႈ Database ဢမ်ႇလူဝ်ႇ Data ၵူၺ်းလူဝ်ႇႁူႉဝႃႈ 'မီးထႅဝ်' ႁႃႉ",
      "ၵွပ်ႈမၼ်းပဵၼ် ID",
      "ၵွပ်ႈမၼ်းဝႆး",
      "Error",
    ],
    "Why is 'SELECT 1' common in EXISTS subqueries?",
  ),

  Quiz(
    525,
    "EXISTS vs IN: ဢၼ်လႂ်ဝႆးလိူဝ် တႃႇ Table ယႂ်ႇၼမ်?",
    [
      "EXISTS (ၵွပ်ႈမၼ်းၵိုတ်းၵမ်းလဵဝ် မိူဝ်ႈႁၼ်ထႅဝ်ဢွၼ်တၢင်း)",
      "IN",
      "မိူၼ်ၵၼ်",
      "Error",
    ],
    "Which is faster for large tables: EXISTS or IN?",
  ),

  Quiz(526, "NOT EXISTS ၸွႆႈသင်?", [
    "ႁႃၶေႃႈမုၼ်းဢၼ်ဢမ်ႇပႆႇမီးသဵၼ်ႈၵွင်ႉ (Orphans)",
    "ႁႃၶေႃႈမုၼ်းဢၼ် Match",
    "ယႃႉ Row",
    "Error",
  ], "What does NOT EXISTS help with?"),

  Quiz(
    527,
    "Correlated Subquery ၸၢင်ႈႁဵတ်းႁႂ်ႈ Query ၸႃႉလႆႈႁႃႉ?",
    [
      "လႆႈ (ၵွပ်ႈမၼ်းလႆႈလႅၼ်ႇ Query ၼႂ်း ၵူႈထႅဝ်)",
      "ဢမ်ႇလႆႈ",
      "မၼ်းဝႆးတႃႇသေႇ",
      "Error",
    ],
    "Can correlated subqueries cause performance issues?",
  ),

  Quiz(528, "EXISTS သူင်ႇသင်မႃး?", [
    "True ႁိုဝ် False (Boolean)",
    "မၢႆ ID",
    "NULL",
    "Error",
  ], "What does EXISTS return?"),

  Quiz(
    529,
    "သင် Subquery သူင်ႇ NULL မႃး... EXISTS တေပဵၼ်သင်?",
    ["True (ၵွပ်ႈ NULL ၵေႃႈၼပ်ႉပဵၼ်ထႅဝ် 1 ထႅဝ်)", "False", "NULL", "Error"],
    "What if a subquery returns a row with NULL in EXISTS?",
  ),

  Quiz(
    530,
    "ႁဵတ်းသင်လႄႈ ႁဝ်းလူဝ်ႇ Table Alias ၼႂ်း Correlated Subquery?",
    [
      "တွၼ်ႈတႃႇၵွင်ႉ Column ၼႂ်း လႄႈ ၼွၵ်ႈ ႁႂ်ႈၸႅၵ်ႇၵၼ်လႆႈ",
      "တွၼ်ႈတႃႇႁႂ်ႈ Query ဝႆး",
      "ဢမ်ႇလူဝ်ႇၸႂ်ႉ",
      "Error",
    ],
    "Why are table aliases needed in correlated subqueries?",
  ),

  Quiz(
    531,
    "EXISTS ၸၢင်ႈၸႂ်ႉၼႂ်း WHERE လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်းၼႂ်း SELECT", "Error"],
    "Can EXISTS be used in a WHERE clause?",
  ),

  Quiz(
    532,
    "Correlated Subquery ၵႆႉၸႂ်ႉၼႂ်း DELETE ႁႃႉ?",
    [
      "ၸႂ်ႈ (တႃႇယႃႉလုၵ်ႈႁဵၼ်း ဢၼ်ဢမ်ႇမီး Grade)",
      "ဢမ်ႇၸႂ်ႈ",
      "လႆႈၵူၺ်း SELECT",
      "Error",
    ],
    "Is it common to use correlated subqueries in DELETE?",
  ),

  // --- Lesson 51: UNION & CTEs (533-550) ---
  Quiz(
    533,
    "UNION Operator ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇႁူမ်ႈ Result sets ၸွမ်းထႅဝ် (Vertical)",
      "တႃႇ Join Table ၸွမ်း Column",
      "တႃႇယႃႉ Table",
      "Error",
    ],
    "What is the purpose of the UNION operator?",
  ),

  Quiz(534, "CTE ယေႃႈမႃးတီႈသင်?", [
    "Common Table Expression",
    "Core Table Engine",
    "Central Template Entry",
    "Custom Text Editor",
  ], "What does CTE stand for?"),

  Quiz(
    535,
    "Keyword လႂ် ဢၼ်ၸႂ်ႉတႃႇသၢင်ႈ CTE?",
    ["WITH", "CREATE", "DEFINE", "AS"],
    "Which keyword is used to create a CTE?",
  ),

  Quiz(
    536,
    "UNION ALL တင်း UNION ဢၼ်လႂ်ဝႆးလိူဝ်?",
    ["UNION ALL", "UNION", "မိူၼ်ၵၼ်", "Error"],
    "Which is faster: UNION or UNION ALL?",
  ),

  Quiz(
    537,
    "တွၼ်ႈတႃႇၸႂ်ႉ UNION... Data Types ၼႂ်း Column တေလႆႈပဵၼ်ၸိူင်ႉႁိုဝ်?",
    ["တေလႆႈမိူၼ်ၵၼ် (Compatible)", "ဢမ်ႇလူဝ်ႇမိူၼ်", "ပႅၵ်ႇၵၼ်လႆႈ", "Error"],
    "What requirement is there for column data types in UNION?",
  ),

  Quiz(538, "CTE ၸွႆႈသင်ၼႂ်းၵၢၼ်တႅမ်ႈ Code?", [
    "ၸွႆႈႁႂ်ႈ Code လူငၢႆႈ (Readability) လႄႈ ၸႅၵ်ႇပဵၼ်တွၼ်ႈ",
    "ၸွႆႈႁႂ်ႈ Database ဝႆး",
    "ၸွႆႈယႃႉ Row",
    "Error",
  ], "How does a CTE help in coding?"),

  Quiz(539, "CTE မီးသၢႆၸႂ် (Scope) ၵႃႈလၢႆ?", [
    "ၵူၺ်းၼႂ်း Query ဢၼ်မၼ်းယူႇၼၼ်ႉ",
    "တင်း Database",
    "တင်း Session",
    "တႃႇသေႇ",
  ], "What is the scope of a CTE?"),

  Quiz(540, "UNION ၸွႆႈယႃႉသင်ပႅတ်ႈ?", [
    "ထႅဝ်ဢၼ်မိူၼ်ၵၼ် (Duplicate rows)",
    "NULL values",
    "Column names",
    "Error",
  ], "What does UNION remove?"),

  Quiz(541, "Recursive CTE ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇႁႃၶေႃႈမုၼ်းပဵၼ်ၸၼ်ႉ (Tree structure)",
    "တႃႇ Join 2 Tables",
    "တႃႇယႃႉ Table",
    "Error",
  ], "What is a recursive CTE used for?"),

  Quiz(
    542,
    "ႁဝ်းၸၢင်ႈမီးလၢႆလၢႆ CTE ၼႂ်း Query လဵဝ်ၵၼ်လႆႈႁႃႉ?",
    ["လႆႈ (ၸႂ်ႉ Comma ',' ၸႅၵ်ႇၵၼ်)", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်း 2 ဢၼ်", "Error"],
    "Can you have multiple CTEs in one query?",
  ),

  Quiz(
    543,
    "ၸိုဝ်ႈ Column ၼႂ်း UNION ၽွၼ်းလႆႈ တေဢဝ်ၸွမ်း Table လႂ်?",
    ["Table တူဝ်ဢွၼ်တၢင်းသုတ်း", "Table တူဝ်ၽၢႆႇလင်", "ပဵၼ် NULL", "Error"],
    "Which table's column names are used in a UNION result?",
  ),

  Quiz(
    544,
    "JOIN တင်း UNION ပႅၵ်ႇၵၼ်ၸိူင်ႉႁိုဝ်?",
    [
      "JOIN ႁူမ်ႈ Column (Horizontal), UNION ႁူမ်ႈထႅဝ် (Vertical)",
      "မိူၼ်ၵၼ်",
      "UNION ဝႆးလိူဝ်",
      "Error",
    ],
    "Difference between JOIN and UNION?",
  ),

  Quiz(
    545,
    "CTE ၸၢင်ႈၸႂ်ႉ JOIN ႁူမ်ႈတင်း Table တႄႉ လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "Error", "NULL"],
    "Can a CTE be joined with a regular table?",
  ),

  Quiz(
    546,
    "UNION ၸၢင်ႈၸႂ်ႉ ORDER BY လႆႈတီႈလႂ်?",
    ["ၽၢႆႇလင်သုတ်း ႁင်း Query သုတ်းတွၼ်ႈ", "ၵႄႈၵၢင်", "ၽၢႆႇၼႃႈ", "Error"],
    "Where can you use ORDER BY with UNION?",
  ),

  Quiz(547, "CTE ပဵၼ် Temporary Table တႄႉႁႃႉ?", [
    "ဢမ်ႇၸႂ်ႈ (မၼ်းပဵၼ် Result set ၸူဝ်ႈၶၢဝ်းၼႂ်း Memory)",
    "ၸႂ်ႈ",
    "လႆႈၵူၺ်းၼႂ်း MySQL",
    "Error",
  ], "Is a CTE a real temporary table?"),

  Quiz(
    548,
    "UNION ALL ၸၢင်ႈၸွႆႈႁူမ်ႈ Logs ၼမ်ၼမ်လႆႈႁႃႉ?",
    ["ၸႂ်ႈ (ၵွပ်ႈမၼ်းဝႆး)", "ဢမ်ႇလႆႈ", "Error", "NULL"],
    "Is UNION ALL useful for combining large logs?",
  ),

  Quiz(
    549,
    "WITH my_cte AS (...) SELECT * FROM my_cte; ၼႆႉပဵၼ်သင်?",
    ["CTE Syntax", "Subquery", "Union", "Error"],
    "Identify: WITH my_cte AS (...) SELECT...",
  ),

  Quiz(
    550,
    "ယဝ်ႉယဝ်ႉ Module 5! SQL တွၼ်ႈလႂ်ဢၼ်ႁဝ်းတေႁဵၼ်းသိုပ်ႇ?",
    [
      "Database Design & Normalization",
      "Basic SELECT",
      "INSERT ၵူၺ်း",
      "Error",
    ],
    "What's next after Module 5?",
  ),
];
List<Quiz> mysqlQuizM6 = [
  // --- Lesson 52: Views (551-562) ---
  Quiz(551, "View ၼႂ်း MySQL မၢႆထိုင်သင်?", [
    "Table တိူဝ်ႇၵႄႇ (Virtual Table) ဢၼ်သိမ်းဝႆႉ SELECT Statement",
    "Table ဢၼ်သိမ်းၶေႃႈမုၼ်းတႄႉဝႆႉၼႂ်း Disk",
    "ၵၢၼ် Backup ၶေႃႈမုၼ်း",
    "Command တႃႇယႃႉ Database",
  ], "What is a View in MySQL?"),

  Quiz(
    552,
    "ႁဵတ်းသင်လႄႈ ႁဝ်းလူဝ်ႇၸႂ်ႉ View တွၼ်ႈတႃႇ Security?",
    [
      "တွၼ်ႈတႃႇတတ်း Column ဢၼ်လွင်ႈယႂ်ႇပႅတ်ႈ သေပၼ်ပိူၼ်ႈတူၺ်းၵူၺ်းတွၼ်ႈဢၼ်ပၼ်သုၼ်ႇ",
      "တွၼ်ႈတႃႇသႂ်ႇ Password ပၼ် Table",
      "တွၼ်ႈတႃႇႁၢမ်ႈပိူၼ်ႈ SELECT Table",
      "တွၼ်ႈတႃႇယႃႉ User ပႅတ်ႈ",
    ],
    "Why use a View for security purposes?",
  ),

  Quiz(
    553,
    "View ၸၢင်ႈသိမ်းၶေႃႈမုၼ်း (Physical Data) ဝႆႉႁင်းမၼ်းႁႃႉ?",
    [
      "ဢမ်ႇသိမ်း (မၼ်းပိုင်ႈဢိင်ၸွမ်း Underlying Tables)",
      "သိမ်း",
      "သိမ်းၵူၺ်းတွၼ်ႈ Primary Key",
      "Error",
    ],
    "Does a View store physical data?",
  ),

  Quiz(
    554,
    "Command လႂ် ဢၼ်ၸႂ်ႉတႃႇသၢင်ႈ View?",
    ["CREATE VIEW", "MAKE VIEW", "NEW VIEW", "START VIEW"],
    "Which command is used to create a view?",
  ),

  Quiz(
    555,
    "သင် Table တႄႉ (Base Table) ထုၵ်ႇယႃႉပႅတ်ႈ... View တေပဵၼ်သင်?",
    [
      "View တေတၢႆ (Broken) သေၸႂ်ႉဢမ်ႇလႆႈ",
      "View တေသိမ်းၶေႃႈမုၼ်းဝႆႉယူႇ",
      "View တေမႄးတူဝ်မၼ်းၶိုၼ်း",
      "Error",
    ],
    "What happens to a View if the base table is dropped?",
  ),

  Quiz(
    556,
    "CREATE OR REPLACE VIEW ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇမႄး (Update) Logic ၼႂ်း View ဢၼ်မီးဝႆႉယဝ်ႉ",
      "တႃႇယႃႉ View",
      "တႃႇသၢင်ႈ Table မႂ်ႇ",
      "တႃႇပၼ် Permission",
    ],
    "What is CREATE OR REPLACE VIEW used for?",
  ),

  Quiz(
    557,
    "View ၸွႆႈသင်ၼႂ်းၵၢၼ်တႅမ်ႈ Query ဢၼ်ယုင်ႈယၢင်ႈ?",
    [
      "ၸွႆႈႁဵတ်းႁႂ်ႈမၼ်းငၢႆႈ (Simplicity) လူၺ်ႈၵၢၼ်သိမ်း JOIN ၼမ်ၼမ်ဝႆႉ",
      "ၸွႆႈႁႂ်ႈ Database ဝႆးလိူဝ်ၵဝ်ႇ",
      "ၸွႆႈယႃႉ Row ဢၼ်သွၼ်ႉၵၼ်",
      "ဢမ်ႇၸွႆႈသင်",
    ],
    "How does a View simplify complex queries?",
  ),

  Quiz(558, "Underlying Table မၢႆထိုင်သင်?", [
    "Table တႄႉ ဢၼ်မီးၶေႃႈမုၼ်းသိမ်းဝႆႉ ၽၢႆႇတႂ်ႈ View",
    "Table ၸူဝ်ႈၶၢဝ်း",
    "Database Name",
    "Error",
  ], "What is an underlying table?"),

  Quiz(
    559,
    "ႁဝ်းၸၢင်ႈ UPDATE ၶေႃႈမုၼ်းလုၵ်ႉတီႈ View လႆႈတႃႇသေႇႁႃႉ?",
    [
      "ဢမ်ႇလႆႈ (လႆႈၵူၺ်းမၢင်ပိူင် ဢၼ်ဢမ်ႇယုင်ႈယၢင်ႈ)",
      "လႆႈတႃႇသေႇ",
      "လႆႈၵူၺ်းၼႂ်း SELECT",
      "Error",
    ],
    "Can you always update data through a View?",
  ),

  Quiz(560, "DROP VIEW ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇယႃႉ View ပႅတ်ႈ လုၵ်ႉၼႂ်း Database",
    "တႃႇယႃႉၶေႃႈမုၼ်း",
    "တႃႇပိတ်း Database",
    "Error",
  ], "What does DROP VIEW do?"),

  Quiz(
    561,
    "WITH CHECK OPTION ၼႂ်း View ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇႁၢမ်ႈၵၢၼ် INSERT/UPDATE ဢၼ်ဢမ်ႇၵွင်ႉၵၢႆႇတင်း Condition ႁင်း View",
      "တႃႇၵူတ်ႇထတ်း Password",
      "တႃႇၼပ်ႉ SUM",
      "Error",
    ],
    "What is the purpose of WITH CHECK OPTION in a View?",
  ),

  Quiz(
    562,
    "View ၸႂ်ႉတီႈယူႇ (Disk Space) ၼမ်ႁႃႉ?",
    [
      "ဢမ်ႇၼမ် (ၵွပ်ႈမၼ်းသိမ်းၵူၺ်း Definition)",
      "ၼမ်ႁႅင်း",
      "မိူၼ်တင်း Table တႄႉ",
      "Error",
    ],
    "Does a View occupy significant disk space?",
  ),

  // --- Lesson 53: Stored Procedures (563-574) ---
  Quiz(563, "Stored Procedure မၢႆထိုင်သင်?", [
    "ၸုမ်း Code SQL ဢၼ်သိမ်းဝႆႉၼႂ်း Database သေႁွင်ႉၸႂ်ႉလႆႈလၢႆပွၵ်ႈ",
    "ၵၢၼ် Backup Database",
    "Table ၸူဝ်ႈၶၢဝ်း",
    "Error",
  ], "What is a Stored Procedure?"),

  Quiz(
    564,
    "Command လႂ် ဢၼ်ၸႂ်ႉတႃႇႁွင်ႉ Stored Procedure?",
    ["CALL", "RUN", "EXECUTE", "START"],
    "Which command is used to invoke a Stored Procedure?",
  ),

  Quiz(
    565,
    "Parameter ပိူင် 'OUT' ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇသူင်ႇၵႃႈၶၼ်လုၵ်ႉၼႂ်း Procedure ဢွၵ်ႇမႃးပၼ်ၽၢႆႇၼွၵ်ႈ",
      "တႃႇသူင်ႇၵႃႈၶၼ်ၶဝ်ႈၵႂႃႇ",
      "တႃႇယႃႉ Table",
      "Error",
    ],
    "What is an OUT parameter used for?",
  ),

  Quiz(
    566,
    "ႁဵတ်းသင်လႄႈ ႁဝ်းလူဝ်ႇၸႂ်ႉ DELIMITER // မိူဝ်ႈသၢင်ႈ Procedure?",
    [
      "တွၼ်ႈတႃႇႁၢမ်ႈ MySQL တတ်း Code မိူဝ်ႈႁၼ် ';' ၼႂ်း Procedure",
      "တွၼ်ႈတႃႇႁႂ်ႈ Code ဝႆး",
      "တွၼ်ႈတႃႇပၼ် Password",
      "Error",
    ],
    "Why is DELIMITER // used when creating a procedure?",
  ),

  Quiz(
    567,
    "Stored Procedure ဝႆးလိူဝ် SQL ธรรมဒါ ၵွပ်ႈသင်?",
    [
      "ၵွပ်ႈမၼ်းပဵၼ် Pre-compiled Code ၼႂ်း Server",
      "ၵွပ်ႈမၼ်းပဵၼ်လိၵ်ႈပွတ်း",
      "ၵွပ်ႈမၼ်းဢမ်ႇမီး WHERE",
      "Error",
    ],
    "Why can Stored Procedures be faster than regular SQL queries?",
  ),

  Quiz(568, "INOUT Parameter မၢႆထိုင်သင်?", [
    "ၵႃႈၶၼ်ဢၼ်သူင်ႇၶဝ်ႈလႆႈ လႄႈ ဢဝ်ဢွၵ်ႇလႆႈ တူဝ်လဵဝ်ၵၼ်",
    "ၵႃႈၶၼ်ဢၼ်ပဝ်ႇဝႆႉ",
    "Primary Key",
    "Error",
  ], "What is an INOUT parameter?"),

  Quiz(
    569,
    "Stored Procedure ၸၢင်ႈမီးလၢႆလၢႆ SQL Statement ႁူမ်ႈၵၼ်လႆႈႁႃႉ?",
    [
      "လႆႈ (မိူၼ်ၼင်ႇ INSERT သေ UPDATE ၸွမ်းၵၼ်)",
      "ဢမ်ႇလႆႈ",
      "လႆႈၵူၺ်း SELECT",
      "Error",
    ],
    "Can a Stored Procedure contain multiple SQL statements?",
  ),

  Quiz(570, "DROP PROCEDURE ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇယႃႉ Procedure ပႅတ်ႈ",
    "တႃႇယႃႉ Table",
    "တႃႇၵိုတ်း Database",
    "Error",
  ], "What does DROP PROCEDURE do?"),

  Quiz(
    571,
    "ႁဝ်းၸၢင်ႈၸႂ်ႉ Stored Procedure တွၼ်ႈတႃႇ Security လႆႈၸိူင်ႉႁိုဝ်?",
    [
      "ပၼ်သုၼ်ႇ User ႁွင်ႉ CALL ၵူၺ်း လူၺ်ႈဢမ်ႇပၼ် SELECT Table တႄႉ",
      "သႂ်ႇ Password ပၼ် Procedure",
      "ယႃႉ User",
      "Error",
    ],
    "How can Stored Procedures enhance security?",
  ),

  Quiz(
    572,
    "BEGIN ... END ၼႂ်း Procedure တႅၼ်းသင်?",
    [
      "တႅၼ်းၶွပ်ႇ (Block) ႁင်း Code ဢၼ်တေႁဵတ်းၵၢၼ်",
      "တႅၼ်းၸိုဝ်ႈ Table",
      "တႅၼ်း ID",
      "Error",
    ],
    "What do BEGIN and END represent in a procedure?",
  ),

  Quiz(
    573,
    "Stored Procedure ၸၢင်ႈသူင်ႇၽွၼ်းလႆႈ (Result Set) မႃးမိူၼ် SELECT ႁႃႉ?",
    ["ၸႂ်ႈ", "ဢမ်ႇၸႂ်ႈ", "လႆးၵူၺ်းတူဝ်ၼပ်ႉ", "Error"],
    "Can a Stored Procedure return a result set?",
  ),

  Quiz(
    574,
    "Parameter 'IN' ၼႂ်း Procedure မိူၼ်တင်းသင်?",
    [
      "Input ဢၼ်သူင်ႇၶဝ်ႈၵႂႃႇ",
      "Output ဢၼ်သူင်ႇဢွၵ်ႇ",
      "ၸိုဝ်ႈ Database",
      "Error",
    ],
    "What is an IN parameter equivalent to?",
  ),

  // --- Lesson 54: Logic & Control (575-586) ---
  Quiz(
    575,
    "DECLARE ၼႂ်း Procedure ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တွၼ်ႈတႃႇမၵ်းမၼ်ႈတူဝ်လႅၵ်ႈလၢႆႈ (Variable)",
      "တွၼ်ႈတႃႇသၢင်ႈ Table",
      "တွၼ်ႈတႃႇယႃႉ Row",
      "Error",
    ],
    "What is DECLARE used for in a procedure?",
  ),

  Quiz(
    576,
    "IF ... THEN ... ELSE ... END IF ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇလိူၵ်ႈတႅတ်ႈတတ်း (Conditional Logic)",
      "တႃႇၼပ်ႉ Loop",
      "တႃႇ Join Table",
      "Error",
    ],
    "What is IF-THEN-ELSE used for?",
  ),

  Quiz(577, "SET Keyword ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇပၼ်ၵႃႈၶၼ် (Assign value) ပၼ် Variable",
    "တႃႇသၢင်ႈ Variable",
    "တႃႇ SELECT ၶေႃႈမုၼ်း",
    "Error",
  ], "What is the SET keyword used for?"),

  Quiz(
    578,
    "CASE Statement ၵႆႉၸႂ်ႉမိူဝ်ႈလႂ်?",
    [
      "မိူဝ်ႈမီးတၢင်းလိူၵ်ႈ (Conditions) ၼမ်ၼမ်",
      "မိူဝ်ႈၶႂ်ႈယႃႉ Table",
      "မိူဝ်ႈၶႂ်ႈ Backup",
      "Error",
    ],
    "When is a CASE statement typically used?",
  ),

  Quiz(
    579,
    "DECLARE Variable တေလႆႈဝႆႉတီႈလႂ်?",
    [
      "ဝႆႉတီႈၼိူဝ်သုတ်း ဝၢႆးသေ BEGIN",
      "ဝႆႉတီႈလႂ်ၵေႃႈလႆႈ",
      "ဝႆႉတီႈလင် END",
      "Error",
    ],
    "Where must DECLARE statements be placed?",
  ),

  Quiz(580, "SIGNAL SQLSTATE ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇသူင်ႇ Error Message (Custom Error) ဢွၵ်ႇမႃး",
    "တႃႇပၼ်ၶႅၼ်းလိၵ်ႈ",
    "တႃႇပိတ်း Server",
    "Error",
  ], "What is SIGNAL SQLSTATE used for?"),

  Quiz(
    581,
    "တူဝ်လႅၵ်ႈလၢႆႈ (Variable) တင်း Column ပႅၵ်ႇၵၼ်ၸိူင်ႉႁိုဝ်?",
    [
      "Variable သိမ်းၵႃႈၶၼ်ၸူဝ်ႈၶၢဝ်းၼႂ်း Memory, Column သိမ်းၼႂ်း Table",
      "မိူၼ်ၵၼ်",
      "Column ဝႆးလိူဝ်",
      "Error",
    ],
    "Difference between a variable and a column?",
  ),

  Quiz(
    582,
    "IF score >= 80 THEN ... ၼႆႉပဵၼ်သင်?",
    ["Boolean Expression", "Table Name", "Loop", "Error"],
    "What is 'score >= 80' in an IF statement?",
  ),

  Quiz(
    583,
    "ELSE ၼႂ်း IF Statement မၢႆထိုင်သင်?",
    [
      "တွၼ်ႈဢၼ်တေႁဵတ်းၵၢၼ် သင်သႅၼ်ႇသိုၵ်းၽၢႆႇၼႃႈ ဢမ်ႇမၢၼ်ႇမႅၼ်ႈ (False)",
      "တွၼ်ႈတႄႇ",
      "တွၼ်ႈသုတ်း",
      "Error",
    ],
    "What does ELSE represent in an IF statement?",
  ),

  Quiz(
    584,
    "DEFAULT ၼႂ်း DECLARE ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇပၼ်ၵႃႈၶၼ်တႄႇ (Initial value) သင်ဢမ်ႇပႆႇမီးၵႃႈၶၼ်",
      "တႃႇယႃႉ Row",
      "တႃႇပၼ် Password",
      "Error",
    ],
    "What is DEFAULT used for in a DECLARE statement?",
  ),

  Quiz(
    585,
    "CASE ... WHEN ... ELSE ... END CASE; ပဵၼ်သင်?",
    ["Switch Logic", "Loop Logic", "Join Logic", "Error"],
    "What programming construct is CASE similar to?",
  ),

  Quiz(
    586,
    "ႁဝ်းၸၢင်ႈၸႂ်ႉ IF သွၼ်ႉ IF (Nested IF) လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်း 2 ၸၼ်ႉ", "Error"],
    "Can you use nested IF statements?",
  ),

  // --- Lesson 55: WHILE & REPEAT Loops (587-598) ---
  Quiz(587, "WHILE Loop တေႁဵတ်းၵၢၼ်မိူဝ်ႈလႂ်?", [
    "မိူဝ်ႈသႅၼ်ႇသိုၵ်း (Condition) တိုၵ်ႉပဵၼ် True ယူႇ",
    "မိူဝ်ႈသႅၼ်ႇသိုၵ်းပဵၼ် False",
    "ႁဵတ်းပွၵ်ႈလဵဝ်ယဝ်ႉၵိုတ်း",
    "Error",
  ], "When does a WHILE loop execute?"),

  Quiz(
    588,
    "REPEAT Loop တင်း WHILE Loop ပႅၵ်ႇၵၼ်တီႈလႂ်?",
    [
      "REPEAT ႁဵတ်းၵၢၼ်ဢွၼ်တၢင်းၼိုင်ႈပွၵ်ႈ ၸင်ႇၸႅတ်ႈသႅၼ်ႇသိုၵ်း",
      "WHILE ႁဵတ်းၵၢၼ်ဢွၼ်တၢင်း",
      "မိူၼ်ၵၼ်",
      "Error",
    ],
    "Difference between REPEAT and WHILE loops?",
  ),

  Quiz(589, "LEAVE Keyword ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇဢွၵ်ႇ (Break) လုၵ်ႉၼႂ်း Loop ၵမ်းလဵဝ်",
    "တႃႇသိုပ်ႇ Loop",
    "တႃႇယႃႉ Table",
    "Error",
  ], "What is the LEAVE keyword used for?"),

  Quiz(
    590,
    "ITERATE Keyword ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇၶၢမ်ႈ (Continue) ၵႂႃႇႁဵတ်းပွၵ်ႈၼႃႈၼႂ်း Loop",
      "တႃႇၵိုတ်း Loop",
      "တႃႇ INSERT ၶေႃႈမုၼ်း",
      "Error",
    ],
    "What is the ITERATE keyword used for?",
  ),

  Quiz(591, "Infinite Loop မၢႆထိုင်သင်?", [
    "Loop ဢၼ်ႁဵတ်းၵၢၼ်ဢမ်ႇၵိုတ်း သေႁဵတ်းႁႂ်ႈ Server ၶႅင်",
    "Loop ဢၼ်ႁဵတ်းၵၢၼ်ပွၵ်ႈလဵဝ်",
    "Loop ဢၼ်မီး Error",
    "Error",
  ], "What is an infinite loop?"),

  Quiz(
    592,
    "ႁဵတ်းသင်လႄႈ လူဝ်ႇသႂ်ႇ SET counter = counter + 1; ၼႂ်း Loop?",
    [
      "တႃႇထႅမ်ၵႃႈၶၼ် ႁႂ်ႈသႅၼ်ႇသိုၵ်းထိုင်တီႈၵိုတ်းလႆႈ",
      "တႃႇပၼ် Password",
      "တႃႇ SELECT ၶေႃႈမုၼ်း",
      "Error",
    ],
    "Why increment a counter inside a loop?",
  ),

  Quiz(
    593,
    "UNTIL ၼႂ်း REPEAT Loop ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇမၵ်းမၼ်ႈသႅၼ်ႇသိုၵ်း တႃႇၵိုတ်း Loop",
      "တႃႇတႄႇ Loop",
      "တႃႇ SELECT",
      "Error",
    ],
    "What is UNTIL used for in a REPEAT loop?",
  ),

  Quiz(594, "Loop Label ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇပၼ်ၸိုဝ်ႈ Loop ႁႂ်ႈ LEAVE ဢမ်ႇၼၼ် ITERATE ၸႂ်ႉလႆႈငၢႆႈ",
    "တႃႇပၼ်ၸိုဝ်ႈ Table",
    "တႃႇပၼ် Password",
    "Error",
  ], "What is a loop label used for?"),

  Quiz(
    595,
    "WHILE Loop တေၵူတ်ႇထတ်းသႅၼ်ႇသိုၵ်း မိူဝ်ႈလႂ်?",
    [
      "ဢွၼ်တၢင်းတေႁဵတ်းၵၢၼ် (Pre-test)",
      "ဝၢႆးသေႁဵတ်းၵၢၼ် (Post-test)",
      "ဢမ်ႇၵူတ်ႇထတ်း",
      "Error",
    ],
    "When does a WHILE loop check its condition?",
  ),

  Quiz(
    596,
    "REPEAT Loop တေၵူတ်ႇထတ်းသႅၼ်ႇသိုၵ်း မိူဝ်ႈလႂ်?",
    [
      "ဝၢႆးသေႁဵတ်းၵၢၼ်ယဝ်ႉ (Post-test)",
      "ဢွၼ်တၢင်းတေႁဵတ်းၵၢၼ်",
      "ဢမ်ႇၵူတ်ႇထတ်း",
      "Error",
    ],
    "When does a REPEAT loop check its condition?",
  ),

  Quiz(597, "Loop ၼႂ်း SQL ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇသၢင်ႈ Dummy Data ဢမ်ႇၼၼ် ႁဵတ်းၵၢၼ်သမ်ႉၵၼ်ၼိူဝ်ၶေႃႈမုၼ်း",
    "တႃႇ Join 2 Tables",
    "တႃႇယႃႉ Database",
    "Error",
  ], "Common use case for loops in SQL?"),

  Quiz(
    598,
    "ႁဵတ်းသင်လႄႈ ႁဝ်းဢမ်ႇထုၵ်ႇလီၸႂ်ႉ Loop ၼမ်လူၼ်ႉၼႂ်း SQL?",
    [
      "ၵွပ်ႈမၼ်းၸႃႉလိူဝ် Set-based operations",
      "ၵွပ်ႈမၼ်းတႅမ်ႈယၢပ်ႇ",
      "ၵွပ်ႈမၼ်းပၼ် NULL",
      "Error",
    ],
    "Why avoid overusing loops in SQL?",
  ),

  // --- Lesson 56: Triggers (599-610) ---
  Quiz(599, "Trigger ၼႂ်း MySQL မၢႆထိုင်သင်?", [
    "Code ဢၼ်တိုၼ်ႇႁဵတ်းၵၢၼ်ႁင်းမၼ်း မိူဝ်ႈမီး Event ၼႂ်း Table",
    "Command တႃႇ Backup",
    "Table တိူဝ်ႇၵႄႇ",
    "Error",
  ], "What is a Trigger?"),

  Quiz(
    600,
    "Event လႂ် ဢၼ်ၸၢင်ႈတိုၼ်ႇ Trigger လႆႈ?",
    [
      "INSERT, UPDATE, DELETE",
      "SELECT, SHOW, DESCRIBE",
      "CREATE, DROP, ALTER",
      "Error",
    ],
    "Which events can fire a trigger?",
  ),

  Quiz(
    601,
    "BEFORE Trigger ႁဵတ်းၵၢၼ်မိူဝ်ႈလႂ်?",
    [
      "ဢွၼ်တၢင်းၶေႃႈမုၼ်းတေထုၵ်ႇသိမ်း ၶဝ်ႈၼႂ်း Table",
      "ဝၢႆးသေသိမ်းယဝ်ႉ",
      "မိူဝ်ႈ Database ပိတ်း",
      "Error",
    ],
    "When does a BEFORE trigger execute?",
  ),

  Quiz(602, "AFTER Trigger ႁဵတ်းၵၢၼ်မိူဝ်ႈလႂ်?", [
    "ဝၢႆးသေၶေႃႈမုၼ်းသိမ်းယဝ်ႉတူဝ်ႈ",
    "ဢွၼ်တၢင်းတေသိမ်း",
    "မိူဝ်ႈ CALL Procedure",
    "Error",
  ], "When does an AFTER trigger execute?"),

  Quiz(603, "Audit Log မၢႆထိုင်သင်?", [
    "ပိုၼ်းၵၢၼ်လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း (History logs)",
    "Password Database",
    "Table ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း",
    "Error",
  ], "What is an Audit Log?"),

  Quiz(
    604,
    "OLD Keyword ၼႂ်း Trigger ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇမၢႆထိုင်ၵႃႈၶၼ်ၵဝ်ႇ ဢၼ်မီးယူႇဢွၼ်တၢင်း",
      "တႃႇမၢႆထိုင်ၵႃႈၶၼ်မႂ်ႇ",
      "တႃႇယႃႉ Row",
      "Error",
    ],
    "What is the OLD keyword used for in a trigger?",
  ),

  Quiz(
    605,
    "NEW Keyword ၼႂ်း Trigger ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇမၢႆထိုင်ၵႃႈၶၼ်မႂ်ႇ ဢၼ်တေမႃးသိမ်းတႅၼ်း",
      "တႃႇမၢႆထိုင်ၵႃႈၶၼ်ၵဝ်ႇ",
      "တႃႇသၢင်ႈ Table",
      "Error",
    ],
    "What is the NEW keyword used for in a trigger?",
  ),

  Quiz(
    606,
    "Trigger ၸၢင်ႈတိုၼ်ႇၸွမ်း SELECT လႆႈႁႃႉ?",
    ["ဢမ်ႇလႆႈ", "လႆႈ", "လႆႈၵူၺ်းမၢင်ပွၵ်ႈ", "Error"],
    "Can a trigger fire on a SELECT statement?",
  ),

  Quiz(
    607,
    "FOR EACH ROW ၼႂ်း Trigger မၢႆထိုင်သင်?",
    [
      "Trigger တေႁဵတ်းၵၢၼ် ၵူႈထႅဝ် ဢၼ်ထုၵ်ႇလႅၵ်ႈလၢႆႈ",
      "Trigger ႁဵတ်းၵၢၼ်ပွၵ်ႈလဵဝ်",
      "Trigger ႁဵတ်းၵၢၼ် 10 ထႅဝ်",
      "Error",
    ],
    "What does FOR EACH ROW mean in a trigger?",
  ),

  Quiz(608, "Data Integrity မၢႆထိုင်သင်?", [
    "ၵၢၼ်ဝႆႉၶေႃႈမုၼ်း ႁႂ်ႈမၢၼ်ႇမႅၼ်ႈ လႄႈ တႅတ်ႈတေႃး",
    "ၵၢၼ်ယႃႉၶေႃႈမုၼ်း",
    "ၵၢၼ် Backup",
    "Error",
  ], "What is Data Integrity?"),

  Quiz(
    609,
    "ႁဵတ်းသင်လႄႈ Trigger ၼမ်လူၼ်ႉ ဢမ်ႇလီတွၼ်ႈတႃႇ Performance?",
    [
      "ၵွပ်ႈမၼ်းႁဵတ်းႁႂ်ႈ INSERT/UPDATE ၸႃႉလူင်း",
      "ၵွပ်ႈမၼ်းတႅမ်ႈယၢပ်ႇ",
      "ၵွပ်ႈမၼ်းပၼ် Password",
      "Error",
    ],
    "Why are too many triggers bad for performance?",
  ),

  Quiz(610, "DROP TRIGGER ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇယႃႉ Trigger ပႅတ်ႈ",
    "တႃႇယႃႉ Table",
    "တႃႇပိတ်း Server",
    "Error",
  ], "What is DROP TRIGGER used for?"),

  // --- Lesson 57: Events (611-625) ---
  Quiz(611, "MySQL Event မၢႆထိုင်သင်?", [
    "ၵၢၼ်တင်ႈၶၢဝ်းယၢမ်း (Scheduler) ႁႂ်ႈ Database ႁဵတ်းၵၢၼ်ႁင်းမၼ်း",
    "Trigger ဢၼ်တိုၼ်ႇၸွမ်း INSERT",
    "Stored Procedure ธรรมဒါ",
    "Error",
  ], "What is a MySQL Event?"),

  Quiz(
    612,
    "Command လႂ် ဢၼ်ၸႂ်ႉတႃႇပိုတ်ႇ Event Scheduler?",
    [
      "SET GLOBAL event_scheduler = ON;",
      "START EVENTS;",
      "OPEN SCHEDULER;",
      "Error",
    ],
    "How to enable the MySQL event scheduler?",
  ),

  Quiz(
    613,
    "EVERY 1 DAY ၼႂ်း Event မၢႆထိုင်သင်?",
    [
      "ႁႂ်း Event ႁဵတ်းၵၢၼ် ၵူႈဝၼ်း သမ်ႉၶိုၼ်း",
      "ႁႂ်ႈႁဵတ်းၵၢၼ်ဝၼ်းလဵဝ်ယဝ်ႉၵိုတ်း",
      "ႁႂ်ႈႁဵတ်းၵၢၼ် 10 မိၼတ်ႉ",
      "Error",
    ],
    "What does EVERY 1 DAY mean in an event?",
  ),

  Quiz(614, "Recurring Event မၢႆထိုင်သင်?", [
    "Event ဢၼ်ႁဵတ်းၵၢၼ်သမ်ႉၶိုၼ်း ၸွမ်းၶၢဝ်းယၢမ်း",
    "Event ဢၼ်ႁဵတ်းၵၢၼ်ပွၵ်ႈလဵဝ်",
    "Trigger",
    "Error",
  ], "What is a recurring event?"),

  Quiz(615, "One-time Event မၢႆထိုင်သင်?", [
    "Event ဢၼ်ႁဵတ်းၵၢၼ်ပွၵ်ႈလဵဝ် ၼႂ်းၶၢဝ်းယၢမ်းဢၼ်မၵ်းမၼ်ႈ",
    "Event ဢၼ်ႁဵတ်းၵၢၼ်ၵူႈဝၼ်း",
    "Stored Procedure",
    "Error",
  ], "What is a one-time event?"),

  Quiz(
    616,
    "ON SCHEDULE ၼႂ်း Event ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇမၵ်းမၼ်ႈ ၶၢဝ်းယၢမ်းဢၼ်တေႁဵတ်းၵၢၼ်",
      "တႃႇမၵ်းမၼ်ႈ Table",
      "တႃႇမၵ်းမၼ်ႈ ID",
      "Error",
    ],
    "What is ON SCHEDULE used for in an event?",
  ),

  Quiz(
    617,
    "STARTS Keyword ၼႂ်း Event ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇမၵ်းမၼ်ႈ ဝၼ်းထီႉ လႄႈ ၶၢဝ်းယၢမ်း တႃႇတႄႇႁဵတ်းၵၢၼ်",
      "တႃႇၵိုတ်း Event",
      "တႃႇယႃႉ Event",
      "Error",
    ],
    "What is the STARTS keyword used for in an event?",
  ),

  Quiz(
    618,
    "Event ပႅၵ်ႇၵၼ်တင်း Trigger ၸိူင်ႉႁိုဝ်?",
    [
      "Event တိုၼ်ႇၸွမ်း 'ၶၢဝ်းယၢမ်း', Trigger တိုၼ်ႇၸွမ်း 'ၵၢၼ်ႁဵတ်း'",
      "မိူၼ်ၵၼ်",
      "Trigger ဝႆးလိူဝ်",
      "Error",
    ],
    "Difference between an Event and a Trigger?",
  ),

  Quiz(
    619,
    "Cleanup Task တူဝ်ယင်ႇမၼ်းပဵၼ်သင်?",
    [
      "ၵၢၼ်ယႃႉ Logs ဢၼ်ၵဝ်ႇလိူဝ် 30 ဝၼ်း ၵူႈဝၼ်း",
      "ၵၢၼ် INSERT လုၵ်ႈႁဵၼ်း",
      "ၵၢၼ် Join Table",
      "Error",
    ],
    "Example of a cleanup task for an event?",
  ),

  Quiz(
    620,
    "INTERVAL ၼႂ်း Event မၢႆထိုင်သင်?",
    [
      "ၶၢဝ်းယၢမ်းၵႄႈၵၢင် (မိူၼ်ၼင်ႇ 1 HOUR, 1 MINUTE)",
      "ၸိုဝ်ႈ Table",
      "Password",
      "Error",
    ],
    "What does INTERVAL mean in an event context?",
  ),

  Quiz(
    621,
    "ႁဵတ်းသင်လႄႈ Event ၸၢင်ႈႁဵတ်းႁႂ်ႈ Server ၼၵ်း?",
    [
      "သင် Event ႁဵတ်းၵၢၼ်ယုင်ႈယၢင်ႈ ၼႂ်းၶၢဝ်းယၢမ်းပွတ်းႁႅင်း (Overlapping)",
      "ၵွပ်ႈမၼ်းပဵၼ် SQL",
      "ၵွပ်ႈမၼ်းပၼ် NULL",
      "Error",
    ],
    "Why can events make a server heavy?",
  ),

  Quiz(622, "ALTER EVENT ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇမႄး (Modify) Event ဢၼ်မီးဝႆႉယဝ်ႉ",
    "တႃႇသၢင်ႈ Event",
    "တႃႇယႃႉ Event",
    "Error",
  ], "What is ALTER EVENT used for?"),

  Quiz(
    623,
    "DISABLE ၼႂ်း ALTER EVENT ႁဵတ်းသင်?",
    [
      "တႃႇၵိုတ်း (Turn off) Event ၸူဝ်ႈၶၢဝ်း လူၺ်ႈဢမ်ႇယႃႉပႅတ်ႈ",
      "တႃႇယႃႉ Event",
      "တႃႇ SELECT ၶေႃႈမုၼ်း",
      "Error",
    ],
    "What does DISABLE do in an ALTER EVENT statement?",
  ),

  Quiz(624, "DROP EVENT ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇယႃႉ Event ပႅတ်ႈ လုၵ်ႉၼႂ်း Database",
    "တႃႇယႃႉ Table",
    "တႃႇပိတ်း Database",
    "Error",
  ], "What does DROP EVENT do?"),

  Quiz(
    625,
    "ယဝ်ႉယဝ်ႉ Module 6! Advanced Objects ၸွႆႈသင်?",
    [
      "ၸွႆႈႁႂ်ႈ Database ႁဵတ်းၵၢၼ်ႁင်းမၼ်း (Automation)",
      "ၸွႆႈႁႂ်ႈ SELECT ငၢႆႈၵူၺ်း",
      "ၸွႆႈယႃႉ ID",
      "Error",
    ],
    "End of Module 6! What do advanced objects provide?",
  ),
];
List<Quiz> mysqlQuizM7 = [
  // --- Lesson 58: Transactions & ACID (626-637) ---
  Quiz(626, "Transaction ၼႂ်း SQL မၢႆထိုင်သင်?", [
    "ၸုမ်းၵၢၼ်ႁဵတ်းၵၢၼ် SQL ဢၼ်ၼပ်ႉပဵၼ်ၵၢၼ်ဢၼ်လဵဝ်ၵၼ် (All or Nothing)",
    "ၵၢၼ် SELECT ၶေႃႈမုၼ်းလၢႆ Table",
    "ၵၢၼ် Backup ၶေႃႈမုၼ်း",
    "ၵၢၼ်ယႃႉ Database",
  ], "What is a Transaction in SQL?"),

  Quiz(
    627,
    "ACID Properties ပႃးတူဝ်လိၵ်ႈသင်လၢႆလၢႆ?",
    [
      "Atomicity, Consistency, Isolation, Durability",
      "Access, Control, Input, Data",
      "Auto, Commit, Insert, Delete",
      "Account, Check, ID, Database",
    ],
    "What do the ACID properties stand for?",
  ),

  Quiz(628, "Atomicity မၢႆထိုင်သင်?", [
    "ၵၢၼ်ႁဵတ်းၵၢၼ်တေလႆႈယဝ်ႉတင်းမူတ်း ဢမ်ႇၼၼ် ဢမ်ႇယဝ်ႉသေဢၼ်",
    "ၵၢၼ်သိမ်းၶေႃႈမုၼ်းဝႆႉတႃႇသေႇ",
    "ၵၢၼ်ၸႅၵ်ႇ Transaction ဢွၵ်ႇၵၼ်",
    "ၵၢၼ်ၼပ်ႉ Atom ၼႂ်း Data",
  ], "What does Atomicity mean?"),

  Quiz(629, "Durability မၢႆထိုင်သင်?", [
    "ၶေႃႈမုၼ်းဢၼ် Commit ယဝ်ႉ တေလႆႈယူႇဝႆႉတႃႇသေႇ ဢမ်ႇဝႃႈၾႆးတေတၢႆ",
    "ၵၢၼ်ယႃႉၶေႃႈမုၼ်းပႅတ်ႉ",
    "ၵၢၼ်ၸႅၵ်ႇ User",
    "ၵၢၼ် SELECT ဝႆးဝႆး",
  ], "What does Durability mean?"),

  Quiz(
    630,
    "MySQL Engine ဢၼ်လႂ် ဢၼ်ၸႂ်ႉ Transaction လႆႈ?",
    ["InnoDB", "MyISAM", "MEMORY", "CSV"],
    "Which MySQL engine supports transactions?",
  ),

  Quiz(631, "Consistency ၼႂ်း ACID ၸွႆႈသင်?", [
    "မၼ်ႈၸႂ်ဝႃႈၶေႃႈမုၼ်းမၢၼ်ႇမႅၼ်ႈၸွမ်းပၵ်းၵၢၼ် (Constraints) တႃႇသေႇ",
    "ၸွႆႈႁႂ်ႈ SELECT ဝႆး",
    "ၸွႆႈယႃႉ Row",
    "ၸွႆႈ Backup",
  ], "What does Consistency ensure in ACID?"),

  Quiz(632, "Isolation ၼႂ်း ACID ၸွႆႈသင်?", [
    "ႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈ Transaction သွင်ဢၼ် ယုင်ႈယၢင်ႈၵၼ်",
    "ၸွႆႈသိမ်းၶေႃႈမုၼ်းၼႂ်း Disk",
    "ၸွႆႈပၼ် Password",
    "ၸွႆႈ Join Table",
  ], "What does Isolation ensure in ACID?"),

  Quiz(
    633,
    "သင် Transaction ၼိုင်ႈဢၼ် ႁဵတ်းၵၢၼ်ယဝ်ႉၵႂႃႇၶိုင်ႈၼိုင်ႈ သေ Error... တေပဵၼ်သင်?",
    [
      "တေလႆႈ ROLLBACK ပိၼ်ႇၶိုၼ်းတင်းမူတ်း (Atomicity)",
      "မၼ်းတေသိမ်းဝႆႉၶိုင်ႈၼိုင်ႈ",
      "မၼ်းတေ SELECT ၶိုၼ်း",
      "Error",
    ],
    "What happens if a transaction fails halfway?",
  ),

  Quiz(
    634,
    "ႁဵတ်းသင်လႄႈ Transactions လွင်ႈယႂ်ႇတွၼ်ႈတႃႇ App ၵၢၼ်ငိုၼ်း?",
    [
      "တွၼ်ႈတႃႇႁႄႉၵင်ႈငိုၼ်းႁၢႆ မိူဝ်ႈသူင်ႇငိုၼ်းဢမ်ႇယဝ်ႉတူဝ်ႈ",
      "တွၼ်ႈတႃႇႁႂ်ႈတႅမ်ႈ Code ငၢႆႈ",
      "တွၼ်ႈတႃႇယႃႉ Database",
      "Error",
    ],
    "Why are transactions important for banking apps?",
  ),

  Quiz(
    635,
    "InnoDB ပဵၼ် Default Storage Engine ႁင်း MySQL ၸႂ်ႉႁႃႉ?",
    ["ၸႂ်ႉ", "ဢမ်ႇၸႂ်ႉ", "ၸႂ်ႉၵူၺ်းၼႂ်း Mac", "Error"],
    "Is InnoDB the default storage engine in modern MySQL?",
  ),

  Quiz(
    636,
    "Single Unit of Work မၢႆထိုင်သင်?",
    [
      "ၵၢၼ်ၼပ်ႉ Transaction ပဵၼ်ၵၢၼ်ဢၼ်လဵဝ်ၵၼ်",
      "ၵၢၼ်ႁဵတ်းၵၢၼ် 1 Column",
      "ၵၢၼ် SELECT 1 Row",
      "Error",
    ],
    "What does 'Single Unit of Work' refer to?",
  ),

  Quiz(
    637,
    "ACID Property လႂ် ဢၼ်ၵွင်ႉၵၢႆႇတင်းၵၢၼ် Lock ၶေႃႈမုၼ်း?",
    ["Isolation", "Atomicity", "Durability", "Error"],
    "Which ACID property is related to locking data?",
  ),

  // --- Lesson 59: Transaction Control (638-649) ---
  Quiz(638, "COMMIT ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇသိမ်းၶေႃႈမုၼ်းၼႂ်း Transaction ႁႂ်ႈပဵၼ်ဢၼ်တႄႇတႄႉ (Permanent)",
    "တႃႇပိၼ်ႇၶေႃႈမုၼ်းၶိုၼ်း",
    "တႃႇတႄႇ Transaction",
    "Error",
  ], "What is the purpose of COMMIT?"),

  Quiz(639, "ROLLBACK ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇယႃႉၵၢၼ်ႁဵတ်းၵၢၼ်သေ ပိၼ်ႇၶေႃႈမုၼ်းၶိုၼ်းၸူးတီႈၵဝ်ႇ",
    "တႃႇသိမ်းၶေႃႈမုၼ်း",
    "တႃႇသၢင်ႈ Table",
    "Error",
  ], "What is the purpose of ROLLBACK?"),

  Quiz(640, "START TRANSACTION ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇတႄႇပိုတ်ႇတွၼ်ႈၵၢၼ်ႁဵတ်း Transaction",
    "တႃႇယႃႉ Database",
    "တႃႇ COMMIT ၶေႃႈမုၼ်း",
    "Error",
  ], "What does START TRANSACTION do?"),

  Quiz(641, "SAVEPOINT ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇမၢႆဝႆႉၵႄႈၵၢင်တၢင်း ၼႂ်း Transaction ဢၼ်ယၢဝ်း",
    "တႃႇပၼ် Password",
    "တႃႇယႃႉ Row",
    "Error",
  ], "What is a SAVEPOINT used for?"),

  Quiz(642, "ROLLBACK TO SAVEPOINT ႁဵတ်းသင်?", [
    "ပိၼ်ႇၶေႃႈမုၼ်းၶိုၼ်းၵူၺ်းၸူးတီႈဢၼ်မၢႆဝႆႉ",
    "ပိၼ်ႇၶိုၼ်းတင်းမူတ်း",
    "သိမ်းၶေႃႈမုၼ်း",
    "Error",
  ], "What does ROLLBACK TO SAVEPOINT do?"),

  Quiz(643, "Auto-commit Mode မၢႆထိုင်သင်?", [
    "MySQL တေ COMMIT ၵူႈ Command ႁင်းမၼ်းၵမ်းလဵဝ်",
    "MySQL တေ ROLLBACK တႃႇသေႇ",
    "ၵၢၼ် Backup ႁင်းမၼ်း",
    "Error",
  ], "What is auto-commit mode?"),

  Quiz(
    644,
    "သင်ၸဝ်ႈၵဝ်ႇ COMMIT ယဝ်ႉ... ROLLBACK တေၸွႆႈလႆႈႁႃႉ?",
    [
      "ဢမ်ႇလႆႈယဝ်ႉ (ၶေႃႈမုၼ်းသိမ်းတႄႇယဝ်ႉ)",
      "လႆႈ",
      "လႆႈၵူၺ်းၼႂ်း 1 မိၼတ်ႉ",
      "Error",
    ],
    "Can you ROLLBACK after a COMMIT?",
  ),

  Quiz(645, "Implicit Commit မၢႆထိုင်သင်?", [
    "MySQL သင်ႇ COMMIT ႁင်းမၼ်း မိူဝ်ႈႁဝ်းၸႂ်ႉ Command မိူၼ် CREATE/DROP",
    "ၵၢၼ်တႅမ်ႈ COMMIT ႁင်းတူဝ်",
    "ၵၢၼ် Error",
    "Error",
  ], "What is an implicit commit?"),

  Quiz(
    646,
    "သင် Internet ၶၢတ်ႇၵႂႃႇ ၵႄႈၵၢင် Transaction... MySQL တေႁဵတ်းသင်?",
    [
      "ROLLBACK ႁင်းမၼ်း (Automatic Rollback)",
      "COMMIT ႁင်းမၼ်း",
      "ပႂ်ႉတေႃႇပေႃး Internet မႃး",
      "Error",
    ],
    "What does MySQL do if a connection is lost during a transaction?",
  ),

  Quiz(647, "SET autocommit = 0; မၢႆထိုင်သင်?", [
    "ပိတ်း Auto-commit သေလူဝ်ႇတႅမ်ႈ COMMIT ႁင်းတူဝ်",
    "ပိုတ်ႇ Auto-commit",
    "ယႃႉ Database",
    "Error",
  ], "What does SET autocommit = 0 do?"),

  Quiz(
    648,
    "Transaction လုၵ်းၼိုင်ႈ ၸၢင်ႈမီးလၢႆလၢႆ SAVEPOINT လႆႈႁႃႉ?",
    ["လႆႈ", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်း 1 ဢၼ်", "Error"],
    "Can a transaction have multiple savepoints?",
  ),

  Quiz(
    649,
    "ၶေႃႈမုၼ်းၼႂ်း Transaction တေၼႄပၼ် User တၢင်ႇၵေႃႉမိူဝ်ႈလႂ်?",
    [
      "ဝၢႆးသေသင်ႇ COMMIT ယဝ်ႉ",
      "မိူဝ်ႈ UPDATE ယဝ်ႉၵမ်းလဵဝ်",
      "မိူဝ်ႈ START TRANSACTION",
      "Error",
    ],
    "When do transaction changes become visible to other users?",
  ),

  // --- Lesson 60: Isolation Levels (650-661) ---
  Quiz(650, "Dirty Read မၢႆထိုင်သင်?", [
    "ၵၢၼ်လူႁၼ်ၶေႃႈမုၼ်း ဢၼ်ပိူၼ်ႈတိုၵ်ႉမႄးယူႇ သေဢမ်ႇပႆႇ Commit",
    "ၵၢၼ်လူၶေႃႈမုၼ်းဢၼ်မၢၼ်ႇ",
    "ၵၢၼ်ယႃႉ Table",
    "Error",
  ], "What is a Dirty Read?"),

  Quiz(
    651,
    "Default Isolation Level ႁင်း MySQL (InnoDB) ပဵၼ်ဢၼ်လႂ်?",
    ["REPEATABLE READ", "READ COMMITTED", "SERIALIZABLE", "READ UNCOMMITTED"],
    "What is the default isolation level in MySQL?",
  ),

  Quiz(
    652,
    "SERIALIZABLE Isolation Level လီၸိူင်ႉႁိုဝ်?",
    [
      "မၼ်ႈၵိုမ်းသုတ်း လႄႈ ႁႄႉၵင်ႈလႆႈၵူႈပၼ်ႁႃ (ၵူၺ်းၵႃႈ ၸႃႉ)",
      "ဝႆးသုတ်း",
      "ပၼ် Dirty Read",
      "Error",
    ],
    "What is the characteristic of the SERIALIZABLE isolation level?",
  ),

  Quiz(653, "Phantom Read ပဵၼ်မိူဝ်ႈလႂ်?", [
    "မိူဝ်ႈလူႁၼ် 'ထႅဝ်မႂ်ႇ' ဢွၵ်ႇမႃး ၵွပ်ႈမီးပိူၼ်ႈမႃး INSERT ၵႄႈၵၢင်တၢင်း",
    "မိူဝ်ႈလူဢမ်ႇလႆႈ",
    "မိူဝ်ႈ Error",
    "Error",
  ], "When does a Phantom Read occur?"),

  Quiz(
    654,
    "Isolation Level လႂ် ဢၼ်ပၼ်ႁႂ်ႈပဵၼ် Dirty Read?",
    ["READ UNCOMMITTED", "READ COMMITTED", "REPEATABLE READ", "Error"],
    "Which isolation level allows dirty reads?",
  ),

  Quiz(655, "Deadlock ပဵၼ်မိူဝ်ႈလႂ်?", [
    "မိူဝ်ႈ Transaction သွင်ဢၼ် ပႂ်ႉ Lock ၵၼ်ၵႂႃႇမႃး တေႃႇပေႃးၶႅင်",
    "မိူဝ်ႈ COMMIT ယဝ်ႉ",
    "မိူဝ်ႈ SELECT ၼမ်",
    "Error",
  ], "When does a Deadlock occur?"),

  Quiz(656, "Non-repeatable Read မၢႆထိုင်သင်?", [
    "လူထႅဝ်လဵဝ်ၵၼ် သွင်ပွၵ်ႈ ၵူၺ်းၵႃႈၵႃႈၶၼ်လႅၵ်ႈလၢႆႈၵႂႃႇ",
    "လူဢမ်ႇႁၼ်",
    "လူလႆႈတႃႇသေႇ",
    "Error",
  ], "What is a Non-repeatable Read?"),

  Quiz(
    657,
    "ႁဵတ်းသင်လႄႈ SERIALIZABLE ၸၢင်ႈႁဵတ်းႁႂ်ႈ App ၸႃႉ?",
    [
      "ၵွပ်ႈမၼ်းတေ Lock Table ၼမ်လိူဝ်ပိူၼ်ႈ သေပိူၼ်ႈလႆႈပႂ်ႉ",
      "ၵွပ်ႈမၼ်းပဵၼ် Command မႂ်ႇ",
      "ၵွပ်ႈမၼ်းယႃႉ Row",
      "Error",
    ],
    "Why can SERIALIZABLE slow down an app?",
  ),

  Quiz(658, "Concurrency Control မၢႆထိုင်သင်?", [
    "ၵၢၼ်ၸတ်းၵၢၼ် ႁႂ်ႈ User လၢႆၵေႃႉ ၸႂ်ႉ DB ႁူမ်ႈၵၼ်လႆႈ လွတ်ႈၽေး",
    "ၵၢၼ် Backup",
    "ၵၢၼ် DELETE",
    "Error",
  ], "What is concurrency control?"),

  Quiz(
    659,
    "SET TRANSACTION ISOLATION LEVEL ... ၸႂ်ႉမိူဝ်ႈလႂ်?",
    ["ဢွၼ်တၢင်းတေ START TRANSACTION", "ဝၢႆးသေ COMMIT", "မိူဝ်ႈ Error", "Error"],
    "When should you set the transaction isolation level?",
  ),

  Quiz(
    660,
    "MySQL InnoDB ၵႄႈပၼ်ႁႃ Phantom Read ၼႂ်း REPEATABLE READ လႆႈႁႃႉ?",
    ["လႆႈ (ၸႂ်ႉ Next-key locking)", "ဢမ်ႇလႆႈ", "လႆႈၵူၺ်းမၢင်ပွၵ်ႈ", "Error"],
    "Does MySQL InnoDB handle Phantom Reads in REPEATABLE READ?",
  ),

  Quiz(661, "Read Phenomena မၢႆထိုင်သင်?", [
    "ပၼ်ႁႃၵၢၼ်လူၶေႃႈမုၼ်း ဢၼ်ပဵၼ်လႆႈၼႂ်း Concurrency",
    "ၵၢၼ်လူလိၵ်ႈ",
    "ၵၢၼ် SELECT ธรรมဒါ",
    "Error",
  ], "What is Read Phenomena?"),

  // --- Lesson 61: Access Control (662-673) ---
  Quiz(662, "CREATE USER ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇသၢင်ႈ User မႂ်ႇ ၼႂ်း Database",
    "တႃႇသၢင်ႈ Table",
    "တႃႇပၼ် Permission",
    "Error",
  ], "What is CREATE USER used for?"),

  Quiz(663, "GRANT ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇပၼ်သုၼ်ႇ (Privileges) ပၼ် User",
    "တႃႇယႃႉ User",
    "တႃႇပိတ်း Database",
    "Error",
  ], "What is the purpose of GRANT?"),

  Quiz(664, "REVOKE ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇသိပ်းသုၼ်ႇ (Remove privileges) ၶိုၼ်း",
    "တႃႇပၼ်သုၼ်ႇ",
    "တႃႇသၢင်ႈ User",
    "Error",
  ], "What is the purpose of REVOKE?"),

  Quiz(
    665,
    "'user'@'localhost' မၢႆထိုင်သင်?",
    [
      "User ၼႆႉ Login ၶဝ်ႈလႆႈၵူၺ်း ၼႂ်း Server တူဝ်မၼ်း",
      "ၶဝ်ႈလႆႈၵူႈတီႈ",
      "ၶဝ်ႈဢမ်ႇလႆႈ",
      "Error",
    ],
    "What does '@localhost' mean in a username?",
  ),

  Quiz(666, "'user'@'%' မၢႆထိုင်သင်?", [
    "User ၼႆႉ Login ၶဝ်ႈလႆႈလုၵ်ႉတီႈ Computer ၵူႈတီႈ (Remote)",
    "ၶဝ်ႈလႆႈၵူၺ်းၼႂ်း Server",
    "Password",
    "Error",
  ], "What does '@%' mean in a username?"),

  Quiz(
    667,
    "Principle of Least Privilege မၢႆထိုင်သင်?",
    [
      "ပၼ်သုၼ်ႇဢေႇသုတ်း ဢၼ်ၶဝ်လူဝ်ႇၸႂ်ႉၵူၺ်း",
      "ပၼ်သုၼ်ႇၵူႈယၢင်ႇ",
      "ယႃႉသုၼ်ႇတင်းမူတ်း",
      "Error",
    ],
    "What is the Principle of Least Privilege?",
  ),

  Quiz(
    668,
    "Command လႂ် ဢၼ်ၸႂ်ႉတႃႇယႃႉ User?",
    ["DROP USER", "DELETE USER", "REMOVE USER", "Error"],
    "Which command is used to delete a user?",
  ),

  Quiz(669, "SHOW GRANTS FOR ... ၸွႆႈသင်?", [
    "တႃႇတူၺ်းဝႃႈ User ၵေႃႉၼၼ်ႉ မီးသုၼ်ႇသင်ဝႆႉ",
    "တႃႇသၢင်ႈ User",
    "တႃႇပၼ် Password",
    "Error",
  ], "What does SHOW GRANTS do?"),

  Quiz(
    670,
    "FLUSH PRIVILEGES ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႃႇသင်ႇႁႂ်ႈ MySQL ဢဝ်သုၼ်ႇမႂ်ႇမႃးၸႂ်ႉၵမ်းလဵဝ်",
      "တႃႇယႃႉ Database",
      "တႃႇ SELECT",
      "Error",
    ],
    "What is the purpose of FLUSH PRIVILEGES?",
  ),

  Quiz(
    671,
    "Privileges တူဝ်ယင်ႇမၼ်းမီးသင်လၢႆလၢႆ?",
    [
      "SELECT, INSERT, UPDATE, DELETE, DROP, etc.",
      "LOGIN, LOGOUT",
      "START, STOP",
      "Error",
    ],
    "Give examples of database privileges.",
  ),

  Quiz(
    672,
    "IDENTIFIED BY ၼႂ်း CREATE USER ၸႂ်ႉတႃႇသင်?",
    ["တႃႇမၵ်းမၼ်ႈ Password", "တႃႇမၵ်းမၼ်ႈ ID", "တႃႇမၵ်းမၼ်ႈ Host", "Error"],
    "What is IDENTIFIED BY used for?",
  ),

  Quiz(
    673,
    "ႁဵတ်းသင်လႄႈ ႁဝ်းဢမ်ႇထုၵ်ႇလီၸႂ်ႉ User 'root' ၼႂ်း App?",
    [
      "ၵွပ်ႈမၼ်းမီးသုၼ်ႇၼမ်လူၼ်ႉ သေၸၢင်ႈထုၵ်ႇယႃႉ DB လႆႈငၢႆႈ",
      "ၵွပ်ႈ root ၸႃႉလိူဝ်ပိူၼ်ႈ",
      "ၵွပ်ႈ root ဢမ်ႇမီး Password",
      "Error",
    ],
    "Why avoid using the 'root' user in an application?",
  ),

  // --- Lesson 62: Security & RBAC (674-685) ---
  Quiz(674, "Encryption မၢႆထိုင်သင်?", [
    "ၵၢၼ်သႂ်ႇသေႃးၶေႃႈမုၼ်း ႁႂ်ႈပဵၼ် Code လပ်ႉ",
    "ၵၢၼ် Backup",
    "ၵၢၼ် SELECT",
    "Error",
  ], "What is encryption?"),

  Quiz(
    675,
    "Hashing ပႅၵ်ႇၵၼ်တင်း Encryption ၸိူင်ႉႁိုဝ်?",
    [
      "Hashing ပဵၼ် One-way (ပိၼ်ႇၶိုၼ်းဢမ်ႇလႆႈ)",
      "Encryption ပဵၼ် One-way",
      "မိူၼ်ၵၼ်",
      "Error",
    ],
    "How is hashing different from encryption?",
  ),

  Quiz(676, "Role-Based Access Control (RBAC) မၢႆထိုင်သင်?", [
    "ၵၢၼ်ၸတ်းၵၢၼ်သုၼ်ႇ ၸွမ်းၼင်ႇၸၼ်ႉထၢၼ်ႈ/ၼႃႈၵၢၼ် (Roles)",
    "ၵၢၼ်သႂ်ႇ Password",
    "ၵၢၼ် DELETE User",
    "Error",
  ], "What is RBAC?"),

  Quiz(677, "CREATE ROLE ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇသၢင်ႈၸုမ်းသုၼ်ႇ (Role) ဢၼ်တေဢဝ် User သႂ်ႇၶဝ်ႈ",
    "တႃႇသၢင်ႈ User",
    "တႃႇသၢင်ႈ Table",
    "Error",
  ], "What is CREATE ROLE used for?"),

  Quiz(678, "SHA2 ၼႂ်း MySQL ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇႁဵတ်း Hashing ၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ Password)",
    "တႃႇ SELECT",
    "တႃႇ Join",
    "Error",
  ], "What is SHA2 used for in MySQL?"),

  Quiz(679, "ႁဵတ်းသင်လႄႈ ႁဝ်းလူဝ်ႇၸႂ်ႉ Role?", [
    "တွၼ်ႈတႃႇၸတ်းၵၢၼ် User ၼမ်ၼမ် လႆႈငၢႆႈ လႄႈ မၼ်ႈၵိုမ်း",
    "တွၼ်ႈတႃႇႁႂ်ႈ DB ဝႆး",
    "တွၼ်ႈတႃႇ Backup",
    "Error",
  ], "Why use roles in a database?"),

  Quiz(680, "SQL Injection မၢႆထိုင်သင်?", [
    "လၢႆးၵၢၼ် Hack ဢၼ်လၵ်ႉသူင်ႇ Command SQL ၽိတ်းပိူင်ၶဝ်ႈမႃး",
    "ၵၢၼ် INSERT ธรรมဒါ",
    "ၵၢၼ် SELECT",
    "Error",
  ], "What is SQL Injection?"),

  Quiz(
    681,
    "SET DEFAULT ROLE ... ၸွႆႈသင်?",
    [
      "တႃႇပိုတ်ႇၸႂ်ႉ Role ပၼ် User ၼၼ်ႉ တႃႇသေႇမိူဝ်ႈ Login",
      "တႃႇယႃႉ Role",
      "တႃႇပၼ် Password",
      "Error",
    ],
    "What is the purpose of SET DEFAULT ROLE?",
  ),

  Quiz(682, "AES_ENCRYPT ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇသႂ်ႇသေႃးၶေႃႈမုၼ်း ဢၼ်ၸၢင်ႈပိၼ်ႇဢဝ်ၶိုၼ်း (Two-way)",
    "တႃႇ Hash Password",
    "တႃႇ DROP Table",
    "Error",
  ], "What is AES_ENCRYPT used for?"),

  Quiz(683, "Plain Text မၢႆထိုင်သင်?", [
    "ၶေႃႈမုၼ်းဢၼ်လူလႆႈလၢႆလၢႆ (ဢမ်ႇပႆႇသႂ်ႇသေႃး)",
    "ၶေႃႈမုၼ်းလပ်ႉ",
    "ID",
    "Error",
  ], "What is plain text?"),

  Quiz(
    684,
    "ႁဝ်းထုၵ်ႇလီသိမ်း Password ပဵၼ် Plain Text ႁႃႉ?",
    [
      "ဢမ်ႇထုၵ်ႇလီ (တေလႆႈ Hash တႃႇသေႇ)",
      "ထုၵ်ႇလီ",
      "လႆႈၵူၺ်းၼႂ်း Test DB",
      "Error",
    ],
    "Should passwords be stored as plain text?",
  ),

  Quiz(685, "RBAC ၸွႆႈသင်ၼႂ်းၵၢၼ် Audit?", [
    "ၸွႆႈႁူႉလႆႈငၢႆႈဝႃႈ ၽႂ်မီးသုၼ်ႇသင် ၸွမ်းၼင်ႇ Role ၶဝ်",
    "ၸွႆႈ SELECT ဝႆး",
    "ၸွႆႈယႃႉ Row",
    "Error",
  ], "How does RBAC help in auditing?"),

  // --- Lesson 63: Backup & Recovery (686-700) ---
  Quiz(686, "mysqldump ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "တႃႇထုတ်ႇ (Export) ၶေႃႈမုၼ်းဢွၵ်ႇပဵၼ် File .sql",
    "တႃႇ SELECT ၶေႃႈမုၼ်း",
    "တႃႇယႃႉ Database",
    "Error",
  ], "What is mysqldump used for?"),

  Quiz(687, "Logical Backup မၢႆထိုင်သင်?", [
    "ၵၢၼ် Backup ဢၼ်သိမ်းပဵၼ် SQL Commands (Text)",
    "ၵၢၼ် Copy File Database တႄႉ",
    "ၵၢၼ် DELETE",
    "Error",
  ], "What is a logical backup?"),

  Quiz(
    688,
    "Command လႂ် ဢၼ်ၸႂ်ႉတႃႇ Import (Recovery) ၶေႃႈမုၼ်း?",
    [
      "mysql -u user -p db_name < backup.sql",
      "mysqldump ...",
      "CREATE TABLE ...",
      "Error",
    ],
    "Which command is used to restore a database?",
  ),

  Quiz(689, "ႁဵတ်းသင်လႄႈ ႁဝ်းလူဝ်ႇ Backup?", [
    "တႃႇႁႄႉၵင်ႈၶေႃႈမုၼ်းႁၢႆ မိူဝ်ႈ Server လူႉ ႁိုဝ် ၵူၼ်းယႃႉၽိတ်း",
    "တႃႇႁႂ်ႈ DB ဝႆး",
    "တႃႇပၼ် Password",
    "Error",
  ], "Why is backup necessary?"),

  Quiz(
    690,
    "Offsite Storage ၼႂ်းၵၢၼ် Backup မၢႆထိုင်သင်?",
    [
      "ၵၢၼ်သိမ်း Backup ဝႆႉတီႈတၢင်ႇ (မိူၼ် Cloud) ဢၼ်ဢမ်ႇၸႂ်ႈ Server တူဝ်လဵဝ်ၵၼ်",
      "ၵၢၼ်သိမ်းဝႆႉၼႂ်း PC",
      "ၵၢၼ်သိမ်းၼႂ်း RAM",
      "Error",
    ],
    "What is offsite storage for backups?",
  ),

  Quiz(
    691,
    "Physical Backup ပႅၵ်ႇၵၼ်တင်း Logical ၸိူင်ႉႁိုဝ်?",
    [
      "Physical Backup ပဵၼ်ၵၢၼ် Copy File ၶေႃႈမုၼ်းတႄႉ (ဝႆးလိူဝ်)",
      "Logical ဝႆးလိူဝ်",
      "မိူၼ်ၵၼ်",
      "Error",
    ],
    "Difference between physical and logical backup?",
  ),

  Quiz(
    692,
    "--all-databases ၼႂ်း mysqldump ၸွႆႈသင်?",
    [
      "တႃႇ Backup ၵူႈ Database ဢၼ်မီးၼႂ်း Server",
      "တႃႇ Backup Table လဵဝ်",
      "တႃႇယႃႉ Database",
      "Error",
    ],
    "What does --all-databases do in mysqldump?",
  ),

  Quiz(
    693,
    "ႁဝ်းထုၵ်ႇလီၸၢမ်း (Test) Restore Backup ယူႇတႃႇသေႇႁႃႉ?",
    [
      "ထုၵ်ႇလီ (တွၼ်ႈတႃႇမၼ်ႈၸႂ်ဝႃႈ Backup ၸႂ်ႉလႆႈတႄႉ)",
      "ဢမ်ႇလူဝ်ႇၸၢမ်း",
      "ၸၢမ်းၵူၺ်းမိူဝ်ႈ DB လူႉ",
      "Error",
    ],
    "Should you regularly test your backups?",
  ),

  Quiz(
    694,
    "mysqldump တေလႆႈတႅမ်ႈၼႂ်းလႂ်?",
    [
      "Terminal / Command Prompt (OS Shell)",
      "MySQL Shell / Workbench",
      "Flutter Code",
      "Error",
    ],
    "Where should you run the mysqldump command?",
  ),

  Quiz(695, "Restore မၢႆထိုင်သင်?", [
    "ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းၼႂ်း Backup သႂ်ႇၶိုၼ်းၼႂ်း Database",
    "ၵၢၼ် DELETE",
    "ၵၢၼ် SELECT",
    "Error",
  ], "What is a database restore?"),

  Quiz(696, "INCREMENTAL Backup မၢႆထိုင်သင်?", [
    "ၵၢၼ် Backup ၵူၺ်းတွၼ်ႈဢၼ်လႅၵ်ႈလၢႆႈမႂ်ႇ ဝၢႆးသေ Full Backup",
    "ၵၢၼ် Backup တင်းမူတ်း",
    "ၵၢၼ်ယႃႉ Row",
    "Error",
  ], "What is an incremental backup?"),

  Quiz(697, "Full Backup မၢႆထိုင်သင်?", [
    "ၵၢၼ် Backup ၶေႃႈမုၼ်းတင်းမူတ်း ဢၼ်မီးယူႇ",
    "ၵၢၼ် Backup 1 ထႅဝ်",
    "ၵၢၼ် Backup ၵူၺ်း Structure",
    "Error",
  ], "What is a full backup?"),

  Quiz(
    698,
    "ၶိူင်ႈမၢႆ '>' ၼႂ်း mysqldump တႅၼ်းသင်?",
    [
      "Redirect Output (သူင်ႇၶေႃႈမုၼ်းဢွၵ်ႇၵႂႃႇသိမ်းၼႂ်း File)",
      "သူင်ႇၶဝ်ႈ",
      "ယႃႉ File",
      "Error",
    ],
    "What does the '>' symbol do in mysqldump?",
  ),

  Quiz(
    699,
    "ၶိူင်ႈမၢႆ '<' ၼႂ်း mysql command တႅၼ်းသင်?",
    [
      "Redirect Input (သူင်ႇၶေႃႈမုၼ်းလုၵ်ႉၼႂ်း File ၶဝ်ႈ Database)",
      "သူင်ႇဢွၵ်ႇ",
      "SELECT",
      "Error",
    ],
    "What does the '<' symbol do in the mysql command?",
  ),

  Quiz(
    700,
    "ယဝ်ႉယဝ်ႉ Module 7! Maintenance ၸွႆႈသင်?",
    [
      "ၸွႆႈႁႄႉၵင်ႈၶေႃႈမုၼ်း လႄႈ ၸွႆႈဢဝ်ၶိုၼ်းမိူဝ်ႈမီးပၼ်ႁႃ",
      "ၸွႆႈ INSERT ၵူၺ်း",
      "ၸွႆႈ SELECT ဝႆး",
      "Error",
    ],
    "End of Module 7! What is the goal of maintenance?",
  ),
];
List<List<Quiz>> mysqlQuizzes = [
  mysqlQuizM1,
  mysqlQuizM2,
  mysqlQuizM3,
  mysqlQuizM4,
  mysqlQuizM5,
  mysqlQuizM6,
  mysqlQuizM7,
];
