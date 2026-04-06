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
    ["လူတ်းယွမ်းၵၢၼ်မႄး Configuration ဢၼ်ၼမ်လၢႆ", "ႁဵတ်းႁႂ်ႈ Java လႅၼ်ႈဝႆးလိူဝ် Python", "ၸွႆးတႅမ်ႈ Code ပၼ်ႁင်းၵူၺ်းတင်းမူတ်း", "ပဵၼ်ၶိူင်ႈမိုဝ်းတွၼ်ႈတႃႇတႅမ်ႈ Game"],
    "What is the primary advantage of Spring Boot over traditional Spring?",
  ),
  Quiz(
    2,
    "IoC (Inversion of Control) မၢႆထိုင်သင်?",
    ["ၵၢၼ်ဢၢပ်ႈပုၼ်ႈၽွၼ်းၵုမ်းၵမ် Object ပၼ် Framework", "ၵၢၼ်တႅမ်ႈ Code ႁႂ်ႈၶွမ်ႇပိဝ်ႇတႃႇၵုမ်းၵမ်ၵူၼ်း", "ၵၢၼ်သၢင်ႈ Object လူၺ်ႈၸႂ်ႉ 'new' Keyword ၵူႈၶိူဝ်း", "ၵၢၼ်ပႅတ်ႈ Control Panel ၼႂ်း Windows"],
    "What does IoC (Inversion of Control) mean?",
  ),
  Quiz(
    3,
    "Embedded Server မၢႆထိုင်သင်?",
    ["Server ဢၼ်မီးဝႆႉၼႂ်း App ၵမ်းလဵဝ်", "Server ဢၼ်လူဝ်ႇလႆႈသိုဝ်ႉတီႈ Cloud", "Server ဢၼ်လူဝ်ႇလူတ်ႇလူင်းမႃးသႂ်ႇၽၢႆႇၼွၵ်ႈ", "Server ဢၼ်ၸႂ်ႉလႆႈၵူၺ်းၼႂ်း Browser"],
    "What is an Embedded Server?",
  ),
  Quiz(
    4,
    "Spring Boot ၼႆႉ မၢႆထိုင်ပိူင်သၢင်ႈ (Philosophy) ဢၼ်လႂ်?",
    ["Convention over Configuration", "Code over Documentation", "Manual Setup over Automation", "Speed over Security"],
    "Which philosophy does Spring Boot follow?",
  ),
  Quiz(
    5,
    "Spring Framework ၼႆႉ ပဵၼ်သင်?",
    ["ပဵၼ်ပိုၼ်ႉထၢၼ် (Foundation) တွၼ်ႈတႃႇတႅမ်ႈ Java App", "ပဵၼ်ဝႅပ်ႉသၢႆႉတွၼ်ႈတႃႇလူတ်ႇလူင်း Java", "ပဵၼ်တူဝ်ၸွႆးတႅမ်ႈ HTML", "ပဵၼ်သႃႇပႃႇတွၼ်ႈတႃႇသိမ်း File"],
    "What is the Spring Framework?",
  ),

  // --- Lesson 1.2: The TaiGlish Blueprint (start.spring.io) ---
  Quiz(
    6,
    "ဝႅပ်ႉသၢႆႉလႂ် ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ Generate Project Spring Boot?",
    ["start.spring.io", "spring.com", "java.start.io", "boot.spring.net"],
    "Which website is used to generate a Spring Boot project?",
  ),
  Quiz(
    7,
    "Maven ၼႆႉ မီးၼႃႈတီႈသင်?",
    ["ၸတ်းၵၢၼ် Dependency လႄႈ Building Project", "ပဵၼ်တူဝ်တႅမ်ႈ Code Java", "ပဵၼ် Server တွၼ်ႈတႃႇ Run App", "ၸွႆးမႄး Spelling လိၵ်ႈတႆး"],
    "What is the role of Maven?",
  ),
  Quiz(
    8,
    "Group ID ၼႂ်း Metadata မၢႆထိုင်သင်?",
    ["ၸိုဝ်ႈမူႇၸုမ်း ဢမ်ႇၼၼ် Domain Name", "ၸိုဝ်ႈတူဝ် Application", "ဝိူဝ်းသျိၼ်း (Version) ၶွင် Java", "ၸိုဝ်ႈၶိူင်ႈၶွမ်ႇပိဝ်ႇတႃႇ"],
    "What does Group ID represent in Metadata?",
  ),
  Quiz(
    9,
    "Artifact ID ၼႂ်း Metadata မၢႆထိုင်သင်?",
    ["ၸိုဝ်ႈတူဝ် Application", "ၸိုဝ်ႈၵူၼ်းတႅမ်ႈ Code", "ၸိုဝ်ႈဝၢၼ်ႈ ဢမ်ႇၼၼ် ၸႄႈဝဵင်း", "ၸိုဝ်ႈ Dependency ဢၼ်လိူၵ်ႈဝႆႉ"],
    "What does Artifact ID represent in Metadata?",
  ),
  Quiz(
    10,
    "Dependency 'Spring Web' ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["တႅမ်ႈ REST API လႄႈ Web Application", "ၵွင်ႉၸူး Database", "လူတ်းယွမ်းၵၢၼ်တႅမ်ႈ Getter/Setter", "ၸွႆး Restart App ႁင်းၵူၺ်း"],
    "What is the 'Spring Web' dependency used for?",
  ),
  Quiz(
    11,
    "Lombok ၸွႆးပၼ်လွင်ႈသင်?",
    ["လူတ်းယွမ်းၵၢၼ်တႅမ်ႈ Boilerplate Code", "ႁဵတ်းႁႂ်ႈ App ၵွင်ႉ Web လႆႈ", "ပဵၼ် Server တွၼ်ႈတႃႇ Run App", "ၸွႆးလူတ်ႇလူင်း Java Version မႂ်ႇ"],
    "What does Lombok help with?",
  ),
  Quiz(
    12,
    "Spring Boot DevTools ၸွႆးပၼ်လွင်ႈသင်?",
    ["Restart App ႁင်းၵူၺ်း မိူဝ်ႈမႄး Code", "ၸွႆးတႅမ်ႈ Unit Test", "ၵုမ်းၵမ် Security ၶွင် App", "ၸွႆး Generate ၾၢႆႇ Excel"],
    "What is the benefit of Spring Boot DevTools?",
  ),

  // --- Lesson 1.3: Project Anatomy & Main Class ---
  Quiz(
    13,
    "Folder `src/main/java` သိမ်းသင်ဝႆႉ?",
    ["ၾၢႆႇ Java Source Code တင်းမူတ်း", "ၾၢႆႇ Config ၸိူင်ႉၼင်ႇ Properties", "ၾၢႆႇ HTML လႄႈ CSS", "ၾၢႆႇ Dependency ဢၼ် Download မႃး"],
    "What is stored in the `src/main/java` folder?",
  ),
  Quiz(
    14,
    "Folder `src/main/resources` သိမ်းသင်ဝႆႉ?",
    ["ၾၢႆႇ Configuration လႄႈ Static Files", "ၾၢႆႇ Java Class", "ၾၢႆႇ Library ၶွင် Maven", "ၾၢႆႇ Log ၶွင် Server"],
    "What is stored in the `src/main/resources` folder?",
  ),
  Quiz(
    15,
    "ၾၢႆႇ `pom.xml` ပဵၼ်ၾၢႆႇသင်?",
    ["ၾၢႆႇသဵၼ်ႈမၢႆ Dependency လႄႈ Project Config", "ၾၢႆႇတႄႇ Run Application", "ၾၢႆႇသိမ်း Database ၶွင် App", "ၾၢႆႇတႅမ်ႈ Controller"],
    "What is the `pom.xml` file?",
  ),
  Quiz(
    16,
    "Annotation `@SpringBootApplication` ပဵၼ်သင်?",
    ["တီႈတႄႇငဝ်ႈ (Power Button) ၶွင် App", "တူဝ်ၸွႆးတႅမ်ႈ Database Query", "တူဝ်မၢႆတွင်းဝႃႈပဵၼ် Web Controller", "တူဝ်ၸွႆး Generate Getter/Setter"],
    "What is the `@SpringBootApplication` annotation?",
  ),
  Quiz(
    17,
    "Method လႂ် ဢၼ်ပဵၼ်တူဝ်တႄႇ Run Java Application?",
    ["public static void main(String[] args)", "public void start()", "init()", "runApp()"],
    "Which method is the entry point of a Java application?",
  ),
  Quiz(
    18,
    "Tomcat ၼႂ်း Spring Boot ပဵၼ်သင်?",
    ["Embedded Web Server", "Database Engine", "Java Compiler", "Programming Language"],
    "What is Tomcat in the context of Spring Boot?",
  ),

  // --- Lesson 1.4: REST Fundamentals & GetMapping ---
  Quiz(
    19,
    "REST API ၼႆႉ ၸႂ်ႉသင်တွၼ်ႈတႃႇမၢႆထိုင် တီႈယူႇၶေႃႈမုၼ်း?",
    ["URL / URI", "Java Class Name", "Database Table Name", "Computer IP Address"],
    "What does REST API use to identify resources?",
  ),
  Quiz(
    20,
    "Annotation `@RestController` ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["မၢႆတွင်းဝႃႈ Class ၼႆႉပဵၼ် API Controller", "မၢႆတွင်းဝႃႈ Class ၼႆႉပဵၼ် Database Table", "ၸွႆးသၢင်ႈ Object ပၼ်ႁင်းၵူၺ်း", "ၸွႆးပႅတ်ႈ Error ၼႂ်း Code"],
    "What is the purpose of `@RestController`?",
  ),
  Quiz(
    21,
    "@GetMapping ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["ႁပ်ႉ Request တွၼ်ႈတႃႇ 'လူ' (Read) Data", "ႁပ်ႉ Request တွၼ်ႈတႃႇ 'သႂ်ႇ' (Create) Data", "ႁပ်ႉ Request တွၼ်ႈတႃႇ 'မႄး' (Update) Data", "ႁပ်ႉ Request တွၼ်ႈတႃႇ 'လူတ်း' (Delete) Data"],
    "What is `@GetMapping` used for?",
  ),
  Quiz(
    22,
    "Client ၼႂ်း REST API မၢႆထိုင်သင်?",
    ["Browser ဢမ်ႇၼၼ် Mobile App ဢၼ်သူင်ႇ Request", "Server ဢၼ်သိမ်း Database", "ၵူၼ်းတႅမ်ႈ Code Java", "ၶိူင်ႈ IntelliJ IDEA"],
    "What does 'Client' mean in a REST API context?",
  ),
  Quiz(
    23,
    "Response ၼႂ်း REST API မၢႆထိုင်သင်?",
    ["ၶေႃႈမုၼ်း ဢၼ် Server တွပ်ႇမႃးၸူး Client", "ၶေႃႈမုၼ်း ဢၼ် Client သူင်ႇၵႂႃႇ", "ၵၢၼ်မႄး Code ၼႂ်း Controller", "ၵၢၼ် Download Project"],
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
    ["လူဢဝ်ၶေႃႈမုၼ်းၼႂ်း Properties မႃးသႂ်ႇၼႂ်း Variable", "သႂ်ႇၵႃႈၶၼ်ပၼ် Database", "မႄးၸိုဝ်ႈ Method ႁႂ်ႈပႅၵ်ႇပိူင်ႈ", "ၸွႆး Calculate တူဝ်ၼပ်ႉ"],
    "What is the `@Value` annotation used for?",
  ),
  Quiz(
    28,
    "Hardcode မၢႆထိုင်သင်?",
    ["ၵၢၼ်တႅမ်ႈၶေႃႈမုၼ်း 'တၢႆ' ဝႆႉၼႂ်း Code", "ၵၢၼ်တႅမ်ႈ Code ႁႂ်ႈလႅၼ်ႈဝႆး", "ၵၢၼ်ၸႂ်ႉ Password ဢၼ်ယၢပ်ႇ", "ၵၢၼ်တႅမ်ႈ Code တွၼ်ႈတႃႇ Hardware"],
    "What does 'Hardcode' mean?",
  ),
  Quiz(
    29,
    "ၾၢႆႇ `banner.txt` ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["လႅၵ်ႈလၢႆႈ ASCII Art မိူဝ်ႈ Start App", "သိမ်းသဵၼ်ႈမၢႆလုၵ်ႈႁဵၼ်း", "Config Database Password", "တႅမ်ႈ Documentation ၶွင် API"],
    "What is the `banner.txt` file used for?",
  ),
  Quiz(
    30,
    "သင်ႁဝ်းမီး `taiglish.name=TaiGlish` ၼႂ်း Properties, ႁဝ်းတေလူၸိူင်ႉႁိုဝ်?",
    ["@Value(\"\${taiglish.name}\")", "@Value(\"taiglish.name\")", "@Property(\"taiglish.name\")", "@Get(\"taiglish.name\")"],
    "How to read `taiglish.name=TaiGlish` from properties?",
  ),

  // --- Lesson 1.6: Professional Testing with Postman ---
  Quiz(
    31,
    "ၵွပ်ႈသင်ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Postman တွၼ်ႈတႃႇၸမ်း API?",
    ["မၼ်းသူင်ႇလႆႈတင်း GET, POST, PUT, DELETE", "မၼ်းႁဵတ်းႁႂ်ႈ Java တႅမ်ႈငၢႆႈလိူဝ်", "မၼ်းပဵၼ် Tool တွၼ်ႈတႃႇတႅမ်ႈ UI", "မၼ်းၸွႆး Compile Code ႁႂ်ႈဝႆး"],
    "Why should we use Postman for API testing?",
  ),
  Quiz(
    32,
    "JSON မၢႆထိုင်သင်?",
    ["JavaScript Object Notation", "Java Standard Object Network", "Joint System Online Node", "Java Source Open Network"],
    "What does JSON stand for?",
  ),
  Quiz(
    33,
    "HTTP Status Code 200 OK မၢႆထိုင်သင်?",
    ["ၵၢၼ်ႁဵတ်းၵၢၼ် တူဝ်ႈတႅတ်ႈ (Success)", "ဢမ်ႇႁၼ် URL (Not Found)", "Server မီး Error", "ဢမ်ႇမီးသုၼ်ႇၶဝ်ႈၸႂ်ႉ (Unauthorized)"],
    "What does HTTP Status Code 200 OK mean?",
  ),
  Quiz(
    34,
    "HTTP Status Code 404 Not Found မၢႆထိုင်သင်?",
    ["ဢမ်ႇႁၼ် URL ဢမ်ႇၼၼ် Resource ဢၼ်ႁႃ", "Server လႅၼ်ႈဝႆးပူၼ်ႉတီႈ", "Password ၽိတ်း", "Internet ၶขาด"],
    "What does HTTP Status Code 404 Not Found mean?",
  ),
  Quiz(
    35,
    "HTTP Status Code 500 Internal Server Error မၢႆထိုင်သင်?",
    ["မီး Error ၼႂ်း Code ၽၢႆႇ Server", "Client သူင်ႇ URL ၽိတ်း", "Database ၼိမ်ဝႆး", "App လႅၼ်ႈတူဝ်ႈတႅတ်ႈ"],
    "What does HTTP Status Code 500 Internal Server Error mean?",
  ),
  Quiz(
    36,
    "Collection ၼႂ်း Postman ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["ၸတ်းၵၢၼ် Request ၸိူဝ်းၵွင်ႉၵၢႆႇၵၼ် ဝႆႉပဵၼ်မူႇ", "လူတ်ႇလူင်း Library မႂ်ႇ", "တႅမ်ႈ Code Java ၼႂ်း Postman", "ၵွင်ႉၸူး GitHub"],
    "What is a Collection in Postman used for?",
  ),

  // --- General Knowledge & Mixed Module 1 ---
  Quiz(
    37,
    "Spring Application Context ပဵၼ်သင်?",
    ["တီႈသိမ်းလႄႈၸတ်းၵၢၼ် Spring Beans (Objects)", "တီႈသိမ်း File HTML", "ၸိုဝ်ႈ Application ၼႂ်း Cloud", "ၶိူင်ႈမိုဝ်းတွၼ်ႈတႃႇ Scan Virus"],
    "What is the Spring Application Context?",
  ),
  Quiz(
    38,
    "Bean ၼႂ်း Spring မၢႆထိုင်သင်?",
    ["Object ဢၼ် Spring Container ပဵၼ်ၵေႃႉၵုမ်းၵမ်", "ၾၢႆႇ Configuration ၶွင် XML", "ၸိုဝ်ႈ Database Table", "တူဝ်ၼပ်ႉ (Variable) ဢၼ်ပဵၼ် Integer"],
    "What is a Bean in Spring?",
  ),
  Quiz(
    39,
    "Component Scanning မၢႆထိုင်သင်?",
    ["ၵၢၼ်ဢၼ် Spring ႁႃ Class ဢၼ်မီး Annotation", "ၵၢၼ် Scan QR Code တွၼ်ႈတႃႇ Login", "ၵၢၼ် Scan Virus ၼႂ်း Project", "ၵၢၼ် Check ဝႃႈ Java Version ထုၵ်ႇႁႃႉ"],
    "What is Component Scanning?",
  ),
  Quiz(
    40,
    "Dependency Injection (DI) မၢႆထိုင်သင်?",
    ["ၵၢၼ်သူင်ႇ Object ဢၼ်လူဝ်ႇၸႂ်ႉ ၶဝ်ႈၵႂႃႇၼႂ်း Class", "ၵၢၼ်ပိုတ်ႇ App လၢႆလၢႆတူဝ်ၸွမ်ၵၼ်", "ၵၢၼ်လူတ်ႇလူင်း Library တီႈ Internet", "ၵၢၼ်တႅမ်ႈ SQL Query"],
    "What is Dependency Injection (DI)?",
  ),
  Quiz(
    41,
    "Starters ၼႂ်း Spring Boot မၢႆထိုင်သင်?",
    ["မူႇၸုမ်း Dependency ဢၼ်ၸတ်းဝႆႉပဵၼ်ပိူင်", "ၵူၼ်းတႄႇတႅမ်ႈ Code ၵေႃႉဢွၼ်တၢင်း", "ပုမ်ႇ Start ၼႂ်း Windows", "ၶေႃႈၵႂၢမ်း Welcome မိူဝ်ႈပိုတ်ႇ App"],
    "What are Starters in Spring Boot?",
  ),
  Quiz(
    42,
    "ၵွပ်ႈသင် Spring Boot ၸင်ႇၸႂ်ႉ Tomcat?",
    ["တွၼ်ႈတႃႇႁပ်ႉ HTTP Requests", "တွၼ်ႈတႃႇသိမ်း Data ပဵၼ် File", "တွၼ်ႈတႃႇ Compile Java Code", "တွၼ်ႈတႃႇမႄး Spelling ၽိတ်း"],
    "Why does Spring Boot use Tomcat?",
  ),
  Quiz(
    43,
    "Spring Boot Version 3 လူဝ်ႇ Java Version ၶၼ်ႉတွၼ်ႈလႂ်?",
    ["Java 17 ၶၼ်ႉၼိူဝ်", "Java 8", "Java 11", "Java 1.0"],
    "Which Java version is required for Spring Boot 3?",
  ),
  Quiz(
    44,
    "Key `spring.datasource.url` ၸႂ်ႉတွၼ်ႈတႃႇသင်?",
    ["Config တီႈယူႇ (URL) ၶွင် Database", "Config ၸိုဝ်ႈဝႅပ်ႉသၢႆႉ", "Config တီႈယူႇၶွင် IntelliJ", "Config URL ၶွင် Postman"],
    "What is `spring.datasource.url` used for?",
  ),
  Quiz(
    45,
    "Spring Web Starter ပႃးသင်ဝႆႉၽၢႆႇၼႂ်း?",
    ["Spring MVC, REST, လႄႈ Tomcat", "Spring Data JPA ၵူၺ်း", "Lombok လႄႈ DevTools", "SQL Driver"],
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
    ["တႄႇသၢင်ႈ Application Context လႄႈ Start Server", "တႅမ်ႈ Code ပၼ်ႁင်းၵူၺ်း", "Delete Project ပႅတ်ႈ", "Download Java Version မႂ်ႇ"],
    "What does `SpringApplication.run()` do?",
  ),
  Quiz(
    48,
    "ၾၢႆႇ `mvnw` ၼႂ်း Project ပဵၼ်သင်?",
    ["Maven Wrapper တွၼ်ႈတႃႇ Run Maven လူၺ်ႈဢမ်ႇလူဝ်ႇ Install", "ၾၢႆႇ Java Main Class", "ၾၢႆႇသိမ်း Password", "ၾၢႆႇ ASCII Art Banner"],
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
    ["Rapid Application Development (တႅမ်ႈ App လႆႈဝႆး)", "ႁဵတ်းႁႂ်ႈ Computer ဢမ်ႇမီး Virus", "တႅမ်ႈ Code ၵမ်းလဵဝ် လႅၼ်ႈလႆႈၼႂ်း iOS ၵူၺ်း", "ပဵၼ် Framework ဢၼ်ဢမ်ႇလူဝ်ႇ Java"],
    "What is the main benefit of Spring Boot?",
  ),
];
