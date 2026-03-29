## Lesson 59: Scene Switching (Navigating Multiple Windows)

ၼႂ်း JavaFX, ၵၢၼ်လႅၵ်ႈၼႃႈၸေႃး (Scene Switching) မၢႆထိုင်ၵၢၼ်ဢဝ် **Scene** မႂ်ႇ မႃးသႂ်ႇၼႂ်း **Stage** (Window) တူဝ်ၵဝ်ႇ ဢမ်ႇၼၼ် ပိုတ်ႇ Stage မႂ်ႇၶိုၼ်းၶႃႈ။



### 1. The Logic of Switching (လၢႆးႁဵတ်းၵၢၼ်)
တွၼ်ႈတႃႇတေလႅၵ်ႈၼႃႈၸေႃးလႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇႁဵတ်း 3 လွင်ႈၼႆႉၶႃႈ:
1.  **Load FXML**: ဢဝ်ၾၢႆႇ UI မႂ်ႇၶဝ်ႈမႃး။
2.  **Create Scene**: ဢဝ် UI ၼၼ်ႉသႂ်ႇၼႂ်း Scene။
3.  **Set Stage**: ဢဝ် Scene ၼၼ်ႉၵႂႃႇၼႄၼိူဝ် Stage။

---

### 2. Implementation Code (တူဝ်ယၢင်ႇ Code)
ၼႆႉပဵၼ် Method ဢၼ်ၸႂ်ႉတူဝ်ႇသေႇ တွၼ်ႈတႃႇလႅၵ်ႈၼႃႈၸေႃး မိူဝ်ႈၽွင်း Button Click ၶႃႈ:

```java
@FXML
private void handleLogin(ActionEvent event) throws IOException {
    // 1. Load FXML ၼႃႈၸေႃးမႂ်ႇ (Dashboard)
    Parent root = FXMLLoader.load(getClass().getResource("/views/DashboardView.fxml"));
    
    // 2. သၢင်ႈ Scene မႂ်ႇ
    Scene scene = new Scene(root);
    
    // 3. ဢဝ် Stage လုၵ်ႉတီႈ Event ဢၼ်ၼဵၵ်းမႃးၼၼ်ႉ
    Stage stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
    
    // 4. လႅၵ်ႈ Scene သေၼႄ UI မႂ်ႇ
    stage.setScene(scene);
    stage.show();
}
```

---

### 3. Opening a New Window (ပိုတ်ႇ Window မႂ်ႇ)
သင်ႁဝ်းၶႂ်ႈပိုတ်ႇ Window ထႅင်ႈဢၼ်ၼိုင်ႈ (ဢမ်ႇပိၵ်ႉဢၼ်ၵဝ်ႇ)၊ ႁဝ်းတေၸႂ်ႉ `new Stage()` ၶႃႈ:

```java
Stage newStage = new Stage();
newStage.setTitle("Add New Book");
newStage.setScene(new Scene(FXMLLoader.load(getClass().getResource("AddBook.fxml"))));
newStage.initModality(Modality.APPLICATION_MODAL); // ႁႂ်ႈမၼ်းပဵၼ် Popup ဢၼ်လူဝ်ႇပိၵ်ႉၵွၼ်ႇၸင်ႇၵႂႃႇလႆႈ
newStage.show();
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Scene Switching)

* **`FXMLLoader`**: ပဵၼ် "တူဝ်ဢၢၼ်ႇ" ၾၢႆႇ FXML ႁႂ်ႈပဵၼ် Java Objects ၶႃႈ။
* **`event.getSource()`**: ၸွႆႈႁႂ်ႈႁဝ်းႁူႉဝႃႈ ႁဝ်းၼဵၵ်း တုမ်ႇ (Button) တူဝ်လႂ်၊ သေႁဝ်းၸၢင်ႈႁႃ Stage ဢၼ်တုမ်ႇၼၼ်ႉယူႇဝႆႉလႆႈၶႃႈ။
* **`Modality`**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇၼႃႇ တွၼ်ႈတႃႇသၢင်ႈ Dialog။ သင်ႁဝ်းတင်ႈပဵၼ် `APPLICATION_MODAL`၊ User တေဢမ်ႇၸၢင်ႈၵႂႃႇၼဵၵ်းၼႃႈၸေႃးတၢင်ႇဢၼ် တေႃႇပေႃးပိၵ်ႉ Window ၼႆႉၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **Stage**: မိူၼ်ၼင်ႇ "ၶွပ်ႇႁၢင်ႈၵႅဝ်ႈ" (The Window)။
* **Scene**: မိူၼ်ၼင်ႇ "ႁၢင်ႈတႅမ်ႈ" (The Content) ဢၼ်ႁဝ်းလႅၵ်ႈလၢႆႈလႆႈ။
* **Navigation**: ၵၢၼ်လႅၵ်ႈ Scene ႁဵတ်းႁႂ်ႈ App ႁဝ်းတူၺ်းမိူၼ် Software တႄႉတႄႉ ဢၼ်မီးလၢႆၼႃႈၸေႃးၶႃႈ။