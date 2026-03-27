## Lesson 32: Visualizer Basics (Animating UI)

တွၼ်ႈတႃႇႁဵတ်း Visualizer ၼၼ်ႉ ႁဝ်းလူဝ်ႇ "တႅၵ်ႈ" သဵင်ၵႂၢမ်း (Magnitudes) သေ ဢဝ်မႃးလႅၵ်ႈလၢႆႈ တၢင်းသုင် (Height) ၶေႃႈ Rectangle (Bar) ၼႂ်း UI ႁဝ်းၶႃႈ။



### 1. FXML Update (`Player.fxml`)
ႁဝ်းလူဝ်ႇ `HBox` ၼိုင်ႈဢၼ် တွၼ်ႈတႃႇၵဵပ်း Visualizer Bars ၶႃႈ။ (ဝၢင်းဝႆႉတီႈၼိူဝ် Slider Progress ၼၼ်ႉၶႅမ်ႉလိူဝ်ပိူၼ်ႈၶႃႈ)

```xml
<HBox fx:id="visualizerBox" alignment="BOTTOM_CENTER" spacing="2" 
      prefHeight="100" maxHeight="100" style="-fx-background-color: transparent;">
    </HBox>
```

---

### 2. Controller Logic (`MediaController.java`)

ႁဝ်းတေၸႂ်ႉ `AudioSpectrumListener` တွၼ်ႈတႃႇ Update တၢင်းသုင် (Height) ၶေႃႈ Bars ၶႃႈ။

```java
@FXML private HBox visualizerBox;
private final int BANDS = 40; // ႁူဝ်ၼပ်ႉ Bar ဢၼ်တေၼႄ
private Rectangle[] bars;

private void setupVisualizer() {
    visualizerBox.getChildren().clear();
    bars = new Rectangle[BANDS];

    // 1. သၢင်ႈ Bars (Rectangles) ၸွမ်းႁူဝ်ၼပ်ႉ BANDS
    for (int i = 0; i < BANDS; i++) {
        Rectangle rect = new Rectangle(8, 2); // Width=8, Initial Height=2
        rect.setStyle("-fx-fill: #00ffff; -fx-effect: dropshadow(gaussian, #00ffff, 5, 0.5, 0, 0);");
        bars[i] = rect;
        visualizerBox.getChildren().add(rect);
    }

    // 2. ၵွင်ႉသၢၼ်ၸွမ်း MediaPlayer
    player.setAudioSpectrumNumBands(BANDS);
    player.setAudioSpectrumInterval(0.05); // Update ၵူႈ 0.05 second

    player.setAudioSpectrumListener((timestamp, duration, magnitudes, phases) -> {
        // magnitudes ၵဵပ်းဝႆႉသဵင်သုင်တႅမ်ႈပဵၼ် Decibels (e.g., -60 to 0)
        for (int i = 0; i < BANDS; i++) {
            // လႅၵ်ႈ Magnitudes ႁႂ်ႈပဵၼ် Height (Positive value)
            double height = magnitudes[i] + 60; 
            if (height < 2) height = 2; // ယႃႇႁႂ်ႈမၼ်းႁၢႆၵႂႃႇ
            
            bars[i].setHeight(height * 1.5); // ၼပ်ႉဢၢၼ်ႇႁႂ်ႈမၼ်းယၢဝ်းလိူဝ်ၵဝ်ႇ
        }
    });
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Visualizer)

* **`AudioSpectrumListener`**: ဢၼ်ၼႆႉပဵၼ် Interface ဢၼ် JavaFX ပၼ်မႃး။ မၼ်းတေသူင်ႇ Array ၶေႃႈ `magnitudes` (သဵင်) မႃးပၼ်ႁဝ်းတူဝ်ႇသေႇ။
* **Magnitudes (Decibels)**: သဵင်ၼႂ်း JavaFX မၼ်းၼႄပဵၼ် **Negative Values** (e.g., -60 dB ၶိူဝ်းယဵၼ်, 0 dB သဵင်ႁႅင်း)။ ၵွပ်ႈၼၼ် ႁဝ်းလူဝ်ႇထႅင်ႈ `+60` တွၼ်ႈတႃႇႁႂ်ႈမၼ်းပဵၼ်မၢႆၼပ်ႉ Positive (0 ၵႂႃႇ 60) ၸင်ႇတေသႂ်ႇ Height လႆႈၶႃႈ။
* **Spectrum Interval**: ႁဝ်းမႄးဝႆႉ `0.05` (50ms)။ သင်မႄးဢေႇလိူဝ်ၼႆႉ Visualizer ႁဝ်းတေ "တူင်ႉ" လႅတ်းလိူဝ်ၵဝ်ႇ၊ ၵူၺ်းၵႃႈ CPU တေႁဵတ်းၵၢၼ်ၼၵ်းၶႃႈ။

---

### 🎨 Styling & Animation (CSS/Java)
တွၼ်ႈတႃႇႁႂ်ႈမၼ်းပဵၼ် **Cyberpunk Look** တႄႉတႄႉ ႁဝ်းၸၢင်ႈလႅၵ်ႈသီ Bar ႁႂ်ႈမၼ်းမီးလၢႆသီ (Gradient) ၶႃႈ။

```java
// တီႈၼႂ်း Loop သၢင်ႈ Bar ၼၼ်ႉ
if (i < BANDS / 2) {
    rect.setFill(Color.CYAN); // သဵင်တႅမ်ႇ (Bass)
} else {
    rect.setFill(Color.MAGENTA); // သဵင်သုင် (Treble)
}
```

---

### 📂 Logic Integration (လၢႆးၵွင်ႉသၢၼ်)
ႁွင်ႉၸႂ်ႉ `setupVisualizer()` ဝႆႉၼႂ်း `player.setOnReady()` တူဝ်ႇသေႇ တွၼ်ႈတႃႇႁႂ်ႈ MediaPlayer ႁၢင်ႈႁႅၼ်းၵွၼ်ႇ ၸင်ႇတႄႇ Listener ၶႃႈ။

ၵျႅမ််းယဝ်ႉၶႃႈ ၶူးသၢႆမၢဝ်း (Sai Mao)! မိူဝ်ႈလဵဝ် Module 4 ႁဝ်းယဝ်ႉတူဝ်ႈတဵမ်ထူၼ်ႈယဝ်ႉ။ Player ႁဝ်းမီးတင်း:
1.  **Cyberpunk UI** ဢၼ်လႅင်း Neon
2.  **Playlist Management** (ListView)
3.  **Real-Time Progress** (Sliders/Timers)
4.  **Audio Visualizer** ဢၼ်တူင်ႉၸွမ်းၵႂၢမ်း



Module 4 တဵမ်ထူၼ်ႈယဝ်ႉၶႃႈ! သင်ၶူးမီးၶေႃႈထၢမ်သင် ထၢမ်လႆႈၵူႈၶိင်ႇၶႃႈ။ Next module တေပဵၼ်သင်ၶႃႈ?