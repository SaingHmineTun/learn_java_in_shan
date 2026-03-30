## Lesson 61: User Authentication (BCrypt & Database Login)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေတႅမ်ႈ Code ႁႂ်ႈ App ႁဝ်းၵႂႃႇၵူတ်ႇထတ်းၼႂ်း Table `users` ဝႃႈ Username လႄႈ Password ထုၵ်ႇမႅၼ်ႈႁႃႉ? ၼႆၶႃႈ။



### 1. Library Dependency (BCrypt)
တွၼ်ႈတႃႇ JavaFX၊ ႁဝ်းလူဝ်ႇဢဝ် Library **jBCrypt** သႂ်ႇၼႂ်း Project (Maven/Gradle) ႁဝ်းၶႃႈ။
```xml
<dependency>
    <groupId>org.mindrot</groupId>
    <artifactId>jbcrypt</artifactId>
    <version>0.4</version>
</dependency>
```

---

### 2. The Data Tier: `UserDAO.java`
ထၢပ်ႈၼႆႉ တေၵႂႃႇထိုင် Database သေ ဢဝ် Password ဢၼ် Hashed ဝႆႉၼၼ်ႉ ဢွၵ်ႇမႃးၶႃႈ။

```java
public class UserDAO {
    public String getStoredPassword(String username) {
        String sql = "SELECT password FROM users WHERE username = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, username);
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next()) {
                return rs.getString("password"); // ဢဝ် Hash String ဢွၵ်ႇမႃး
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
```

---

### 3. The Service Tier: `AuthService.java`
ၼႆႉပဵၼ် "Brain" ဢၼ်တေၸႂ်ႉ BCrypt ၵူတ်ႇထတ်း Password ၶႃႈ။

```java
import org.mindrot.jbcrypt.BCrypt;

public class AuthService {
    private UserDAO userDAO = new UserDAO();

    public boolean authenticate(String username, String plainPassword) {
        String hashedPassword = userDAO.getStoredPassword(username);
        
        if (hashedPassword == null) return false;

        // BCrypt.checkpw တေဢဝ် Plain Text ၵႂႃႇတႅၵ်ႈတင်း Hash ၼႂ်း DB
        return BCrypt.checkpw(plainPassword, hashedPassword);
    }
}
```

---

### 4. Presentation Tier: FXML & CSS

#### **LoginView.fxml**


```xml
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>

<VBox spacing="20" alignment="CENTER" stylesheets="@login.css" 
      styleClass="login-root" xmlns:fx="http://javafx.com/fxml" 
      fx:controller="controller.LoginController">
    
    <Label text="TMK Library Login" styleClass="login-title"/>
    
    <VBox spacing="10" maxWidth="300">
        <TextField fx:id="txtUsername" promptText="Username"/>
        <PasswordField fx:id="txtPassword" promptText="Password"/>
        <Button text="LOGIN" onAction="#handleLogin" styleClass="login-button" maxWidth="Infinity"/>
    </VBox>
    
    <Label fx:id="lblMessage" styleClass="error-text"/>
</VBox>
```

#### **login.css**
```css
.login-root {
    -fx-background-color: #2f3640; /* Dark Slate */
    -fx-padding: 50;
}

.login-title {
    -fx-font-family: "NamKhone Unicode";
    -fx-font-size: 28px;
    -fx-text-fill: #fbc531; /* Shan Gold */
    -fx-font-weight: bold;
}

.text-field, .password-field {
    -fx-background-color: #353b48;
    -fx-text-fill: white;
    -fx-prompt-text-fill: #7f8c8d;
    -fx-background-radius: 5;
    -fx-padding: 10;
}

.login-button {
    -fx-background-color: #fbc531;
    -fx-text-fill: #2f3640;
    -fx-font-weight: bold;
    -fx-cursor: hand;
}

.error-text {
    -fx-text-fill: #e84118;
}
```

---

### 5. The Controller: `LoginController.java`
```java
public class LoginController {
    @FXML private TextField txtUsername;
    @FXML private PasswordField txtPassword;
    @FXML private Label lblMessage;

    private AuthService authService = new AuthService();

    @FXML
    public void handleLogin() {
        String user = txtUsername.getText();
        String pass = txtPassword.getText();

        if (authService.authenticate(user, pass)) {
            // Success: Switch to Dashboard (Lesson 63)
            System.out.println("Login Successful!");
        } else {
            lblMessage.setText("ၸိုဝ်ႈ ဢမ်ႇၼၼ် Password ၽိတ်းၶႃႈ!");
        }
    }
}
```

---

### 🎓 Summary for Thung Mao Kham Students

* **BCrypt Hashing**: မၼ်းပဵၼ် One-way Hashing။ ႁဝ်းဢမ်ႇၸၢင်ႈ "Decrypt" မၼ်းၶိုၼ်းလႆႈ။ မၼ်းၸွႆႈႁႂ်ႈ Password ႁဝ်း Secure လိူဝ်သေၵၢၼ်သိမ်းလိၵ်ႈယူဝ်းယူဝ်း 1,000 ပၼ်ႇၶႃႈ။
* **Prepared Statement**: ၼႂ်း `UserDAO` ႁဝ်းၸႂ်ႉ `?` (Placeholders) တွၼ်ႈတႃႇၵႅတ်ႇၶႄ **SQL Injection** ၼင်ႇဢၼ်ႁဝ်းတေသွၼ်တႅတ်ႈတေႃးၼႂ်း **Lesson 66** ၼၼ်ႉၶႃႈ။
* **Shan Support**: ၼႂ်း CSS ႁဝ်းတင်ႈ `NamKhone Unicode` ဝႆႉ ၼင်ႇႁႂ်ႈ Error Message ၼႄပဵၼ်လိၵ်ႈတႆး လႆႈႁၢင်ႈလီၶႃႈ။