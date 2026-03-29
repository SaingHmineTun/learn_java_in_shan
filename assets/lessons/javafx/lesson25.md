## Lesson 25: Designing the Cyberpunk UI (Neon CSS)

### 1. FXML View (`Player.fxml`)
ႁဝ်းတေၸႂ်ႉ `StackPane` လႄႈ `VBox` တွၼ်ႈတႃႇဝၢင်း Layout ႁႂ်ႈမၼ်းတူၺ်းငၢႆႈၶႃႈ။

```xml
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<?import javafx.scene.text.Text?>

<VBox alignment="CENTER" spacing="40.0" styleClass="main-container" stylesheets="@style.css" 
      xmlns:fx="http://javafx.com/fxml/1" fx:controller="com.tmk.MediaController">
    
    <Text text="CYBERPUNK MP3" styleClass="neon-title"/>
    
    <HBox alignment="CENTER" spacing="25.0">
        <Button onAction="#handlePlay" text="PLAY" styleClass="neon-button-play"/>
        <Button onAction="#handlePause" text="PAUSE" styleClass="neon-button-pause"/>
        <Button onAction="#handleStop" text="STOP" styleClass="neon-button-stop"/>
    </HBox>

</VBox>
```

---

### 2. Neon CSS Styles (`style.css`)
ဢၼ်ၼႆႉပဵၼ် "ၼမ်ႉၸႂ်" (Heart) ၶေႃႈမုၼ်း တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ UI ႁဝ်းလႅင်းၶႃႈ။

```css
/* Background application */
.main-container {
    -fx-background-color: #0d0d0d; /* သီလမ်လပ်ႉ (Deep Black) */
    -fx-padding: 50;
}

/* Neon Title */
.neon-title {
    -fx-fill: #00ffff; /* သီ Cyan */
    -fx-font-size: 40px;
    -fx-font-weight: bold;
    -fx-effect: dropshadow(gaussian, #00ffff, 15, 0.5, 0, 0);
}

/* Base Neon Button Style */
.neon-button-play, .neon-button-pause, .neon-button-stop {
    -fx-background-color: transparent;
    -fx-border-width: 2px;
    -fx-font-weight: bold;
    -fx-cursor: hand;
    -fx-padding: 10 30;
    -fx-text-fill: white;
}

/* Play Button (Cyan Glow) */
.neon-button-play {
    -fx-border-color: #00ffff;
    -fx-effect: dropshadow(gaussian, #00ffff, 10, 0, 0, 0);
}
.neon-button-play:hover {
    -fx-background-color: #00ffff;
    -fx-text-fill: black;
}

/* Pause Button (Magenta/Pink Glow) */
.neon-button-pause {
    -fx-border-color: #ff00ff;
    -fx-effect: dropshadow(gaussian, #ff00ff, 10, 0, 0, 0);
}
.neon-button-pause:hover {
    -fx-background-color: #ff00ff;
    -fx-text-fill: black;
}

/* Stop Button (Amber/Yellow Glow) */
.neon-button-stop {
    -fx-border-color: #f1c40f;
    -fx-effect: dropshadow(gaussian, #f1c40f, 10, 0, 0, 0);
}
.neon-button-stop:hover {
    -fx-background-color: #f1c40f;
    -fx-text-fill: black;
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ CSS)

* **`dropshadow(type, color, radius, spread, x, y)`**:
    * ဢၼ်ၼႆႉပဵၼ်တူဝ်ႁဵတ်းႁႂ်ႈ "လႅင်း" (Glow)။
    * `radius` ယိုင်ႈယႂ်ႇ ယိုင်ႈလႅင်းၵႂၢင်ႈၶႃႈ။
* **Transparency**: ၸႂ်ႉ `-fx-background-color: transparent` တူဝ်ႇသေႇ တွၼ်ႈတႃႇႁႂ်ႈမၼ်းၼႄ Border လႄႈ ၾႆးလႅင်းလႆႈလီၶႃႈ။
* **Hover State**: မိူဝ်ႈဢဝ် Mouse ဝၢင်းၼိူဝ်ပုမ်ႇၼၼ်ႉ ႁႂ်ႈသီမၼ်းလႅၵ်ႈလၢႆႈ (Invert) တွၼ်ႈတႃႇႁႂ်ႈ User ႁူႉဝႃႈ ၼဵၵ်းလႆႈယူႇၶႃႈ။

---