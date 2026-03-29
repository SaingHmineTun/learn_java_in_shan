## Lesson 61: User Authentication (Secure Login System)

ၵၢၼ် Authentication ပဵၼ်ၵၢၼ်ၵူတ်ႇထတ်း လွင်ႈႁူမ်ႇလူမ်ႈ (Identity Verification) ၶႃႈ။ 
ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေတႅမ်ႈ Code တွၼ်ႈတႃႇႁပ်ႉလိၵ်ႈလုၵ်ႉတီႈ UI သေ ၵႂႃႇ Query တူၺ်းၼႂ်း Table `users` ၶႃႈ။



### 1. The FXML UI (`LoginView.fxml`)
ႁဝ်းလူဝ်ႇမီးလွၵ်း `PasswordField` တွၼ်ႈတႃႇမူၵ်းလိၵ်ႈ Password ဝႆႉၶႃႈ။

```xml
<VBox spacing="15" alignment="CENTER" prefWidth="350" style="-fx-padding: 30;">
    <Label text="LOGIN TO LIBRARY" style="-fx-font-size: 20px; -fx-font-weight: bold;" />
    
    <TextField fx:id="txtUsername" promptText="Username" prefHeight="40" />
    <PasswordField fx:id="txtPassword" promptText="Password" prefHeight="40" />
    
    <Button text="SIGN IN" onAction="#handleLogin" prefWidth="350" prefHeight="40" 
            style="-fx-background-color: #2c3e50; -fx-text-fill: white;" />
    
    <Label fx:id="lblStatus" text="" style="-fx-text-fill: red;" />
</VBox>
```

---

### 2. Database Logic (`UserDAO.java`)
ႁဝ်းတေၸႂ်ႉ **Prepared Statement** တွၼ်ႈတႃႇႁဵတ်း SQL Injection ၶႃႈ။

```java
public boolean authenticate(String username, String password) {
    String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
    
    try (Connection conn = DatabaseConnection.getInstance().getConnection();
         PreparedStatement pstmt = conn.prepareStatement(sql)) {
        
        pstmt.setString(1, username);
        pstmt.setString(2, password); // တွၼ်ႈတႃႇပိုၼ်ႉထၢၼ် ႁဝ်းၸႅတ်းလိၵ်ႈသိုဝ်ႈသိုဝ်ႈၵွၼ်ႇ
        
        ResultSet rs = pstmt.executeQuery();
        return rs.next(); // သင်မီး Data ၼႆ မၢႆထိုင်ဝႃႈ Login မႅၼ်ႈ
        
    } catch (SQLException e) {
        e.printStackTrace();
        return false;
    }
}
```

---

### 3. Controller Implementation (`LoginController.java`)

```java
@FXML
private void handleLogin(ActionEvent event) {
    String user = txtUsername.getText();
    String pass = txtPassword.getText();

    UserDAO dao = new UserDAO();
    if (dao.authenticate(user, pass)) {
        // သင် Login မႅၼ်ႈ -> လႅၵ်ႈၼႃႈၸေႃးၵႂႃႇ Dashboard (Lesson 59/60)
        switchSceneToDashboard(event, user);
    } else {
        // သင် Login ၽိတ်း -> ၼႄလိၵ်ႈၵိူဝ်ႉ
        lblStatus.setText("❌ Username or Password incorrect!");
    }
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Authentication)

* **`PasswordField`**: ပဵၼ် Control ဢၼ်လွင်ႈယႂ်ႇသုတ်း။ မၼ်းတေဢမ်ႇၼႄ Password ၼိူဝ်ၼႃႈၸေႃး တွၼ်ႈတႃႇ ၵႅတ်ႇၶႄ ၵူၼ်းႁိမ်းႁဝ်းလွမ်တူၺ်းၶႃႈ။
* **Prepared Statement (`?`)**: ႁဝ်းဢမ်ႇၸႂ်ႉၵၢၼ် "ႁူမ်ႈလိၵ်ႈ" (String Concatenation) ၼႂ်း SQL Query ယွၼ်ႉမၼ်းပဵၼ်ႁူးႁူဝ်ႈႁႂ်ႈ Hacker ၶဝ်ႈမႃးယႃႉ DB ႁဝ်းလႆႈၶႃႈ။
* **User Feedback**: ၵၢၼ်ၼႄ Label သီလႅင် (`lblStatus`) ၸွႆႈႁႂ်ႈ User ႁူႉဝႃႈယွၼ်ႉသင်ၶဝ်ၸင်ႇၶဝ်ႈ App ဢမ်ႇလႆႈၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **Authentication**: ပဵၼ်ၵၢၼ်ပိုတ်ႇ "ၽၵ်းတူ" ၼႃႈၸေႃး ႁႂ်ႈၵူၼ်းမီးၶႂၢင်ႉ ၸင်ႇၶဝ်ႈလႆႈ။
* **Database Integration**: ႁဝ်းဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ UI ၵႂႃႇ "တႅပ်းတတ်း" ၸွမ်းၶေႃႈမုၼ်းၼႂ်း Database။