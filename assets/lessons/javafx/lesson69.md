## Lesson 69: Dashboard & Side-Navigation Architecture

ၵၢၼ်သၢင်ႈ Dashboard ဢၼ်ၶႅမ်ႉၼၼ်ႉ ႁဝ်းတေဢမ်ႇလႅၵ်ႈ **Scene** (Window) တႃႇသေ မိူဝ်ႈ User ၼဵၵ်း Menu။ ႁဝ်းတေလႅၵ်ႈ **"Center Content"** ၼႂ်း BorderPane ၼၼ်ႉၵူၺ်းၶႃႈ။



### 1. The Main Layout (`MainView.fxml`)
ႁဝ်းတေၸႅၵ်ႇ UI ဢွၵ်ႇပဵၼ်သွင်တွၼ်ႈ:
* **Left (Sidebar)**: တွၼ်ႈတႃႇဝၢင်းတုမ်ႇ Menu (Books, Users, Transactions)။
* **Center (Content Area)**: ႁွင်ႈပဝ်ႇ တွၼ်ႈတႃႇဢဝ် FXML တၢင်ႇဢၼ်မႃး "ဝၢင်း" သႂ်ႇၶႃႈ။

```xml
<BorderPane fx:id="mainPane" prefHeight="700" prefWidth="1100" xmlns:fx="http://javafx.com/fxml/1" fx:controller="com.itsaimao.controller.MainController">
    <left>
        <VBox spacing="10" style="-fx-background-color: #2c3e50; -fx-padding: 20;">
            <Label text="LIBRARY SYSTEM" style="-fx-text-fill: white; -fx-font-weight: bold;" />
            <Separator opacity="0.3" />
            <Button text="📚 Books" onAction="#showBooks" styleClass="menu-button" maxWidth="Infinity" />
            <Button text="👥 Members" onAction="#showMembers" styleClass="menu-button" maxWidth="Infinity" />
            <Button text="🔄 Transactions" onAction="#showTransactions" styleClass="menu-button" maxWidth="Infinity" />
            <Region VBox.vgrow="ALWAYS" />
            <Button text="🚪 Logout" onAction="#handleLogout" style="-fx-background-color: #e74c3c; -fx-text-fill: white;" />
        </VBox>
    </left>
    <center>
        <StackPane fx:id="contentArea" />
    </center>
</BorderPane>
```

---

### 2. The Dynamic Switching Logic (`MainController.java`)
ႁဝ်းတေတႅမ်ႈ Method ၼိုင်ႈဢၼ် တွၼ်ႈတႃႇ Load FXML မႃးသႂ်ႇၼႂ်း `contentArea` ၶႃႈ။

```java
public class MainController {
    @FXML private StackPane contentArea;

    // Method ၵၢင် တွၼ်ႈတႃႇလႅၵ်ႈၼႃႈၸေႃး
    private void setView(String fxmlPath) {
        try {
            Parent view = FXMLLoader.load(getClass().getResource(fxmlPath));
            contentArea.getChildren().setAll(view); // ဢဝ် View မႂ်ႇမႃးတႅၼ်းဢၼ်ၵဝ်ႇ
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @FXML private void showBooks() { setView("/view/BookManagement.fxml"); }
    @FXML private void showMembers() { setView("/view/MemberView.fxml"); }
    @FXML private void showTransactions() { setView("/view/TransactionView.fxml"); }
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Dashboard Navigation)

* **`StackPane.getChildren().setAll(node)`**: Method ၼႆႉ လွင်ႈယႂ်ႇၼႃႇၶႃႈ။ မၼ်းတေလလၢင်ႉ (Clear) UI ၵဝ်ႇဢွၵ်ႇသေ ဢဝ် UI မႂ်ႇမႃးဝၢင်းတႅၼ်း။ ၼႆႉႁဵတ်းႁႂ်ႈ App ႁဝ်း "ဝႆး" လႄႈ ဢမ်ႇလူဝ်ႇပိုတ်ႇ Window မႂ်ႇတႃႇသေႇၶႃႈ။
* **CSS `menu-button`**: ႁဝ်းၸၢင်ႈမႄး Hover Effect ၼႂ်း CSS ႁႂ်ႈမိူဝ်ႈ User ဢဝ် Mouse ၸီႉၼိူဝ် Menu သေ သီမၼ်းလႅၵ်ႈလၢႆႈ ႁႂ်ႈတူၺ်းမိူၼ် Professional Website ၶႃႈ။
* **Modular UI**: ၵၢၼ်ၸႅၵ်ႇ FXML ဢွၵ်ႇပဵၼ်တွၼ်ႈၽႂ်တွၼ်ႈမၼ်း (Books.fxml, Members.fxml) ႁဵတ်းႁႂ်ႈႁဝ်းၸတ်းၵၢၼ် Code လႆႈငၢႆႈ လႄႈ တႅမ်ႈ Code ဢမ်ႇသုၵ်ႉသၵ်ႉၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **BorderPane**: ပဵၼ် Layout ဢၼ်လီသုတ်းတွၼ်ႈတႃႇ Dashboard။
* **Static Sidebar**: Sidebar တေယူႇဝႆႉတီႈၵဝ်ႇတႃႇသေႇ။
* **Dynamic Center**: လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းလႆႈငၢႆႈ လူၺ်ႈၸႂ်ႉတိုဝ်း `setAll()`။