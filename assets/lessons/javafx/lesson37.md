## 📘 Lesson 37: Database Configuration via External Properties File

### 1. Why use Properties Files? (ႁဵတ်းသင်လူဝ်ႇၸႂ်ႉ?)
* **Security**: မိူဝ်ႈႁဝ်း Upload Code ၵႂႃႇတီႈ GitHub ႁဝ်းၸၢင်ႈ "Hide" (သိူင်ႇ) ၾၢႆႇ Password ႁဝ်းဝႆႉလႆႈ။
* **Flexibility**: သင်ဝႃႈႁဝ်းလႅၵ်ႈလၢႆႈ Password Database ႁဝ်းဢမ်ႇလူဝ်ႇ Re-compile (Build) ပရူဝ်ႇၵရႅမ်းမႂ်ႇ၊ ႁဝ်းလႅၵ်ႈၼႂ်းၾၢႆႇလိၵ်ႈၼႆႉၵေႃႈ လႆႈယဝ်ႉၶႃႈ။



---

### 2. Create the Configuration File (`db.properties`)
ႁႂ်ႈသၢင်ႈၾၢႆႇၼႆႉဝႆႉၼႂ်း `src/main/resources` ၶႃႈ။

```properties
# MySQL Connection Settings
db.url=jdbc:mysql://localhost:3306/tmk_db
db.user=root
db.password=1234
```

---

### 3. Update the Singleton Class (`DatabaseConnection.java`)
ႁဝ်းတေၸႂ်ႉ `java.util.Properties` တွၼ်ႈတႃႇလူတ်ႇ (Load) ၶေႃႈမုၼ်းလုၵ်ႉတီႈၾၢႆႇၼၼ်ႉမႃးၶႃႈ။

```java
package com.itsaimao.db;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DatabaseConnection {
    private static DatabaseConnection instance;
    private Connection connection;

    private DatabaseConnection() throws SQLException {
        try {
            // 1. လူတ်ႇ (Load) Properties File
            Properties props = new Properties();
            try (InputStream input = getClass().getResourceAsStream("/db.properties")) {
                if (input == null) {
                    throw new RuntimeException("❌ ဢမ်ႇႁၼ်ၾၢႆႇ db.properties ၶႃႈ!");
                }
                props.load(input);
            }

            // 2. ထွၼ်ဢဝ်ၶေႃႈမုၼ်းမႃးၸႂ်ႉ
            String url = props.getProperty("db.url");
            String user = props.getProperty("db.user");
            String pass = props.getProperty("db.password");

            // 3. တႄႇၵွင်ႉသၢၼ်
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection(url, user, pass);

        } catch (Exception e) {
            throw new SQLException("Database Connection Error: " + e.getMessage());
        }
    }

    public static DatabaseConnection getInstance() throws SQLException {
        if (instance == null || instance.getConnection().isClosed()) {
            instance = new DatabaseConnection();
        }
        return instance;
    }

    public Connection getConnection() {
        return connection;
    }
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Resource Loading)

* **`getResourceAsStream()`**: ဢၼ်ၼႆႉပဵၼ်လၢႆးဢၼ် "Professional" ၸႂ်ႉတိုဝ်း တွၼ်ႈတႃႇႁႃၾၢႆႇၼႂ်း `resources` folder။ မၼ်းတေႁဵတ်းၵၢၼ်လႆႈတင်းၼႂ်း IDE လႄႈ မိူဝ်ႈပဵၼ်ၾၢႆႇ `.jar` ယဝ်ႉၶႃႈ။
* **`props.getProperty("key")`**: ႁဝ်းၸႂ်ႉ "Key" (ၼင်ႇ `db.user`) တွၼ်ႈတႃႇလၢတ်ႈၼႄဝႃႈ ႁဝ်းၶႂ်ႈလႆႈၶေႃႈမုၼ်းတွၼ်ႈလႂ်ၶႃႈ။
* **Encapsulation**: ၶေႃႈမုၼ်းလွင်ႈၵွင်ႉသၢၼ် (URL/User/Pass) တေဢမ်ႇမီးၼႂ်း Variable လၢႆလၢႆယဝ်ႉ၊ မၼ်းတေယူႇၼႂ်းၾၢႆႇ Config ႁင်းၵူၺ်းမၼ်းၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **Properties File**: ပဵၼ် "ပပ်ႉၵႅမ်မိုဝ်း" ဢၼ်ၵဵပ်း Config ဝႆႉၼွၵ်ႈ Code။
* **Security**: ၸႅၵ်ႇ Password ဝႆႉႁင်းၵူၺ်း တွၼ်ႈတႃႇလွင်ႈပူတ်ႇၽေး။
* **Maintainability**: မႄးငၢႆႈ၊ လႅၵ်ႈလၢႆႈငၢႆႈ ဢမ်ႇလူဝ်ႇမႄး Code Java ၶႃႈ။