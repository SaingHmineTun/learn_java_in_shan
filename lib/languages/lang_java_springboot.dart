import 'package:tmkacademy/utils/utils.dart';

import '../utils/quiz.dart';

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
  2: {
    7: "Introduction to ORM & JPA",
    8: "Connecting to H2 Database",
    9: "Creating the \"Word\" Entity",
    10: "Lombok Deep Dive",
    11: "The Repository Layer",
    12: "Data Seeding with data.sql",
    13: "Custom Query Methods",
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

final List<Quiz> springBootModule1Quiz = [
  // --- Lesson 1.1: Spring Boot Awakening ---
  Quiz(
    1,
    "Spring Boot ၼႆႉ ၸွႆးပၼ်လွင်ႈသင် ဢၼ်လီလိူဝ်ပိူင်ၵဝ်ႇ?",
    [
      "လူတ်းယွမ်းၵၢၼ်မႄး Configuration ဢၼ်ၼမ်လၢႆ",
      "ႁဵတ်းႁႂ်ႈ Java လႅၼ်ႈဝႆးလိူဝ် Python",
      "ၸွႆးတႅမ်ႈ Code ပၼ်ႁင်းၵူၺ်းတင်းမူတ်း",
      "ပဵၼ်ၶိူင်ႈမိုဝ်းတွၼ်ႈတႃႇတႅမ်ႈ Game",
    ],
    "What is the primary advantage of Spring Boot over traditional Spring?",
  ),
  Quiz(
    2,
    "IoC (Inversion of Control) မၢႆထိုင်သင်?",
    [
      "ၵၢၼ်ဢၢပ်ႈပုၼ်ႈၽွၼ်းၵုမ်းၵမ် Object ပၼ် Framework",
      "ၵၢၼ်တႅမ်ႈ Code ႁႂ်ႈၶွမ်ႇပိဝ်ႇတႃႇၵုမ်းၵမ်ၵူၼ်း",
      "ၵၢၼ်သၢင်ႈ Object လူၺ်ႈၸႂ်ႉ 'new' Keyword ၵူႈၶိူဝ်း",
      "ၵၢၼ်ပႅတ်ႈ Control Panel ၼႂ်း Windows",
    ],
    "What does IoC (Inversion of Control) mean?",
  ),
  Quiz(3, "Embedded Server မၢႆထိုင်သင်?", [
    "Server ဢၼ်မီးဝႆႉၼႂ်း App ၵမ်းလဵဝ်",
    "Server ဢၼ်လူဝ်ႇလႆႈသိုဝ်ႉတီႈ Cloud",
    "Server ဢၼ်လူဝ်ႇလူတ်ႇလူင်းမႃးသႂ်ႇၽၢႆႇၼွၵ်ႈ",
    "Server ဢၼ်ၸႂ်ႉလႆႈၵူၺ်းၼႂ်း Browser",
  ], "What is an Embedded Server?"),
  Quiz(
    4,
    "Spring Boot ၼႆႉ မၢႆထိုင်ပိူင်သၢင်ႈ (Philosophy) ဢၼ်လႂ်?",
    [
      "Convention over Configuration",
      "Code over Documentation",
      "Manual Setup over Automation",
      "Speed over Security",
    ],
    "Which philosophy does Spring Boot follow?",
  ),
  Quiz(5, "Spring Framework ၼႆႉ ပဵၼ်သင်?", [
    "ပဵၼ်ပိုၼ်ႉထၢၼ် (Foundation) တွၼ်ႈတႃႇတႅမ်ႈ Java App",
    "ပဵၼ်ဝႅပ်ႉသၢႆႉတွၼ်ႈတႃႇလူတ်ႇလူင်း Java",
    "ပဵၼ်တူဝ်ၸွႆးတႅမ်ႈ HTML",
    "ပဵၼ်သႃႇပႃႇတွၼ်ႈတႃႇသိမ်း File",
  ], "What is the Spring Framework?"),

  // --- Lesson 1.2: The TaiGlish Blueprint (start.spring.io) ---
  Quiz(
    6,
    "ဝႅပ်ႉသၢႆႉလႂ် ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ Generate Project Spring Boot?",
    ["start.spring.io", "spring.com", "java.start.io", "boot.spring.net"],
    "Which website is used to generate a Spring Boot project?",
  ),
  Quiz(7, "Maven ၼႆႉ မီးၼႃႈတီႈသင်?", [
    "ၸတ်းၵၢၼ် Dependency လႄႈ Building Project",
    "ပဵၼ်တူဝ်တႅမ်ႈ Code Java",
    "ပဵၼ် Server တွၼ်ႈတႃႇ Run App",
    "ၸွႆးမႄး Spelling လိၵ်ႈတႆး",
  ], "What is the role of Maven?"),
  Quiz(
    8,
    "Group ID ၼႂ်း Metadata မၢႆထိုင်သင်?",
    [
      "ၸိုဝ်ႈမူႇၸုမ်း ဢမ်ႇၼၼ် Domain Name",
      "ၸိုဝ်ႈတူဝ် Application",
      "ဝိူဝ်းသျိၼ်း (Version) ၶွင် Java",
      "ၸိုဝ်ႈၶိူင်ႈၶွမ်ႇပိဝ်ႇတႃႇ",
    ],
    "What does Group ID represent in Metadata?",
  ),
  Quiz(
    9,
    "Artifact ID ၼႂ်း Metadata မၢႆထိုင်သင်?",
    [
      "ၸိုဝ်ႈတူဝ် Application",
      "ၸိုဝ်ႈၵူၼ်းတႅမ်ႈ Code",
      "ၸိုဝ်ႈဝၢၼ်ႈ ဢမ်ႇၼၼ် ၸႄႈဝဵင်း",
      "ၸိုဝ်ႈ Dependency ဢၼ်လိူၵ်ႈဝႆႉ",
    ],
    "What does Artifact ID represent in Metadata?",
  ),
  Quiz(
    10,
    "Dependency 'Spring Web' ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "တႅမ်ႈ REST API လႄႈ Web Application",
      "ၵွင်ႉၸူး Database",
      "လူတ်းယွမ်းၵၢၼ်တႅမ်ႈ Getter/Setter",
      "ၸွႆး Restart App ႁင်းၵူၺ်း",
    ],
    "What is the 'Spring Web' dependency used for?",
  ),
  Quiz(11, "Lombok ၸွႆးပၼ်လွင်ႈသင်?", [
    "လူတ်းယွမ်းၵၢၼ်တႅမ်ႈ Boilerplate Code",
    "ႁဵတ်းႁႂ်ႈ App ၵွင်ႉ Web လႆႈ",
    "ပဵၼ် Server တွၼ်ႈတႃႇ Run App",
    "ၸွႆးလူတ်ႇလူင်း Java Version မႂ်ႇ",
  ], "What does Lombok help with?"),
  Quiz(
    12,
    "Spring Boot DevTools ၸွႆးပၼ်လွင်ႈသင်?",
    [
      "Restart App ႁင်းၵူၺ်း မိူဝ်ႈမႄး Code",
      "ၸွႆးတႅမ်ႈ Unit Test",
      "ၵုမ်းၵမ် Security ၶွင် App",
      "ၸွႆး Generate ၾၢႆႇ Excel",
    ],
    "What is the benefit of Spring Boot DevTools?",
  ),

  // --- Lesson 1.3: Project Anatomy & Main Class ---
  Quiz(
    13,
    "Folder `src/main/java` သိမ်းသင်ဝႆႉ?",
    [
      "ၾၢႆႇ Java Source Code တင်းမူတ်း",
      "ၾၢႆႇ Config ၸိူင်ႉၼင်ႇ Properties",
      "ၾၢႆႇ HTML လႄႈ CSS",
      "ၾၢႆႇ Dependency ဢၼ် Download မႃး",
    ],
    "What is stored in the `src/main/java` folder?",
  ),
  Quiz(
    14,
    "Folder `src/main/resources` သိမ်းသင်ဝႆႉ?",
    [
      "ၾၢႆႇ Configuration လႄႈ Static Files",
      "ၾၢႆႇ Java Class",
      "ၾၢႆႇ Library ၶွင် Maven",
      "ၾၢႆႇ Log ၶွင် Server",
    ],
    "What is stored in the `src/main/resources` folder?",
  ),
  Quiz(15, "ၾၢႆႇ `pom.xml` ပဵၼ်ၾၢႆႇသင်?", [
    "ၾၢႆႇသဵၼ်ႈမၢႆ Dependency လႄႈ Project Config",
    "ၾၢႆႇတႄႇ Run Application",
    "ၾၢႆႇသိမ်း Database ၶွင် App",
    "ၾၢႆႇတႅမ်ႈ Controller",
  ], "What is the `pom.xml` file?"),
  Quiz(
    16,
    "Annotation `@SpringBootApplication` ပဵၼ်သင်?",
    [
      "တီႈတႄႇငဝ်ႈ (Power Button) ၶွင် App",
      "တူဝ်ၸွႆးတႅမ်ႈ Database Query",
      "တူဝ်မၢႆတွင်းဝႃႈပဵၼ် Web Controller",
      "တူဝ်ၸွႆး Generate Getter/Setter",
    ],
    "What is the `@SpringBootApplication` annotation?",
  ),
  Quiz(
    17,
    "Method လႂ် ဢၼ်ပဵၼ်တူဝ်တႄႇ Run Java Application?",
    [
      "public static void main(String[] args)",
      "public void start()",
      "init()",
      "runApp()",
    ],
    "Which method is the entry point of a Java application?",
  ),
  Quiz(
    18,
    "Tomcat ၼႂ်း Spring Boot ပဵၼ်သင်?",
    [
      "Embedded Web Server",
      "Database Engine",
      "Java Compiler",
      "Programming Language",
    ],
    "What is Tomcat in the context of Spring Boot?",
  ),

  // --- Lesson 1.4: REST Fundamentals & GetMapping ---
  Quiz(
    19,
    "REST API ၼႆႉ ၸႂ်ႉသင်တွၼ်ႈတႃႇမၢႆထိုင် တီႈယူႇၶေႃႈမုၼ်း?",
    [
      "URL / URI",
      "Java Class Name",
      "Database Table Name",
      "Computer IP Address",
    ],
    "What does REST API use to identify resources?",
  ),
  Quiz(
    20,
    "Annotation `@RestController` ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "မၢႆတွင်းဝႃႈ Class ၼႆႉပဵၼ် API Controller",
      "မၢႆတွင်းဝႃႈ Class ၼႆႉပဵၼ် Database Table",
      "ၸွႆးသၢင်ႈ Object ပၼ်ႁင်းၵူၺ်း",
      "ၸွႆးပႅတ်ႈ Error ၼႂ်း Code",
    ],
    "What is the purpose of `@RestController`?",
  ),
  Quiz(21, "@GetMapping ၸႂ်ႉတွၼ်ႈတႃႇသင်?", [
    "ႁပ်ႉ Request တွၼ်ႈတႃႇ 'လူ' (Read) Data",
    "ႁပ်ႉ Request တွၼ်ႈတႃႇ 'သႂ်ႇ' (Create) Data",
    "ႁပ်ႉ Request တွၼ်ႈတႃႇ 'မႄး' (Update) Data",
    "ႁပ်ႉ Request တွၼ်ႈတႃႇ 'လူတ်း' (Delete) Data",
  ], "What is `@GetMapping` used for?"),
  Quiz(
    22,
    "Client ၼႂ်း REST API မၢႆထိုင်သင်?",
    [
      "Browser ဢမ်ႇၼၼ် Mobile App ဢၼ်သူင်ႇ Request",
      "Server ဢၼ်သိမ်း Database",
      "ၵူၼ်းတႅမ်ႈ Code Java",
      "ၶိူင်ႈ IntelliJ IDEA",
    ],
    "What does 'Client' mean in a REST API context?",
  ),
  Quiz(
    23,
    "Response ၼႂ်း REST API မၢႆထိုင်သင်?",
    [
      "ၶေႃႈမုၼ်း ဢၼ် Server တွပ်ႇမႃးၸူး Client",
      "ၶေႃႈမုၼ်း ဢၼ် Client သူင်ႇၵႂႃႇ",
      "ၵၢၼ်မႄး Code ၼႂ်း Controller",
      "ၵၢၼ် Download Project",
    ],
    "What does 'Response' mean in a REST API context?",
  ),
  Quiz(
    24,
    "Default Port ၶွင် Spring Boot ပဵၼ်မၢႆလႂ်?",
    ["8080", "443", "3306", "27017"],
    "What is the default port for Spring Boot?",
  ),

  // --- Lesson 1.5: Configuration & The .properties File ---
  Quiz(
    25,
    "ၾၢႆႇလႂ် ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ Config App Port လႄႈ Database?",
    ["application.properties", "pom.xml", "main.java", "settings.json"],
    "Which file is used to configure app port and database settings?",
  ),
  Quiz(
    26,
    "Key လႂ် ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇလႅၵ်ႈလၢႆႈ Port Server?",
    ["server.port", "app.port", "spring.port", "port.number"],
    "Which key is used to change the server port?",
  ),
  Quiz(
    27,
    "Annotation `@Value` ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "လူဢဝ်ၶေႃႈမုၼ်းၼႂ်း Properties မႃးသႂ်ႇၼႂ်း Variable",
      "သႂ်ႇၵႃႈၶၼ်ပၼ် Database",
      "မႄးၸိုဝ်ႈ Method ႁႂ်ႈပႅၵ်ႇပိူင်ႈ",
      "ၸွႆး Calculate တူဝ်ၼပ်ႉ",
    ],
    "What is the `@Value` annotation used for?",
  ),
  Quiz(28, "Hardcode မၢႆထိုင်သင်?", [
    "ၵၢၼ်တႅမ်ႈၶေႃႈမုၼ်း 'တၢႆ' ဝႆႉၼႂ်း Code",
    "ၵၢၼ်တႅမ်ႈ Code ႁႂ်ႈလႅၼ်ႈဝႆး",
    "ၵၢၼ်ၸႂ်ႉ Password ဢၼ်ယၢပ်ႇ",
    "ၵၢၼ်တႅမ်ႈ Code တွၼ်ႈတႃႇ Hardware",
  ], "What does 'Hardcode' mean?"),
  Quiz(
    29,
    "ၾၢႆႇ `banner.txt` ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "လႅၵ်ႈလၢႆႈ ASCII Art မိူဝ်ႈ Start App",
      "သိမ်းသဵၼ်ႈမၢႆလုၵ်ႈႁဵၼ်း",
      "Config Database Password",
      "တႅမ်ႈ Documentation ၶွင် API",
    ],
    "What is the `banner.txt` file used for?",
  ),
  Quiz(
    30,
    "သင်ႁဝ်းမီး `taiglish.name=TaiGlish` ၼႂ်း Properties, ႁဝ်းတေလူၸိူင်ႉႁိုဝ်?",
    [
      "@Value(\"\${taiglish.name}\")",
      "@Value(\"taiglish.name\")",
      "@Property(\"taiglish.name\")",
      "@Get(\"taiglish.name\")",
    ],
    "How to read `taiglish.name=TaiGlish` from properties?",
  ),

  // --- Lesson 1.6: Professional Testing with Postman ---
  Quiz(
    31,
    "ၵွပ်ႈသင်ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Postman တွၼ်ႈတႃႇၸမ်း API?",
    [
      "မၼ်းသူင်ႇလႆႈတင်း GET, POST, PUT, DELETE",
      "မၼ်းႁဵတ်းႁႂ်ႈ Java တႅမ်ႈငၢႆႈလိူဝ်",
      "မၼ်းပဵၼ် Tool တွၼ်ႈတႃႇတႅမ်ႈ UI",
      "မၼ်းၸွႆး Compile Code ႁႂ်ႈဝႆး",
    ],
    "Why should we use Postman for API testing?",
  ),
  Quiz(32, "JSON မၢႆထိုင်သင်?", [
    "JavaScript Object Notation",
    "Java Standard Object Network",
    "Joint System Online Node",
    "Java Source Open Network",
  ], "What does JSON stand for?"),
  Quiz(
    33,
    "HTTP Status Code 200 OK မၢႆထိုင်သင်?",
    [
      "ၵၢၼ်ႁဵတ်းၵၢၼ် တူဝ်ႈတႅတ်ႈ (Success)",
      "ဢမ်ႇႁၼ် URL (Not Found)",
      "Server မီး Error",
      "ဢမ်ႇမီးသုၼ်ႇၶဝ်ႈၸႂ်ႉ (Unauthorized)",
    ],
    "What does HTTP Status Code 200 OK mean?",
  ),
  Quiz(
    34,
    "HTTP Status Code 404 Not Found မၢႆထိုင်သင်?",
    [
      "ဢမ်ႇႁၼ် URL ဢမ်ႇၼၼ် Resource ဢၼ်ႁႃ",
      "Server လႅၼ်ႈဝႆးပူၼ်ႉတီႈ",
      "Password ၽိတ်း",
      "Internet ၶขาด",
    ],
    "What does HTTP Status Code 404 Not Found mean?",
  ),
  Quiz(
    35,
    "HTTP Status Code 500 Internal Server Error မၢႆထိုင်သင်?",
    [
      "မီး Error ၼႂ်း Code ၽၢႆႇ Server",
      "Client သူင်ႇ URL ၽိတ်း",
      "Database ၼိမ်ဝႆး",
      "App လႅၼ်ႈတူဝ်ႈတႅတ်ႈ",
    ],
    "What does HTTP Status Code 500 Internal Server Error mean?",
  ),
  Quiz(
    36,
    "Collection ၼႂ်း Postman ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "ၸတ်းၵၢၼ် Request ၸိူဝ်းၵွင်ႉၵၢႆႇၵၼ် ဝႆႉပဵၼ်မူႇ",
      "လူတ်ႇလူင်း Library မႂ်ႇ",
      "တႅမ်ႈ Code Java ၼႂ်း Postman",
      "ၵွင်ႉၸူး GitHub",
    ],
    "What is a Collection in Postman used for?",
  ),

  // --- General Knowledge & Mixed Module 1 ---
  Quiz(
    37,
    "Spring Application Context ပဵၼ်သင်?",
    [
      "တီႈသိမ်းလႄႈၸတ်းၵၢၼ် Spring Beans (Objects)",
      "တီႈသိမ်း File HTML",
      "ၸိုဝ်ႈ Application ၼႂ်း Cloud",
      "ၶိူင်ႈမိုဝ်းတွၼ်ႈတႃႇ Scan Virus",
    ],
    "What is the Spring Application Context?",
  ),
  Quiz(38, "Bean ၼႂ်း Spring မၢႆထိုင်သင်?", [
    "Object ဢၼ် Spring Container ပဵၼ်ၵေႃႉၵုမ်းၵမ်",
    "ၾၢႆႇ Configuration ၶွင် XML",
    "ၸိုဝ်ႈ Database Table",
    "တူဝ်ၼပ်ႉ (Variable) ဢၼ်ပဵၼ် Integer",
  ], "What is a Bean in Spring?"),
  Quiz(39, "Component Scanning မၢႆထိုင်သင်?", [
    "ၵၢၼ်ဢၼ် Spring ႁႃ Class ဢၼ်မီး Annotation",
    "ၵၢၼ် Scan QR Code တွၼ်ႈတႃႇ Login",
    "ၵၢၼ် Scan Virus ၼႂ်း Project",
    "ၵၢၼ် Check ဝႃႈ Java Version ထုၵ်ႇႁႃႉ",
  ], "What is Component Scanning?"),
  Quiz(
    40,
    "Dependency Injection (DI) မၢႆထိုင်သင်?",
    [
      "ၵၢၼ်သူင်ႇ Object ဢၼ်လူဝ်ႇၸႂ်ႉ ၶဝ်ႈၵႂႃႇၼႂ်း Class",
      "ၵၢၼ်ပိုတ်ႇ App လၢႆလၢႆတူဝ်ၸွမ်ၵၼ်",
      "ၵၢၼ်လူတ်ႇလူင်း Library တီႈ Internet",
      "ၵၢၼ်တႅမ်ႈ SQL Query",
    ],
    "What is Dependency Injection (DI)?",
  ),
  Quiz(
    41,
    "Starters ၼႂ်း Spring Boot မၢႆထိုင်သင်?",
    [
      "မူႇၸုမ်း Dependency ဢၼ်ၸတ်းဝႆႉပဵၼ်ပိူင်",
      "ၵူၼ်းတႄႇတႅမ်ႈ Code ၵေႃႉဢွၼ်တၢင်း",
      "ပုမ်ႇ Start ၼႂ်း Windows",
      "ၶေႃႈၵႂၢမ်း Welcome မိူဝ်ႈပိုတ်ႇ App",
    ],
    "What are Starters in Spring Boot?",
  ),
  Quiz(42, "ၵွပ်ႈသင် Spring Boot ၸင်ႇၸႂ်ႉ Tomcat?", [
    "တွၼ်ႈတႃႇႁပ်ႉ HTTP Requests",
    "တွၼ်ႈတႃႇသိမ်း Data ပဵၼ် File",
    "တွၼ်ႈတႃႇ Compile Java Code",
    "တွၼ်ႈတႃႇမႄး Spelling ၽိတ်း",
  ], "Why does Spring Boot use Tomcat?"),
  Quiz(
    43,
    "Spring Boot Version 3 လူဝ်ႇ Java Version ၶၼ်ႉတွၼ်ႈလႂ်?",
    ["Java 17 ၶၼ်ႉၼိူဝ်", "Java 8", "Java 11", "Java 1.0"],
    "Which Java version is required for Spring Boot 3?",
  ),
  Quiz(
    44,
    "Key `spring.datasource.url` ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    [
      "Config တီႈယူႇ (URL) ၶွင် Database",
      "Config ၸိုဝ်ႈဝႅပ်ႉသၢႆႉ",
      "Config တီႈယူႇၶွင် IntelliJ",
      "Config URL ၶွင် Postman",
    ],
    "What is `spring.datasource.url` used for?",
  ),
  Quiz(
    45,
    "Spring Web Starter ပႃးသင်ဝႆႉၽၢႆႇၼႂ်း?",
    [
      "Spring MVC, REST, လႄႈ Tomcat",
      "Spring Data JPA ၵူၺ်း",
      "Lombok လႄႈ DevTools",
      "SQL Driver",
    ],
    "What is included in Spring Web Starter?",
  ),
  Quiz(
    46,
    "Annotation လႂ် ဢၼ်ပႃး `@Controller` လႄႈ `@ResponseBody`?",
    ["@RestController", "@Service", "@Repository", "@Component"],
    "Which annotation combines `@Controller` and `@ResponseBody`?",
  ),
  Quiz(
    47,
    "Method `SpringApplication.run()` ႁဵတ်းသင်?",
    [
      "တႄႇသၢင်ႈ Application Context လႄႈ Start Server",
      "တႅမ်ႈ Code ပၼ်ႁင်းၵူၺ်း",
      "Delete Project ပႅတ်ႈ",
      "Download Java Version မႂ်ႇ",
    ],
    "What does `SpringApplication.run()` do?",
  ),
  Quiz(
    48,
    "ၾၢႆႇ `mvnw` ၼႂ်း Project ပဵၼ်သင်?",
    [
      "Maven Wrapper တွၼ်ႈတႃႇ Run Maven လူၺ်ႈဢမ်ႇလူဝ်ႇ Install",
      "ၾၢႆႇ Java Main Class",
      "ၾၢႆႇသိမ်း Password",
      "ၾၢႆႇ ASCII Art Banner",
    ],
    "What is the `mvnw` file in a project?",
  ),
  Quiz(
    49,
    "YAML (yml) ၸႂ်ႉတႅၼ်းၾၢႆႇလႂ်လႆႈၼႂ်း Config?",
    [".properties file", ".java file", ".xml file", ".exe file"],
    "YAML (yml) can be used as an alternative to which file?",
  ),
  Quiz(
    50,
    "ၽွၼ်းလီလူင်ၶွင် Spring Boot ပဵၼ်သင်?",
    [
      "Rapid Application Development (တႅမ်ႈ App လႆႈဝႆး)",
      "ႁဵတ်းႁႂ်ႈ Computer ဢမ်ႇမီး Virus",
      "တႅမ်ႈ Code ၵမ်းလဵဝ် လႅၼ်ႈလႆႈၼႂ်း iOS ၵူၺ်း",
      "ပဵၼ် Framework ဢၼ်ဢမ်ႇလူဝ်ႇ Java",
    ],
    "What is the main benefit of Spring Boot?",
  ),
];

