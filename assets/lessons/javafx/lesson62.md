## Lesson 62: Admin Registration (Regex Validation)

ၵၢၼ်သၢင်ႈ Account မႂ်ႇၼၼ်ႉ ႁဝ်းလူဝ်ႇမီးပၵ်းပိူင် (Rules) တွၼ်ႈတႃႇႁႂ်ႈ System ႁဝ်းၶိူင်ႇၵႅၼ်ႇၶႃႈ။



### 1. Regex Pattern တွၼ်ႈတႃႇ Password
ႁဝ်းတေတင်ႈဝႃႈ Password လူဝ်ႇမီး:
* တူဝ်လိၵ်ႈ 8 တူဝ်ၶိုၼ်ႈၼိူဝ်။
* မီးတူဝ်လိၵ်ႈလူင် (A-Z) လၢႆလၢႆတူဝ်။
* မီးမၢႆၼပ်ႉ (0-9) လၢႆလၢႆတူဝ်။

**Regex String:** `^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,}$`

---

### 2. The Data Tier: `UserDAO.java`
ထၢပ်ႈၼႆႉ တေဢဝ် User မႂ်ႇ သိမ်းၶဝ်ႈ Database (ယႃႇလိုမ်း Hashing Password ၶႃႈ!)။

```java
public class UserDAO {
    public boolean registerUser(String username, String hashedPassword) {
        String sql = "INSERT INTO users (username, password, role) VALUES (?, ?, 'ADMIN')";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, username);
            pstmt.setString(2, hashedPassword);
            
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
```

---

### 3. The Service Tier: `ValidationService.java`
ၼႆႉပဵၼ် "Logic" တွၼ်ႈတႃႇၵူတ်ႇထတ်း Regex ၶႃႈ။

```java
import java.util.regex.Pattern;

public class ValidationService {
    // Regex: 8 characters, 1 Upper, 1 Lower, 1 Number
    private static final String PASS_REGEX = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,}$";

    public boolean isValidPassword(String password) {
        return Pattern.compile(PASS_REGEX).matcher(password).matches();
    }

    public boolean isValidUsername(String username) {
        return username.length() >= 4; // Username လူဝ်ႇမီး 4 တူဝ်ၶိုၼ်ႈၼိူဝ်
    }
}
```

---

### 4. Presentation Tier: FXML & CSS

#### **RegisterView.fxml**
```xml
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>

<VBox spacing="15" alignment="CENTER" stylesheets="@login.css" 
      styleClass="login-root" xmlns:fx="http://javafx.com/fxml" 
      fx:controller="controller.RegisterController">
    
    <Label text="Register New Admin" styleClass="login-title"/>
    
    <VBox spacing="10" maxWidth="300">
        <TextField fx:id="txtUsername" promptText="Enter Username"/>
        <PasswordField fx:id="txtPassword" promptText="Enter Password"/>
        <PasswordField fx:id="txtConfirmPassword" promptText="Confirm Password"/>
        
        <Button text="CREATE ACCOUNT" onAction="#handleRegister" 
                styleClass="login-button" maxWidth="Infinity"/>
        
        <Hyperlink text="Back to Login" onAction="#backToLogin" style="-fx-text-fill: white;"/>
    </VBox>
    
    <Label fx:id="lblStatus" styleClass="error-text"/>
</VBox>
```

#### **login.css (Update)**
(ထႅမ်ဝႆႉ Style တွၼ်ႈတႃႇ Validation Message)
```css
.success-text {
    -fx-text-fill: #2ecc71; /* Green */
    -fx-font-family: "NamKhone Unicode";
}

.error-text {
    -fx-text-fill: #e74c3c; /* Red */
    -fx-font-family: "NamKhone Unicode";
}
```

---

### 5. The Controller: `RegisterController.java`
```java
public class RegisterController {
    @FXML private TextField txtUsername;
    @FXML private PasswordField txtPassword;
    @FXML private PasswordField txtConfirmPassword;
    @FXML private Label lblStatus;

    private ValidationService validator = new ValidationService();
    private UserDAO userDAO = new UserDAO();

    @FXML
    public void handleRegister() {
        String user = txtUsername.getText();
        String pass = txtPassword.getText();
        String confirm = txtConfirmPassword.getText();

        if (!validator.isValidUsername(user)) {
            lblStatus.setText("Username လူဝ်ႇမီး 4 တူဝ်ၶိုၼ်ႈၼိူဝ်ၶႃႈ!");
            return;
        }

        if (!validator.isValidPassword(pass)) {
            lblStatus.setText("Password လူဝ်ႇမီး တူဝ်လိၵ်ႈလူင်၊ လဵၵ်ႉ လႄႈ မၢႆၼပ်ႉ ၸုမ်ႇၵၼ်ၶႃႈ!");
            return;
        }

        if (!pass.equals(confirm)) {
            lblStatus.setText("Password တူဝ်သွၼ်ႉ ဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ!");
            return;
        }

        // Hash password and Save
        String hashed = BCrypt.hashpw(pass, BCrypt.gensalt());
        if (userDAO.registerUser(user, hashed)) {
            lblStatus.getStyleClass().add("success-text");
            lblStatus.setText("သၢင်ႈ Account ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ!");
        } else {
            lblStatus.setText("Username ၼႆႉ မီးဝႆႉယဝ်ႉၶႃႈ!");
        }
    }
}
```

---

### 🎓 Summary for Thung Mao Kham Students

* **Regex Power**: ၵၢၼ်ၸႂ်ႉ Regex ႁဵတ်းႁႂ်ႈႁဝ်းၵူတ်ႇထတ်း Data လႆႈငၢႆႈ လႄႈ မီးပၵ်းပိူင်။
* **Confirm Password**: ၵၢၼ်ၵူတ်ႇထတ်း Password 2 ပွၵ်ႈ ပဵၼ်လွင်ႈတၢင်း Standard တွၼ်ႈတႃႇၵႅတ်ႇၶႄ ၵူၼ်းၸႂ်ႉတႅမ်ႈ Password ၽိတ်းၶႃႈ။
* **BCrypt Integration**: ယႃႇလိုမ်းဝႃႈ... ၵူႈပွၵ်ႈဢၼ် "သိမ်း" Password လူဝ်ႇ **Hash** တႃႇသေႇၶႃႈ။