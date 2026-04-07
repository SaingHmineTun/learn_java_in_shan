# Lesson 34: "Profiles & Configuration (Dev vs Prod)"

ၼႂ်း Spring Boot ႁဝ်းၸႂ်ႉ **Spring Profiles** တွၼ်ႈတႃႇၸႅၵ်ႇ Config ၵၼ် ႁႂ်ႈမၼ်း "လႅၵ်ႈလၢႆႈ" ၸွမ်းၼင်ႇ တူင်ႇဝူင်း (Environment) ဢၼ်မၼ်းလႅၼ်ႈယူႇၼၼ်ႉၶႃႈ။

### 1. ၵွပ်ႈသင်ႁဝ်းၸင်ႇလူဝ်ႇ Profiles?
* **Database:** Dev ၸႂ်ႉ `localhost`, Prod ၸႂ်ႉ `Cloud URL`။
* **Logging:** Dev ၼႄ Log ၼမ်ၼမ်, Prod ၼႄ Error ဢၼ်လမ်ႇလွင်ႈၵူၺ်း။
* **Security:** Dev ပိုတ်ႇ Swagger တႃႇၸၢမ်း, Prod ၸၢင်ႈတေလူဝ်ႇပိၵ်ႉဝႆႉ တွၼ်ႈတႃႇလွင်ႈလွတ်ႈၽေး။



### 2. ၵၢၼ်သၢင်ႈၾၢႆႇ Properties ၸႅၵ်ႇၵၼ်
ႁဝ်းမႃးသၢင်ႈ 3 တူဝ်ဝႆႉၼႂ်း `src/main/resources` ၶႃႈ:

#### **A. application-dev.properties** (တွၼ်ႈတႃႇတႅမ်ႈ Code)
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/taiglish_dev
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

#### **B. application-prod.properties** (တွၼ်ႈတႃႇ Server တႄႉတႄႉ)
```properties
spring.datasource.url=jdbc:mysql://cloud-server-url:3306/taiglish_prod
spring.jpa.hibernate.ddl-auto=none
spring.jpa.show-sql=false
```

#### **C. application.properties** (ၾၢႆႇပိူင်လူင်)
```properties
spring.application.name=taiglish
# လိူၵ်ႈဝႃႈတေပၼ်ႇ Profile လႂ်
spring.profiles.active=dev
```

---

### 3. လၢႆးလႅၵ်ႈ Profile မိူဝ်ႈ Run App
ႁဝ်းၸၢင်ႈလႅၵ်ႈ Profile လႆႈလၢႆလၢႆးၶႃႈ:

1. **ၼႂ်း IntelliJ:** ၵႂႃႇတီႈ **Run/Debug Configurations** => **Active Profiles** သေတႅမ်ႈသႂ်ႇ `dev` ဢမ်ႇၼၼ် `prod` ၶႃႈ။
2. **ၼႂ်း Terminal (မိူဝ်ႈတေလႅၼ်ႈ JAR ၼၼ်ႉ သႂ်ႇမိူၼ်ၼႆၶႃႈ):**
   ```bash
   java -jar taiglish.jar --spring.profiles.active=prod
   ```



---

### 4. ၵၢၼ်ၸႂ်ႉ `@Profile` ၼႂ်း Code
ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈ Bean တူဝ်ၼိုင်ႈ ႁဵတ်းၵၢၼ်ၼႂ်း Profile ဢၼ်ႁဝ်းလိူၵ်ႈဝႆႉၼၼ်ႉၵူၺ်း ၵေႃႈလႆႈၶႃႈ:

```java
@Service
@Profile("dev") // Method ၼႆႉတေႁဵတ်းၵၢၼ် မိူဝ်ႈပဵၼ် dev profile ၵူၺ်း
public class DevDataService {
    // ...
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Environment:** တူင်ႇဝူင်း ဢၼ် App လႅၼ်ႈယူႇ (Local, Test, Prod)။
* **Active Profile:** Profile ဢၼ်တိုၵ်ႉၸႂ်ႉတိုဝ်းယူႇၼႂ်းၶၢဝ်းယၢမ်းၼၼ်ႉ။
* **Externalized Configuration:** ၵၢၼ်ဢဝ် Config ဢွၵ်ႇဝႆႉၽၢႆႇၼွၵ်ႈ Code ႁႂ်ႈလႅၵ်ႈလၢႆႈလႆႈငၢႆႈ။
* **YAML vs Properties:** ၸၢင်ႈၸႂ်ႉၾၢႆႇ `.yml` တႅၼ်းတၢင် `.properties` ၵေႃႈလႆႈ (လူငၢႆႈလိူဝ်)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်းယူႇၼိူဝ် **Production (Server)** ၼၼ်ႉ ၵွပ်ႈသင်ႁဝ်းၸင်ႇထုၵ်ႇလီတင်ႈ `ddl-auto=none`?
2. သင်ႁဝ်းဢမ်ႇမၵ်းမၼ်ႈ `spring.profiles.active` ဝႆႉၼၼ်ႉ Spring Boot တေၸႂ်ႉ Profile ဢၼ်ၸိုဝ်ႈဝႃႈသင်ပဵၼ် Default?