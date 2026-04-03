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
List<List<Quiz>> mysqlQuizzes = [mysqlQuizM1];
