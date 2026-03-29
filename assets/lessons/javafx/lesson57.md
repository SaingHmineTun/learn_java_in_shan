## 📘 Lesson 57: Exporting Table Data to CSV/Excel

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေသွၼ်လၢႆးဢၢၼ်ႇၶေႃႈမုၼ်းလုၵ်ႉတီႈ `TableView` (ဢမ်ႇၼၼ် `ObservableList`) သေ တႅမ်ႈလူင်းၼႂ်းၾၢႆႇ `.csv` ၶႃႈ။



### 1. The Export Logic (`ProverbController.java`)

ႁဝ်းတေၸႂ်ႉ **`FileChooser`** တွၼ်ႈတႃႇႁႂ်ႈ User လိူၵ်ႈတီႈသိမ်းၾၢႆႇ လႄႈ ၸႂ်ႉ **`PrintWriter`** တွၼ်ႈတႃႇတႅမ်ႈလိၵ်ႈၶႃႈ။

```java
@FXML
private void handleExport() {
    // 1. တင်ႈ FileChooser တွၼ်ႈတႃႇလိူၵ်ႈတီႈသိမ်း
    FileChooser fileChooser = new FileChooser();
    fileChooser.setTitle("Save Shan Proverbs");
    fileChooser.getExtensionFilters().add(new FileChooser.ExtensionFilter("CSV Files", "*.csv"));
    
    File file = fileChooser.showSaveDialog(null);

    if (file != null) {
        try (PrintWriter writer = new PrintWriter(file, "UTF-8")) {
            // 2. တႅမ်ႈ Header (ၸိုဝ်ႈ Column)
            writer.println("ID,Key,Proverb");

            // 3. Loop ဢဝ် Data လုၵ်ႉတီႈ List ဢၼ်ႁဝ်း Filter ဝႆႉ (ယူႇၼိူဝ် Table)
            for (Proverb p : filteredData) {
                writer.println(p.getId() + "," + p.getProverbKey() + "," + p.getProverbText());
            }

            showAlert(Alert.AlertType.INFORMATION, "Success", "Data exported to CSV successfully!");
        } catch (IOException e) {
            showAlert(Alert.AlertType.ERROR, "Error", "Could not export data: " + e.getMessage());
        }
    }
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Data Export)

* **`PrintWriter(file, "UTF-8")`**: **လွင်ႈယႂ်ႇသုတ်း!** ယွၼ်ႉပဵၼ်လိၵ်ႈတႆး၊ သင်ႁဝ်းဢမ်ႇသႂ်ႇ UTF-8 ၼႆ၊ မိူဝ်ႈပိုတ်ႇၼႂ်း Excel လိၵ်ႈတေပဵၼ် "???" တင်းသဵင်ႈၶႃႈ။
* **`filteredData`**: ႁဝ်းတႅမ်ႈ Export လုၵ်ႉတီႈ `filteredData` တႅၼ်း `proverbList`။ ၼႆႉမၢႆထိုင်ဝႃႈ... သင် User ႁႃ (Search) ဝႆႉ "ၵ" ၼႆ၊ ၾၢႆႇ CSV ဢၼ်ဢွၵ်ႇမႃးၵေႃႈ တေမီး "ၵ" ၵူၺ်းၶႃႈ (What you see is what you get)။
* **CSV Format**: ပဵၼ်လၢႆးၵဵပ်း Data ဢၼ်ၸႂ်ႉ "ၶႅၼ်ႈ" (Comma) ယႅၵ်း Column။ မၼ်းပဵၼ် Standard ဢၼ် Excel ဢၢၼ်ႇလႆႈငၢႆႈသုတ်းၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students

* **FileChooser**: ပဵၼ် Dialog ဢၼ်ၸွႆႈႁႂ်ႈ User လိူၵ်ႈ Folder လႄႈ တင်ႈၸိုဝ်ႈၾၢႆႇ။
* **Data Portability**: ၵၢၼ် Export ႁဵတ်းႁႂ်ႈၶေႃႈမုၼ်း App ႁဝ်း ဢဝ်ၵႂႃႇၸႂ်ႉတူဝ်ႇလႂ်ၵေႃႈလႆႈ။
* **Encoding**: ယႃႇလိုမ်း UTF-8 တႃႇလိၵ်ႈတႆးတူဝ်ႇသေႇၶႃႈ။