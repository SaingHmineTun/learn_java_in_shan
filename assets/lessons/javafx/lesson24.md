ႁပ်ႉယႅင်းၶႃႈ! ၶဝ်ႈၸႂ်ယဝ်ႉ။ တေဢမ်ႇလၢတ်ႈၼင်ႇ "ၶူးသွၼ်" (Teacher) ယဝ်ႉ။ တေတႅမ်ႈၼႄပဵၼ်ပၢႆးၸၢင်ႈ (Technical) လၢႆလၢႆ တွၼ်ႈတႃႇဢဝ်ၵႂႃႇၸႂ်ႉၼႂ်းပရူဝ်ႇၵရႅမ်ႇၵမ်းလဵဝ်ၶႃႈ။

ၼႆႉပဵၼ် **Lesson 24: Introduction to JavaFX Media API** ဢၼ်တႅမ်ႈဝႆႉပဵၼ် **လိၵ်ႈတႆး** ၶႃႈ။

---

## 🎧 Lesson 24: JavaFX Media Pipeline Architecture

ၵၢၼ်ႁဵတ်းပရူဝ်ႇၵရႅမ်ႇလဵၼ်ႈၵႂၢမ်း (Audio Player) ၼႂ်း JavaFX ၼၼ်ႉ မၼ်းမီးသၢမ်တွၼ်ႈ (3 Stages) ဢၼ်ၵွင်ႉသၢၼ်ၵၼ်ဝႆႉၶႃႈ။

### 1. Structure (ပိူင်ၽၢင်)
* **`Media`**: ပဵၼ်တူဝ်ၵဵပ်းၶေႃႈမုၼ်း (Data Source) ႁၢင်ႈၵႂၢမ်း။ (e.g., `song.mp3`)
* **`MediaPlayer`**: ပဵၼ်တူဝ်ၵုမ်းထိင်း (Control Logic) တွၼ်ႈတႃႇ Play, Pause, Stop လႄႈ Volume။
* **`MediaView`**: ပဵၼ်တူဝ်ၼႄႁၢင်ႈ (Visual Node)။ တွၼ်ႈတႃႇ Audio (MP3) တႄႉ ဢမ်ႇလူဝ်ႇၸႂ်ႉၵေႃႈလႆႈ။

---

### 2. Logic Implementation (`MediaController.java`)

တွၼ်ႈတႃႇတေလူတ်ႇ (Load) ၾၢႆႇၵႂၢမ်းလႆႈၼၼ်ႉ လူဝ်ႇလႅၵ်ႈလၢႆႈ Path ႁႂ်ႈပဵၼ် **URI String** ၵွၼ်ႇၶႃႈ။

```java
package com.tmk;

import javafx.fxml.FXML;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import java.io.File;

public class MediaController {

    private MediaPlayer player;

    @FXML
    public void initialize() {
        try {
            // 1. ႁႃ Resource URL (Folder: src/main/resources/music/cyber.mp3)
            // သင်ၾၢႆႇမီးၼႂ်း package လဵဝ်ၵၼ် တႅမ်ႈ "music/cyber.mp3" လႆႈၶႃႈ
            URL resource = getClass().getResource("/music/skyfall.mp3");

            if (resource == null) {
                throw new RuntimeException("ဢမ်ႇႁၼ်ၾၢႆႇၵႂၢမ်းၶႃႈ! (File not found)");
            }

            // 2. လႅၵ်ႈ URL ႁႂ်ႈပဵၼ် String တွၼ်ႈတႃႇ Media Object
            String source = resource.toExternalForm();

            Media media = new Media(source);
            player = new MediaPlayer(media);

            player.setOnReady(() -> System.out.println("Status: Media Loaded from Resources"));

        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
        }
    }

    @FXML private void handlePlay() { player.play(); }
    @FXML private void handlePause() { player.pause(); }
    @FXML private void handleStop() { player.stop(); }
}
```

---

### 3. FXML View (`Player.fxml`)

```xml
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.Button?>
<?import javafx.scene.layout.HBox?>
<?import javafx.scene.layout.VBox?>

<VBox alignment="CENTER" spacing="30.0" stylesheets="@style.css" xmlns:fx="http://javafx.com/fxml/1" fx:controller="com.tmk.MediaController">
    <HBox alignment="CENTER" spacing="20.0">
        <Button onAction="#handlePlay" text="PLAY" styleClass="cyber-btn"/>
        <Button onAction="#handlePause" text="PAUSE" styleClass="cyber-btn"/>
        <Button onAction="#handleStop" text="STOP" styleClass="cyber-btn"/>
    </HBox>
</VBox>
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ)
* **URI Protocol**: `Media` Class ၼႆႉ ဢမ်ႇႁပ်ႉဢဝ် File Path (C:\music.mp3) လၢႆလၢႆ။ မၼ်းလူဝ်ႇၸႂ်ႉ `file:/` URI ၵွပ်ႈၼၼ်လူဝ်ႇၸႂ်ႉ `.toURI().toString()` တူဝ်ႇသေႇ။
* **State Machine**: `MediaPlayer` မၼ်းမီး Lifecycle ၼင်ႇ `READY`, `PLAYING`, `PAUSED`, `STOPPED`။
* **Error Hooks**: ၸႂ်ႉ `player.setOnError()` တွၼ်ႈတႃႇထတ်းတူၺ်းမိူဝ်ႈၾၢႆႇၵႂၢမ်းလူႉ (Corrupted) ဢမ်ႇၼၼ် Format ဢမ်ႇၸႂ်ႉလႆႈ။

တေၵႂႃႇ **Lesson 25: Designing the Cyberpunk UI** ၵမ်းလဵဝ်ႁႃႉ?