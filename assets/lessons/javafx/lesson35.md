## Lesson 35: The Database Singleton Class

### 1. Why Singleton? (ႁဵတ်းသင်လူဝ်ႇၸႂ်ႉ Singleton?)
ၼႂ်းပရူဝ်ႇၵရႅမ်လူင်ၼၼ်ႉ သင်ႁဝ်းပိုတ်ႇ Connection မႂ်ႇၵူႈပွၵ်ႈ မိူဝ်ႈၽွင်းႁဝ်းၸႂ်ႉ Database ၼႆ... MySQL Server ႁဝ်းတေၼၵ်း (Heavy) သေ ႁဵတ်းႁႂ်ႈ App ႁဝ်းၵိုတ်းၶႃႈ။
* **Singleton Concept**: ႁဵတ်းႁႂ်ႈမၼ်းမီး **Connection ဢၼ်လဵဝ်ၵူၺ်း** တင်း App လႄႈ ၸႂ်ႉမၼ်းၶိုၼ်း (Reuse) ၵူႈတီႈၶႃႈ။



---

### 2. Implementation (`DatabaseConnection.java`)

ၼႆႉပဵၼ် Code ဢၼ်တဵမ်ထူၼ်ႈ တွၼ်ႈတႃႇၵုမ်းထိင်း Connection ၶႃႈ။

```java
package com.itsaimao.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    // 1. Static variable တွၼ်ႈတႃႇၵဵပ်း instance ဢၼ်လဵဝ်ၵူၺ်း
    private static DatabaseConnection instance;
    private Connection connection;

    // ၶေႃႈမုၼ်း MySQL (ႁဝ်းတေလႅၵ်ႈပဵၼ် Properties File ၼႂ်း Lesson 37)
    private String url = "jdbc:mysql://localhost:3306/tmk_db";
    private String user = "root";
    private String password = "1234"; // ၸႂ်ႉ Password ဢၼ်ႁဝ်းမႄးဝႆႉၼၼ်ႉၶႃႈ

    // 2. Private Constructor (တွၼ်ႈတႃႇဢမ်ႇႁႂ်ႈ Class တၢင်ႇဢၼ်သၢင်ႈ 'new' လႆႈ)
    private DatabaseConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL Driver not found: " + e.getMessage());
        }
    }

    // 3. Static Method တွၼ်ႈတႃႇႁွင်ႉၸႂ်ႉ (The Gateway)
    public static DatabaseConnection getInstance() throws SQLException {
        if (instance == null) {
            instance = new DatabaseConnection();
        } else if (instance.getConnection().isClosed()) {
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

### 3. How to use it (လၢႆးႁွင်ႉၸႂ်ႉ)
မိူဝ်ႈႁဝ်းတေၸႂ်ႉၼႂ်း Controller ဢမ်ႇၼၼ် Class တၢင်ႇဢၼ်ၼၼ်ႉ တႅမ်ႈငၢႆႈငၢႆႈၼင်ႇၼႆၶႃႈ:

```java
try {
    Connection conn = DatabaseConnection.getInstance().getConnection();
    System.out.println("✅ Connection is active and ready!");
} catch (SQLException e) {
    System.out.println("❌ Connection failed: " + e.getMessage());
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Singleton)

* **`private static instance`**: ဢၼ်ၼႆႉပဵၼ်တူဝ်ၵဵပ်း Class ႁဝ်းဝႆႉၼႂ်း Memory။
* **`private Constructor`**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇသုတ်းၶႃႈ။ မၼ်းႁဵတ်းႁႂ်ႈ `new DatabaseConnection()` ဢမ်ႇၸၢင်ႈၸႂ်ႉလႆႈတီႈၼွၵ်ႈ Class။
* **`getInstance()` Logic**: သင်မၼ်းပဵၼ်ဝႆႉ null မၼ်းတေပိုတ်ႇမႂ်ႇ၊ သင်မၼ်းမီးဝႆႉယဝ်ႉ မၼ်းတေသူင်ႇတူဝ်ၵဝ်ႇပၼ်ၶိုၼ်းၶႃႈ။
* **`isClosed()` Check**: ႁဝ်းထႅင်ႈ Logic တွၼ်ႈတႃႇထတ်းတူၺ်းဝႃႈ သင် Connection လူႉၵႂႃႇ (Timeout) ႁႂ်ႈမၼ်းပိုတ်ႇမႂ်ႇပၼ်ႁင်းၵူၺ်းမၼ်းၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **Singleton**: "မီးဢၼ်လဵဝ်၊ ၸႂ်ႉၵူႈတီႈ"။
* **Efficiency**: ႁဵတ်းႁႂ်ႈ ၵၢၼ်ႁဵတ်းၵၢၼ် MySQL Server ၽႂ်းတိူဝ်းလိူဝ်ၵဝ်ႇ။
* **Global Access**: ယူႇတီႈ Class လႂ်ၵေႃႈယဝ်ႉ၊ တေႁွင်ႉလႆႈ ငၢႆႈငၢႆႈၶႃႈ။ 
