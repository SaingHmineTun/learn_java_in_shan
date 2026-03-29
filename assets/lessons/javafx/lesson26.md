## Lesson 26: Implementing Play, Pause, and Stop Logic

### 1. The Controller Logic (`MediaController.java`)
ဢၼ်ၼႆႉပဵၼ် Code ဢၼ်တေၵုမ်းထိင်း သၢႆၸႂ် (States) ၵႂၢမ်းၶႃႈ။

```java
package com.tmk;

import javafx.fxml.FXML;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import javafx.util.Duration;
import java.net.URL;

public class MediaController {

    private MediaPlayer player;

    @FXML
    public void initialize() {
        try {
            URL resource = getClass().getResource("/music/cyber.mp3");
            if (resource != null) {
                Media media = new Media(resource.toExternalForm());
                player = new MediaPlayer(media);
                
                // တွၼ်ႈတႃႇႁႂ်ႈၵႂၢမ်းလဵၼ်ႈၶိုၼ်း ဝၢႆးမၼ်းယဝ်ႉၵႂႃႇ (Auto-restart when finished)
                player.setOnEndOfMedia(() -> player.seek(Duration.ZERO));
            }
        } catch (Exception e) {
            System.err.println("Error loading media: " + e.getMessage());
        }
    }

    @FXML 
    private void handlePlay() { 
        if (player != null) {
            player.play(); // တႄႇလဵၼ်ႈ (Play from current position)
        }
    }

    @FXML 
    private void handlePause() { 
        if (player != null) {
            player.pause(); // ၵိုတ်းဝႆႉ (Freeze at current time)
        }
    }

    @FXML 
    private void handleStop() { 
        if (player != null) {
            player.stop(); // ပိၵ်ႉပႅတ်ႈ (Reset to the beginning)
        }
    }
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Lifecycle)



* **`play()`**:
    * သင်ဝႃႈၵႂၢမ်းၵိုတ်း (Paused) ယူႇၼႆ မၼ်းတေလသိုပ်ႇဵၼ်ႈတီႈၵဝ်ႇၶႃႈ။
    * သင်ဝႃႈၵႂၢမ်းပိၵ်ႉ (Stopped) ယူႇၼႆ မၼ်းတေတႄႇလဵၼ်ႈတီႈၼႃႈသုတ်း (0:00) ၶႃႈ။
* **`pause()`**:
    * မၼ်းတေၵိုတ်းသဵင်ဝႆႉ တီႈၶိင်ႇ (Current Time) ဢၼ်မၼ်းလဵၼ်ႈယူႇၼၼ်ႉ။ Status မၼ်းတေပဵၼ် `PAUSED` ၶႃႈ။
* **`stop()`**:
    * မၼ်းတေပိၵ်ႉသဵင်ပႅတ်ႈ လႄႈ တေလႅၵ်ႈလၢႆႈ Status ပဵၼ် `STOPPED`။
    * **သတိ (Warning):** မိူဝ်ႈၼဵၵ်း Stop ယဝ်ႉ ၶိင်ႇ (Time) မၼ်းတေလႅၼ်ႈၶိုၼ်းၵႂႃႇတီႈ `0:00` (Start) တႃႇသေႇၶႃႈ။
* **`setOnEndOfMedia()`**:
    * ဢၼ်ၼႆႉပဵၼ် Event Handler တွၼ်ႈတႃႇလၢတ်ႈဝႃႈ ပေႃးၵႂၢမ်းသုတ်းယဝ်ႉ တေႁဵတ်းသင်။ ၼႂ်း Code တႄႉ ႁဝ်းၸႂ်ႉ `seek(Duration.ZERO)` တွၼ်ႈတႃႇႁႂ်ႈမၼ်းၵႂႃႇတႄႇၶိုၼ်းတီႈၼႃႈၶႃႈ။

---

### 📂 FXML Reminder
ႁႂ်ႈမၼ်းၵွင်ႉသၢၼ်ၸွမ်း `onAction` ၼႂ်း FXML ၼင်ႇၼႆၶႃႈ:
```xml
<Button onAction="#handlePlay" text="PLAY" />
<Button onAction="#handlePause" text="PAUSE" />
<Button onAction="#handleStop" text="STOP" />
```