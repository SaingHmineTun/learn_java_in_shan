## Lesson 29: Managing External Media Assets & Resource Paths

မိူဝ်ႈပရူဝ်ႇၵရႅမ်းႁဝ်းယႂ်ႇမႃး ႁဝ်းဢမ်ႇၸၢင်ႈဢဝ်ၵႂၢမ်းၵူႈပုၵ်ႈသႂ်ႇဝႆႉၼႂ်း `resources` လႆႈၵူႈၶိင်ႇ (ယွၼ်ႉၾၢႆႇမၼ်းၼၵ်း)။ 
ၵွပ်ႈၼၼ် ႁဝ်းလူဝ်ႇႁဵတ်း ႁႂ်မၼ်းၸတ်းၵၢၼ်လႆႈလူၺ်ႈ **External Paths** ၶႃႈ။

### 1. FXML View Update (`Player.fxml`)
ႁဝ်းတေထႅင်ႈတုမ်ႇ "Open File" တွၼ်ႈတႃႇလိူၵ်ႈၵႂၢမ်း တီႈၼႂ်း Computer ႁဝ်းၶႃႈ။

```xml
<VBox spacing="20" alignment="CENTER" styleClass="main-container">
    <Label fx:id="lblSongName" text="No File Selected" styleClass="neon-label-alt"/>
    
    <HBox spacing="15" alignment="CENTER">
        <Button text="📂 Open File" onAction="#handleOpenFile" styleClass="neon-button-play"/>
        <Button text="▶️ Play" onAction="#handlePlay" styleClass="neon-button-play"/>
    </HBox>
</VBox>
```

---

### 2. Controller Logic (`MediaController.java`)

ႁဝ်းတေၸႂ်ႉ `FileChooser` တွၼ်ႈတႃႇႁႂ်ႈ User လိူၵ်ႈၾၢႆႇလႆႈငၢႆႈငၢႆႈ လႄႈ ၸတ်းၵၢၼ် Path ႁႂ်ႈမၼ်းမႅၼ်ႈၸွမ်းပိူင် JavaFX ၶႃႈ။

```java
@FXML private Label lblSongName;
private MediaPlayer player;

@FXML
private void handleOpenFile() {
    // 1. သၢင်ႈ FileChooser တွၼ်ႈတႃႇလိူၵ်ႈၾၢႆႇ
    FileChooser fileChooser = new FileChooser();
    
    // 2. တႅမ်ႈ Filter ႁႂ်ႈလိူၵ်ႈလႆႈတူဝ်ႇ MP3 လၢႆလၢႆ
    fileChooser.getExtensionFilters().add(
        new FileChooser.ExtensionFilter("Audio Files", "*.mp3", "*.wav")
    );
    
    // 3. ပိုတ်ႇ Window တွၼ်ႈတႃႇလိူၵ်ႈ
    File selectedFile = fileChooser.showOpenDialog(null);
    
    if (selectedFile != null) {
        // ပိတ်း Player တူဝ်ၵဝ်ႇၵွၼ်ႇ (သင်မီး)
        if (player != null) {
            player.stop();
        }
        
        // 4. လႅၵ်ႈ File Path ႁႂ်ႈပဵၼ် URI String (External Path Handling)
        String source = selectedFile.toURI().toString();
        Media media = new Media(source);
        player = new MediaPlayer(media);
        
        // ၼႄၸိုဝ်ႈၵႂၢမ်းၼိူဝ် UI
        lblSongName.setText(selectedFile.getName());
        
        // ႁွင်ႉၸႂ်ႉ Progress Tracking လုၵ်ႉတီႈ Lesson 28
        setupProgressTracking();
        
        player.play();
    }
}
```

---

### 3. Stylesheet Update (`style.css`)

```css
/* သီလိၵ်ႈၼႄၸိုဝ်ႈၵႂၢမ်း */
.neon-label-alt {
    -fx-text-fill: #ff00ff; /* Neon Pink */
    -fx-font-size: 18px;
    -fx-font-family: "Segoe UI";
    -fx-effect: dropshadow(gaussian, #ff00ff, 10, 0.5, 0, 0);
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Paths)



* **`FileChooser`**: ဢၼ်ၼႆႉပဵၼ် Standard Component တွၼ်ႈတႃႇပိုတ်ႇ Dialog ၼႂ်း Windows/Mac/Linux။ မၼ်းတေပၼ်ၶိုၼ်း `java.io.File` Object ၶႃႈ။
* **Internal vs External Paths**:
    * **Internal**: ၸႂ်ႉ `getClass().getResource()` - တွၼ်ႈတႃႇၾၢႆႇဢၼ်မီးၼႂ်း Project (JAR)။
    * **External**: ၸႂ်ႉ `file.toURI().toString()` - တွၼ်ႈတႃႇၾၢႆႇဢၼ်မီးၼႂ်း Hard Drive (D:/Music/...)။
* **Resource Cleanup**: မိူဝ်ႈႁဝ်းပိုတ်ႇၵႂၢမ်းပုၵ်ႈမႂ်ႇ ႁဝ်းလူဝ်ႇ `stop()` Player တူဝ်ၵဝ်ႇတူဝ်ႇသေႇ တွၼ်ႈတႃႇဢမ်ႇႁႂ်ႈမၼ်း "ၵိၼ်" Memory (RAM) တင်းၼမ်ၶႃႈ။

---

### 📂 Logic Integration (လၢႆးၵွင်ႉသၢၼ်)
ၵၢၼ်ၸႂ်ႉ `toURI()` ၼႆႉမၼ်းလုၵ်ႉတေႃႇပႃႇတႃႇတႄႉတႄႉ ယွၼ်ႉမၼ်းတေၸွႆႈထႅမ်လႅၵ်ႈလၢႆႈ "Spaces" ဢမ်ႇၼၼ် "Special Characters" ၼႂ်းၸိုဝ်ႈၾၢႆႇ ႁႂ်ႈပဵၼ် Format ဢၼ် Browser လႄႈ Media Player ႁူႉၸွမ်း (e.g., လႅၵ်ႈ " " ပဵၼ် "%20") ၶႃႈ။