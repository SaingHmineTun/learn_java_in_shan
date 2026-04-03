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
    1: "The Data Evolution: From Flat Files (Excel) to RDBMS",
    2: "The 4 Pillars of SQL: Understanding DDL, DML, DQL, and DCL",
    3: "The MySQL Ecosystem: Server Engine vs. Workbench GUI",
    4: "Connection Architecture: Ports, Hosts, and Socket Basics",
    5: "Database Hierarchy: Instances, Schemas, Tables, and Rows",
    6: "Installation & Environment: Configuring a Local MySQL Server",
    7: "The Workbench Interface: Managing Queries and Result Grids",
    8: "First Contact: Executing Basic System Queries",
    9: "User Security: Understanding the 'root' User and Permissions",
    10: "Unicode & Local Data: Preparing for Shan/Myanmar Text (utf8mb4)"
  },
  2: {
    11: "Abstraction: Identifying Entities and Attributes in the Real World",
    12: "Primary Keys: The Anchor of Data Integrity",
    13: "Surrogate vs. Natural Keys: UUIDs and Auto-Increment Strategies",
    14: "One-to-Many (1:N): The Most Common Database Relationship",
    15: "Many-to-Many (M:N): Understanding Junction (Linking) Tables",
    16: "One-to-One (1:1): When to Split a Table for Privacy or Speed",
    17: "The 1st Normal Form (1NF): Eliminating Repeating Groups",
    18: "The 2nd Normal Form (2NF): Eliminating Partial Dependencies",
    19: "The 3rd Normal Form (3NF): Eliminating Transitive Dependencies",
    20: "The EER Modeler: Drawing Diagrams in MySQL Workbench",
    21: "Forward Engineering: Generating SQL Scripts from Visual Models",
    22: "Reverse Engineering: Turning Existing Databases back into Diagrams"
  },
  3: {
    23: "The Schema: Creating and Dropping Database Containers",
    24: "String Data Types: Choosing CHAR vs. VARCHAR vs. TEXT",
    25: "Numeric Data Types: INT vs. DECIMAL (Precision for Money)",
    26: "Date and Time Types: Handling DATE, DATETIME, and TIMESTAMP",
    27: "The CREATE TABLE Statement: Basic Syntax and Options",
    28: "Integrity Constraints: NOT NULL, UNIQUE, and DEFAULT",
    29: "The CHECK Constraint: Validating Data (e.g., Age >= 18)",
    30: "Primary Key Implementation: Single vs. Composite Keys",
    31: "Foreign Keys: Linking Tables and Referential Integrity",
    32: "Cascading Actions: ON DELETE CASCADE and ON UPDATE SET NULL",
    33: "The ALTER TABLE Command: Adding and Modifying Columns",
    34: "Data Removal: The Difference Between DROP, TRUNCATE, and DELETE"
  },
  4: {
    35: "The DML Syntax: Basic INSERT, UPDATE, and DELETE",
    36: "The Anatomy of a SELECT: The SELECT and FROM Clauses",
    37: "Column Manipulation: Aliasing with AS and Literal Values",
    38: "The WHERE Clause: Filtering Data with Comparison Operators",
    39: "Logical Operators: Combining Filters with AND, OR, and NOT",
    40: "Range and Set Filtering: Using BETWEEN and IN",
    41: "Pattern Matching: Mastering the LIKE Operator and Wildcards",
    42: "Handling Missing Data: The IS NULL and IS NOT NULL Logic",
    43: "Sorting Results: Using ORDER BY (ASC vs. DESC)",
    44: "Row Limitation: Using LIMIT and OFFSET for Pagination",
    45: "Mathematical and String Functions: Basic Data Transformation",
    46: "The REPLACE and INSERT IGNORE Statements: Handling Duplicates"
  },
  5: {
    47: "The Join Concept: Connecting Tables with Primary and Foreign Keys",
    48: "The INNER JOIN: Retrieving Only Matching Records",
    49: "The LEFT and RIGHT JOIN: Handling Optional Data and Nulls",
    50: "The Self-Join: Comparing Rows within the Same Table",
    51: "Multiple Joins: Connecting Three or More Tables in One Query",
    52: "Aggregate Functions: SUM, AVG, MIN, MAX, and COUNT",
    53: "The GROUP BY Clause: Categorizing Data for Summary",
    54: "Filtering Groups: The HAVING Clause vs. the WHERE Clause",
    55: "Subqueries: Writing Nested SELECT Statements",
    56: "Set Operations: Combining Results with UNION and UNION ALL",
    57: "Existential Queries: Using IN, EXISTS, and ANY",
    58: "Common Table Expressions (CTEs): Writing Readable Complex Queries"
  },
  6: {
    59: "Views: Creating Virtual Tables for Security and Simplicity",
    60: "View Management: Updating and Dropping Views",
    61: "Stored Procedures: Writing Reusable SQL Code Blocks",
    62: "Parameters in Procedures: Using IN, OUT, and INOUT",
    63: "Variables and Data Types: Declaring Local Logic inside SQL",
    64: "Flow Control: Using IF-ELSE and CASE Statements",
    65: "Loops in SQL: Working with WHILE and REPEAT",
    66: "User-Defined Functions (UDF): Creating Custom Math and Logic",
    67: "Triggers: Automating Actions BEFORE or AFTER Data Changes",
    68: "Trigger Logic: Handling Audits and Data Synchronization",
    69: "The Event Scheduler: Running Automated Tasks on a Timer",
    70: "Debugging and Error Handling: Using DECLARE HANDLER"
  },
  7: {
    71: "The Transaction Concept: Ensuring Data Atomicity",
    72: "The ACID Properties: The Four Pillars of Database Reliability",
    73: "Transaction Control: START TRANSACTION, COMMIT, and ROLLBACK",
    74: "Savepoints: Partial Rollbacks within Complex Transactions",
    75: "Concurrency Control: Understanding Dirty Reads and Phantom Reads",
    76: "Isolation Levels: Balancing Performance vs. Data Safety",
    77: "User Account Management: Creating and Dropping Users",
    78: "The Principle of Least Privilege: GRANT and REVOKE Commands",
    79: "Role-Based Access Control (RBAC): Managing Permissions at Scale",
    80: "Data Encryption: Securing Sensitive Information at Rest",
    81: "Backup Strategies: Using mysqldump for Logical Backups",
    82: "Recovery Procedures: Restoring Data from SQL Dumps"
  },
  8: {
    83: "The Query Execution Plan: Understanding How MySQL 'Thinks'",
    84: "The EXPLAIN Keyword: Identifying Bottlenecks in Your SQL",
    85: "Indexing Architecture: How B-Trees and Hash Indexes Work",
    86: "Index Strategies: Creating Single, Composite, and Covering Indexes",
    87: "The Cost of Over-Indexing: Balancing Search Speed vs. Write Speed",
    88: "Query Refactoring: Why 'SELECT *' and Wildcard Prefixes are Slow",
    89: "Optimizing Joins: Using Indexes to Speed up Table Connections",
    90: "Database Denormalization: When to Sacrifice Design for Speed",
    91: "Table Maintenance: ANALYZE, OPTIMIZE, and REPAIR Commands",
    92: "Slow Query Logs: Finding the Heaviest Queries in Production",
    93: "Caching Strategies: Understanding the MySQL Query Cache",
    94: "Server Tuning: A Brief Look at Buffer Pools and Memory Allocation"
  }


};