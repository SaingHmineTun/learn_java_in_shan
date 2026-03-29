## **Lesson 22: Exporting UI to Image (Snapshot)**

ၼႂ်း JavaFX, ႁဝ်းမီး Method ဢၼ်ႁွင်ႉဝႃႈ **`.snapshot()`** ၶႃႈ။ 
မၼ်းတေတူၺ်း Node ဢၼ်ႁဝ်းလိူၵ်ႈဝႆႉ (မိူၼ်ၼင်ႇ AnchorPane ၶွင် ID Card) ယဝ်ႉ "ထႆႇႁၢင်ႈ" မၼ်းဢွၵ်ႇမႃးပဵၼ် Image Data ၶႃႈ။

### **1. How Snapshot Works?**
မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Snapshot, JavaFX တေမၵ်းမၼ်ႈ Image ၼိုင်ႈဢၼ် ဢၼ်မီး Pixel မိူၼ်တင်း UI ႁဝ်းၵမ်းသိုဝ်ႈၶႃႈ။



### **2. Practical Code: Saving the Card**
ႁဝ်းတေမႃးသၢင်ႈ Method တီႈၼႂ်း `IdController.java` တွၼ်ႈတႃႇသိမ်းႁၢင်ႈၶႃႈ။ 
ႁဝ်းလူဝ်ႇၸႂ်ႉ Class **`WritableImage`** လႄႈ **`SwingFXUtils`** တွၼ်ႈတႃႇပိၼ်ႇ Image Data ႁႂ်ႈပဵၼ်ၾၢႆႇႁၢင်ႈၶႃႈ။

```java
@FXML
private AnchorPane cardTemplate; // တူဝ် ID Card ဢၼ်ႁဝ်းတေ Snapshot

@FXML
private void handleSave() {
    // 1. "ထၢႆႇႁၢင်ႈ" (Snapshot) တူဝ် cardTemplate
    WritableImage image = cardTemplate.snapshot(new SnapshotParameters(), null);

    // 2. မၵ်းမၼ်ႈ Path တီႈတေသိမ်း (Desktop ဢမ်ႇၼၼ် Folder Project)
    File file = new File("student_id.png");

    try {
        // 3. ပိၼ်ႇ JavaFX Image ႁႂ်ႈပဵၼ်ၾၢႆႇ .png တႄႉๆ
        ImageIO.write(SwingFXUtils.fromFXImage(image, null), "png", file);
        
        // 4. ၼႄ Alert ဝႃႈသိမ်းယဝ်ႉတူဝ်ႈယဝ်ႉ
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setContentText("ID Card saved successfully as student_id.png");
        alert.show();
        
    } catch (IOException e) {
        e.printStackTrace();
    }
}
```



### **3. Setting Snapshot Parameters**
မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈႁႂ်ႈႁၢင်ႈဢၼ်ထၢႆႇဢွၵ်ႇမႃးၼၼ်ႉ မီး Background ပဝ်ႇ (Transparent):
* **SnapshotParameters:** ၸၢင်ႈမၵ်းမၼ်ႈသီ Background ပႃးလႆႈၶႃႈ။
```java
SnapshotParameters params = new SnapshotParameters();
params.setFill(Color.TRANSPARENT); // ႁဵတ်းႁႂ်ႈပိုၼ်ႉလင်ပဝ်ႇ
```

### **4. Using FileChooser (Professional Way)**
တႅၼ်းတွၼ်ႈတႃႇတေသိမ်းပဵၼ်ၸိုဝ်ႈ `student_id.png` တႃႇသေႇ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`FileChooser`** တွၼ်ႈတႃႇႁႂ်ႈ User လိူၵ်ႈတီႈသိမ်း လႄႈ တင်ႈၸိုဝ်ႈၾၢႆႇလႆႈႁင်းၶဝ်ၶႃႈ။

```java
FileChooser fileChooser = new FileChooser();
fileChooser.getExtensionFilters().add(new FileChooser.ExtensionFilter("PNG Files", "*.png"));
File saveFile = fileChooser.showSaveDialog(cardTemplate.getScene().getWindow());

if (saveFile != null) {
    ImageIO.write(SwingFXUtils.fromFXImage(image, null), "png", saveFile);
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **.snapshot():** ၸွႆႈႁႂ်ႈ "ထႆႇႁၢင်ႈ" Node လႂ် Node ၼၼ်ႉ ၼိူဝ် UI လႆႈ။
* **WritableImage:** ပဵၼ် Class ဢၼ်သိမ်း Image Data ဢၼ်ထႆႇမႃးၼၼ်ႉ။
* **SwingFXUtils & ImageIO:** ပဵၼ်ၶိူင်ႈမိုဝ်းတႃႇပိၼ်ႇ Image Data ႁႂ်ႈပဵၼ်ၾၢႆႇႁၢင်ႈ (.png/.jpg) တႄႉတႄႉ။
