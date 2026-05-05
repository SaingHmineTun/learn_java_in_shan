const swiftTopics = {
  1: "Foundations of Swift 6",
  2: "Collections & Data Organization",
  3: "Logic & Control Flow",
  4: "Functions & Closures",
  5: "Swift's \"Secret Sauce\": Optionals",
  6: "Modeling Data (Structs vs. Classes)",
  7: "Protocols & Extensions",
  8: "Memory Safety & Error Handling",
  9: "Concurrency & Data-Race Safety"
};

const swiftModules = {
  1: {
    1: "The \"Immutability First\" Philosophy",
    2: "Type Inference and the Safety Net of Static Typing",
    3: "Numeric Types: Handling Integers, Doubles, and Type Safety",
    4: "Booleans and Logical Operators in Swift",
    5: "Strings and Unicode: The Architecture of Shan Script Support",
    6: "String Interpolation and Multi-line Literals",
    7: "Type Aliases: Making Code More Descriptive for Developers",
    8: "Basic Error Handling with assert and precondition (Developer Safety)"
  },
  2: {
    9: "Arrays (Part 1): Creating and Manipulating Ordered Lists",
    10: "Arrays (Part 2): Advanced Methods (Map, Filter, Reduce) for Keyboard Logic",
    11: "Dictionaries (Part 1): Mapping Keys to Shan Characters (Hash Maps)",
    12: "Dictionaries (Part 2): Handling Missing Keys and Default Values Safely",
    13: "Sets: Optimizing for Unique Data and High-Speed Membership Testing",
    14: "Tuples: Quick Data Grouping without the Overhead of Structs",
    15: "Collection Protocols: Understanding Indexing and Sequences",
    16: "Memory Management of Collections: Value Semantics and Copy-on-Write (COW)"
  },
  3: {
    17: "The if and else Power Moves: Conditional Logic",
    18: "The guard Statement: Mastering the 'Early Exit' for Cleaner Code",
    19: "Advanced Pattern Matching: The Exhaustive switch Statement",
    20: "For-In Loops: Iterating Over Ranges and Collections",
    21: "While and Repeat-While Loops",
    22: "Control Transfer Statements: break, continue, and fallthrough",
    23: "Labeled Statements: Managing Complex Nested Loops",
    24: "Checking API Availability: The #available Block (Crucial for iOS versioning)"
  },
  //   4: "Functions & Closures",
  4: {
    25: "Function Anatomy: Parameters, Return Types, and Argument Labels",
    26: "Variadic, In-Out, and Default Parameters",
    27: "Function Types: Using Functions as Variables and Arguments",
    28: "Nested Functions and Scope Management",
    29: "Closures (Part 1): Syntax and Type Inference",
    30: "Closures (Part 2): Capturing Values and Memory Safety",
    31: "Trailing Closure Syntax: The Foundation of SwiftUI Layouts",
    32: "Escaping vs. Non-Escaping Closures (Critical for Concurrency)"
  },
  // 5: "Swift's \"Secret Sauce\": Optionals",
  5: {
    33: "The 'Optional' Concept: Why Swift Doesn't Allow Nulls",
    34: "Forced Unwrapping: When and Why (Not) to Use the ! Operator",
    35: "Optional Binding: Mastering if let and guard let",
    36: "Nil-Coalescing: Providing Smart Defaults with ??",
    37: "Optional Chaining: Safely Calling Methods on Optional Values",
    38: "Implicitly Unwrapped Optionals: Use Cases and Dangers",
    39: "Optional Mapping: Transforming Values Inside an Optional",
    40: "Best Practices for Zero-Crash Optional Handling"
  },
  // 6: "Modeling Data (Structs vs. Classes)",
  6: {
    41: "Structs: The Lightweight Foundation of Swift Data",
    42: "Classes: Understanding Reference Types and Inheritance",
    43: "Value Types vs. Reference Types: When to Use Which?",
    44: "Stored Properties: Constant and Variable Data within Objects",
    45: "Computed Properties: Calculations Disguised as Data",
    46: "Property Observers: Reacting to Data Changes with willSet and didSet",
    47: "Methods: Adding Logic and Behavior to your Types",
    48: "Initializers: Safely Setting Up your Objects with init()"
  },
  7: {
    49: "Protocols: Defining Blueprints for Methods and Properties",
    50: "Extensions: Adding Functionality to Existing Types",
    51: "Protocol Extensions: Providing Default Implementations",
    52: "Delegation Pattern: How Objects Communicate Safely",
    53: "Generics (Part 1): Writing Reusable, Type-Agnostic Code",
    54: "Generics (Part 2): Constraints and Associated Types",
    55: "Opaque Types: Using the some Keyword (Essential for SwiftUI)",
    56: "Synthesized Implementation: How Swift Auto-conforms to Equatable and Hashable"
  },
  8: {
    57: "Automatic Reference Counting (ARC): How Swift Manages Memory",
    58: "Strong, Weak, and Unowned: Breaking Reference Cycles",
    59: "Error Handling (Part 1): The do-catch Pattern and throws",
    60: "Error Handling (Part 2): Using try? and try! for Cleaner Code",
    61: "Typed Throws (Swift 6): Specifying Exactly Which Error Type is Thrown",
    62: "Cleanup with defer: Ensuring Code Runs Regardless of Errors",
    63: "Memory Safety: Understanding and Preventing Conflicting Access",
    64: "Opaque vs. Boxed Protocol Types: Advanced Performance Optimization"
  },
  9: {
    65: "The Async/Await Pattern: Writing Linear Asynchronous Code",
    66: "Tasks and Task Groups: Managing Multiple Concurrent Operations",
    67: "Async Properties and Sequences: Handling Streams of Data",
    68: "Actors: Protecting Shared State from Data Races",
    69: "The MainActor: Ensuring UI Updates Always Happen on the Correct Thread",
    70: "Sendable Types: Safely Passing Data Between Threads",
    71: "Continuations: Bridging Older Completion Handlers to Modern Async",
    72: "Strict Concurrency Checking: Understanding Swift 6 Compiler Warnings"
  }


};