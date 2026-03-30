## Lesson 66: Error Handling (Building a Custom Alert Utility)

ၼႂ်း JavaFX, `Alert` တူဝ်ပိူင်လူင် (Default) မၼ်းၼၼ်ႉ တူၺ်းယၢပ်ႇ လႄႈ ဢမ်ႇပေႃး "Professional" ၶႃႈ။ 
ႁဝ်းတေမႃးသၢင်ႈ **`AlertMaker`** ဢၼ်ပဵၼ် Class ၵၢင် တွၼ်ႈတႃႇႁွင်ႉၼႄ Error လႄႈ Success Message ႁႂ်ႈမၼ်းတူၺ်းလီ လႄႈ Support လိၵ်ႈတႆးၶႃႈ။



### 1. The Utility Class: `AlertMaker.java`
ႁဝ်းတေတႅမ်ႈဝႆႉၼင်ႇ `static method` ၼင်ႇႁႂ်ႈႁွင်ႉၸႂ်ႉလႆႈၵူႈတီႈ ၼႂ်း App ႁဝ်းၶႃႈ။

```java
public class AlertMaker {
    public static void showAlert(Alert.AlertType type, String title, String header, String content) {
        Alert alert = new Alert(type);
        alert.setTitle(title);
        alert.setHeaderText(header);
        alert.setContentText(content);
        
        // တင်ႈ CSS ႁႂ်ႈ Support လိၵ်ႈတႆး (Lesson 58)
        DialogPane dialogPane = alert.getDialogPane();
        dialogPane.getStylesheets().add(AlertMaker.class.getResource("/css/style.css").toExternalForm());
        dialogPane.getStyleClass().add("my-alert");
        
        alert.showAndWait();
    }
}
```

---

### 2. Custom Styling in `style.css`
ႁဝ်းတေမႄး Font ၼႂ်း Alert ႁႂ်ႈပဵၼ် **NamKhone Unicode** ၶႃႈ။

```css
@import "header.css";

/* 1. တင်ႈ Font ၵၢင် တွၼ်ႈတႃႇ App တင်းသဵင်ႈ */
.root {
    -fx-font-family: "Shan Regular", "Segoe UI", sans-serif;
}

/* 2. Style တွၼ်ႈတႃႇ Alert Dialog */
.dialog-pane {
    -fx-background-color: #f5f6fa;
}

.dialog-pane .label {
    -fx-text-fill: #2f3640;
    -fx-font-size: 14px;
}

.dialog-pane .button {
    -fx-background-color: #fbc531; /* Shan Gold */
    -fx-text-fill: #2f3640;
    -fx-cursor: hand;
}
```

---

### 3. How to use in Login (လၢႆးႁွင်ႉၸႂ်ႉ)
မိူဝ်ႈ Admin ၶဝ်ႈ Login ၽိတ်း၊ ႁဝ်းတေဢမ်ႇၼႄ Label လၢႆလၢႆယဝ်ႉ၊ ႁဝ်းတေၸႂ်ႉ Alert ၼင်ႇၼႆၶႃႈ။

#### **LoginController.java**
```java
@FXML
public void handleLogin() {
    if (authService.authenticate(user, pass)) {
        StageCoordinator.getInstance().switchScene("/view/Dashboard.fxml", "Dashboard");
    } else {
        // ႁွင်ႉၸႂ်ႉ AlertMaker ဢၼ်ႁဝ်းသၢင်ႈဝႆႉ
        AlertMaker.showAlert(
            Alert.AlertType.ERROR, 
            "Login Failed", 
            "ၶေႃႈမုၼ်းၽိတ်းပႅတ်ႈၶႃႈ", 
            "ၸိုဝ်ႈ ဢမ်ႇၼၼ် Password ဢၼ်ၸဝ်ႈၵဝ်ႇတႅမ်ႈၼၼ်ႉ ဢမ်ႇထုၵ်ႇမႅၼ်ႈၶႃႈ!"
        );
    }
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ)
* **DialogPane**: ပဵၼ် "ၼႃႈတႃ" (Root) ၼႂ်း Alert။ ၵၢၼ်သႂ်ႇ CSS ၼႂ်းၼႆႉ ၸွႆႈႁႂ်ႈ Font လိၵ်ႈတႆး ဢွၵ်ႇမႃးႁၢင်ႈလီၵူႈ Alert ၶႃႈ။
* **Static Utility**: ၵၢၼ်ႁဵတ်း Class ၼင်ႇၼႆ ၸွႆႈႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇ `new Alert()` ဝႆႉၵူႈတီႈ၊ မႄးတီႈလဵဝ် လႅၵ်ႈလၢႆၵႂႃႇတင်း App ၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **Professional Feedback**: App ဢၼ်လီ လူဝ်ႇလၢတ်ႈတေႃႇ User ႁႂ်ႈၸႅၼ်ႇလႅင်း။ သင်မီးပၼ်ႁႃ၊ လူဝ်ႇၼႄ Alert ႁႂ်ႈၶဝ်ႁူႉလွင်ႈတၢင်းမၼ်းၶႃႈ။
* **Localization**: ၵၢၼ်မႄး Alert ႁႂ်ႈၼႄလိၵ်ႈတႆးလႆႈ ႁဵတ်းႁႂ်ႈ App ႁဝ်း တူၺ်းမိူၼ် Software ဢၼ်ႁဵတ်းဝႆႉတွၼ်ႈတႃႇ "မိူင်းမၢဝ်း" ႁဝ်းတူဝ်ၸႂ်ၶႃႈ။

---