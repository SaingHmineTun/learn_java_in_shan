## Lesson 59: System Architecture (Designing 3-Tier Layer)

ၼႂ်းၵၢၼ်ႁဵတ်း App ဢၼ်လူင် (Professional App) မိူၼ်ၼင်ႇ **Library Management System** ၼၼ်ႉ၊ ႁဝ်းဢမ်ႇလီတႅမ်ႈ Code တင်းသဵင်ႈ ဝႆႉၼႂ်း File လဵဝ်ၵၼ်ၶႃႈ။ ႁဝ်းတေၸႅၵ်ႇဢွၵ်ႇပဵၼ် **3-Tier (3 ထၢပ်ႈ)** ၼင်ႇႁႂ်ႈမၼ်းၸတ်းၵၢၼ်ငၢႆႈ၊ မႄးငၢႆႈ၊ လႄႈ ဢမ်ႇသုၵ်ႉယုင်ႈၶႃႈ။



### 1. Presentation Tier (ထၢပ်ႈၼႄႁၢင်ႈ - UI)
ပဵၼ်တွၼ်ႈတႃႇ "ၵူၼ်းၸႂ်ႉ (User)" တေႁၼ် လႄႈ တေလႆႈတုၵ်ႉၶဝ်ႈ (Input) ၶႃႈ။
* **တွၼ်ႈတႃႇ:** ၼႄ TableView, Button, TextField ၸိူဝ်းၼႆႉ။
* **Files:** `LoginView.fxml`, `style.css`, `LoginController.java`။
* **ပၵ်းပိူင်:** ထၢပ်ႈၼႆႉ "ဢမ်ႇလၢတ်ႈတေႃႇ" Database ၵမ်းသိုဝ်ႈၶႃႈ။ မၼ်းတေသူင်ႇ Data ပၼ်ထၢပ်ႈ Service ၵူၺ်း။

### 2. Service Tier (ထၢပ်ႈပၢႆးဝူၼ်ႉ - Business Logic)
ပဵၼ် "ၵူၼ်းၵၢင်" ဢၼ်တေဝူၼ်ႉ လႄႈ တႅပ်းตัดသဵၼ်ႈၸႂ် ပၵ်းပိူင် App ႁဝ်းၶႃႈ။
* **တွၼ်ႈတႃႇ:** ၵူတ်ႇထတ်း (Validate) ဝႃႈ Password ထုၵ်ႇမႅၼ်ႈႁႃႉ? လုၵ်ႈႁဵၼ်းၵေႃႉၼႆႉ ၵိုတ်းပပ်ႉလႆႈလၢႆပပ်ႉ? ပပ်ႉၼႆႉ ထုၵ်ႇပၼ်ၵႃႈတၢတ်ႇ (Fine) ၵႃႈႁိုင်?
* **Files:** `AuthService.java`, `LibraryService.java`။

### 3. Data Tier (ထၢပ်ႈၵဵပ်း Data - DAO/Repository)
ပဵၼ်ထၢပ်ႈ ဢၼ်တေလၢတ်ႈတေႃႇ Database (MySQL) ၵမ်းသိုဝ်ႈၶႃႈ။
* **တွၼ်ႈတႃႇ:** တႅမ်ႈ SQL (SELECT, INSERT, UPDATE, JOIN) တွၼ်ႈတႃႇဢဝ် Data ဢွၵ်ႇမႃး လႄႈ သိမ်းၶဝ်ႈၵႂႃႇၶႃႈ။
* **Files:** `UserDAO.java`, `BookDAO.java`, `MemberDAO.java`။

---

### 🛠️ Technical Structure (တူဝ်ယၢင်ႇၵၢၼ်ၸႅၵ်ႇ Code)

သင်ႁဝ်းတေႁဵတ်းလွင်ႈ **Login**၊ Code ႁဝ်းတေလႆႈၸႅၵ်ႇဝႆႉၼင်ႇၼႆၶႃႈ။

**1. Data Tier (DAO) - ၵဵပ်း Data ၼႂ်း DB**
```java
public class UserDAO {
    public User getUser(String username) {
        // တႅမ်ႈ SQL: SELECT * FROM users WHERE username = ?
        // သူင်ႇ User Object ဢွၵ်ႇၵႂႃႇ
    }
}
```

**2. Service Tier - ၵူတ်ႇထတ်းပၵ်းပိူင်**
```java
public class AuthService {
    UserDAO userDAO = new UserDAO();

    public boolean checkLogin(String user, String pass) {
        User u = userDAO.getUser(user);
        if (u != null && u.getPassword().equals(pass)) {
             return true; // Password ထုၵ်ႇမႅၼ်ႈ
        }
        return false;
    }
}
```

**3. Presentation Tier (Controller) - ၼႄ UI**
```java
public class LoginController {
    AuthService auth = new AuthService();

    @FXML
    public void onLoginClick() {
        if (auth.checkLogin(txtUser.getText(), txtPass.getText())) {
             // ၶဝ်ႈၵႂႃႇၼႂ်း Dashboard (Lesson 63)
        } else {
             // ၼႄ Alert ဝႃႈ "Password ၽိတ်းၶႃႈ" (Lesson 67)
        }
    }
}
```

---

### 🎓 Summary for Thung Mao Kham Students

* **Separation of Concerns**: ၵၢၼ်ၸႅၵ်ႇ Code ပဵၼ်ၸုမ်းၸုမ်း ႁဵတ်းႁႂ်ႈ App ႁဝ်း မီးမၢၼ်ႇထၢၼ် (Standard) မိူၼ်ၼင်ႇ Programmer ၵတ်ႉၶဝ်တႅမ်ႈၶႃႈ။
* **Maintenance**: သင်ဝၼ်းၼိုင်ႈ ႁဝ်းလႅၵ်ႈ Database (ၼင်ႇ MySQL ၵႂႃႇ SQLite)၊ ႁဝ်းလူဝ်ႇလႅၵ်ႈ Code ၼႂ်း **Data Tier** ၵူၺ်း၊ UI လႄႈ Logic ဢမ်ႇလူဝ်ႇမႄးသင်ၶႃႈ။
* **Mao App Gallery**: သင်လုၵ်ႈႁဵၼ်းၶႂ်ႈဢဝ် App ၶဝ် ၶိုၼ်ႈၼိူဝ် Gallery ႁဝ်း၊ ၵၢၼ်ၸႅၵ်ႇ Architecture ၼင်ႇၼႆ ပဵၼ်လွင်ႈတၢင်း ဢၼ်တေလႆႈမၢၵ်ႉ (Score) ၼမ်ၶႃႈ။

---