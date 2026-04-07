# Lesson 35: "Building the Executable JAR with Maven"

မိူဝ်ႈႁဝ်းတႅမ်ႈ App ယဝ်ႉယဝ်ႉၼၼ်ႉ ႁဝ်းတေဢမ်ႇသူင်ႇ Folder Project တင်းမူတ်းပၼ်ၵူၼ်းၸႂ်ႉၶႃႈ။ 
ႁဝ်းတေၸႂ်ႉ **Maven** တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ Code လႄႈ Libraries (Dependencies) တင်းမူတ်း ၶဝ်ႈၵႂႃႇယူႇၼႂ်းၾၢႆႇလဵဝ် ဢၼ်ႁွင်ႉဝႃႈ **Fat JAR** ၶႃႈ။

### 1. Fat JAR (Uber JAR) ၼႆႉ ပဵၼ်သင်?
ပဵၼ်ၾၢႆႇ Java Archive ဢၼ်ပႃး:
* **Compiled Classes:** Code ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ။
* **Dependencies:** Libraries ၸိူင်ႉၼင်ႇ Spring Boot, JPA, MySQL Driver။
* **Embedded Server:** Tomcat Server ဢၼ်ပႃးဝႆႉၼႂ်းတူဝ်မၼ်းယဝ်ႉတူဝ်ႈ (ဢမ်ႇလူဝ်ႇ Install Tomcat ၼိူဝ် Server ထႅင်ႈၶႃႈ)။



---

### 2. ၵၢၼ်ၸႂ်ႉ Maven Lifecycle တွၼ်ႈတႃႇ Build
ႁဝ်းတေၸႂ်ႉ Terminal ၼႂ်း IntelliJ ဢမ်ႇၼၼ် Command Prompt သေတႅမ်ႈသင်ႇၵၢၼ်ၶႃႈ:

```bash
# 1. လူတ်းပႅတ်ႈ Build ၵဝ်ႇ (Clean)
# 2. ထုပ်ႇပဵၼ်ၾၢႆႇမႂ်ႇ (Package)
mvn clean package (./mvnw clean package)
```

* **`clean`:** လူတ်း Folder `target` ဢၼ်ၵဝ်ႇပႅတ်ႈ တင်းမူတ်း။
* **`package`:** Compile Code, လႅၼ်ႈ Test (သင်မီး), သေၸင်ႇသၢင်ႈၾၢႆႇ `.jar` ၼႂ်း Folder `target` ၶႃႈ။

---

### 3. လၢႆးလႅၼ်ႈ (Run) JAR File
မိူဝ်ႈ Build ယဝ်ႉယဝ်ႉ ႁဝ်းတေႁၼ်ၾၢႆႇၸိုဝ်ႈဝႃႈ `taiglish-0.0.1-SNAPSHOT.jar` ၼႂ်း Folder `target` ၶႃႈ။ ႁဝ်းလႅၼ်ႈလႆႈငၢႆႈငၢႆႈၸိူင်ႉၼႆ:

```bash
java -jar target/taiglish-0.0.1-SNAPSHOT.jar
```
*မၢႆတွင်း:* ၶွမ်ႇပိဝ်ႇတႃႇတူဝ်ၼၼ်ႉ သင်မီးဝႆႉ **JRE/JDK** ၵေႃႈ App ႁဝ်းတေလႅၼ်ႈလႆႈၵမ်းလဵဝ်ၶႃႈ!

---

### 4. Spring Boot Maven Plugin
ၼႂ်းၾၢႆႇ **`pom.xml`** ႁဝ်းလူဝ်ႇလႆႈမီး Plugin တူဝ်ၼႆႉ တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ JAR ႁဝ်းပဵၼ် "Executable" ၶႃႈ:

```xml
<build>
    <plugins>
        <plugin>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-maven-plugin</artifactId>
        </plugin>
    </plugins>
</build>
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Artifact:** ၾၢႆႇဢၼ် Build ဢွၵ်ႇမႃး (မိူၼ်ၼင်ႇ .jar ဢမ်ႇၼၼ် .war)။
* **Build Lifecycle:** ၸၼ်ႉၵၢၼ် (Steps) ဢၼ် Maven ႁဵတ်းၵၢၼ် (Compile -> Test -> Package)။
* **Embedded Server:** Web Server (Tomcat) ဢၼ်မီးယူႇၼႂ်းတူဝ် App ၵမ်းလဵဝ်။
* **Target Folder:** တီႈဢၼ် Maven ဢဝ်ၾၢႆႇ Compiled လႄႈ JAR ၵႂႃႇသိမ်းဝႆႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်းဢမ်ႇၸႂ်ႉ **`mvn clean`** ဢွၼ်တၢင်းတေ `package` ၼၼ်ႉ မၼ်းၸၢင်ႈမီးပၼ်ႁႃသင် (Security/Conflict)?
2. ၵွပ်ႈသင်ႁဝ်းၸင်ႇႁွင်ႉ JAR ၶွင် Spring Boot ဝႃႈ **"Fat JAR"**?