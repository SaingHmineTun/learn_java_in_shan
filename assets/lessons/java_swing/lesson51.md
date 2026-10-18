## 51: JDBC: Connecting Java Swing to SQLite

ၼႂ်း Lesson 50 ႁဝ်းလႆႈႁဵၼ်း လွင်ႈတႅမ်ႈ Code SQL ၵႂႃႇယဝ်ႉၶႃႈ။ တွၼ်ႈၼႆႉ ႁဝ်းတေဢဝ် Java Swing Application ႁဝ်း ၵႂႃႇ **သိုပ်ႇၸပ်း (Connect)** ၸူး SQLite Database ၸွမ်းလူၺ်ႈ လွၵ်းလၢႆး ဢၼ်ႁွင်ႉဝႃႈ **JDBC** ၶႃႈ!

### 1. JDBC လႄႈ SQLite Driver ပဵၼ်သင်?

* **JDBC (Java Database Connectivity):** ပဵၼ် ၶူဝ်လႆ (API) ဢၼ် Java ႁဵတ်းဝႆႉပၼ် တွၼ်ႈတႃႇ ၵပ်းသိုပ်ႇ လႄႈ သင်ႇ Command SQL ၵႂႃႇၸူး Database ၵူႈမဵဝ်းမဵဝ်း (မိူၼ်ၼင်ႇ MySQL, Oracle, လႄႈ SQLite) ၶႃႈ။
* **SQLite JDBC Driver:** ယွၼ်ႉဝႃႈ Java ဢမ်ႇမီး ၶိူင်ႈၵပ်းသိုပ်ႇ SQLite ၵိုၵ်ႉမႃးၸွမ်း ႁင်းၵူၺ်း၊ ႁဝ်းလူဝ်ႇလႆႈဢဝ် Library ၽၢႆႇၼွၵ်ႈ (ၽၢႆႇ `.jar`) ဢၼ်ၸိုဝ်ႈဝႃႈ `sqlite-jdbc.jar` မႃးသႂ်ႇၼႂ်း Project ႁဝ်းၶႃႈ။

> **လွၵ်းလၢႆးသႂ်ႇ Driver:**
> * **ပေႃးၸႂ်ႉ Maven:** ဢဝ် Code ၼႆႉ ၵႂႃႇသႂ်ႇၼႂ်းၽၢႆႇ `pom.xml`:
> ```xml
> <dependency>
>     <groupId>org.xerial</groupId>
>     <artifactId>sqlite-jdbc</artifactId>
>     <version>3.45.1.0</version>
> </dependency>
> 
> ```
>
>
> * **ပေႃးဢမ်ႇၸႂ်ႉ Maven:** ၵႂႃႇ Download ဢဝ်ၽၢႆႇ `sqlite-jdbc.jar` တီႈ Internet သေ ဢဝ်ၵႂႃႇ Add သႂ်ႇၼႂ်း "Libraries" ဢမ်ႇၼၼ် "Build Path" ၶွင် Project ၼႂ်း IDE (IntelliJ / VS Code / Eclipse) ၶႃႈ။
>
>

### 2. လၢႆးၵပ်းသိုပ်ႇ (The Connection String)

လၢႆးၵပ်းသိုပ်ႇ SQLite ၼႆႉ ငၢႆႈတႄႉတႄႉၶႃႈ။ ယွၼ်ႉဝႃႈ ႁဝ်း **ဢမ်ႇလူဝ်ႇ** သႂ်ႇ Username လႄႈ Password! ႁဝ်းၵူၺ်းလူဝ်ႇ မၵ်းမၼ်ႈ ဢွင်ႈတီႈၽၢႆႇ (Connection URL) ၼင်ႇၼႆၶႃႈ:

```java
String url = "jdbc:sqlite:school.db";
Connection conn = DriverManager.getConnection(url);

```

* **`jdbc:sqlite:school.db`**: ပွင်ႇဝႃႈ "ၵပ်းသိုပ်ႇၸူး SQLite ဢၼ်မီးၽၢႆႇၸိုဝ်ႈဝႃႈ school.db"။ ပေႃးၽၢႆႇ `school.db` ပႆႇမီးၼႂ်း Project ႁဝ်း၊ **SQLite တေၶူင်သၢင်ႈၽၢႆႇမႂ်ႇ ပၼ်ႁင်းၵူၺ်းမၼ်း ၵမ်းလဵဝ်ၶႃႈ!**

---

### 3. Class DatabaseHelper (တွၼ်ႈတႃႇၸႂ်ႉငၢႆႈ)

