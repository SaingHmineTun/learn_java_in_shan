## Lesson 27: Working with Sliders (Volume & Seek)

### 1. FXML Layout (`Player.fxml`)
ႁဝ်းတေထႅင်ႈ `Slider` သွင်ဢၼ် တွၼ်ႈတႃႇ Volume လႄႈ Duration ၶႃႈ။

```xml
<VBox spacing="20" alignment="CENTER">
    <Label text="Progress" styleClass="neon-label"/>
    <Slider fx:id="seekSlider" maxWidth="400" styleClass="neon-slider"/>
    
    <HBox spacing="20" alignment="CENTER">
        <Label text="Vol:" styleClass="neon-label"/>
        <Slider fx:id="volumeSlider" max="100" value="50" prefWidth="150"/>
    </HBox>
</VBox>
```

---

### 2. Controller Logic (`MediaController.java`)

ၼႂ်း `initialize()` ၼၼ်ႉ ႁဝ်းတေတႅမ်ႈ Logic တွၼ်ႈတႃႇၵွင်ႉသၢၼ် (Binding) ၶေႃႈမုၼ်းၶႃႈ။

```java
@FXML private Slider volumeSlider;
@FXML private Slider seekSlider;

@Override
public void initialize() {
    // ... Loading Media Code ...

    if (player != null) {
        // 1. Volume Control (0.0 to 1.0)
        // Slider မီး 0-100 ၵွပ်ႈၼၼ်ႁဝ်းလူဝ်ႇဢဝ်မႃးၸႅၵ်ႇ 100
        volumeSlider.valueProperty().addListener((observable, oldValue, newValue) -> {
            player.setVolume(newValue.doubleValue() / 100);
        });

        // 2. Seek Control (Manual Seek)
        // မိူဝ်ႈ User လႅၵ်ႈလၢႆႈ Slider ႁႂ်ႈ MediaPlayer လႅၼ်ႈၸွမ်း
        seekSlider.valueProperty().addListener((observable, oldValue, newValue) -> {
            if (seekSlider.isValueChanging()) {
                player.seek(player.getTotalDuration().multiply(newValue.doubleValue() / 100));
            }
        });
        
        // 3. Update Slider position as music plays (Link Player to Slider)
        player.currentTimeProperty().addListener((observable, oldValue, newValue) -> {
            if (!seekSlider.isValueChanging()) {
                double current = newValue.toMillis();
                double total = player.getTotalDuration().toMillis();
                seekSlider.setValue((current / total) * 100);
            }
        });
    }
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Property Binding)



* **`valueProperty()`**: ဢၼ်ၼႆႉပဵၼ် Property ဢၼ်ၵဵပ်းဝႆႉ "မၢႆၼပ်ႉ" ဢၼ် Slider ၼၼ်ႉၸိၼႄယူႇ။ ႁဝ်းၸႂ်ႉ `addListener` တွၼ်ႈတႃႇထတ်းတူၺ်း မိူဝ်ႈမၼ်းလႅၵ်ႈလၢႆႈၶႃႈ။
* **`isValueChanging()`**: ဢၼ်ၼႆႉလုၵ်ႉတေႃႇပႃႇတႃႇတႄႉတႄႉၶႃႈ။ မၼ်းတေ `true` မိူဝ်ႈ User တိုၵ်ႉဢဝ် Mouse လႅၼ်ႈ (Drag) Slider ယူႇ။ ႁဝ်းလူဝ်ႇထတ်းတူၺ်း တွၼ်ႈတႃႇဢမ်ႇႁႂ်ႈ `currentTimeProperty` လႄႈ `seekSlider` မၼ်းတိုၵ်းၵၼ် (Conflict) ၶႃႈ။
* **`Duration` Math**: `MediaPlayer` ၸႂ်ႉ `Duration` Object။ ၵွပ်ႈၼၼ် ႁဝ်းလူဝ်ႇဢဝ် `totalDuration` မႃး ၼပ်ႉဢၢၼ်ႇၸွမ်း `%` ဢၼ်မီးၼႂ်း Slider ၶႃႈ။

---

### 🎨 Cyberpunk Slider CSS (`style.css`)
ႁႂ်ႈ Slider ႁဝ်းလႅင်းမိူၼ် Neon ၶႃႈ:

```css
.neon-slider .thumb {
    -fx-background-color: #00ffff;
    -fx-effect: dropshadow(gaussian, #00ffff, 5, 0.5, 0, 0);
}
.neon-slider .track {
    -fx-background-color: #34495e;
    -fx-background-radius: 5;
}
.neon-label {
    -fx-text-fill: #00ffff; /* သီ Cyan */
    -fx-font-family: "Segoe UI Semibold", "Arial";
    -fx-font-size: 14px;
    -fx-font-weight: bold;
    -fx-effect: dropshadow(gaussian, #00ffff, 10, 0.5, 0, 0);
}
```
