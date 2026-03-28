## Lesson 33: Introduction to JDBC & MySQL Connector/J Setup

### 1. JDBC ပဵၼ်သင်? (What is JDBC?)
**JDBC (Java Database Connectivity)** ၼႆႉ ပဵၼ် API Standard ဢၼ် Java ပၼ်မႃး တွၼ်ႈတႃႇၵွင်ႉသၢၼ်ၸွမ်း Database ၵူႈပိူင် (MySQL, PostgreSQL, Oracle) ၶႃႈ။

* **ပၢႆးဝူၼ်ႉ**: JDBC မိူၼ်ၼင်ႇ "ပလၵ်ႉၾႆး" (Plug)။ သင်ႁဝ်းၶႂ်ႈၸႂ်ႉၸွမ်း MySQL ႁဝ်းလူဝ်ႇ "တူဝ်လႅၵ်ႈ" (Adapter) ဢၼ်ႁွင်ႉဝႃႈ **Driver** ၶႃႈ။



---

### 2. MySQL Connector/J (The Driver)
Java ႁင်းၵူၺ်းမၼ်း ဢမ်ႇႁူႉၸွမ်းလွင်ႈ MySQL ၶႃႈ။ ၵွပ်ႈၼၼ် ႁဝ်းလူဝ်ႇ **MySQL Connector/J**။ မၼ်းပဵၼ်ၾၢႆႇ `.jar` ဢၼ်တေပဵၼ် "တူဝ်ပိၼ်ႇလိၵ်ႈ" (Translator) ဢဝ် Java Code ႁဝ်း လႅၵ်ႈႁႂ်ႈပဵၼ် SQL ဢၼ် MySQL ပွင်ႇၸႂ်ၶႃႈ။

---

### 3. Setting up Maven Dependency (`pom.xml`)
တွၼ်ႈတႃႇႁႂ်ႈ Project ႁဝ်းမီး Driver ၼၼ်ႉ ႁဝ်းတေတႅမ်ႈ Code ၼႆႉဝႆႉၼႂ်း `pom.xml` ၶႃႈ:

```xml
<dependencies>
    <dependency>
        <groupId>com.mysql</groupId>
        <artifactId>mysql-connector-j</artifactId>
        <version>9.1.0</version> </dependency>
</dependencies>
```

---

### 4. Technical Breakdown (ပၢႆးၸၢင်ႈ Connection String)
မိူဝ်ႈႁဝ်းတေၵွင်ႉသၢၼ်ၼၼ်ႉ ႁဝ်းလူဝ်ႇႁူႉၸွမ်း **JDBC URL** ၶႃႈ:
`jdbc:mysql://localhost:3306/db_name`

* **jdbc:mysql://**: ပဵၼ် Protocol ဢၼ်လၢတ်ႈဝႃႈ ႁဝ်းတေၸႂ်ႉ Driver MySQL။
* **localhost**: ပဵၼ်တီႈယူႇ Computer ႁဝ်း (Server)။
* **3306**: ပဵၼ် Port Standard ၶွင် MySQL။
* **db_name**: ပဵၼ်ၸိုဝ်ႈ Database ဢၼ်ႁဝ်းတေၸႂ်ႉ။

---

### 🛠️ Programming Task: Testing the Driver Class
တွၼ်ႈတႃႇထတ်းတူၺ်းဝႃႈ Driver ႁဝ်းႁဵတ်းၵၢၼ်ယဝ်ႉႁႃႉၼၼ်ႉ တႅမ်ႈ Code ၼႆႉၸၢမ်းတူၺ်းၶႃႈ:

```java
public class TestDriver {
    public static void main(String[] args) {
        try {
            // ႁွင်ႉၸႂ်ႉ Driver Class ႁႂ်ႈမၼ်း Load ဝႆႉၼႂ်း Memory
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("✅ MySQL Driver Loaded Successfully!");
        } catch (ClassNotFoundException e) {
            System.out.println("❌ Error: ဢမ်ႇႁၼ် MySQL Driver ၶႃႈ!");
            e.printStackTrace();
        }
    }
}
```

---

### 🎓 Summary for Thung Mao Kham Students
* **JDBC**: ပဵၼ်သဵၼ်ႈတၢင်းၵွင်ႉ (Standard API)။
* **Driver**: ပဵၼ်တူဝ်လႅၵ်ႈလိၵ်ႈ (Translator)။
* **Maven**: ၸွႆႈထႅမ်လူတ်ႇ Driver ႁႂ်ႈႁဝ်းႁင်းၵူၺ်း။