တွၼ်ႈတႃႇႁႂ်ႈ Code ႁဝ်း သႅၼ်ႈသႂ် လႄႈ ၸႂ်ႉၶိုၼ်းလႆႈလၢႆလၢႆတီႈ၊ ႁဝ်းထုၵ်ႇလီ ၶူင်သၢင်ႈ Class လဵၵ်ႉလဵၵ်ႉဢၼ်ၼိုင်ႈ ဢၼ်မီး Method တႃႇသူင်ႇ Connection ဢွၵ်ႇမႃးၶႃႈ:

```java
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseHelper {
    // ၸိုဝ်ႈၽၢႆႇ Database ဢၼ်တေယူႇၼႂ်း Folder လဵဝ်ၵၼ် တင်း Project
    private static final String URL = "jdbc:sqlite:school.db";

    // Method တွၼ်ႈတႃႇ ႁွင်ႉဢဝ် Connection
    public static Connection connect() throws SQLException {
        return DriverManager.getConnection(URL);
    }
}

```

---

### Code တူဝ်ယၢင်ႇ (Testing Connection in Java Swing)

ႁဝ်းမႃးၸၢမ်းတႅမ်ႈ Window UI ဢၼ်ၼိုင်ႈ ဢၼ်မီး Button တွၼ်ႈတႃႇ Test တူၺ်းဝႃႈ Java Swing Application ႁဝ်း သိုပ်ႇၸပ်း SQLite Database လႆႈတႄႉ ႁိုဝ်ၼႆၶႃႈ:

```java
import javax.swing.*;
import java.awt.*;
import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionTestApp {
    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> createAndShowGUI());
    }

    private static void createAndShowGUI() {
        JFrame frame = new JFrame("SQLite Connection Test");
        frame.setSize(400, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new FlowLayout(FlowLayout.CENTER, 20, 40));

        JButton testBtn = new JButton("Test SQLite Connection");
        testBtn.setFont(new Font("Arial", Font.BOLD, 14));
        
        JLabel statusLabel = new JLabel("Status: Waiting to test...", SwingConstants.CENTER);
        statusLabel.setFont(new Font("Arial", Font.PLAIN, 14));

        testBtn.addActionListener(e -> {
            
            // ၸႂ်ႉ try-with-resources တွၼ်ႈတႃႇႁႂ်ႈမၼ်း Auto-Close Connection ႁင်းၵူၺ်း
            try (Connection conn = DatabaseHelper.connect()) {
                
                // ပေႃး Connection ဢမ်ႇပဝ်ႇလၢႆ လႄႈ တိုၵ်ႉပိုတ်ႇဝႆႉယူႇ
                if (conn != null && !conn.isClosed()) {
                    statusLabel.setText("Status: Connected to SQLite Successfully! ✅");
                    statusLabel.setForeground(new Color(0, 150, 0)); // သီၶဵဝ်
                }
                
            } catch (SQLException ex) {
                // ပေႃးမီးလွင်ႈၽိတ်းပိူင်ႈ (Error)
                statusLabel.setText("Status: Connection Failed! ❌");
                statusLabel.setForeground(Color.RED);
                JOptionPane.showMessageDialog(frame, "Database Error: " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
            }
        });

        frame.add(testBtn);
        frame.add(statusLabel);
        frame.setVisible(true);
    }
}

```

### ၶေႃႈမၢႆတွင်း ဢၼ်လမ်ႇလွင်ႈ! (Key Takeaways)

1. **`try-with-resources`:** ၼႂ်း Code ၽၢႆႇၼိူဝ် ႁဝ်းၸႂ်ႉ `try (Connection conn = DatabaseHelper.connect())` ၶႃႈ။ ၼႆႉပဵၼ် လွၵ်းလၢႆးတႅမ်ႈ Code ဢၼ်လမ်ႇလွင်ႈသုတ်း! ယွၼ်ႉဝႃႈ Java တေ **ပိၵ်ႉ (Close) Connection ပၼ်ႁင်းၵူၺ်း** မိူဝ်ႈႁဵတ်းၵၢၼ်ယဝ်ႉ။ ပေႃးႁဝ်းလိုမ်းပိၵ်ႉ Connection ၼၼ်ႉ၊ မၼ်းၸၢင်ႈႁဵတ်းႁႂ်ႈ Database ၶမ် (Locked) လႄႈ Program တေဢမ်ႇႁဵတ်းၵၢၼ်လႆႈၶႃႈ။
2. **`SQLException`:** ၵူႈၵမ်း ဢၼ်ႁဝ်းႁဵတ်းၵၢၼ် ၵိုၵ်း JDBC/Database၊ Java တေမၵ်းမၼ်ႈ ႁႂ်ႈႁဝ်း တီႉၺွပ်း (Catch) `SQLException` တႃႇသေႇ တွၼ်ႈတႃႇႁႄႉၵင်ႈ လွင်ႈ Program ပိၵ်ႉၵႂႃႇႁင်းၵူၺ်း မိူဝ်ႈမီး လွင်ႈၽိတ်းပိူင်ႈၶႃႈ။