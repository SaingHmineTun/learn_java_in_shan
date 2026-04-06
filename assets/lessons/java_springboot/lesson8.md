# Lesson 8: "Connecting to MySQL Database" (ၵၢၼ်ၵွင်ႉၸူး MySQL)

တွၼ်ႈတႃႇ App **TaiGlish** ႁဝ်းတေမီး "မၢႆတွင်း" ဢၼ်ၵႅၼ်ႇၶႅင်ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **MySQL** ၶႃႈ။ မၼ်းပဵၼ် Database တႄႉတႄႉ ဢၼ်သိမ်းၶေႃႈမုၼ်းဝႆႉၼႂ်း Hard Drive ႁဝ်း။ 
ႁဝ်းႁဵတ်း Restart ၶွမ်ႇပိဝ်ႇတႃႇၵေႃႈ လိၵ်ႈတႆး ဢၼ်ႁဝ်းၵဵပ်းဝႆႉၼၼ်ႉ တေဢမ်ႇႁၢႆၵႂႃႇၶႃႈ။

### 1. ၵွပ်ႈသင်ႁဝ်းၸင်ႇၸႂ်ႉ MySQL?
* **Persistence:** ၶေႃႈမုၼ်းမီးယူႇတႃႇသေႇ ဢမ်ႇႁၢႆလၢႆမိူဝ်ႈပိတ်း App။
* **Professional Tool:** ပဵၼ်ၶိူင်ႈမိုဝ်းဢၼ် ၵူၼ်းတႅမ်ႈ App တင်းလူၵ်ႈၸႂ်ႉၵၼ်တႄႉတႄႉ။
* **Easy to Manage:** ႁဝ်းၸႂ်ႉ MySQL Workbench ဢမ်ႇၼၼ် HeidiSQL တွၼ်ႈတႃႇတူၺ်းလိၵ်ႈတႆးႁဝ်းလႆႈငၢႆႈငၢႆႈၶႃႈ။



### 2. ၵၢၼ်ထႅမ်သႂ်ႇ Drivers လႄႈ JPA
တွၼ်ႈတႃႇ Java တေလၢတ်ႈၵႂၢမ်းတင်း MySQL လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈမီး Driver လႄႈ ၶိူင်ႈမိုဝ်းတွၼ်ႈတႃႇၸတ်းၵၢၼ် Database (JPA) ၶႃႈ။ ၵူတ်ႇထတ်းၼႂ်းၾၢႆႇ **`pom.xml`** ႁႂ်ႈပႃး Dependencies ၸိူဝ်းၼႆႉၶႃႈ:

1.  **Spring Data JPA:** တွၼ်ႈတႃႇၸႂ်ႉ Hibernate လႄႈ ORM ၸတ်းၵၢၼ် Database။
2.  **MySQL Connector:** ပဵၼ် Driver ဢၼ်ပဵၼ်သၢႆၵွင်ႉၵႄႈ Java လႄႈ MySQL Server။

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-jpa</artifactId>
</dependency>

<dependency>
    <groupId>com.mysql</groupId>
    <artifactId>mysql-connector-j</artifactId>
    <scope>runtime</scope>
</dependency>
```

---

### 3. ၵၢၼ် Config ၼႂ်း `application.properties`
တီႈၼႂ်းၾၢႆႇၼၼ်ႉ တႅမ်ႈၼင်ႇ တီႈတႂ်ႈၶႃႈ:

```properties
# 1. Database Connection (URL)
# ႁႂ်ႈၼႄႉၸႂ်ဝႃႈ 'taiglish_db' ပဵၼ်ၸိုဝ်ႈ DB ဢၼ်ၸဝ်ႈၶူးသၢင်ႈဝႆႉၼၼ်ႉၶႃႈ
spring.datasource.url=jdbc:mysql://localhost:3306/taiglish_db?createDatabaseIfNotExist=true
spring.datasource.username=root
spring.datasource.password=your_password_here

# 2. Hibernate Settings
# 'update' မၢႆထိုင် ႁႂ်ႈ Hibernate သၢင်ႈ Table ပၼ်ႁဝ်းႁင်းၵူၺ်း ၸွမ်းၼင်ႇ Class Java ႁဝ်း
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

# 3. Dialect (လၢႆးလၢတ်ႈၵႂၢမ်း SQL ၶွင် MySQL)
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQLDialect
```



---

### 4. လၢႆးတူၺ်းၶေႃႈမုၼ်း (External Tools)
ဝၢႆးသေ ၵူႈလွင်ႈ ၶႅမ်ႉလီငၢမ်းယဝ်ႉၼၼ်ႉ ႁဝ်းၸႂ်ႉ Software ၸိူဝ်းၼႆႉသေ တူၺ်းၶေႃႈမုၼ်းလႆႈၶႃႈ:
* **MySQL Workbench**
* **DBeaver**
* **IntelliJ Database Tab** (သင်ၸႂ်ႉဝႆႉ Ultimate Version)

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Persistent Database:** Database ဢၼ်သိမ်းၶေႃႈမုၼ်းဝႆႉၼႂ်း Disk (Hard Drive)။
* **JDBC URL:** သၢႆၵွင်ႉဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၵွင်ႉၸူး MySQL (မိူၼ်ၼင်ႇ `jdbc:mysql://...`)။
* **Dialect:** ပိူင်ၵႂၢမ်း SQL ဢၼ် Hibernate တေၸႂ်ႉ တွၼ်ႈတႃႇလၢတ်ႈတေႃႇတင်း MySQL။
* **Connector/J:** Driver ဢၼ်ပိၼ်ႇၵႂၢမ်း ၵႄႈ Java လႄႈ MySQL။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၼႂ်း JDBC URL ၼၼ်ႉ `createDatabaseIfNotExist=true` ႁဵတ်းသင်ပၼ်?