final List<Quiz> jpaModule2Quiz = [
  // --- Lesson 2.7: Introduction to ORM & JPA (51-65) ---
  Quiz(
    51,
    "ORM ၼႆႉ မၢႆထိုင်သင်?",
    ["Object Relational Mapping", "Object Resource Management", "Online Remote Mapping", "Optimal Relational Model"],
    "What does ORM stand for?",
  ),
  Quiz(
    52,
    "ၼႂ်းပိူင် ORM, Java Class ၼိုင်ႈဢၼ် တႅၼ်းတၢင်သင်ၼႂ်း Database?",
    ["Database Table", "Database Column", "Database Row", "Database Schema"],
    "In ORM, what does a Java Class represent?",
  ),
  Quiz(
    53,
    "ၼႂ်းပိူင် ORM, Java Field (Variable) ၼိုင်ႈဢၼ် တႅၼ်းတၢင်သင်ၼႂ်း Table?",
    ["Table Column", "Table Row", "Primary Key", "Foreign Key"],
    "In ORM, what does a Java Field represent?",
  ),
  Quiz(
    54,
    "ၼႂ်းပိူင် ORM, Java Object ၼိုင်ႈတူဝ် တႅၼ်းတၢင်သင်ၼႂ်း Table?",
    ["Table Row", "Table Column", "Database Name", "Primary Key"],
    "In ORM, what does a Java Object represent?",
  ),
  Quiz(
    55,
    "JPA (Java Persistence API) ၼႆႉ ပဵၼ်သင်?",
    ["Specification တွၼ်ႈတႃႇ ORM", "Implementation ၶွင် ORM", "Database Engine တႄႉတႄႉ", "Java Web Framework"],
    "What is JPA (Java Persistence API)?",
  ),
  Quiz(
    56,
    "Hibernate ၼႆႉ မီးၼႃႈတီႈသင်?",
    ["Implementation ၶွင် JPA", "Specification ၶွင် JPA", "Java Compiler တူဝ်မႂ်ႇ", "Cloud Database Server"],
    "What is the role of Hibernate?",
  ),
  Quiz(
    57,
    "ၽွၼ်းလီလူင်ၶွင် JPA ပဵၼ်သင်?",
    ["လူတ်းယွမ်းၵၢၼ်တႅမ်ႈ SQL", "ႁဵတ်းႁႂ်ႈ Java လႅၼ်ႈဝႆး", "ၸွႆးတႅမ်ႈ HTML/CSS", "ပဵၼ်တူဝ် Check Virus"],
    "What is a major benefit of using JPA?",
  ),
  Quiz(
    58,
    "Persistence ၼႂ်း Java မၢႆထိုင်သင်?",
    ["ၵၢၼ်သိမ်းၶေႃႈမုၼ်းတႃႇသေႇ", "ၵၢၼ်ပိုတ်ႇ App ႁႂ်ႈဝႆး", "ၵၢၼ်ပိတ်း App ႁင်းၵူၺ်း", "ၵၢၼ်မႄး Error ၼႂ်း RAM"],
    "What does Persistence mean in Java context?",
  ),
  Quiz(
    59,
    "Annotation လႂ် ဢၼ်မၢႆတွင်းဝႃႈ Class ၼႆႉပဵၼ် Table?",
    ["@Entity", "@TableColumn", "@DatabaseObject", "@PersistentClass"],
    "Which annotation marks a class as a database table?",
  ),
  Quiz(
    60,
    "Hibernate ပိၼ်ႇ Java Code ႁဝ်းပဵၼ်သင် တွၼ်ႈတႃႇလၢတ်ႈတေႃႇ Database?",
    ["SQL Statements", "Binary Bytecode", "HTML Documents", "JSON Structures"],
    "What does Hibernate translate Java code into?",
  ),
  Quiz(
    61,
    "JDBC မၢႆထိုင်သင်?",
    ["Java Database Connectivity", "Java Data Control", "Joint Database Connection", "Java Direct Connection"],
    "What does JDBC stand for?",
  ),
  Quiz(
    62,
    "Entity Manager ၼႂ်း JPA မီးၼႃႈတီႈသင်?",
    ["ၸတ်းၵၢၼ် Lifecycle ၶွင် Entity", "ၸတ်းၵၢၼ် Port ၶွင် Server", "ၸတ်းၵၢၼ် UI ၶွင် Web", "ၸတ်းၵၢၼ် Maven Library"],
    "What is the role of Entity Manager in JPA?",
  ),
  Quiz(
    63,
    "Persistence Context ၼႂ်း JPA ပဵၼ်သင်?",
    ["တီႈသိမ်း Entity ၼႂ်း RAM", "တီႈသိမ်း File ၼႂ်း Disk", "ၸိုဝ်ႈ Database Server", "ပိူင် Config ၶွင် Maven"],
    "What is Persistence Context in JPA?",
  ),
  Quiz(
    64,
    "dialect ၼႂ်း Hibernate ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["လၢတ်ႈၵႂၢမ်း SQL ၸွမ်း DB", "ပိၼ်ႇလိၵ်ႈတႆးပဵၼ်ဢင်းၵိတ်း", "တင်ႈၸိုဝ်ႈ Project Java", "ၵုမ်းၵမ် Version ၶွင် App"],
    "What is Hibernate Dialect used for?",
  ),
  Quiz(
    65,
    "Annotation @Table ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["တင်ႈၸိုဝ်ႈ Table ၼႂ်း DB", "သၢင်ႈ Table ၼႂ်း HTML", "မၵ်းမၼ်ႈ Column ၼႂ်း DB", "ပိတ်း Database Server"],
    "What is the purpose of @Table annotation?",
  ),

  // --- Lesson 2.8: Connecting to MySQL Database (66-85) ---
  Quiz(
    66,
    "MySQL ၼႆႉ ပႅၵ်ႇပိူင်ႈတင်း H2 ၸိူင်ႉႁိုဝ်?",
    ["သိမ်းၶေႃႈမုၼ်းဝႆႉၼႂ်း Disk", "သိမ်းၶေႃႈမုၼ်းဝႆႉၼႂ်း RAM", "ဢမ်ႇလူဝ်ႇၸႂ်ႉ Driver", "ဢမ်ႇလူဝ်ႇၸႂ်ႉ Password"],
    "How does MySQL differ from H2 in-memory?",
  ),
  Quiz(
    67,
    "Dependency လႂ် ဢၼ်လူဝ်ႇၸႂ်ႉတွၼ်ႈတႃႇၵွင်ႉ MySQL?",
    ["mysql-connector-j", "h2-database-driver", "spring-boot-starter-web", "lombok-library-main"],
    "Which dependency is needed for MySQL connection?",
  ),
  Quiz(
    68,
    "JDBC URL ၶွင် MySQL ပိူင်ထမ်ႇမတႃႇ တႄႇလူၺ်ႈသင်?",
    ["jdbc:mysql://", "http://mysql:", "db:mysql:java", "sql:mysql:connect"],
    "What does a MySQL JDBC URL start with?",
  ),
  Quiz(
    69,
    "Property spring.datasource.username ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["တင်ႈၸိုဝ်ႈ Login ၶွင် DB", "တင်ႈၸိုဝ်ႈ Project Java", "တင်ႈၸိုဝ်ႈ Computer ႁဝ်း", "တင်ႈၸိုဝ်ႈ Package Java"],
    "What is spring.datasource.username used for?",
  ),
  Quiz(
    70,
    "Property spring.datasource.password ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["တင်ႈ Password ၶွင် DB", "တင်ႈ Password ၶွင် Windows", "တင်ႈ Password ၶွင် GitHub", "တင်ႈ Password ၶွင် IntelliJ"],
    "What is spring.datasource.password used for?",
  ),
  Quiz(
    71,
    "spring.jpa.hibernate.ddl-auto=update မၢႆထိုင်သင်?",
    ["မႄးပိၼ်ႇ Table ၸွမ်း Code", "လူတ်း Table ပႅတ်ႈၵူႈပွၵ်ႈ", "Update Java Version", "မႄး Error ၼႂ်း Java"],
    "What does ddl-auto=update mean?",
  ),
  Quiz(
    72,
    "spring.jpa.show-sql=true ၸွႆးပၼ်သင်?",
    ["ၼႄ SQL ၼႂ်း Console", "ၼႄ Code ၼႂ်း Browser", "ၼႄ Password ၼႂ်း Log", "ပိုတ်ႇ H2 Console Server"],
    "What is the function of spring.jpa.show-sql=true?",
  ),
  Quiz(
    73,
    "Port ပိူင်ထမ်ႇမတႃႇၶွင် MySQL ပဵၼ်မၢႆလႂ်?",
    ["3306", "8080", "5432", "27017"],
    "What is the default MySQL port?",
  ),
  Quiz(
    74,
    "createDatabaseIfNotExist=true ၼႂ်း URL မီးၼႃႈတီႈသင်?",
    ["သၢင်ႈ DB သင်မၼ်းဢမ်ႇမီး", "Delete DB ၵဝ်ႇပႅတ်ႈ", "ပၼ် Login လူၺ်ႈဢမ်ႇၸႂ်ႉ Pass", "သၢင်ႈ Table ႁင်းၵူၺ်း"],
    "What does createDatabaseIfNotExist=true do?",
  ),
  Quiz(
    75,
    "Dependency spring-boot-starter-data-jpa ပႃးသင်ဝႆႉ?",
    ["Hibernate လႄႈ JPA", "MySQL Server တႄႉတႄႉ", "Lombok လႄႈ DevTools", "Tomcat Server ၵူၺ်း"],
    "What does spring-boot-starter-data-jpa include?",
  ),
  Quiz(
    76,
    "SQL Dialect တွၼ်ႈတႃႇ MySQL 8 ပဵၼ်သင်?",
    ["MySQL8Dialect", "PostgreSQLDialect", "H2Dialect", "OracleDialect"],
    "Which dialect is used for MySQL 8?",
  ),
  Quiz(
    77,
    "သင် server.port=8081, ႁဝ်းတေၶဝ်ႈ App ၸိူင်ႉႁိုဝ်?",
    ["localhost:8081", "localhost:8080", "localhost:3306", "localhost:9090"],
    "How to access the app if server.port=8081?",
  ),
  Quiz(
    78,
    "JDBC မၢႆထိုင်သင်?",
    ["Java Database Connectivity", "Java Data Connector", "Joint DB Connection", "Java Direct Code"],
    "What does JDBC stand for?",
  ),
  Quiz(
    79,
    "spring.datasource.driver-class-name ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["မၵ်းမၼ်ႈ Driver ၶွင် DB", "မၵ်းမၼ်ႈ Java Version", "မၵ်းမၼ်ႈ Project Name", "မၵ်းမၼ်ႈ UI Theme"],
    "What is driver-class-name used for?",
  ),
  Quiz(
    80,
    "MySQL Workbench ပဵၼ်သင်?",
    ["GUI Tool တွၼ်ႈတႃႇ DB", "IDE တွၼ်ႈတႃႇတႅမ်ႈ Java", "Web Server တွၼ်ႈတႃႇ Run App", "Programming Language"],
    "What is MySQL Workbench?",
  ),
  Quiz(
    81,
    "JDBC URL ၶွင် H2 (In-memory) ပဵၼ်ၸိူင်ႉႁိုဝ်?",
    ["jdbc:h2:mem:dbname", "jdbc:mysql:mem:db", "http:h2:localhost", "db:h2:memory:db"],
    "What is the H2 in-memory JDBC URL?",
  ),
  Quiz(
    82,
    "spring.jpa.hibernate.ddl-auto=create-drop မၢႆထိုင်သင်?",
    ["Delete DB မိူဝ်ႈပိတ်း App", "Update DB ႁင်းၵူၺ်း", "ဢမ်ႇႁဵတ်းသင်တင်း DB", "သၢင်ႈ DB ၵမ်းလဵဝ်ၵူၺ်း"],
    "What does ddl-auto=create-drop do?",
  ),
  Quiz(
    83,
    "DBeaver ပဵၼ်သင်?",
    ["Database Management Tool", "Java Coding Software", "Spring Boot Plugin", "Operating System"],
    "What is DBeaver?",
  ),
  Quiz(
    84,
    "Schema ၼႂ်း Database မၢႆထိုင်သင်?",
    ["ပိူင်သၢင်ႈၶွင် Database", "ၶေႃႈမုၼ်းၼႂ်း Table", "Password ၶွင် Root", "ၸိုဝ်ႈ Server Computer"],
    "What does Database Schema refer to?",
  ),
  Quiz(
    85,
    "UTF-8 ၼႂ်း MySQL ၸွႆးပၼ်လွင်ႈသင်?",
    ["ၼႄလိၵ်ႈတႆးလႆႈတူဝ်ႈတႅတ်ႈ", "ႁဵတ်းႁႂ်ႈ DB လႅၼ်ႈဝႆး", "ၵုမ်းၵမ် Security", "လူတ်းယွမ်း RAM"],
    "What is the benefit of UTF-8 in MySQL?",
  ),

  // --- Lesson 2.9: Creating the "Word" Entity (86-105) ---
  Quiz(
    86,
    "Annotation @Id ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["မၵ်းမၼ်ႈ Primary Key", "မၵ်းမၼ်ႈ Table Name", "မၵ်းမၼ်ႈ Foreign Key", "မၵ်းမၼ်ႈ Package Java"],
    "What is the use of @Id?",
  ),
  Quiz(
    87,
    "GenerationType.IDENTITY ၸွႆးပၼ်လွင်ႈသင်?",
    ["ပၼ် ID ၶိုၼ်ႈႁင်းၵူၺ်း", "သၢင်ႈ ID ပဵၼ် Random", "ပၼ် ID ပဵၼ် 0 တႃႇသေႇ", "လူဝ်ႇသႂ်ႇ ID ႁင်းၵူၺ်း"],
    "What does GenerationType.IDENTITY do?",
  ),
  Quiz(
    88,
    "Annotation @Column(name = 'shan_word') ၸႂ်ႉႁဵတ်းသင်?",
    ["တင်ႈၸိုဝ်ႈ Column ၼႂ်း DB", "တင်ႈၸိုဝ်ႈ Variable ၼႂ်း Java", "သၢင်ႈ Table မႂ်ႇ", "ပိတ်း Database Column"],
    "What is @Column(name = '...') used for?",
  ),
  Quiz(
    89,
    "@Column(nullable = false) မၢႆထိုင်သင်?",
    ["ဢမ်ႇပၼ်ဝႆႉၶေႃႈမုၼ်းပဝ်ႇ", "ပၼ်ဝႆႉပဝ်ႇလႆႈ", "Column ၼႆႉတေဢမ်ႇမီး", "ပဵၼ် Primary Key"],
    "What does nullable = false mean?",
  ),
  Quiz(
    90,
    "Entity Class လူဝ်ႇ Constructor ပိူင်လႂ်?",
    ["No-Args Constructor", "All-Args Constructor", "ဢမ်ႇလူဝ်ႇမီးသေတူဝ်", "ID Constructor ၵူၺ်း"],
    "What constructor is required for JPA?",
  ),
  Quiz(
    91,
    "Type Long ၼႂ်း Java ပဵၼ်သင်ၼႂ်း MySQL?",
    ["BIGINT", "VARCHAR", "INT", "TEXT"],
    "Java Long maps to which MySQL type?",
  ),
  Quiz(
    92,
    "Type String ၼႂ်း Java ပဵၼ်သင်ၼႂ်း MySQL?",
    ["VARCHAR", "INTEGER", "DATE", "BLOB"],
    "Java String maps to which MySQL type?",
  ),
  Quiz(
    93,
    "Annotation @Column(length = 100) ၸႂ်ႉႁဵတ်းသင်?",
    ["မၵ်းမၼ်ႈတၢင်းယၢဝ်းလိၵ်ႈ", "မၵ်းမၼ်ႈတူဝ်ၼပ်ႉ ID", "မၵ်းမၼ်ႈတၢင်းၵႂၢင်ႈ Table", "မၵ်းမၼ်ႈ JPA Version"],
    "What is @Column(length = 100) used for?",
  ),
  Quiz(
    94,
    "Snake Case ပဵၼ်လၢႆးတႅမ်ႈလိၵ်ႈၸိူင်ႉႁိုဝ်?",
    ["shan_word", "shanWord", "ShanWord", "shan-word"],
    "Which is an example of Snake Case?",
  ),
  Quiz(
    95,
    "Camel Case ပဵၼ်လၢႆးတႅမ်ႈလိၵ်ႈၸိူင်ႉႁိုဝ်?",
    ["shanWord", "shan_word", "ShanWord", "shan-word"],
    "Which is an example of Camel Case?",
  ),
  Quiz(
    96,
    "Annotation @Transient ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["ယႃႇႁႂ်ႈသိမ်းၶဝ်ႈ Database", "မၢႆတွင်းဝႃႈပဵၼ် Key", "ႁႂ်ႈသိမ်းဝႆႉၼႂ်း Disk", "ပဵၼ်တူဝ်ၸွႆး Compile"],
    "What is @Transient used for?",
  ),
  Quiz(
    97,
    "Primary Key မီးၼႃႈတီႈသင်?",
    ["မၢႆတွင်းၶေႃႈမုၼ်းဢမ်ႇသမ်ႉၵၼ်", "မၢႆတွင်းၸိုဝ်ႈ Database", "ၸွႆးပိၼ်ႇလိၵ်ႈတႆး", "ၵုမ်းၵမ် Port Server"],
    "What is the purpose of a Primary Key?",
  ),
  Quiz(
    98,
    "Annotation @Enumerated ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["ၸတ်းၵၢၼ် Enum Type", "ၸတ်းၵၢၼ် String Type", "ၸတ်းၵၢၼ် Number Type", "ၸတ်းၵၢၼ် Date Type"],
    "What is @Enumerated used for?",
  ),
  Quiz(
    99,
    "jakarta.persistence ပဵၼ်သင်?",
    ["Package ၶွင် JPA Standard", "Package ၶွင် MySQL Driver", "Package ၶွင် Spring Web", "Package ၶွင် Lombok"],
    "What is jakarta.persistence?",
  ),
  Quiz(
    100,
    "Lombok @Data ၸွႆးသၢင်ႈသင်ပၼ်?",
    ["Getter ลႄႈ Setter", "Table ၼႂ်း Database", "Maven Dependency", "SQL Query Scripts"],
    "What does Lombok @Data generate?",
  ),
  Quiz(
    101,
    "Strategy GenerationType.AUTO မၢႆထိုင်သင်?",
    ["ပၼ် JPA လိူၵ်ႈလၢႆးပၼ် ID", "ပၼ် MySQL ပၼ် ID", "ပၼ် Java ပၼ် ID", "ပၼ် User သႂ်ႇ ID"],
    "What does GenerationType.AUTO mean?",
  ),
  Quiz(
    102,
    "Annotation @Lob ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["သိမ်းၶေႃႈမုၼ်းယႂ်ႇလူင်", "သိမ်းတူဝ်ၼပ်ႉ ID", "သိမ်း Password", "သိမ်းၸိုဝ်ႈ Table"],
    "What is @Lob used for?",
  ),
  Quiz(
    103,
    "Entity ၼိုင်ႈဢၼ် လူဝ်ႇမီး @Id ၵူႈပွၵ်ႈႁႃႉ?",
    ["လူဝ်ႇမီးတႃႇသေႇ", "ဢမ်ႇလူဝ်ႇၵေႃႈလႆႈ", "လူဝ်ႇမီးသင်ပဵၼ် String", "လူဝ်ႇမီးသင်ပဵၼ် Long"],
    "Does an Entity always need an @Id?",
  ),
  Quiz(
    104,
    "Annotation @Temporal ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["ၸတ်းၵၢၼ် Date ลႄႈ Time", "ၸတ်းၵၢၼ် String Data", "ၸတ်းၵၢၼ် Number Data", "ၸတ်းၵၢၼ် Boolean Data"],
    "What is @Temporal used for?",
  ),
  Quiz(
    105,
    "Lombok @NoArgsConstructor မီးၼႃႈတီႈသင်?",
    ["သၢင်ႈ Constructor ပဝ်ႇ", "သၢင်ႈ Getter ၵူၺ်း", "သၢင်ႈ Setter ၵူၺ်း", "သၢင်ႈ SQL Query"],
    "What does @NoArgsConstructor generate?",
  ),

  // --- Lesson 2.10: Lombok Deep Dive (106-115) ---
  Quiz(
    106,
    "Lombok ၸွႆးပၼ်လွင်ႈသင်?",
    ["လူတ်းယွမ်း Boilerplate Code", "ႁဵတ်းႁႂ်ႈ App လႅၼ်ႈဝႆး", "သၢင်ႈ Database ႁင်းၵူၺ်း", "ပိၼ်ႇ Java ပဵၼ် HTML"],
    "What is the main benefit of Lombok?",
  ),
  Quiz(
    107,
    "Annotation @Builder ၸႂ်ႉႁဵတ်းသင်?",
    ["သၢင်ႈ Object ႁၢင်ႈလီ", "သၢင်ႈ Table ၼႂ်း DB", "သၢင်ႈ Constructor ပဝ်ႇ", "သၢင်ႈ Getter ၵူၺ်း"],
    "What is @Builder used for?",
  ),
  Quiz(
    108,
    "Annotation @Getter ၼိူဝ် Class မၢႆထိုင်သင်?",
    ["သၢင်ႈ Getter ႁႂ်ႈ Fields တင်းမူတ်း", "သၢင်ႈ Getter ႁႂ်ႈ ID ၵူၺ်း", "သၢင်ႈ Setter တင်းမူတ်း", "သၢင်ႈ Constructor"],
    "What does @Getter on a class do?",
  ),
  Quiz(
    109,
    "Boilerplate Code မၢႆထိုင်သင်?",
    ["Code ဢၼ်လူဝ်ႇတႅမ်ႈသမ်ႉၼမ်", "Code ဢၼ်မီး Error ၼမ်", "Code ဢၼ်လႅၼ်ႈဝႆးလိူဝ်", "Code ဢၼ်သၢင်ႈ UI"],
    "What is Boilerplate Code?",
  ),
  Quiz(
    110,
    "Lombok ႁဵတ်းၵၢၼ်မိူဝ်ႈလႂ်?",
    ["မိူဝ်ႈ Compile Code", "မိူဝ်ႈ Run Application", "မိူဝ်ႈတႅမ်ႈ SQL Script", "မိူဝ်ႈပိုတ်ႇ Browser"],
    "When does Lombok work?",
  ),
  Quiz(
    111,
    "Annotation @ToString ၸွႆးပၼ်သင်?",
    ["သၢင်ႈ Method ၼႄၶေႃႈမုၼ်း", "သၢင်ႈ Getter ႁင်းၵူၺ်း", "သၢင်ႈ Database Table", "သၢင်ႈ Constructor"],
    "What does @ToString generate?",
  ),
  Quiz(
    112,
    "Lombok လူဝ်ႇပႃးသင်ၼႂ်း IntelliJ?",
    ["Annotation Processor", "MySQL Connector", "Tomcat Server", "Git Plugin"],
    "What must be enabled in IntelliJ for Lombok?",
  ),
  Quiz(
    113,
    "Annotation @Value ၼႂ်း Lombok (ဢမ်ႇၸႂ်ႉ Spring) ပဵၼ်သင်?",
    ["သၢင်ႈ Immutable Class", "လူၶေႃႈမုၼ်း Properties", "သၢင်ႈ Getter ၵူၺ်း", "သၢင်ႈ DB Column"],
    "What does @Value do in Lombok?",
  ),
  Quiz(
    114,
    "Annotation @Slf4j ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["သၢင်ႈ Logger ႁင်းၵူၺ်း", "သၢင်ႈ Database Table", "သၢင်ႈ REST API", "သၢင်ႈ Getter/Setter"],
    "What is @Slf4j used for?",
  ),
  Quiz(
    115,
    "All-Args Constructor မၢႆထိုင်သင်?",
    ["Constructor ဢၼ်ပႃး Fields တင်းမူတ်း", "Constructor ဢၼ်ပဝ်ႇဝႆႉ", "Constructor ဢၼ်ပႃး ID ၵူၺ်း", "Constructor ဢၼ်သၢင်ႈ UI"],
    "What is an All-Args Constructor?",
  ),

  // --- Lesson 2.11: The Repository Layer (116-130) ---
  Quiz(
    116,
    "JpaRepository ၸွႆးပၼ်လွင်ႈသင်?",
    ["Method CRUD ဢၼ်ၸႂ်ႉလႆႈၵမ်းလဵဝ်", "Method သၢင်ႈ Website", "Method တႅမ်ႈ HTML", "Method ၵုမ်းၵမ် Port"],
    "What does JpaRepository provide?",
  ),
  Quiz(
    117,
    "Repository Layer ယူႇၵႄႈသင်တင်းသင်?",
    ["Java Code ลႄႈ Database", "Browser လႄႈ Server", "Java လႄႈ HTML", "IntelliJ လႄႈ Maven"],
    "Where is the Repository Layer located?",
  ),
  Quiz(
    118,
    "Method findAll() ႁဵတ်းသင်?",
    ["လူဢဝ်ၶေႃႈမုၼ်းတင်းမူတ်း", "သႂ်ႇၶေႃႈမုၼ်းမႂ်ႇ", "လူတ်းၶေႃႈမုၼ်းပႅတ်ႈ", "မႄးၶေႃႈမုၼ်းၵဝ်ႇ"],
    "What does findAll() do?",
  ),
  Quiz(
    119,
    "Method save() ႁဵတ်းသင်?",
    ["သႂ်ႇ ဢမ်ႇၼၼ် မႄးၶေႃႈမုၼ်း", "လူဢဝ်ၶေႃႈမုၼ်းတင်းမူတ်း", "လူတ်းၶေႃႈမုၼ်းပႅတ်ႈ", "ႁႃၶေႃႈမုၼ်းလူၺ်ႈ ID"],
    "What does save() do?",
  ),
  Quiz(
    120,
    "ၼႂ်း JpaRepository<Word, Long>, Long မၢႆထိုင်သင်?",
    ["Type ၶွင် Primary Key", "Type ၶွင် Entity Class", "Type ၶွင် Database", "Type ၶွင် REST API"],
    "What does 'Long' represent in JpaRepository<Word, Long>?",
  ),
  Quiz(
    121,
    "Annotation @Repository ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["မၢႆတွင်းဝႃႈပဵၼ် Data Layer", "မၢႆတွင်းဝႃႈပဵၼ် Web Layer", "မၢႆတွင်းဝႃႈပဵၼ် Entity", "မၢႆတွင်းဝႃႈပဵၼ် Service"],
    "What is the purpose of @Repository?",
  ),
  Quiz(
    122,
    "CRUD မၢႆထိုင်သင်?",
    ["Create Read Update Delete", "Code Run Unit Debug", "Create Resource User Data", "Connect Read Upload Download"],
    "What does CRUD stand for?",
  ),
  Quiz(
    123,
    "JpaRepository extends ၵွၼ်ႇၼႃႈတူဝ်လႂ်?",
    ["PagingAndSortingRepository", "CrudRepository", "Both of them", "None of them"],
    "JpaRepository extends which interface(s)?",
  ),
  Quiz(
    124,
    "Method deleteById(id) ႁဵတ်းသင်?",
    ["လူတ်းၶေႃႈမုၼ်းလူၺ်ႈ ID", "လူတ်း Table တင်းမူတ်း", "လူတ်း Database ပႅတ်ႈ", "လူတ်း Code ဢၼ်ၽိတ်း"],
    "What does deleteById(id) do?",
  ),
  Quiz(
    125,
    "Method count() ၼႂ်း Repository ႁဵတ်းသင်?",
    ["ၼပ်ႉတူဝ်ၼမ်ၶေႃႈမုၼ်း", "ၼပ်ႉတူဝ်ၼမ် Table", "ၼပ်ႉတူဝ်ၼမ် Column", "ၼပ်ႉတူဝ်ၼမ် User"],
    "What does count() do in a Repository?",
  ),
  Quiz(
    126,
    "Spring Data JPA ပဵၼ်သင်?",
    ["Framework ၸွႆးၸတ်းၵၢၼ် Data", "Database Server တူဝ်မႂ်ႇ", "Java Web Framework", "UI Library တွၼ်ႈတႃႇ CSS"],
    "What is Spring Data JPA?",
  ),
  Quiz(
    127,
    "Method existsById(id) ႁဵတ်းသင်?",
    ["Check ဝႃႈမီး ID ၼၼ်ႉႁႃႉ", "Check ဝႃႈ App လႅၼ်ႈယူႇႁႃႉ", "Check ဝႃႈ DB ပိုတ်ႇယူႇႁႃႉ", "Check ဝႃႈ Maven မီးယူႇႁႃႉ"],
    "What does existsById(id) do?",
  ),
  Quiz(
    128,
    "PagingAndSortingRepository ၸွႆးသင်?",
    ["ၸတ်း Page ลႄႈ Sort Data", "သၢင်ႈ Table ၼႂ်း DB", "သၢင်ႈ HTML UI", "ၵွင်ႉၸူး MySQL Server"],
    "What is the benefit of PagingAndSortingRepository?",
  ),
  Quiz(
    129,
    "Interface ၼႂ်း Java ပႃး Code တႄႉမၼ်းႁႃႉ?",
    ["ဢမ်ႇပႃး (မီးၵူၺ်း Method ၸိုဝ်ႈ)", "ပႃးတႃႇသေႇ", "ပႃးသင်ပဵၼ် Class", "ပႃးသင်ပဵၼ် Entity"],
    "Does a Java Interface contain implementation code?",
  ),
  Quiz(
    130,
    "JpaRepository မီးၼႂ်း Dependency လႂ်?",
    ["spring-boot-starter-data-jpa", "spring-boot-starter-web", "mysql-connector-j", "lombok"],
    "Which dependency contains JpaRepository?",
  ),

  // --- Lesson 2.12: Data Seeding with data.sql (131-140) ---
  Quiz(
    131,
    "ၾၢႆႇ data.sql လူဝ်ႇဝႆႉတီႈလႂ်?",
    ["src/main/resources", "src/main/java", "src/test/java", "target/folder"],
    "Where should data.sql be placed?",
  ),
  Quiz(
    132,
    "Data Seeding မၢႆထိုင်သင်?",
    ["ၵၢၼ်သႂ်ႇၶေႃႈမုၼ်းတေႇငဝ်ႈ", "ၵၢၼ် Delete ၶေႃႈမုၼ်း", "ၵၢၼ်မႄး Error ၼႂ်း DB", "ၵၢၼ် Update App Version"],
    "What is Data Seeding?",
  ),
  Quiz(
    133,
    "SQL Command လႂ် ဢၼ်ၸႂ်ႉသႂ်ႇၶေႃႈမုၼ်း?",
    ["INSERT INTO", "SELECT FROM", "UPDATE TABLE", "DELETE FROM"],
    "Which SQL command is used to add data?",
  ),
  Quiz(
    134,
    "spring.sql.init.mode=always ႁဵတ်းသင်?",
    ["ပၼ်ႇ data.sql ၵူႈပွၵ်ႈ", "ပိတ်း data.sql ပႅတ်ႈ", "ပၼ်ႇ data.sql ၵမ်းလဵဝ်", "Update Database ႁင်းၵူၺ်း"],
    "What does spring.sql.init.mode=always do?",
  ),
  Quiz(
    135,
    "schema.sql ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["သၢင်ႈပိူင်သၢင်ႈ Table", "သႂ်ႇၶေႃႈမုၼ်းတႄႉမၼ်း", "တင်ႈ Password ၶွင် DB", "တင်ႈၸိုဝ်ႈ Project Java"],
    "What is schema.sql used for?",
  ),
  Quiz(
    136,
    "Spring Boot ပၼ်ႇ data.sql မိူဝ်ႈလႂ်?",
    ["မိူဝ်ႈ App တႄႇလႅၼ်ႈ", "မိူဝ်ႈပိတ်း App ပႅတ်ႈ", "မိူဝ်ႈတႅမ်ႈ Code Java", "မိူဝ်ႈပိုတ်ႇ Browser"],
    "When does Spring Boot run data.sql?",
  ),
  Quiz(
    137,
    "SQL Script မၢႆထိုင်သင်?",
    ["ၾၢႆႇဢၼ်သိမ်း SQL Commands", "ၾၢႆႇဢၼ်သိမ်း Code Java", "ၾၢႆႇဢၼ်သိမ်း HTML UI", "ၾၢႆႇဢၼ်သိမ်း Maven Libs"],
    "What is a SQL Script?",
  ),
  Quiz(
    138,
    "UTF-8 ၼႂ်း data.sql ၸွႆးပၼ်သင်?",
    ["ၼႄလိၵ်ႈတႆးလႆႈတူဝ်ႈတႅတ်ႈ", "ႁဵတ်းႁႂ်ႈ SQL လႅၼ်ႈဝႆး", "ၵုမ်းၵမ် Security", "လူတ်းယွမ်း Memory"],
    "Why is UTF-8 important in data.sql?",
  ),
  Quiz(
    139,
    "သင် Error ၼႂ်း data.sql, App တေပဵၼ်သင်?",
    ["App တေ Start ဢမ်ႇလႆႈ", "App တေလႅၼ်ႈၵႂႃႇလႆႈယူႇ", "App တေ Delete Code Java", "App တေ Update ႁင်းၵူၺ်း"],
    "What happens if there's an error in data.sql?",
  ),
  Quiz(
    140,
    "INSERT INTO words (...) VALUES (...); မၢႆထိုင်သင်?",
    ["သႂ်ႇၶေႃႈမုၼ်းၶဝ်ႈ Table words", "လူဢဝ်ၶေႃႈမုၼ်းတီႈ words", "သၢင်ႈ Table မႂ်ႇၸိုဝ်ႈ words", "Delete Table words ပႅတ်ႈ"],
    "What does INSERT INTO words (...) mean?",
  ),

  // --- Lesson 2.13: Custom Query Methods (141-150) ---
  Quiz(
    141,
    "Derived Query Methods ႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?",
    ["ပိၼ်ႇၸိုဝ်ႈ Method ပဵၼ် SQL", "တႅမ်ႈ SQL ၼႂ်း Java Method", "သၢင်ႈ Database ႁင်းၵူၺ်း", "ပိၼ်ႇ Java ပဵၼ် HTML"],
    "How do Derived Query Methods work?",
  ),
  Quiz(
    142,
    "Keyword findByShanWord မၢႆထိုင်သင်?",
    ["ႁႃၶေႃႈမုၼ်းလူၺ်ႈ shanWord", "သႂ်ႇၶေႃႈမုၼ်း shanWord", "Delete shanWord ပႅတ်ႈ", "Update shanWord ၵဝ်ႇ"],
    "What does findByShanWord mean?",
  ),
  Quiz(
    143,
    "Keyword Containing ၼႂ်း Method ၸွႆးသင်?",
    ["ႁႃၶေႃႈမုၼ်းဢၼ်မီးလိၵ်ႈပႃးယူႇ", "ႁႃၶေႃႈမုၼ်းဢၼ်မိူၼ်ပဵၵ်ႉ", "ႁႃၶေႃႈမုၼ်းဢၼ်ပဝ်ႇဝႆႉ", "ႁႃၶေႃႈမုၼ်းဢၼ်ယႂ်ႇသုတ်း"],
    "What does 'Containing' do in a query method?",
  ),
  Quiz(
    144,
    "Keyword StartingWith ၼႂ်း Method ၸွႆးသင်?",
    ["ႁႃၶေႃႈမုၼ်းဢၼ်တႄႇလူၺ်ႈလိၵ်ႈ", "ႁႃၶေႃႈမုၼ်းဢၼ်သုတ်းလူၺ်ႈလိၵ်ႈ", "ႁႃၶေႃႈမုၼ်းဢၼ်ပႃးလိၵ်ႈယူႇ", "ႁႃၶေႃႈမုၼ်းဢၼ်ပဝ်ႇဝႆႉ"],
    "What does 'StartingWith' do?",
  ),
  Quiz(
    145,
    "Annotation @Query ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["တႅမ်ႈ SQL ဢမ်ႇၼၼ် JPQL ႁင်းၵူၺ်း", "မၢႆတွင်းဝႃႈပဵၼ် Entity", "မၢႆတွင်းဝႃႈပဵၼ် Repository", "တႅမ်ႈ Getter/Setter ႁင်းၵူၺ်း"],
    "What is @Query used for?",
  ),
  Quiz(
    146,
    "JPQL မၢႆထိုင်သင်?",
    ["Java Persistence Query Language", "Java Protocol Query Logic", "Joint Persistence Query Link", "Java Persistent Quality List"],
    "What does JPQL stand for?",
  ),
  Quiz(
    147,
    "Keyword Or ၼႂ်း Method ၸွႆးသင်?",
    ["ႁႃလူၺ်ႈၸႂ်ႉသၢႆငၢႆလႂ်ၵေႃႈလႆႈ", "ႁႃလူၺ်ႈၸႂ်ႉသၢႆငၢႆသွင်ယၢင်ႈၸွမ်ၵၼ်", "ႁႃၶေႃႈမုၼ်းဢၼ်ဢမ်ႇမိူၼ်ၵၼ်", "ႁႃၶေႃႈမုၼ်းဢၼ်ပဝ်ႇဝႆႉ"],
    "What does 'Or' do in a query method?",
  ),
  Quiz(
    148,
    "findByAgeBetween(int a, int b) ႁဵတ်းသင်?",
    ["ႁႃၶေႃႈမုၼ်းၼႂ်းၵႄႈ a တင်း b", "ႁႃၶေႃႈမုၼ်းဢၼ်ပဵၼ် a ဢမ်ႇၼၼ် b", "ႁႃၶေႃႈမုၼ်းဢၼ်ဢမ်ႇၸႂ်ႉ a လႄႈ b", "ႁႃၶေႃႈမုၼ်းဢၼ်ယႂ်ႇလိူဝ် a လႄႈ b"],
    "What does findByAgeBetween do?",
  ),
  Quiz(
    149,
    "findByShanWordOrderByShanWordAsc ႁဵတ်းသင်?",
    ["ႁႃလႄႈၸတ်းထႅဝ်တႄႇတူဝ်လိၵ်ႈဢွၼ်ႇ", "ႁႃလႄႈၸတ်းထႅဝ်တႄႇတူဝ်လိၵ်ႈယႂ်ႇ", "ႁႃလႄႈလူတ်းၶေႃႈမုၼ်းပႅတ်ႈ", "ႁႃလႄႈမႄးၶေႃႈမုၼ်းႁင်းၵူၺ်း"],
    "What does OrderBy...Asc do?",
  ),
  Quiz(
    150,
    "Spring Data JPA မီး Method ႁႃၶေႃႈမုၼ်းလႆႈၵူႈပိူင်ႁႃႉ?",
    ["လႆႈတင်းၼမ် (ၸွမ်းၼင်ႇ KeyWords)", "လႆႈ findAll() ၵူၺ်း", "လႆႈ findById() ၵူၺ်း", "ဢမ်ႇလႆႈသေပိူင်"],
    "Does Spring Data JPA support many derived methods?",
  ),
];
