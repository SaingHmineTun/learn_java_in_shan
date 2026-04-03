import 'package:tmkacademy/utils/utils.dart';

const Map<int, String> mysqlTopics = {
  1: "Foundations of Databases",
  2: "Data Modeling & Design",
  3: "Data Definition Language (DDL)",
  4: "Data Manipulation & Querying (The Core)",
  5: "Advanced Data Retrieval",
  6: "Programmable Database Objects",
  7: "Transactions & Security",
  8: "Performance & Optimization"
};

const Map<int, Map<int, String>> mysqlModules = {
  1: {
    1: "Foundations: From Flat Files to Relational Databases",
    2: "The SQL Language: DDL, DML, DQL, and DCL",
    3: "MySQL Ecosystem: Server Engine vs. Workbench GUI",
    4: "Connection Architecture: Ports, Hosts, and Socket Basics",
    5: "Database Hierarchy: Instances, Schemas, Tables, and Rows",
    6: "Installation & Unicode: Configuring utf8mb4 for Shan Text"
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
    15: "Engineering: Forward and Reverse Schema Generation"
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
    27: "Data Removal Logic: DROP vs. TRUNCATE vs. DELETE"
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
    39: "String Functions: CONCAT, SUBSTRING, and REPLACE"
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
    51: "Set Operations: UNION and Common Table Expressions (CTEs)"
  },
  6: {
    52: "Views: Virtual Tables for Security and Simplicity",
    53: "Stored Procedures: Reusable Code with Parameters",
    54: "Logic & Control: Variables, IF-ELSE, and CASE",
    55: "Iterative Logic: WHILE and REPEAT Loops in SQL",
    56: "Triggers: Automating Audits and Data Sync",
    57: "Events: Scheduling Automated Database Tasks"
  },
  7: {
    58: "Transactions: Atomicity and the ACID Properties",
    59: "Transaction Control: COMMIT, ROLLBACK, and Savepoints",
    60: "Concurrency: Isolation Levels and Read Phenomena",
    61: "Access Control: User Management and GRANT/REVOKE",
    62: "Security: Encryption and Role-Based Access (RBAC)",
    63: "Backup & Recovery: Logical Dumps and Restoration"
  },
  8: {
    64: "The Execution Plan: Understanding EXPLAIN",
    65: "Indexing I: B-Trees and Primary/Unique Indexes",
    66: "Indexing II: Composite and Covering Index Strategies",
    67: "Query Refactoring: Optimizing for Performance",
    68: "Join Optimization: Indexing for Fast Connections",
    69: "Maintenance: ANALYZE and Slow Query Logs",
    70: "Server Tuning: Buffer Pools and Memory Basics"
  }
};

final Map<int, Lesson> mysqlLessons = {
  1: Lesson(1, 1),
  2: Lesson(1, 2),
  3: Lesson(1, 3),
  4: Lesson(1, 4),
  5: Lesson(1, 5),
  6: Lesson(1, 6),
};