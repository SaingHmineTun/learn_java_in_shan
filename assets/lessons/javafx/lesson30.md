## Lesson 30: Creating a Dynamic Playlist (ListView Integration)

ၼႂ်း JavaFX ၼၼ်ႉ `ListView` ပဵၼ် UI Component ဢၼ်ၶႅမ်ႉလိူဝ်ပိူၼ်ႈ တွၼ်ႈတႃႇၼႄသဵၼ်ႈမၢႆ (List) ၶႃႈ။ 
ႁဝ်းတေၸႂ်ႉ `ObservableList` တွၼ်ႈတႃႇၵွင်ႉသၢၼ် (Binding) ၶေႃႈမုၼ်းၶႃႈ။

### 1. FXML View Update (`Player.fxml`)
ႁဝ်းလူဝ်ႇထႅင်ႈ `ListView` တွၼ်ႈတႃႇၼႄၸိုဝ်ႈၵႂၢမ်းၶႃႈ။

```xml
<VBox spacing="15" alignment="CENTER" styleClass="main-container">
    <Label text="MY PLAYLIST" styleClass="neon-label"/>
    
    <ListView fx:id="playlistView" prefHeight="200" maxWidth="400" styleClass="neon-list-view"/>
    
    <HBox spacing="10" alignment="CENTER">
        <Button text="➕ Add Songs" onAction="#handleAddSongs" styleClass="neon-button-play"/>
    </HBox>
</VBox>
```

---

### 2. Controller Logic (`MediaController.java`)

ႁဝ်းတေၸႂ်ႉ `ObservableList<File>` တွၼ်ႈတႃႇၵဵပ်းၾၢႆႇၵႂၢမ်း လႄႈ ၸႂ်ႉ `SelectionModel` တွၼ်ႈတႃႇထတ်းတူၺ်း မိူဝ်ႈ User ၼဵၵ်းလိူၵ်ႈၵႂၢမ်းၶႃႈ။

```java
@FXML private ListView<String> playlistView; // ၼႄၸိုဝ်ႈၵႂၢမ်း
private ObservableList<File> songList = FXCollections.observableArrayList();
private MediaPlayer player;

@FXML
public void initialize() {
    // ပႂ်ႉထတ်းတူၺ်း မိူဝ်ႈ User ၼဵၵ်းလိူၵ်ႈၵႂၢမ်းၼႂ်း List
    playlistView.getSelectionModel().selectedItemProperty().addListener((obs, oldVal, newVal) -> {
        int index = playlistView.getSelectionModel().getSelectedIndex();
        if (index >= 0) {
            playSelectedSong(songList.get(index));
        }
    });
}

@FXML
private void handleAddSongs() {
    FileChooser fileChooser = new FileChooser();
    fileChooser.getExtensionFilters().add(new FileChooser.ExtensionFilter("Audio Files", "*.mp3"));
    
    // လိူၵ်ႈၾၢႆႇလႆႈတင်းၼမ် (Multi-Select)
    List<File> selectedFiles = fileChooser.showOpenMultipleDialog(null);
    
    if (selectedFiles != null) {
        for (File file : selectedFiles) {
            songList.add(file); // ၵဵပ်း File ဝႆႉ
            playlistView.getItems().add(file.getName()); // ၼႄၸိုဝ်ႈၼိူဝ် UI
        }
    }
}

private void playSelectedSong(File file) {
    if (player != null) player.stop();
    
    Media media = new Media(file.toURI().toString());
    player = new MediaPlayer(media);
    
    setupProgressTracking(); // လုၵ်ႉတီႈ Lesson 28
    player.play();
}
```

---

### 3. Stylesheet Update (`style.css`)

```css
/* Neon ListView Style */
.neon-list-view {
    -fx-background-color: #1a1a1a;
    -fx-border-color: #ff00ff; /* Neon Pink */
    -fx-control-inner-background: #1a1a1a;
    -fx-text-fill: white;
}

.neon-list-view .list-cell {
    -fx-text-fill: #00ffff;
    -fx-font-family: "Segoe UI";
    -fx-padding: 10;
}

.neon-list-view .list-cell:selected {
    -fx-background-color: #ff00ff;
    -fx-text-fill: black;
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Playlist)



* **`ObservableList`**: ဢၼ်ၼႆႉပဵၼ် List ဢၼ် "လႅတ်း" (Smart) ၶႃႈ။ မိူဝ်ႈႁဝ်းထႅင်ႈ (Add) ၶေႃႈမုၼ်းၼႂ်းမၼ်း UI တေလႅၵ်ႈလၢႆႈၸွမ်းၵမ်းလဵဝ် ႁင်းၵူၺ်းမၼ်း (Auto-update)။
* **`showOpenMultipleDialog`**: လုၵ်ႉတေႃႇပႃႇတႃႇတႄႉတႄႉ ယွၼ်ႉမၼ်းႁဵတ်းႁႂ်ႈ User လိူၵ်ႈၵႂၢမ်းလႆႈ 10-20 ပုၵ်ႈ ၼႂ်းၶိင်ႇလဵဝ်ၵၼ်ၶႃႈ။
* **`SelectionModel`**: ဢၼ်ၼႆႉၸွႆႈထႅမ်ႁူႉဝႃႈ User ၼဵၵ်း (Click) တီႈလႂ်။ ႁဝ်းၸႂ်ႉ `index` တွၼ်ႈတႃႇၵႂႃႇထွၼ်ဢဝ် `File` တီႈ `songList` မႃးလဵၼ်ႈၶႃႈ။

---

### 📂 Logic Integration (လၢႆးၵွင်ႉသၢၼ်)
ၵၢၼ်ၸတ်းၵၢၼ် Playlist ပိူင်ၼႆႉ မၼ်းမီးလွင်ႈလီယွၼ်ႉႁဝ်းယႅၵ်း **Data (File)** လႄႈ **UI (String/Name)** ဝႆႉၵၼ်ၶႃႈ။ ၼႂ်း `ListView` ႁဝ်းၼႄၸိုဝ်ႈလၢႆလၢႆ (Name)၊ ၵူၺ်းၵႃႈၼႂ်း `ObservableList` ႁဝ်းၵဵပ်းဝႆႉ File Path တဵမ်ထူၼ်ႈ တွၼ်ႈတႃႇလဵၼ်ႈၵႂၢမ်းၶႃႈ။
