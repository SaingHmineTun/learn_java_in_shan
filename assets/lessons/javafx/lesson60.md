## 📘 Lesson 60: Passing Data Between Controllers (InitData Pattern)

ၼႂ်း JavaFX, Controller ၵူႈဢၼ်မီး "ပိုၼ်ႉတီႈ" (Scope) ႁင်းၵူၺ်းမၼ်း။ 
သင်ႁဝ်းၶႂ်ႈသူင်ႇၶေႃႈမုၼ်းလုၵ်ႉတီႈ Controller A ၵႂႃႇၸူး Controller B, ႁဝ်းဢမ်ႇၸၢင်ႈၸႂ်ႉ new ControllerB() သေသူင်ႇလႆႈယူဝ်းယူဝ်း 
(ယွၼ်ႉ JavaFX ပဵၼ်တူဝ်သၢင်ႈ Controller လုၵ်ႉတီႈ FXML)။ ႁဝ်းလူဝ်ႇၸႂ်ႉလၢႆး getController() ၶႃႈ။

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေႁဵတ်းႁႂ်ႈၼႃႈ **Login** သူင်ႇၸိုဝ်ႈ Username ၵႂႃႇၼႄၼႂ်းၼႃႈ **Dashboard** ၵမ်းလဵဝ်မိူဝ်ႈ User ၶဝ်ႈလႆႈယဝ်ႉၶႃႈ။



### 1. The FXML Files (ပိူင်ဝၢင်း UI)

**A. `LoginView.fxml`**
ၼႃႈၸေႃးၼႆႉ တေမီးလွၵ်း `TextField` တွၼ်ႈတႃႇတႅမ်ႈၸိုဝ်ႈ လႄႈ ပုမ်ႇ `Button` တွၼ်ႈတႃႇ Login ၶႃႈ။

```xml
<VBox spacing="10" alignment="CENTER" xmlns:fx="http://javafx.com/fxml/1" fx:controller="com.itsaimao.controller.LoginController">
    <TextField fx:id="txtUsername" promptText="Enter Username" />
    <Button text="Login" onAction="#handleLogin" />
</VBox>
```

**B. `DashboardView.fxml`**
ၼႃႈၸေႃးၼႆႉ တေမီး `Label` ဢၼ်ပဝ်ႇဝႆႉ တွၼ်ႈတႃႇႁပ်ႉၼႄၸိုဝ်ႈ ဢၼ်သူင်ႇမႃးလုၵ်ႉတီႈ Login ၶႃႈ။

```xml
<VBox spacing="10" alignment="CENTER" xmlns:fx="http://javafx.com/fxml/1" fx:controller="com.itsaimao.controller.DashboardController">
    <Label fx:id="lblWelcome" text="Waiting for user..." style="-fx-font-size: 18px;" />
</VBox>
```

---

### 2. The Receiver Controller (`DashboardController.java`)

ႁဝ်းလူဝ်ႇသၢင်ႈ Method **`initData()`** တွၼ်ႈတႃႇ "ႁပ်ႉ" ၶေႃႈမုၼ်းၶႃႈ။

```java
public class DashboardController {
    @FXML private Label lblWelcome;

    // Method ၼႆႉ တေထုၵ်ႇႁွင်ႉၸႂ်ႉ လုၵ်ႉတီႈ LoginController
    public void initData(String username) {
        lblWelcome.setText("မႂ်ႇသုင်ၶႃႈ၊ " + username + "!");
    }
}
```

---

### 3. The Sender Controller (`LoginController.java`)

တွၼ်ႈတႃႇတေသူင်ႇ Data လႆႈ၊ ႁဝ်းလူဝ်ႇ "ႁွင်ႉဢဝ် Controller" တူဝ်ဢၼ်တေပိုတ်ႇမႂ်ႇၼၼ်ႉမႃးၵွၼ်ႇၶႃႈ။

```java
public class LoginController {
    @FXML private TextField txtUsername;

    @FXML
    private void handleLogin(ActionEvent event) throws IOException {
        // 1. သၢင်ႈ FXMLLoader တွၼ်ႈတႃႇပိုတ်ႇၼႃႈ Dashboard
        FXMLLoader loader = new FXMLLoader(getClass().getResource("/views/DashboardView.fxml"));
        Parent root = loader.load();

        // 2. ႁွင်ႉဢဝ် DashboardController Instance ဢၼ် FXMLLoader သၢင်ႈပၼ်
        DashboardController controller = loader.getController();
        
        // 3. သူင်ႇ Data ၵႂႃႇၸူး Method ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ
        controller.initData(txtUsername.getText());

        // 4. လႅၵ်ႈ Scene ၼိူဝ် Stage
        Stage stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        stage.setScene(new Scene(root));
        stage.show();
    }
}
```



---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Data Passing)

* **`loader.getController()`**: မၼ်းတေသူင်ႇ Object Controller ဢၼ်မႅၼ်ႈၸွမ်း FXML ၼၼ်ႉမႃးပၼ်။ ႁဝ်းၸၢင်ႈသူင်ႇ String, Integer, ဢမ်ႇၼၼ် Object (ၼင်ႇ `User` model) ၵေႃႈလႆႈၶႃႈ။
* **Encapsulation**: ၵၢၼ်သူင်ႇ Data ၸွမ်း Method ၼႆႉ ပဵၼ်လၢႆးဢၼ်ႁူမ်ႇလူမ်ႈ (Secure) လိူဝ်သေ ဢၼ်ဢဝ် Variable ပဵၼ် `public` ၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **Sender**: လူဝ်ႇၸႂ်ႉ `FXMLLoader` သေ `getController()`။
* **Receiver**: လူဝ်ႇမီး Method တွၼ်ႈတႃႇႁပ်ႉ Parameter။
* **The Goal**: ႁဵတ်းႁႂ်ႈ App ႁဝ်း "တွင်း" ၶေႃႈမုၼ်းလႆႈ မိူဝ်ႈလႅၵ်ႈၼႃႈၸေႃးၶႃႈ။