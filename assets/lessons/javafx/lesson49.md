## 📘 Lesson 49: Introduction to TableView & TableColumn Setup

**TableView** ၼႆႉ ပဵၼ် Control ဢၼ်ၸႂ်ႉတိုဝ်းၼမ်သုတ်းၼႂ်း JavaFX တွၼ်ႈတႃႇၼႄၶေႃႈမုၼ်းပဵၼ် **Rows** လႄႈ **Columns** (မိူၼ်ၼင်ႇ Excel) ၶႃႈ။ 
မၼ်းၸွႆႈႁႂ်ႈ User ၸၢင်ႈ "Sort" (ၸတ်းထႅဝ်) လႄႈ "Select" (လိူၵ်ႈ) ၶေႃႈမုၼ်းလႆႈငၢႆႈၶႃႈ။



### 1. Scene Builder Setup (ၵၢၼ်ဝၢင်း UI)

တွၼ်ႈတႃႇ **Shan Proverb Viewer** ၼႆႉ ႁဝ်းလူဝ်ႇမီး Columns 3 ဢၼ် ႁႂ်ႈမႅၼ်ႈၸွမ်း Database ႁဝ်းၶႃႈ:

* **ID Column**: တွၼ်ႈတႃႇမၢႆၵပ်းတူဝ် (Primary Key)။
* **Key Column**: တွၼ်ႈတႃႇတူဝ်လိၵ်ႈတႄႇ (ၵ, ၶ, င...)။
* **Proverb Column**: တွၼ်ႈတႃႇၵႂၢမ်းၵပ်းထုၵ်ႇတႆး။

---

### 2. The FXML Structure (`ProverbView.fxml`)

ၼႆႉပဵၼ် Code ဢၼ်လုၵ်ႉတီႈ Scene Builder မႃးၶႃႈ။ ႁဝ်းတေၸႂ်ႉ `AnchorPane` ႁေႃႇဝႆႉသေ တင်ႈ `fx:id` ပၼ် Column ၵူႈဢၼ်ၶႃႈ။

```xml
<?xml version="1.0" encoding="UTF-8"?>

<?import javafx.scene.control.TableColumn?>
<?import javafx.scene.control.TableView?>
<?import javafx.scene.layout.AnchorPane?>
<?import javafx.scene.layout.VBox?>
<?import javafx.scene.control.Label?>

<AnchorPane prefHeight="500.0" prefWidth="800.0" xmlns="http://javafx.com/javafx/8" xmlns:fx="http://javafx.com/fxml/1" fx:controller="com.itsaimao.controller.ProverbController">
   <children>
      <VBox spacing="10" AnchorPane.bottomAnchor="20.0" AnchorPane.leftAnchor="20.0" AnchorPane.rightAnchor="20.0" AnchorPane.topAnchor="20.0">
         <children>
            <Label text="Shan Proverb Viewer" style="-fx-font-size: 20px; -fx-font-weight: bold;"/>
            
            <TableView fx:id="tableProverbs" VBox.vgrow="ALWAYS">
              <columns>
                <TableColumn fx:id="colId" prefWidth="75.0" text="ID" />
                <TableColumn fx:id="colKey" prefWidth="100.0" text="Key (တူဝ်တႄႇ)" />
                <TableColumn fx:id="colProverb" prefWidth="580.0" text="Proverb (ၵႂၢမ်းၵပ်းထုၵ်ႇ)" />
              </columns>
               <columnResizePolicy>
                  <TableView fx:constant="CONSTRAINED_RESIZE_POLICY" />
               </columnResizePolicy>
            </TableView>
         </children>
      </VBox>
   </children>
</AnchorPane>
```

---

### 3. Controller Binding (`ProverbController.java`)

မိူဝ်ႈႁဝ်းမီး FXML ယဝ်ႉ ႁဝ်းလူဝ်ႇ "ၵွင်ႉ" (Bind) ၶေႃႈမုၼ်းလုၵ်ႉတီႈ **Proverb Model** မႃးသႂ်ႇၼႂ်း Column ၶႃႈ။

```java
@FXML
private TableView<Proverb> tableProverbs;

@FXML
private TableColumn<Proverb, Integer> colId;

@FXML
private TableColumn<Proverb, String> colKey;

@FXML
private TableColumn<Proverb, String> colProverb;

@Override
public void initialize(URL location, ResourceBundle resources) {
    // ၵၢၼ်လၢတ်ႈပၼ် Column ဝႃႈ ႁႂ်ႈၵႂႃႇဢဝ် Property လႂ်ၼႂ်း Model မႃးၼႄ
    colId.setCellValueFactory(new PropertyValueFactory<>("id"));
    colKey.setCellValueFactory(new PropertyValueFactory<>("key"));
    colProverb.setCellValueFactory(new PropertyValueFactory<>("proverb"));
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ TableView)

* **`CONSTRAINED_RESIZE_POLICY`**: ၼႂ်း FXML ႁဝ်းတင်ႈဝႆႉၼႆႉ တေႁဵတ်းႁႂ်ႈ Column ႁဝ်း "ယိုတ်ႈ" (Auto-resize) ႁႂ်ႈတဵမ်ၼႃႈၸေႃး တႃႇသေႇၶႃႈ။
* **`setCellValueFactory`**: ပဵၼ်တူဝ်ဢၼ်လၢတ်ႈဝႃႈ "ၵႂႃႇဢဝ်ၶေႃႈမုၼ်းတီႈ Getter ၼႆႉမႃးၼႄ"။ ၼင်ႇ `new PropertyValueFactory<>("key")` မၼ်းတေၵႂႃႇႁွင်ႉၸႂ်ႉ `getKey()` ၼႂ်း Model ႁဝ်းႁင်းၵူၺ်းမၼ်းၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **TableView**: တေၼႄၶေႃႈမုၼ်းတင်းသဵင်ႈ။
* **TableColumn**: ပဵၼ် "လွၵ်းတင်ႈ" ဢၼ်တေၼႄၶေႃႈမုၼ်းၸွမ်းမဵဝ်းမၼ်း။
* **fx:id**: လူဝ်ႇတင်ႈၼႂ်း FXML ႁႂ်ႈမႅၼ်ႈၸွမ်း Controller ၸင်ႇတေႁွင်ႉၸႂ်ႉလႆႈၶႃႈ။