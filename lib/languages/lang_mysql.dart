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
};

List<Quiz> mysqlQuizM1 = [
  Quiz(1, "RDBMS ပဵၼ်သင်?", [
    "ပိူင်ၸတ်းၵၢၼ် Database ဢၼ်မီးၵၢၼ်ၵွင်ႉၵၢႆႇၵၼ်",
    "ၾၢႆႇ Excel ธรรมဒါ",
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
  Quiz(51, "Entity မၢႆထိုင်သင် ၼႂ်းပိူင်သၢင်ႈ Database?", [
    "တူဝ်ၶေႃႈမုၼ်းလူင် မိူၼ်ၼင်ႇ Table (Noun)",
    "ႁူဝ်ၶေႃႈၶေႃႈမုၼ်း (Column)",
    "ၵၢၼ်ၵွင်ႉ Table",
    "လၢႆးတႅမ်ႈ Code"
  ]),
  Quiz(52, "Attribute ပဵၼ်သင် ၼႂ်း Table?", [
    "ႁူဝ်ၶေႃႈၶေႃႈမုၼ်း ဢၼ်လၢတ်ႈၼႄလွင်ႈ Entity",
    "မၢႆၼပ်ႉ ID ႁင်းတူဝ်",
    "တူဝ် Database Engine",
    "သေႃးလပ်ႉ Admin"
  ]),
  Quiz(53, "Primary Key (PK) လူဝ်ႇမီးၵုၼ်ႇလၵ်ႉသၼႃႇသင်?", [
    "Unique လႄႈ Not Null (ဢမ်ႇမိူၼ်ပိူၼ်ႈ လႄႈ ဢမ်ႇပဝ်ႇ)",
    "သိမ်းလိၵ်ႈလႆႈယၢဝ်းယၢဝ်း",
    "မီးလႆႈလၢႆလၢႆဢၼ် ၼႂ်း Table ၼိုင်ႈဢၼ်",
    "လႅၵ်ႈလၢႆႈလႆႈၵူႈဝၼ်း"
  ]),
  Quiz(54, "Data Modeling ႁဵတ်းသင်လႄႈ လွင်ႈလူင်?", [
    "တႃႇဝူၼ်ႉပိူင်သၢင်ႈ ဢွၼ်တၢင်းတေတႅမ်ႈ Code တႄႉ",
    "တႃႇ Install MySQL",
    "တႃႇပၼ် Password User",
    "တႃႇ Download Software"
  ]),
  Quiz(55, "ၼႂ်း Table 'Students' ... 'Student_ID' ထုၵ်ႇလီပဵၼ်သင်?", [
    "Primary Key",
    "Attribute ธรรมဒါ",
    "Foreign Key",
    "Database Name"
  ]),

  // --- Lesson 8: Surrogate vs Natural Keys ---
  Quiz(56, "Natural Key ပဵၼ်သင်?", [
    "ဢဝ်ၶေႃႈမုၼ်းဢၼ်မီးယူႇယဝ်ႉ (မိူၼ်ၼင်ႇ NRC) မႃးႁဵတ်း PK",
    "သၢင်ႈမၢႆၼပ်ႉမႂ်ႇ (ID) တႃႇ DB ၵူၺ်း",
    "လၢႆးၵွင်ႉ 1:1",
    "ၵၢၼ်ၸႅၵ်ႇ Table"
  ]),
  Quiz(57, "Surrogate Key ပဵၼ်သင်?", [
    "သၢင်ႈမၢႆတွင်းမႂ်ႇ (ID) ဢၼ်ဢမ်ႇမီးတီႈပွင်ႇၼွၵ်ႈ DB",
    "ဢဝ်မၢႆၾၢင် (NRC) မႃးၸႂ်ႉ",
    "ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း",
    "လၢႆးၵွင်ႉ Table"
  ]),
  Quiz(58, "AUTO_INCREMENT ၵႆႉၸႂ်ႉၸွမ်း Key ပိူင်လႂ်?", [
    "Surrogate Key",
    "Natural Key",
    "Composite Key",
    "Foreign Key"
  ]),
  Quiz(59, "ၽွၼ်းလီ Surrogate Key ပဵၼ်သင်?", [
    "မၼ်းတေဢမ်ႇလႅၵ်ႈလၢႆႈ (Static) လႄႈ ၵွင်ႉ Table ငၢႆႈ",
    "မီးတီႈပွင်ႇတႃႇၵူၼ်းၸႂ်ႉ App",
    "ႁဵတ်းႁႂ်ႈ DB လဵၵ်ႉၵႂႃႇ",
    "ဢမ်ႇလူဝ်ႇၸႂ်ႉ ID"
  ]),
  Quiz(60, "UUID ပဵၼ် Key ပိူင်လႂ်?", [
    "Surrogate Key ဢၼ်ယၢဝ်း လႄႈ Unique ၵူႈ Server",
    "Natural Key",
    "Primary Key ဢၼ်ပဵၼ်တူဝ်ၼပ်ႉ 1, 2, 3",
    "Foreign Key"
  ]),

  // --- Lesson 9: One-to-Many (1:N) ---
  Quiz(61, "Relationship ပိူင်လႂ် ဢၼ်လႆႈၸႂ်ႉၼမ်လိူဝ်ပိူၼ်ႈ?", [
    "One-to-Many (1:N)",
    "One-to-One (1:1)",
    "Many-to-Many (M:N)",
    "Zero-to-One"
  ]),
  Quiz(62, "Foreign Key (FK) လူဝ်ႇယူႇတီႈၽၢႆႇလႂ်?", [
    "ၽၢႆႇ Many (Child Table)",
    "ၽၢႆႇ One (Parent Table)",
    "ယူႇတီႈလႂ်ၵေႃႈလႆႈ",
    "ဢမ်ႇလူဝ်ႇမီး FK"
  ]),
  Quiz(63, "ၼႂ်းၵႄႈ 'Department' (1) လႄႈ 'Employee' (N) ... FK ယူႇတီႈလႂ်?", [
    "Employee Table",
    "Department Table",
    "ယူႇတင်းသွင် Table",
    "ဢမ်ႇလူဝ်ႇမီး"
  ]),
  Quiz(64, "Parent Table မၵ်းထိုင်သင်?", [
    "Table ဢၼ်မီး Primary Key ဢၼ်ပိူၼ်ႈမႃးၵွင်ႉ (ၽၢႆႇ One)",
    "Table ဢၼ်မီး Foreign Key",
    "Junction Table",
    "Database တင်းသဵင်ႈ"
  ]),
  Quiz(65, "Referential Integrity မၵ်းထိုင်သင်?", [
    "လွင်ႈမၢၼ်ႇမႅၼ်ႈ ၼႂ်းၵၢၼ်ၵွင်ႉ FK ၸူး PK",
    "လွင်ႈဝႆး DB",
    "လွင်ႈသိမ်းလိၵ်ႈတႆး",
    "လွင်ႈတင်ႈ Password"
  ]),

  // --- Lesson 10: Many-to-Many (M:N) ---
  Quiz(66, "Many-to-Many (M:N) လူဝ်ႇသင်တႃႇၵွင်ႉ Table?", [
    "Junction Table (Table တူဝ်ၵၢင်)",
    "Primary Key တူဝ်လဵဝ်",
    "Excel File",
    "User Password"
  ]),
  Quiz(67, "ၼႂ်းၵႄႈ 'Students' လႄႈ 'Courses' ပဵၼ် Relationship ပိူင်လႂ်?", [
    "Many-to-Many (M:N)",
    "One-to-One (1:1)",
    "One-to-Many (1:N)",
    "ဢမ်ႇၵွင်ႉၵၢႆႇၵၼ်"
  ]),
  Quiz(68, "Junction Table ၵႆႉသိမ်းသင်ဝႆႉ?", [
    "Foreign Keys ဢၼ်မႃးတီႈ Table သွင်ၽၢႆႇ",
    "ၸိုဝ်ႈ Database",
    "Password Admin",
    "Unicode Font"
  ]),
  Quiz(69, "Composite Primary Key ၼႂ်း Junction Table ပဵၼ်သင်?", [
    "ၵၢၼ်ဢဝ် FK သွင်ဢၼ် ႁူမ်ႈၵၼ်ပဵၼ် PK",
    "ID ဢၼ်ၼပ်ႉႁင်းတူဝ်",
    "ၸိုဝ်ႈ User",
    "မၢႆ Port"
  ]),
  Quiz(70, "ႁဵတ်းသင်လူဝ်ႇ Junction Table?", [
    "တႃႇတႅၵ်ႇ M:N ႁႂ်ႈပဵၼ် 1:N သွင်ဢၼ်",
    "တႃႇသိမ်း Password",
    "တႃႇႁဵတ်းႁႂ်ႈ DB ဝႆးလိူဝ်",
    "တႃႇ Delete ၶေႃႈမုၼ်း"
  ]),

  // --- Lesson 11: One-to-One (1:1) ---
  Quiz(71, "One-to-One (1:1) ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "Table Splitting (ၸႅၵ်ႇ Table တႃႇ Security)",
    "ၵွင်ႉလုၵ်ႈႁဵၼ်း တင်း ၶိူင်ႈလိၵ်ႈ",
    "ၼပ်ႉမၢႆ ID ႁင်းတူဝ်",
    "တႅမ်ႈ SQL Code"
  ]),
  Quiz(72, "Vertical Partitioning မၢႆထိုင်သင်?", [
    "ၵၢၼ်ၸႅၵ်ႇ Table ၸွမ်း Column (1:1 Relationship)",
    "ၵၢၼ်ထႅမ် Row",
    "ၵၢၼ် Normalization",
    "ၵၢၼ် Backup"
  ]),
  Quiz(73, "တႃႇမၵ်းမၼ်ႈ 1:1 ... FK လူဝ်ႇမီး Constraint သင်?", [
    "UNIQUE",
    "NOT NULL ၵူၺ်း",
    "DEFAULT",
    "CHECK"
  ]),
  Quiz(74, "ၵူၼ်း 1 ၵေႃႉ တင်း မၢႆၾၢင် (NRC) 1 ဢၼ် ပဵၼ်ပိူင်လႂ်?", [
    "One-to-One (1:1)",
    "One-to-Many (1:N)",
    "Many-to-Many (M:N)",
    "ဢမ်ႇၵွင်ႉၵၢႆႇၵၼ်"
  ]),
  Quiz(75, "ႁဵတ်းသင်လႄႈ ၸႅၵ်ႇ Password ဝႆႉထႅင်ႈ Table ၼိုင်ႈ (1:1)?", [
    "တႃႇလွင်ႈလွတ်ႈၽေး (Security)",
    "တႃႇႁႂ်ႈသိမ်းၶေႃႈမုၼ်းလႆႈၼမ်",
    "တႃႇႁႂ်ႈတႅမ်ႈ Code ငၢႆႈ",
    "တႃႇႁႂ်ႈ Font ဢွၵ်ႇမၢၼ်ႇ"
  ]),

  // --- Lesson 12: 1st Normal Form (1NF) ---
  Quiz(76, "Normalization ပဵၼ်သင်?", [
    "ၵၢၼ်ၸတ်းပိူင် Table ႁႂ်ႈယွမ်းလွင်ႈသိမ်းၶေႃႈမုၼ်းသွၼ်ႉၵၼ်",
    "ၵၢၼ် Install MySQL",
    "ၵၢၼ်တႅမ်ႈ Application",
    "ၵၢၼ်ပၼ်သုၼ်ႇ Internet"
  ]),
  Quiz(77, "Atomicity ၼႂ်း 1NF မၢႆထိုင်သင်?", [
    "1 Cell (လုၵ်း) လူဝ်ႇမီး 1 Value (ၵႃႈၶၼ်) ၵူၺ်း",
    "ၵၢၼ်ၵွင်ႉ Table",
    "ၵၢၼ်ၼပ်ႉ ID ႁင်းတူဝ်",
    "ၸိုဝ်ႈ Table တေလႆႈယၢဝ်း"
  ]),
  Quiz(78, "သင် Column 'Hobbies' သိမ်း 'Reading, Coding' ႁူမ်ႈၵၼ်... ပဵၼ်သင်?", [
    "ဢမ်ႇပဵၼ် 1NF (Multi-valued attribute)",
    "ပဵၼ် 1NF ယဝ်ႉ",
    "ပဵၼ် 2NF",
    "ပဵၼ် Primary Key"
  ]),
  Quiz(79, "Repeating Groups မၢႆထိုင်သင်?", [
    "ၵၢၼ်ၸႂ်ႉ Column မိူၼ်ၵၼ် မိူၼ်ၼင်ႇ Phone1, Phone2",
    "ၵၢၼ်ၸႅၵ်ႇ Table",
    "ၵၢၼ်ၵွင်ႉ Foreign Key",
    "ၵၢၼ်တႅမ်ႈ SQL Script"
  ]),
  Quiz(80, "ပၵ်းၵၢၼ် 1NF ပႃးသင်လၢႆလၢႆ?", [
    "Atomic Values, Unique Column Names, လႄႈ PK",
    "Foreign Keys ၵူၺ်း",
    "Junction Table",
    "Unicode Character Set"
  ]),

  // --- Lesson 13: 2NF & 3NF ---
  Quiz(81, "တႃႇပဵၼ် 2NF လူဝ်ႇမီးသင်ဢွၼ်တၢင်း?", [
    "တေလႆႈပဵၼ် 1NF ယဝ်ႉတူဝ်ႈ",
    "တေလႆႈမီး Foreign Key ၼမ်",
    "တေလႆႈမီး 10 Tables",
    "တေလႆႈ Install Workbench"
  ]),
  Quiz(82, "Partial Dependency ပဵၼ်ပၼ်ႁႃ ၼႂ်းၸၼ်ႉလႂ်?", [
    "2nd Normal Form (2NF)",
    "1st Normal Form (1NF)",
    "3rd Normal Form (3NF)",
    "BNCF"
  ]),
  Quiz(83, "Transitive Dependency မၢႆထိုင်သင်?", [
    "Column ၵွင်ႉၸူး Column ဢၼ်ဢမ်ႇၸႂ်ႈ PK",
    "Column ၵွင်ႉၸူး Primary Key တူဝ်လဵဝ်",
    "ၵၢၼ်ၵွင်ႉ Table ၶၢမ်ႈ Database",
    "ၵၢၼ် Delete Table"
  ]),
  Quiz(84, "3rd Normal Form (3NF) ၵႄႈလိတ်ႈပၼ်ႁႃသင်?", [
    "Transitive Dependency",
    "Multi-valued Attributes",
    "Primary Key Missing",
    "Unicode Issues"
  ]),
  Quiz(85, "Redundancy ပဵၼ်သင်?", [
    "ၵၢၼ်သိမ်းၶေႃႈမုၼ်းသွၼ်ႉၵၼ် ဢၼ်ဢမ်ႇလူဝ်ႇ",
    "လွင်ႈဝႆး Database",
    "လွင်ႈလွတ်ႈၽေး Security",
    "လၢႆးတႅမ်ႈ Diagram"
  ]),

  // --- Lesson 14: EER Modeling ---
  Quiz(86, "EER Diagram ၸႂ်ႉတႃႇသင်?", [
    "တႃႇတႅမ်ႈႁၢင်ႈပိူင်သၢင်ႈ Database ႁႂ်ႈႁၼ်ၸႅၼ်ႇလႅင်း",
    "တႃႇ Install Server",
    "တႃႇတႅမ်ႈ Code Flutter",
    "တႃႇသိမ်းလိၵ်ႈတႆး"
  ]),
  Quiz(87, "Crow's Foot Notation ၼႂ်း Diagram မၢႆထိုင်သင်?", [
    "လၢႆးတႅမ်ႈသဵၼ်ႈၵွင်ႉ (Many ၸႂ်ႉႁၢင်ႈတိၼ်ၵႃ)",
    "ၸိုဝ်ႈ Database",
    "မၢႆ Port",
    "လၢႆး Install ၶွမ်း"
  ]),
  Quiz(88, "ၼႂ်း Workbench ... ႁၢင်ႈ 3 ၶႃ (တိၼ်ၵႃ) ၼႄသင်?", [
    "Many (N) Relationship",
    "One (1) Relationship",
    "Primary Key",
    "Index"
  ]),
  Quiz(89, "Cardinality မၢႆထိုင်သင်?", [
    "ၼပ်ႉတၢင်းၼမ် ၼႂ်းၵၢၼ်ၵွင်ႉၵၢႆႇ (1:1, 1:N, M:N)",
    "လွင်ႈဝႆး Query",
    "မၢႆၼပ်ႉ Table",
    "ၸိုဝ်ႈ User"
  ]),
  Quiz(90, "Identifying Relationship မၢႆထိုင်သင်?", [
    "သဵၼ်ႈၵွင်ႉ ဢၼ် Child လူဝ်ႇ PK Parent တႃႇမၵ်းထိုင် Identity",
    "သဵၼ်ႈၵွင်ႉ ธรรมဒါ",
    "ၵၢၼ် Delete Table",
    "ၵၢၼ် Backup"
  ]),

  // --- Lesson 15: Engineering ---
  Quiz(91, "Forward Engineering ပဵၼ်သင်?", [
    "ၵၢၼ်လႅၵ်ႈ Diagram ပဵၼ် Database တႄႉတႄႉ",
    "ၵၢၼ်လႅၵ်ႈ Database ပဵၼ် Diagram",
    "ၵၢၼ် Install MySQL",
    "ၵၢၼ် Update Windows"
  ]),
  Quiz(92, "Reverse Engineering ပဵၼ်သင်?", [
    "ၵၢၼ်ဢဝ် Database ဢၼ်မီးယူႇယဝ်ႉ မႃးထွၼ်ပဵၼ် Diagram",
    "ၵၢၼ်သၢင်ႈ Table မႂ်ႇၸွမ်းႁၢင်ႈ",
    "ၵၢၼ် Delete Database",
    "ၵၢၼ် Reset Password"
  ]),
  Quiz(93, "SQL Script ပဵၼ်သင်?", [
    "သဵၼ်ႈမၢႆ Code SQL ဢၼ်ၸႂ်ႉသၢင်ႈ Database",
    "လိၵ်ႈတႆး Unicode",
    "ႁၢင်ႈ Diagram",
    "Software Workbench"
  ]),
  Quiz(94, "ၽွၼ်းလီ Forward Engineering ပဵၼ်သင်?", [
    "သၢင်ႈ Table လႆႈဝႆး လႄႈ ဢမ်ႇၽိတ်း Syntax",
    "ႁဵတ်းႁႂ်ႈ DB ဝႆးလိူဝ်",
    "တႃႇသိမ်း Emoji",
    "တႃႇ Backup ၶေႃႈမုၼ်း"
  ]),
  Quiz(95, "Synchronization မၢႆထိုင်သင်?", [
    "ၵၢၼ်ႁဵတ်းႁႂ်ႈ Diagram လႄႈ DB တႄႉတႄႉ မိူၼ်ၵၼ်",
    "ၵၢၼ် Delete ၶေႃႈမုၼ်း",
    "ၵၢၼ်ၵွင်ႉ Internet",
    "ၵၢၼ်မႄး Spellings"
  ]),

  // --- Mix of Module 2 Key Concepts ---
  Quiz(96, "Entity Relationship (ER) မၢႆထိုင်သင်?", [
    "ၵၢၼ်ဝူၼ်ႉလွင်ႈၵွင်ႉၵၢႆႇၵၼ် ၼႂ်းၵႄႈ Entities",
    "ၵၢၼ် Install Server",
    "ၸိုဝ်ႈ User",
    "မၢႆ Port 3306"
  ]),
  Quiz(97, "Non-Identifying Relationship ၼႄႁၢင်ႈသင် ၼႂ်း Workbench?", [
    "သဵၼ်ႈၶၢတ်ႇ (Dashed Line)",
    "သဵၼ်ႈၵိုတ်း (Solid Line)",
    "သဵၼ်ႈလႅင်",
    "ဢမ်ႇမီးသဵၼ်ႈ"
  ]),
  Quiz(98, "Composite Key မၢႆထိုင်သင်?", [
    "Primary Key ဢၼ်ဢဝ် Column လၢႆဢၼ်မႃးႁူမ်ႈၵၼ်",
    "ID ဢၼ်ၼပ်ႉႁင်းတူဝ်",
    "Foreign Key တူဝ်လဵဝ်",
    "Database Name"
  ]),
  Quiz(99, "Data Integrity ပဵၼ်သင်?", [
    "လွင်ႈမၢၼ်ႇမႅၼ်ႈ လႄႈ မၼ်ႈၵိုမ်း ၶေႃႈမုၼ်း",
    "လွင်ႈသိမ်းလိၵ်ႈတႆး",
    "လွင်ႈလွတ်ႈၽေး Network",
    "လွင်ႈဝႆး Hardware"
  ]),
  Quiz(100, "သဵၼ်ႈၵိုတ်း (Solid Line) ၼႂ်း EER မၢႆထိုင်သင်?", [
    "Identifying Relationship",
    "Non-Identifying Relationship",
    "Many-to-Many",
    "One-to-One"
  ]),

  // (Adding more to reach 75 quizzes for this module)
  // ... continued questions for detailed practice ...

  Quiz(101, "Attribute ဢၼ်ဢမ်ႇၸၢင်ႈပဝ်ႇ (Empty) လႆႈ ႁွင်ႉဝႃႈ?", [
    "NOT NULL",
    "NULL",
    "DEFAULT",
    "UNIQUE"
  ]),
  Quiz(102, "ၵႃႈၶၼ်ဢၼ် DB တေထႅမ်ပၼ်ႁင်းတူဝ် သင်ႁဝ်းဢမ်ႇသႂ်ႇ ႁွင်ႉဝႃႈ?", [
    "DEFAULT",
    "PRIMARY KEY",
    "FOREIGN KEY",
    "CHECK"
  ]),
  Quiz(103, "Constraint ဢၼ်ၸႂ်ႉႁၢမ်ႈ ဢမ်ႇႁႂ်ႈၶေႃႈမုၼ်းသမ်ႉၵၼ် ႁွင်ႉဝႃႈ?", [
    "UNIQUE",
    "NOT NULL",
    "PRIMARY KEY",
    "INDEX"
  ]),
  Quiz(104, "ERD ယေႃႈမႃးတီႈသင်?", [
    "Entity Relationship Diagram",
    "Electronic Record Data",
    "Engine Relational Design",
    "Every Row Database"
  ]),
  Quiz(105, "တူဝ်ယင်ႇ 1:N ၼႂ်း App Gallery ပဵၼ်သင်?", [
    "Category ၼိုင်ႈဢၼ် မီး App လၢႆဢၼ်",
    "App ၼိုင်ႈဢၼ် မီး User ၵေႃႉလဵဝ်",
    "Category ၼိုင်ႈဢၼ် မီး 1 App ၵူၺ်း",
    "User ၵူႈၵေႃႉ ၸႂ်ႉ Password မိူၼ်ၵၼ်"
  ]),
  Quiz(106, "သင်လူဝ်ႇသိမ်း Salary ဢၼ်လပ်ႉဝႆႉ ႁဝ်းထုၵ်ႇလီႁဵတ်းႁိုဝ်?", [
    "ၸႅၵ်ႇဝႆႉထႅင်ႈ Table ၼိုင်ႈ (1:1 Relationship)",
    "သႂ်ႇဝႆႉၼႂ်း Table Students",
    "တႅမ်ႈဝႆႉၼႂ်း Excel",
    "ဢမ်ႇလူဝ်ႇသိမ်း"
  ]),
  Quiz(107, "Junction Table လူဝ်ႇမီး Primary Key ႁႃႉ?", [
    "လူဝ်ႇ (ၵႆႉပဵၼ် Composite PK ဢမ်ႇၼၼ် Auto-ID)",
    "ဢမ်ႇလူဝ်ႇ",
    "လူဝ်ႇၵူၺ်း Foreign Key",
    "လူဝ်ႇၵူၺ်း Name"
  ]),
  Quiz(108, " normalization ၸၼ်ႉလႂ် ဢၼ် Developer ၵႆႉႁဵတ်းထိုင်?", [
    "3NF",
    "10NF",
    "1NF ၵူၺ်း",
    "ဢမ်ႇႁဵတ်းၵေႃႈလႆႈ"
  ]),
  Quiz(109, "Forward Engineer မီးဝႆႉၼႂ်း Menu လႂ် ၼႂ်း Workbench?", [
    "Database Menu",
    "Edit Menu",
    "View Menu",
    "Help Menu"
  ]),
  Quiz(110, "ၸၼ်ႉ Normalization ဢၼ်မၵ်းမၼ်ႈ 'No Partial Dependency'?", [
    "2NF",
    "1NF",
    "3NF",
    "BNCF"
  ]),
  Quiz(111, "ၸၼ်ႉ Normalization ဢၼ်မၵ်းမၼ်ႈ 'No Transitive Dependency'?", [
    "3NF",
    "2NF",
    "1NF",
    "4NF"
  ]),
  Quiz(112, "Foreign Key ၸၢင်ႈပဵၼ် NULL လႆႈႁႃႉ?", [
    "လႆႈ (သင်မၼ်းဢမ်ႇၸႂ်ႈ Identifying Relationship)",
    "ဢမ်ႇလႆႈ တႃႇသေႇ",
    "လႆႈၵူၺ်းၼႂ်း Primary Key",
    "လႆႈၵူၺ်းၼႂ်း Table လူင်"
  ]),
  Quiz(113, "EER Modeler ၸွႆႈႁဝ်းႁၼ်သင်?", [
    "သဵၼ်ႈၵွင်ႉ (Relationships) ၼႂ်းၵႄႈ Tables",
    "Code Java",
    "သဵၼ်ႈတၢင်း Internet",
    "ႁၢင်ႈၵူၼ်းၸႂ်ႉ App"
  ]),
  Quiz(114, "မိူဝ်ႈႁဵတ်း Reverse Engineering ... ႁဝ်းလူဝ်ႇသင်?", [
    "Connection ၸူး Database Server",
    "ၾၢႆႇ Photoshop",
    "လိၵ်ႈတႆး Font ၵဝ်ႇ",
    "Internet ဢၼ်ၽႅဝ်း"
  ]),
  Quiz(115, "ၼႂ်း Workbench ... AI မၢႆထိုင်သင်?", [
    "Auto Increment",
    "Artificial Intelligence",
    "Access Index",
    "Attribute Identifier"
  ]),
  Quiz(116, "ၼႂ်း Workbench ... NN မၢႆထိုင်သင်?", [
    "Not Null",
    "New Name",
    "Next Node",
    "Network Note"
  ]),
  Quiz(117, "ၼႂ်း Workbench ... PK မၢႆထိုင်သင်?", [
    "Primary Key",
    "Public Key",
    "Private Key",
    "Product Key"
  ]),
  Quiz(118, "သဵၼ်ႈၵွင်ႉ 1:N ၼႂ်း ERD မီးႁၢင်ႈသင်?", [
    "ၽၢႆႇၼိုင်ႈပဵၼ် 1 သေ ၽၢႆႇၼိုင်ႈပဵၼ် တိၼ်ၵႃ",
    "သဵၼ်ႈလႅင်သွင်ထႅဝ်",
    "ႁၢင်ႈတူဝ်ၼပ်ႉ 100",
    "ဢမ်ႇမီးသဵၼ်ႈ"
  ]),
  Quiz(119, "သင် Database ယုင်ႈယၢင်ႈၼမ်လွၼ်ႉၵႂႃႇ ႁဝ်းထုၵ်ႇလီႁဵတ်းႁိုဝ်?", [
    "Normalization",
    "Delete Tables",
    "Change Password",
    "Install New MySQL"
  ]),
  Quiz(120, "ၵၢၼ်ဢဝ် 'City' ဢွၵ်ႇပဵၼ် Table မႂ်ႇ ၵွပ်ႈမၼ်းၵွင်ႉၸွမ်း 'Zip' ပဵၼ်ၵၢၼ်ႁဵတ်းသင်?", [
    "3NF Normalization",
    "1NF Normalization",
    "Forward Engineering",
    "Reverse Engineering"
  ]),
  Quiz(121, "Composite Key ၸၢင်ႈပႃး Column လၢႆဢၼ်?", [
    "2 ဢၼ် ၶိုၼ်ႈၼိူဝ်",
    "1 ဢၼ်ၵူၺ်း",
    "ဢမ်ႇပႃး Column လႆႈ",
    "ပႃးလႆႈၵူၺ်း ID"
  ]),
  Quiz(122, "Referential Integrity Constraint ႁၢမ်ႈသင်?", [
    "ႁၢမ်ႈ INSERT FK ဢၼ်ဢမ်ႇမီးၼႂ်း Parent PK",
    "ႁၢမ်ႈတႅမ်ႈလိၵ်ႈတႆး",
    "ႁၢမ်ႈပိုတ်ႇ Workbench",
    "ႁၢမ်ႈ Delete Database"
  ]),
  Quiz(123, "EER Diagram ၼႄလွင်ႈ Logical Design ႁႃႉ?", [
    "ၸႂ်ႉယဝ်ႉ",
    "ဢမ်ႇၸႂ်ႈ",
    "ၼႄၵူၺ်း Code",
    "ၼႄၵူၺ်း User"
  ]),
  Quiz(124, "Script ဢၼ်လႆႈမႃးတီႈ Forward Engineering ၸႂ်ႉ SQL ၸုမ်းလႂ်ၼမ်?", [
    "DDL (CREATE, ALTER...)",
    "DML (INSERT, UPDATE...)",
    "DQL (SELECT...)",
    "DCL (GRANT...)"
  ]),
  Quiz(125, "တွၼ်ႈတႃႇသၢင်ႈ DB ႁႂ်ႈပဵၼ် Mobile App လီသုတ်း လူဝ်ႇဝူၼ်ႉသင်?", [
    "Data Modeling ႁႂ်ႈမၢၼ်ႇမႅၼ်ႈ လႄႈ ယွမ်း Redundancy",
    "ဝူၼ်ႉလွင်ႈ Password ၵူၺ်း",
    "ဝူၼ်ႉလွင်ႈ Font ၵူၺ်း",
    "ဢမ်ႇလူဝ်ႇဝူၼ်ႉသင်"
  ]),
];
List<List<Quiz>> mysqlQuizzes = [mysqlQuizM1, mysqlQuizM2];
