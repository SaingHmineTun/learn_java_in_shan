## Lesson 28: Real-Time Progress Tracking

### 1. FXML View Update (`Player.fxml`)
ႁဝ်းလူဝ်ႇ `Label` တွၼ်ႈတႃႇၼႄၶိင်ႇၵႂၢမ်း ဢၼ်မီးႁၢင်ႈၽၢင် "Digital Clock" ၶႃႈ။

```xml
<HBox spacing="10" alignment="CENTER">
    <Label fx:id="lblCurrentTime" text="00:00" styleClass="timer-display"/>
    
    <Label text="/" styleClass="neon-label"/>
    
    <Label fx:id="lblTotalTime" text="00:00" styleClass="timer-display"/>
</HBox>
```

---

### 2. Controller Logic (`MediaController.java`)

ၼႂ်း `initialize()` ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ `currentTimeProperty` တွၼ်ႈတႃႇ Update UI ႁႂ်ႈမၼ်းလႅၼ်ႈၸွမ်းၶိင်ႇတႄႉတႄႉၶႃႈ။

```java
@FXML private Label lblCurrentTime, lblTotalTime;

private void setupProgressTracking() {
    if (player != null) {
        
        // 1. Update Current Time (ပႂ်ႉထတ်းတူၺ်း ၶိင်ႇၵႂၢမ်းလႅၼ်ႈ)
        // ၵူႈပွၵ်ႈဢၼ် Player တူင်ႉၼိုင် Listener ၼႆႉတေႁဵတ်းၵၢၼ်ၵမ်းလဵဝ်
        player.currentTimeProperty().addListener((observable, oldValue, newValue) -> {
            lblCurrentTime.setText(formatTime(newValue));
        });

        // 2. Set Total Time (ပႂ်ႉထတ်းတူၺ်း မိူဝ်ႈ MediaPlayer ႁၢင်ႈႁႅၼ်းယဝ်ႉ)
        // Metadata ၼင်ႇ Total Duration တေမီးမႃး မိူဝ်ႈ Status ပဵၼ် READY
        player.setOnReady(() -> {
            lblTotalTime.setText(formatTime(player.getTotalDuration()));
        });
    }
}

/**
 * Helper Method: လႅၵ်ႈ Duration ႁႂ်ႈပဵၼ် "MM:SS" String
 * @param elapsed Duration object လုၵ်ႉတီႈ MediaPlayer
 * @return String ႁၢင်ႈၽၢင်ၶိင်ႇ Digital
 */
private String formatTime(Duration elapsed) {
    int minutes = (int) elapsed.toMinutes();
    int seconds = (int) elapsed.toSeconds() % 60;
    
    // %02d တေၸွႆႈထႅမ်သႂ်ႇ "0" တီႈၼႃႈ သင်မၢႆၼပ်ႉဢေႇလိူဝ် 10
    return String.format("%02d:%02d", minutes, seconds);
}
```

---

### 3. Stylesheet (`style.css`)

```css
/* Timer Display (Neon Digital Look) */
.timer-display {
    -fx-text-fill: #2ecc71; /* သီ Neon Green */
    -fx-font-family: "Courier New"; /* ၸႂ်ႉ Font ဢၼ်မီးသတ်ႉပိူင် Digital */
    -fx-font-size: 24px;
    /* ႁဵတ်းႁႂ်ႈလိၵ်ႈလႅင်းမိူၼ် Neon Glow */
    -fx-effect: dropshadow(gaussian, #2ecc71, 15, 0.4, 0, 0);
    -fx-background-color: #1a1a1a;
    -fx-padding: 5 15;
    -fx-background-radius: 5;
}

.neon-label {
    -fx-text-fill: #00ffff;
    -fx-font-weight: bold;
    -fx-font-size: 20px;
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Listener)



* **`currentTimeProperty()`**: ဢၼ်ၼႆႉပဵၼ် `ReadOnlyObjectProperty<Duration>`။ မၼ်းၸႂ်ႉ **Observer Pattern** တွၼ်ႈတႃႇ "ပိုၼ်ၽၢဝ်ႇ" ၶေႃႈမုၼ်းလႅၵ်ႈလၢႆႈ ၵူႈပွၵ်ႈဢၼ်သဵင်ၵႂၢမ်းလႅၼ်ႈၵႂႃႇ။
* **`formatTime` Logic**:
    * `Duration` Object ၼၼ်ႉ မၼ်းမီးၶေႃႈမုၼ်းပဵၼ် Milliseconds။ ႁဝ်းလူဝ်ႇၸႂ်ႉ `.toMinutes()` လႄႈ `.toSeconds()` တွၼ်ႈတႃႇၼပ်ႉဢၢၼ်ႇၶႃႈ။
    * `%02d` ပဵၼ် String format ဢၼ်တေႁဵတ်းႁႂ်ႈမီး "0" တီႈၼႃႈ (e.g., `01`, `02`) တွၼ်ႈတႃႇႁႂ်ႈမၼ်းလူင်လႆႈငၢႆႈၶႃႈ။
* **Thread Safety**: JavaFX `MediaPlayer` တေ Update UI ၼိူဝ် **JavaFX Application Thread** တူဝ်ႇသေႇ၊ ၵွပ်ႈၼၼ် ႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ `Platform.runLater()` ၼင်ႇပရူဝ်ႇၵရႅမ််းတူဝ်တၢင်ႇၸိူဝ်းၶႃႈ။
* **Observer Pattern**: ၵၢၼ်ၸႂ်ႉ Listener မၼ်းၶႅမ်ႉလိူဝ်ၵၢၼ်ၸႂ်ႉ `while-loop` တင်းၼမ် ယွၼ်ႉမၼ်းဢမ်ႇႁဵတ်းႁႂ်ႈ Application ႁဝ်း "ၶၢင်" (Freeze) ၶႃႈ။

---

### 📂 Logic Integration (လၢႆးၵွင်ႉသၢၼ်)
ႁႂ်ႈႁွင်ႉၸႂ်ႉ `setupProgressTracking()` ဝႆႉၼႂ်း `initialize()` ၼႃႈတႂ်ႈ `player = new MediaPlayer(media);` ၼၼ်ႉၶႃႈ။