## Lesson 62: Password Hashing (Security Basics)

**Hashing** ပဵၼ်ၵၢၼ်ဢဝ်လိၵ်ႈ (Password) ၵႂႃႇလႅၵ်ႈလၢႆႈပဵၼ် Code လပ်ႉဢၼ်ဢၢၼ်ႇဢမ်ႇပွင်ႇ လႄႈ **ဢမ်ႇၸၢင်ႈလႅၵ်ႈၶိုၼ်းပဵၼ်လိၵ်ႈၵဝ်ႇ** (One-way Function) ၶႃႈ။



### 1. Why use Hashing?
* **Data Breach Protection**: သင် DB ႁၢႆ၊ Hacker ၵေႃႈတေႁၼ် Code လပ်ႉၵူၺ်းသေ တေဢမ်ႇၸႂ်ႉလႆႈသင်ၶႃႈ။
* **Privacy**: ပေႃးပဵၼ် Admin ၵေႃႈ တေဢမ်ႇႁၼ် Password ၶွင် User တႄႉၶႃႈ။
* **Standard**: ၼႆႉပဵၼ်လၢႆးႁဵတ်း Software ဢၼ်မႅၼ်ႈပိူင် (Industry Standard) ၶႃႈ။

---

### 2. Using BCrypt (The Industry Gold Standard)
တွၼ်ႈတႃႇ Java, ႁဝ်းတေၸႂ်ႉ Library ဢၼ်ၸိုဝ်ႈဝႃႈ **BCrypt**။ မၼ်းပဵၼ်လၢႆး Hashing ဢၼ်လွတ်ႈၽေးသုတ်း ယွၼ်ႉမၼ်းမီး "Salt" (ၵိူဝ်) တွၼ်ႈတႃႇႁႂ်ႈ Password ဢၼ်မိူၼ်ၵၼ် မီး Hash ဢၼ်ပႅၵ်ႇၵၼ်ၶႃႈ။
ဢွၼ်တၢင်းပႆႇၸႂ်ႉမၼ်းၼႆႉ တေလႆႈလူတ်ႇဝႆႉၵွၼ်ႇၶႃႈ။ သႂ်ႇပၼ် ထႅဝ်လိၵ်ႈၼႆႉတီႈ pom.xml ၶႃႈ

```xml
<dependencies>
    <dependency>
        <groupId>org.mindrot</groupId>
        <artifactId>jbcrypt</artifactId>
        <version>0.4</version>
    </dependency>
</dependencies>
```

**A. ၵၢၼ်ၵဵပ်း Password (Registration/Sign Up):**
```java
String password = "mysecretpassword";
// 1. Hash Password ၵွၼ်ႇတေၵဵပ်းလူင်း DB
String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());

// ၵဵပ်း hashedPassword (ၼင်ႇ $2a$12$...) လူင်းၼႂ်း Database
```

**B. ၵၢၼ်ၸႅတ်း Password (Login):**
```java
// 2. ၸႅတ်းတူၺ်းဝႃႈ လိၵ်ႈဢၼ် User တႅမ်ႈမႃး မႅၼ်ႈၸွမ်း Hash ၼႂ်း DB ႁႃႉ?
if (BCrypt.checkpw(enteredPassword, hashedPasswordFromDB)) {
    System.out.println("✅ Login Success!");
} else {
    System.out.println("❌ Invalid Password!");
}
```

---

### 3. Updated UserDAO (`UserDAO.java`)
ႁဝ်းလူဝ်ႇမႄး Method `authenticate` ႁႂ်ႈၸႅတ်း Hash တႅၼ်းၵၢၼ်ၸႅတ်းလိၵ်ႈသိုဝ်ႈသိုဝ်ႈၶႃႈ။

```java
public boolean authenticate(String username, String enteredPassword) {
    String sql = "SELECT password FROM users WHERE username = ?";
    
    try (Connection conn = DatabaseConnection.getInstance().getConnection();
         PreparedStatement pstmt = conn.prepareStatement(sql)) {
        
        pstmt.setString(1, username);
        ResultSet rs = pstmt.executeQuery();
        
        if (rs.next()) {
            String storedHash = rs.getString("password");
            // ၸႅတ်းတူၺ်း Hash
            return BCrypt.checkpw(enteredPassword, storedHash);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return false;
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Hashing)

* **One-Way**: ႁဝ်းၸၢင်ႈ Hash လိၵ်ႈ "1234" ႁႂ်ႈပဵၼ် "xyz", ၵူၺ်းၵႃႈ ဢမ်ႇမီး Code Java တူဝ်လႂ် ဢၼ်တေလႅၵ်ႈ "xyz" ၶိုၼ်းပဵၼ် "1234" လႆႈၶႃႈ။
* **Salting**: BCrypt တေထႅင်ႈလိၵ်ႈ "ၵိူဝ်" (Random string) သႂ်ႇၼႂ်း Password ၵူႈပွၵ်ႈ။ ၼႆႉႁဵတ်းႁႂ်ႈ Hacker ၸႂ်ႉ Rainbow Tables (ပပ်ႉတွင်း Hash) တွၼ်ႈတႃႇယႃႉ Password ဢမ်ႇလႆႈၶႃႈ။
* **Work Factor**: ႁဝ်းၸၢင်ႈတင်ႈႁႂ်ႈ BCrypt ႁဵတ်းၵၢၼ် "ၼၢၼ်း" လိူဝ်ၵဝ်ႇ တွၼ်ႈတႃႇၵႅတ်ႇၶႄ Brute Force attack (ၵၢၼ်လွမ်ၸၢမ်း Password) ၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **Never Store Plain Text**: ယႃႇပေၵဵပ်း Password လိၵ်ႈသိုဝ်ႈသိုဝ်ႈၼႂ်း DB သေပွၵ်ႈ။
* **BCrypt**: ပဵၼ်ၶိူင်ႈမိုဝ်းဢၼ်ၶႅမ်ႉသုတ်း တွၼ်ႈတႃႇလပ်ႉ Password။
* **Safety**: ၵၢၼ်ၸႂ်ႉ Hashing ႁဵတ်းႁႂ်ႈ App Library ႁဝ်းမီးလွင်ႈၵႅၼ်ႇၶႅင် (Security Standard) ၶႃႈ။