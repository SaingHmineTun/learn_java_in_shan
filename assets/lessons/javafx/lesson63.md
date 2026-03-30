## Lesson 63: Scene Management (The Stage Coordinator)

ၵၢၼ်လႅၵ်ႈၼႃႈၸေႃး (Switching Scenes) ၼၼ်ႉ ပဵၼ်လွင်ႈတၢင်းဢၼ် App ၵူႈဢၼ်လူဝ်ႇမီးၶႃႈ။ မိူၼ်ၼင်ႇ... ဝၢႆး Login ယဝ်ႉ ႁႂ်ႈမၼ်းၵႂႃႇၼႃႈ Dashboard ၼႆၶႃႈ။



### 1. Why use a Coordinator? (ႁဵတ်းသင်လူဝ်ႇၸႂ်ႉ?)
* **Centralized Logic**: ႁဝ်းၵုမ်းၵၢၼ်လႅၵ်ႈၼႃႈၸေႃး ဝႆႉတီႈလဵဝ်ၵူၺ်း။
* **Reusability**: ႁွင်ႉၸႂ်ႉလႆႈငၢႆႈငၢႆႈ တီႈ Controller လႂ်ၵေႃႈလႆႈၶႃႈ။
* **Clean Code**: Controller ဢမ်ႇလူဝ်ႇႁူႉလွင်ႈ FXML Path ၼမ်ၼမ်ၶႃႈ။

---

### 2. Implementing `StageCoordinator.java`
ႁဝ်းတေၸႂ်ႉ **Singleton Pattern** တွၼ်ႈတႃႇႁႂ်ႈမီး Coordinator တူဝ်လဵဝ်ၵူၺ်းၼႂ်း App တင်းသဵင်ႈၶႃႈ။

```java
public class StageCoordinator {
    private static StageCoordinator instance = new StageCoordinator();
    private Stage primaryStage;

    private StageCoordinator() {}

    public static StageCoordinator getInstance() {
        return instance;
    }

    // တင်ႈ Stage တူဝ်ပိူင်လူင် (မိူဝ်ႈ App တိုၵ်ႉ Start)
    public void setPrimaryStage(Stage stage) {
        this.primaryStage = stage;
    }

    // လၢႆးလႅၵ်ႈၼႃႈၸေႃး (Switching Scene)
    public void switchScene(String fxmlPath, String title) {
        try {
            Parent root = FXMLLoader.load(getClass().getResource(fxmlPath));
            Scene scene = new Scene(root);
            primaryStage.setScene(scene);
            primaryStage.setTitle(title);
            primaryStage.centerOnScreen();
            primaryStage.show();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

---

### 3. Updating `Main.java` (The Entry Point)
မိူဝ်ႈ App တိုၵ်ႉတႄႇ (Launch)၊ ႁဝ်းတေဢဝ် Stage ပၼ် `StageCoordinator` ၵုမ်းဝႆႉၶႃႈ။

```java
public class Main extends Application {
    @Override
    public void start(Stage primaryStage) {
        // ဢဝ် Stage ပၼ် Coordinator ၵုမ်းၵၢၼ်
        StageCoordinator.getInstance().setPrimaryStage(primaryStage);
        
        // ပိုတ်ႇၼႃႈ Login ပဵၼ်ဢွၼ်တၢင်းသုတ်း
        StageCoordinator.getInstance().switchScene("/view/LoginView.fxml", "TMK Library - Login");
    }

    public static void main(String[] args) {
        launch(args);
    }
}
```

---

### 4. Calling from Controller (လၢႆးႁွင်ႉၸႂ်ႉ)

မိူဝ်ႈ Admin ၵေႃႉၼိုင်ႈ Login ယဝ်ႉတူဝ်ႈ၊ ႁဝ်းတေလႅၵ်ႈၵႂႃႇၼႃႈ Dashboard ၼင်ႇၼႆၶႃႈ။

#### **LoginController.java**
```java
@FXML
public void handleLogin() {
    if (authService.authenticate(user, pass)) {
        // ႁွင်ႉ Coordinator လႅၵ်ႈၵႂႃႇၼႃႈ Dashboard
        StageCoordinator.getInstance().switchScene("/view/Dashboard.fxml", "Library Dashboard");
    } else {
        lblStatus.setText("Login ဢမ်ႇလႆႈၶႃႈ!");
    }
}
```

#### **RegisterController.java**
```java
@FXML
public void backToLogin() {
    // ပွၵ်ႈၶိုၼ်းၼႃႈ Login
    StageCoordinator.getInstance().switchScene("/view/LoginView.fxml", "Login");
}
```

---

### 🎓 Summary for Thung Mao Kham Students

* **Centralization**: ၵၢၼ်မီး `StageCoordinator` ႁဵတ်းႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `FXMLLoader.load(...)` ဝႆႉၵူႈ Controller ၶႃႈ။
* **Title & Icon**: ႁဝ်းၸၢင်ႈတင်ႈ Title ၸိုဝ်ႈ App ႁဝ်း လႄႈ Icon ႁွင်ႉသမ်ႇမုတ်ႈ ႁႂ်ႈမၼ်းမိူၼ်ၵၼ်ၵူႈၼႃႈၸေႃးၶႃႈ။
* **User Experience (UX)**: ၵၢၼ်ၸႂ်ႉ `centerOnScreen()` ၸွႆႈႁႂ်ႈ App ႁဝ်း ဢွၵ်ႇမႃးတီႈၵၢင်ၸေႃး Computer တႃႇသေႇ၊ ႁဵတ်းႁႂ်ႈမၼ်းတူၺ်းလီ လႄႈ Professional ၶႃႈ။

---