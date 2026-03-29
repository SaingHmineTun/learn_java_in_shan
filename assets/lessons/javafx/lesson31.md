## Lesson 31: Handling Media Errors & Unsupported Formats

ၼႂ်း JavaFX `MediaPlayer` ၼၼ်ႉ မၼ်းမီး Mechanism တွၼ်ႈတႃႇပႂ်ႉထတ်းတူၺ်း Error ႁင်းၵူၺ်းမၼ်း။ 
သင်ႁဝ်းဢမ်ႇၸတ်းၵၢၼ်ဝႆႉ ၼႃႈၸေႃး App ႁဝ်းတေ "ငဝ်" (Frozen) သေ User တေဢမ်ႇႁူႉဝႃႈ ႁဵတ်းသင်လႄႈ ၵႂၢမ်းဢမ်ႇလဵၼ်ႈၼႆၶႃႈ။



### 1. Controller Logic Update (`MediaController.java`)

ႁဝ်းတေထႅင်ႈ Method တွၼ်ႈတႃႇထတ်းတူၺ်း Error လႄႈ ၼႄ Alert Dialog ၶႃႈ။

```java
private void playSelectedSong(File file) {
    try {
        if (player != null) player.stop();

        Media media = new Media(file.toURI().toString());
        player = new MediaPlayer(media);

        // 1. ပႂ်ႉထတ်းတူၺ်း Error လုၵ်ႉတီႈ MediaPlayer
        player.setOnError(() -> {
            String errorMessage = player.getError().getMessage();
            showErrorAlert("Media Error", "ဢမ်ႇၸၢင်ႈလဵၼ်ႈၾၢႆႇၼႆႉလႆႈၶႃႈ!", errorMessage);
        });

        setupProgressTracking();
        player.play();

    } catch (Exception e) {
        // 2. တီႈၼႆႈတေၵုမ်းထိင်း Error မိူဝ်ႈသၢင်ႈ Media Object (e.g. Unsupported Format)
        showErrorAlert("Loading Error", "ဢမ်ႇၸၢင်ႈလူတ်ႇ (Load) ၵႂၢမ်းပုၵ်ႈၼႆႉ!", e.getMessage());
    }
}

/**
 * ၼႄ Dialog လၢတ်ႈၼႄ Error ႁႂ်ႈ User ႁူႉ
 */
private void showErrorAlert(String title, String header, String content) {
    Alert alert = new Alert(Alert.AlertType.ERROR);
    alert.setTitle(title);
    alert.setHeaderText(header);
    alert.setContentText(content);
    
    // မႄးႁၢင်ႈ Dialog ႁႂ်ႈမၼ်းလႅင်းၸွမ်း CSS ႁဝ်း (Optional)
    alert.showAndWait();
}
```

---

### 2. Common Media Errors (Error ဢၼ်ၵႆႉမီး)

| Error Type | Reason (ႁဵတ်းသင်လႄႈပဵၼ်) | Solution (လၢႆးၵႄႈ) |
| :--- | :--- | :--- |
| **HALTED** | ၾၢႆႇၵႂၢမ်းလူႉ (Corrupted file) | လႅၵ်ႈၸႂ်ႉၾၢႆႇမႂ်ႇ |
| **UNKNOWN** | Format ဢၼ် Java ဢမ်ႇႁူႉ (e.g. .m4a) | ၸႂ်ႉ .mp3 ဢမ်ႇၼၼ် .wav |
| **PLAYBACK_ERROR** | ၶိူင်ႈသဵင် (Audio Device) မီးပၼ်ႁႃ | ထတ်းတူၺ်း Speaker/Driver |

---

### 3. FXML UI Feedback (Optional)

သင်ဝႃႈဢမ်ႇၶႂ်ႈၸႂ်ႉ Alert Dialog လၢႆလၢႆ ႁဝ်းၸၢင်ႈမႄး `lblSongName` ႁႂ်ႈပဵၼ်သီလႅင် မိူဝ်ႈမီး Error ၶႃႈ။

```java
player.setOnError(() -> {
    lblSongName.setText("ERROR: " + player.getError().getCode());
    lblSongName.setStyle("-fx-text-fill: #ff4757;"); // သီလႅင်
});
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Exception Handling)

* **`setOnError()`**: ဢၼ်ၼႆႉပဵၼ် **Asynchronous Callback**။ မၼ်းတေႁဵတ်းၵၢၼ် မိူဝ်ႈလႂ်ၵေႃႈယဝ်ႉ ဢၼ် MediaPlayer မီးပၼ်ႁႃ (Runtime Error)။
* **Unsupported Formats**: JavaFX Media API ၼၼ်ႉ မၼ်းႁပ်ႉဢဝ်လႆႈ **MP3 (ID3v2.3), WAV (PCM), AAC**။ သင် User ဢဝ်ၾၢႆႇ .flac ဢမ်ႇၼၼ် .ogg မႃးသႂ်ႇၼႆ `Media` constructor တေ "Throw Exception" ၵမ်းလဵဝ်ၶႃႈ။
* **User Experience (UX)**: ၵၢၼ်ၸႂ်ႉ `Alert` တေႁဵတ်းႁႂ်ႈ User ႁူႉဝႃႈ ပရူဝ်ႇၵရႅမ််းဢမ်ႇလႆႈလူႉ (Crash)၊ ၵူၺ်းၵႃႈၾၢႆႇၵႂၢမ်းၼၼ်ႉၵူၺ်း ဢၼ်မီးပၼ်ႁႃၶႃႈ။
