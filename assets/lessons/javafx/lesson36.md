## Lesson 36: Try-Catch-Finally (SQL Safety)

ၼႂ်း Java ၼၼ်ႉ `SQLException` ပဵၼ် **Checked Exception**။ မၼ်းလၢတ်ႈဝႃႈ "ၵဝ်တေပဵၼ် Error လႆႈၵူႈၶိင်ႇၼႃႈ၊ ၵွပ်ႈၼၼ် မႂ်းလူဝ်ႇတႅမ်ႈ Try-Catch ဝႆႉတႃႇသေႇ" ၼႆၶႃႈ။



### 1. The Traditional Way (လၢႆးၵဝ်ႇ)
လၢႆးၼႆႉႁဝ်းတေၸႂ်ႉ `finally` တွၼ်ႈတႃႇပိၵ်ႉ Resource (Connection/Statement) ႁႂ်ႈမႅၼ်ႈပိူင်မၼ်းၶႃႈ။

```java
public void checkDatabaseStatus() {
    Connection conn = null;
    Statement stmt = null;

    try {
        // 1. Try: တႄႇၵွင်ႉသၢၼ် (Code ဢၼ်ၸၢင်ႈမီး Error)
        conn = DatabaseConnection.getInstance().getConnection();
        stmt = conn.createStatement();
        System.out.println("✅ Database Connected!");

    } catch (SQLException e) {
        // 2. Catch: ၼႄပၼ်လိၵ်ႈ မိူဝ်ႈမီး Error ဝႃႈပဵၼ်ၵွပ်ႈသင်?
        System.err.println("❌ SQL Error Code: " + e.getErrorCode());
        System.err.println("❌ SQL State: " + e.getSQLState());
        System.err.println("❌ Message: " + e.getMessage());

    } finally {
        // 3. Finally: ပိၵ်ႉ Resource (ႁဵတ်းၵၢၼ်တႃႇသေႇ ဢမ်ႇဝႃႈ Error ႁႃႉ ဢမ်ႇ Error ႁႃႉ)
        try {
            if (stmt != null) stmt.close();
            // Connection တႄႉ ယွၼ်ႉပဵၼ် Singleton ႁဝ်းဢမ်ႇလူဝ်ႇပိၵ်ႉၵမ်းလဵဝ်ၵေႃႈလႆႈၶႃႈ
        } catch (SQLException se) {
            se.printStackTrace();
        }
    }
}
```

---

### 2. The Modern Way: Try-with-Resources (Java 7+)
ဢၼ်ၼႆႉပဵၼ်လၢႆးဢၼ် Professional လႄႈ ငၢႆႈလိူဝ်ပိူၼ်ႈၶႃႈ။ မၼ်းတေ "Auto-Close" Resource ပၼ်ႁဝ်း ႁင်းၵူၺ်းမၼ်းၶႃႈ။

```java
public void testPing() {
    String sql = "SELECT 1"; // Query ငၢႆႈငၢႆႈတွၼ်ႈတႃႇ Ping

    // ၸႂ်ႉ () တီႈၼႃႈ Try တွၼ်ႈတႃႇပိုတ်ႇ Resource
    try (Connection conn = DatabaseConnection.getInstance().getConnection();
         PreparedStatement ps = conn.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {

        if (rs.next()) {
            System.out.println("✅ Ping Successful: Server is Online!");
        }

    } catch (SQLException e) {
        // ၵုမ်းထိင်း Error ၵူႈပိူင် (Timeout, Auth, etc.)
        System.err.println("❌ Connection Lost: " + e.getMessage());
    }
    // မၼ်းတေ Auto-close ps လႄႈ rs ပၼ်ႁင်းၵူၺ်းမၼ်းၶႃႈ!
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Exception Handling)

* **`try`**: တီႈၵဵပ်း Code ဢၼ်ၸၢင်ႈမီး "ပၼ်ႁႃ"။
* **`catch`**: တီႈ "ႁပ်ႉ" Error သေ ၼႄၶေႃႈမုၼ်း (Log) ဢမ်ႇၼၼ် ၼႄ Alert Dialog ၼိူဝ် UI။
* **`finally`**: တီႈ "ၽဵဝ်ႈလၢင်ႉ" (Cleanup)။ လွင်ႈယႂ်ႇသုတ်းပဵၼ်ၵၢၼ်ပိၵ်ႉ Statement/ResultSet တွၼ်ႈတႃႇဢမ်ႇႁႂ်ႈ **Memory Leak** ၶႃႈ။
* **Specific Catching**: ႁဝ်းၸၢင်ႈ `catch` ႁူဝ်ၼပ်ႉ (Error Code) ဢၼ်ၵႆႉမီး ၼင်ႇ `1045` (Access Denied) တွၼ်ႈတႃႇလၢတ်ႈၼႄ User ႁႂ်ႈမႅၼ်ႈတီႈမၼ်းၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **Try**: ၸၢမ်းႁဵတ်း။
* **Catch**: သင်ၽိတ်း ပႂ်ႉႁပ်ႉ။
* **Finally**: ဢမ်ႇဝႃႈၽိတ်း ဢမ်ႇဝႃႈထုၵ်ႇ လူဝ်ႇၽဵဝ်ႈလၢင်ႉ Resource တႃႇသေႇ။
* **Auto-Close**: လၢႆးတႅမ်ႈမႂ်ႇ ဢၼ်ႁဵတ်းႁႂ်ႈ Code ႁဝ်းသႅၼ်ႈသႂ် (Clean) ၶႃႈ။
