import 'package:tmkacademy/utils/utils.dart';

const Map<int, String> javaSpringbootTopics = {
  1: "Spring Boot Kickoff",
  2: "The Dictionary Database (JPA)",
  3: "The Service & Logic Layer",
  4: "The REST API (Full CRUD)",
  5: "Validation & Error Handling",
  6: "Connecting the Frontend",
};

const Map<int, Map<int, String>> javaSpringbootModules = {
  1: {
    1: "The Evolution of Java Web",
    2: "The TaiGlish Blueprint (Start.spring.io)",
    3: "Project Anatomy & Main Class",
    4: "REST Fundamentals & GetMapping",
    5: "Configuration & The .properties File",
    6: "Professional Testing with Postman",
  },
};

final Map<int, Lesson> javaSpringbootLessons = {
  1: Lesson(1, 1),
  2: Lesson(1, 2),
  3: Lesson(1, 3),
  4: Lesson(1, 4),
  5: Lesson(1, 5),
  6: Lesson(1, 6),
};
