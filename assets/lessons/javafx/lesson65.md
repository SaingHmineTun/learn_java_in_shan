## Lesson 65: Dashboard UI Architecture (The Sidebar Layout)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ "ၼႃႈတႃ" Dashboard ႁဝ်းၶႃႈ။ ႁဝ်းတေၸႂ်ႉ **BorderPane** တွၼ်ႈတႃႇၸႅၵ်ႇၼႃႈၸေႃးပဵၼ် 2 တွၼ်ႈ:
1. **Sidebar (Left)**: တီႈမီး Button တွၼ်ႈတႃႇလိူၵ်ႈ (Books, Members, Transactions)။
2. **Main Content (Center)**: တီႈဢၼ်တေၼႄ TableView လႄႈ ၶေႃႈမုၼ်းလႅၵ်ႈလၢႆးၵႂႃႇမႃးၶႃႈ။



### 1. FXML: `DashboardView.fxml`
ႁဝ်းတေၸႂ်ႉ `VBox` ဝႆႉၽၢႆႇသၢႆႉ (Left) သေ ၸႂ်ႉ `StackPane` ဝႆႉတီႈၵၢင် (Center) တွၼ်ႈတႃႇ "သႂ်ႇ (Inject)" ၼႃႈ View တၢင်ႇၸိူဝ်းၶႃႈ။

```xml
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<?import javafx.scene.image.*?>

<BorderPane prefHeight="600.0" prefWidth="900.0" stylesheets="@dashboard.css" 
            xmlns:fx="http://javafx.com/fxml" fx:controller="controller.DashboardController">
    
    <left>
        <VBox spacing="15" styleClass="sidebar">
            <Label text="TMK LIBRARY" styleClass="sidebar-title"/>
            <Separator/>
            
            <Button text="ပပ်ႉလိၵ်ႈ (Books)" onAction="#showBooks" styleClass="nav-button" maxWidth="Infinity"/>
            <Button text="ၵူၼ်းယူတ်ႉ (Members)" onAction="#showMembers" styleClass="nav-button" maxWidth="Infinity"/>
            <Button text="ၵၢၼ်ယူတ်ႉ/သူင်ႇ" onAction="#showTransactions" styleClass="nav-button" maxWidth="Infinity"/>
            
            <Region VBox.vgrow="ALWAYS" /> <Label fx:id="lblWelcome" styleClass="user-label"/>
            <Button text="LOGOUT" onAction="#handleLogout" styleClass="logout-button" maxWidth="Infinity"/>
        </VBox>
    </left>

    <center>
        <AnchorPane fx:id="contentArea" styleClass="content-pane">
            <Label text="ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈၸူး ႁွင်ႉသမ်ႇမုတ်ႈ မိူင်းမၢဝ်းၶႃႈ" 
                   AnchorPane.topAnchor="250" AnchorPane.leftAnchor="250" styleClass="welcome-text"/>
        </AnchorPane>
    </center>
    
</BorderPane>
```

---

### 2. CSS: `dashboard.css` (The Muse Style)
ႁဝ်းတေၸႂ်ႉသီ **Dark Slate** လႄႈ **Shan Gold** ႁႂ်ႈမၼ်းတူၺ်းလီ လႄႈ Professional ၶႃႈ။

```css
.root {
    -fx-font-family: "NamKhone Unicode";
}

.sidebar {
    -fx-background-color: #2c3e50;
    -fx-padding: 20;
    -fx-pref-width: 220;
}

.sidebar-title {
    -fx-text-fill: #fbc531; /* Shan Gold */
    -fx-font-size: 20px;
    -fx-font-weight: bold;
}

.nav-button {
    -fx-background-color: transparent;
    -fx-text-fill: #ecf0f1;
    -fx-alignment: CENTER_LEFT;
    -fx-font-size: 14px;
    -fx-cursor: hand;
}

.nav-button:hover {
    -fx-background-color: #34495e;
    -fx-text-fill: #fbc531;
}

.content-pane {
    -fx-background-color: #ecf0f1;
}

.user-label {
    -fx-text-fill: #bdc3c7;
    -fx-font-size: 13px;
}

.logout-button {
    -fx-background-color: #e74c3c;
    -fx-text-fill: white;
}
```

---

### 3. Controller: `DashboardController.java`
ၼႂ်း Controller ၼႆႉ ႁဝ်းတေတႅမ်ႈ Logic တွၼ်ႈတႃႇ "လႅၵ်ႈ View" ၼႂ်း `contentArea` ၶႃႈ။

```java
public class DashboardController implements Initializable {
    @FXML private AnchorPane contentArea;
    @FXML private Label lblWelcome;

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        if (UserSession.getInstance() != null) {
            lblWelcome.setText("User: " + UserSession.getInstance().getUsername());
        }
    }

    @FXML
    public void showTransactions() {
        loadView("/view/TransactionView.fxml");
    }

    @FXML
    public void showBooks() {
        loadView("/view/BookView.fxml");
    }

    @FXML
    public void showMembers() {
        loadView("/view/MemberView.fxml");
    }

    // လၢႆး Loading FXML ၶဝ်ႈမႃးၼႂ်း Center Pane
    private void loadView(String fxmlPath) {
        try {
            Parent node = FXMLLoader.load(getClass().getResource(fxmlPath));
            contentArea.getChildren().setAll(node);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @FXML
    public void handleLogout() {
        UserSession.cleanSession();
        StageCoordinator.getInstance().switchScene("/view/LoginView.fxml", "Login");
    }
}
```

---

### 🎓 Summary for Thung Mao Kham Students

* **BorderPane Power**: ၵၢၼ်ၸႅၵ်ႇ Sidebar ဝႆႉၽၢႆႇသၢႆႉ ႁဵတ်းႁႂ်ႈ App ႁဝ်း တူၺ်းငၢႆႈ မိူၼ်ၼင်ႇ Software ဢၼ်ပိူၼ်ႈၶၢႆတူဝ်ၸႂ်ၶႃႈ။
* **Dynamic Content Loading**: ၵၢၼ်ၸႂ်ႉ `contentArea.getChildren().setAll(node)` ၸွႆႈႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇပိုတ်ႇ Window မႂ်ႇၵူႈပွၵ်ႈ။ မၼ်းတေလႅၵ်ႈ View ၼႂ်းၼႃႈၸေႃးလဵဝ်ၵူၺ်းၶႃႈ။
* **User Identity**: ၵၢၼ်ၼႄၸိုဝ်ႈ User ဝႆႉတီႈ Sidebar ၸွႆႈႁႂ်ႈ Admin ႁူႉတူဝ်ဝႃႈ "ၵဝ်တိုၵ်ႉ Login ဝႆႉယူႇ" ၼႆၶႃႈ။

---

ၶႅမ်ႉယဝ်ႉႁႃႉၶႃႈ? သိုပ်ႇၵႂႃႇ **Lesson 66: SQL Injection Prevention** တွၼ်ႈတႃႇသွၼ်လၢႆး "ၵႅတ်ႇၶႄ Hacker" ၼၼ်ႉႁႃႉၶႃႈ?