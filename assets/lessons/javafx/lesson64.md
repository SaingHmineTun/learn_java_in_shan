## Lesson 64: Session Singleton (Global User State)

ၵၢၼ်ၵဵပ်း Session ၼၼ်ႉ ႁဵတ်းႁႂ်ႈ App ႁဝ်းႁူႉဝႃႈ:
1. ၽႂ်ပဵၼ်ၵူၼ်း Login ဝႆႉယူႇ? (Username)
2. မၼ်းမီးသုၼ်ႇ (Role) ပဵၼ် Admin ႁႃႉ Staff?
3. မိူဝ်ႈယိမ်ပပ်ႉ (Transaction)၊ ႁဝ်းတေဢဝ် `user_id` ၵေႃႉၼႆႉ သိမ်းၶဝ်ႈ Database ၶႃႈ။



### 1. Implementing `UserSession.java`
ႁဝ်းတေၸႂ်ႉ **Singleton Pattern** ၼင်ႇႁႂ်ႈမီး Session တူဝ်လဵဝ်ၵူၺ်း ၸႂ်ႉလႆႈတင်း App ၶႃႈ။

```java
public class UserSession {
    private static UserSession instance;

    private int userId;
    private String username;
    private String role;

    // Private Constructor: ဢမ်ႇပၼ်ပိူၼ်ႈ New တူဝ်မႂ်ႇလႆႈ
    private UserSession(int userId, String username, String role) {
        this.userId = userId;
        this.username = username;
        this.role = role;
    }

    // လၢႆးသၢင်ႈ Session မိူဝ်ႈ Login Successful
    public static void startSession(int userId, String username, String role) {
        instance = new UserSession(userId, username, role);
    }

    public static UserSession getInstance() {
        return instance;
    }

    // လၢႆးယႃႉ Session မိူဝ်ႈ Logout
    public static void cleanSession() {
        instance = null;
    }

    // Getters
    public int getUserId() { return userId; }
    public String getUsername() { return username; }
    public String getRole() { return role; }
}
```

---

### 2. How to use during Login
မိူဝ်ႈ Admin ၶဝ်ႈလႆႈယဝ်ႉ၊ ႁဝ်းတေဢဝ်ၶေႃႈမုၼ်းၶဝ် သႂ်ႇဝႆႉၼႂ်း Session ၶႃႈ။

#### **LoginController.java**
```java
@FXML
public void handleLogin() {
    User user = authService.authenticate(username, password); // ပွၵ်ႈၼႆႉ ပၼ်မၼ်းသူင်ႇ User Object မႃး
    if (user != null) {
        // တႄႇ Session
        UserSession.startSession(user.getId(), user.getUsername(), user.getRole());
        
        // လႅၵ်ႈၵႂႃႇၼႃႈ Dashboard
        StageCoordinator.getInstance().switchScene("/view/Dashboard.fxml", "Dashboard");
    }
}
```

---

### 🎓 Summary for Thung Mao Kham Students

* **State Persistence**: Singleton ၸွႆႈႁႂ်ႈ Data ႁဝ်းဢမ်ႇႁၢႆ မိူဝ်ႈလႅၵ်ႈၼႃႈ Scene ၶႃႈ။
* **Security**: ၵၢၼ်မီး `cleanSession()` ပဵၼ်လွင်ႈတၢင်းလွင်ႈယႂ်ႇ မိူဝ်ႈ Logout။ သင်ႁဝ်းဢမ်ႇယႃႉမၼ်းပႅတ်ႈ၊ ၵူၼ်းတၢင်ႇၵေႃႉ ၸၢင်ႈမႃးၸႂ်ႉတူဝ်ၵဝ်ႇသိုပ်ႇလႆႈၶႃႈ။
* **Audit Trail**: ၵၢၼ်ၵဵပ်း `userId` ဝႆႉၼႂ်း Session ႁဵတ်းႁႂ်ႈ App ႁဝ်းႁူႉဝႃႈ "Admin ၵေႃႉလႂ် ပဵၼ်ၵူၼ်းယူတ်ႉပပ်ႉပၼ် Member?" ၼႆၶႃႈ။

---