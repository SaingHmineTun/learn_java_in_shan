## 📘 Lesson 39: The Ping Logic (Testing JDBC Connection)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေတႅမ်ႈ Logic တွၼ်ႈတႃႇ "ၼဵၵ်းတုမ်ႇ" သေ ႁႂ်ႈမၼ်းၵႂႃႇထၢမ် Database ဝႃႈ "တိုၵ်ႉပဵၼ် Online ယူႇႁႃႉ?" ၼႆၶႃႈ။



### 1. FXML View Update (`PingTool.fxml`)
ႁဝ်းတေမႄးဝၢင်း Layout ႁႂ်ႈမၼ်းသႅၼ်ႈသႂ် လႄႈ ၸႂ်ႉ `fx:id` ဢၼ်ၵဵဝ်ႇၸွမ်း Database တႄႉတႄႉၶႃႈ။

```xml
<VBox alignment="CENTER" spacing="25" styleClass="db-container" stylesheets="@style.css">
    
    <Label text="DB SENTINEL PING" styleClass="db-title"/>

    <HBox spacing="15" alignment="CENTER">
        <Circle fx:id="connectionStatus" radius="12" fill="#ff4757" />
        <Label fx:id="lblStatus" text="Disconnected" styleClass="db-label" />
    </HBox>

    <Button text="CHECK CONNECTION" onAction="#handlePing" styleClass="db-button" prefWidth="200"/>
    
</VBox>
```

---

### 2. Controller Logic (`PingController.java`)

ႁဝ်းတေၸႂ်ႉ `DatabaseConnection` Singleton ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း Lesson 35 ၼၼ်ႉ တွၼ်ႈတႃႇပိုတ်ႇ Connection ၶႃႈ။

```java
package com.itsaimao.controller;

import com.itsaimao.db.DatabaseConnection;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.paint.Color;
import javafx.scene.shape.Circle;
import java.sql.Connection;
import java.sql.SQLException;

public class PingController {

    @FXML private Circle connectionStatus;
    @FXML private Label lblStatus;

    @FXML
    private void handlePing() {
        try {
            // 1. တႄႇထတ်းတူၺ်း Connection လုၵ်ႉတီႈ Singleton
            Connection conn = DatabaseConnection.getInstance().getConnection();
            
            // 2. သင်ၵွင်ႉလႆႈ (ဢမ်ႇမီး Exception) လႄႈ Connection ယင်းပိုတ်ႇယူႇ
            if (conn != null && !conn.isClosed()) {
                updateUI(true);
            } else {
                updateUI(false);
            }
        } catch (SQLException e) {
            // 3. သင် Password ၽိတ်း, Server ပိတ်း ဢမ်ႇၼၼ် Driver ဢမ်ႇမီး
            updateUI(false);
            System.err.println("❌ Ping Failed: " + e.getMessage());
        }
    }

    private void updateUI(boolean isOnline) {
        if (isOnline) {
            connectionStatus.setFill(Color.web("#2ecc71")); // Green
            lblStatus.setText("Database Online");
            lblStatus.setStyle("-fx-text-fill: #2ecc71;");
        } else {
            connectionStatus.setFill(Color.web("#ff4757")); // Red
            lblStatus.setText("Database Offline");
            lblStatus.setStyle("-fx-text-fill: #ff4757;");
        }
    }
}
```

---

### 3. Stylesheet Clean-up (`style.css`)
လႅၵ်ႈလၢႆႈသီ လႄႈ Style ႁႂ်ႈပဵၼ် Tool တွၼ်ႈတႃႇ Admin/Developer ၶႃႈ။

```css
.db-container {
    -fx-background-color: #1a1a2e; /* သီသွမ်ႇလပ်း (Dark Navy) */
    -fx-padding: 50;
}

.db-title {
    -fx-text-fill: #e94560;
    -fx-font-size: 26px;
    -fx-font-weight: bold;
}

.db-label {
    -fx-text-fill: white;
    -fx-font-size: 18px;
    -fx-font-family: "Arial Unicode MS";
}

.db-button {
    -fx-background-color: #16213e;
    -fx-text-fill: white;
    -fx-font-weight: bold;
    -fx-border-color: #0f3460;
    -fx-border-radius: 5;
    -fx-padding: 12 25;
}

.db-button:hover {
    -fx-background-color: #0f3460;
    -fx-cursor: hand;
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ JDBC Ping)

* **`getInstance().getConnection()`**: ဢၼ်ၼႆႉပဵၼ်ၵၢၼ် "တုၵ်းယွၼ်း" (Trigger) ႁႂ်ႈ Driver ႁဵတ်းၵၢၼ်။ သင် Password ၽိတ်း ဢမ်ႇၼၼ် Server ပိၵ်ႉဝႆႉယူႇ မၼ်းတေ "Throw SQLException" ၵမ်းလဵဝ်ၶႃႈ။
* **`isClosed()`**: ဢၼ်ၼႆႉၸွႆႈထတ်းတူၺ်းဝႃႈ Connection ဢၼ်မီးဝႆႉယူႇၼၼ်ႉ ယင်းတိုၵ်ႉၸႂ်ႉလႆႈယူႇႁႃႉ (Valid) ၼႆၶႃႈ။
* **Ping vs Query**: ၼႂ်း Lesson ၼႆႉ ႁဝ်းၵွင်ႉ (Connect) လၢႆလၢႆၵွၼ်ႇ။ သင်ၶႂ်ႈ Ping ႁႅင်းလိူဝ်ၼႆႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ `SELECT 1` တွၼ်ႈတႃႇထတ်းတူၺ်းဝႃႈ Database Engine တိုၵ်ႉတွပ်ႇလိၵ်ႈယူႇႁႃႉ ၼႆၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **JDBC Loop**: ၼဵၵ်တုမ်ႇ ➡️ Java ထၢမ် MySQL ➡️ UI ၼႄငဝ်းလၢႆးလူၺ်ႈ (ၶႅမ်ႉ/ဢမ်ႇၶႅမ်ႉ) ၸႂ်ႉတိုဝ်းသီ။
* **Robustness**: ၸႂ်ႉ Try-Catch တွၼ်ႈတႃႇၵႅတ်ႇၶႄ App ဢမ်ႇႁႂ်ႈလူႉ (Crash) မိူဝ်ႈၵွင်ႉ DB ဢမ်ႇလႆႈၶႃႈ။