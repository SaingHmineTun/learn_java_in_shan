## Lesson 68: Member Management (CRUD UI)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေၸႂ်ႉ **TableView** တွၼ်ႈတႃႇၼႄသဵၼ်ႈၸိုဝ်ႈ Member တင်းသဵင်ႈ လႄႈ ၸႂ်ႉ **TextField
** တွၼ်ႈတႃႇႁပ်ႉၶေႃႈမုၼ်းမႂ်ႇၶႃႈ။

### 1. FXML Structure: `MemberView.fxml`

ႁဝ်းတေၸႅၵ်ႇၼႃႈၸေႃးပဵၼ် 2 တွၼ်ႈ: ၽၢႆႇၼိူဝ်ပဵၼ်တီႈ "တႅမ်ႈ (Input)" လႄႈ ၽၢႆႇတႂ်ႈပဵၼ် "
လွၵ်းသဵၼ်ႈၸိုဝ်ႈ (Table)" ၶႃႈ။

```xml
<?xml version="1.0" encoding="UTF-8"?>

<?import javafx.geometry.Insets?><?import javafx.scene.control.*?><?import javafx.scene.layout.*?>

<VBox spacing="25" styleClass="content-pane" stylesheets="@../css/style.css"
    xmlns:fx="http://javafx.com/fxml" fx:controller="top.saimao.controller.MemberController">

    <padding>
        <Insets top="30" right="30" bottom="30" left="30" />
    </padding>

    <VBox spacing="5">
        <Label text="ၸတ်းၵၢၼ်ၵူၼ်းယူတ်ႉပပ်ႉ" styleClass="title-label" />
        <Label text="Member Management System"
            style="-fx-text-fill: #7f8c8d; -fx-font-size: 13px;" />
    </VBox>

    <HBox spacing="10" alignment="CENTER_LEFT" styleClass="toolbar-pane">
        <TextField fx:id="txtName" promptText="Full Name" prefWidth="220" />
        <TextField fx:id="txtPhone" promptText="Phone Number" prefWidth="150" />

        <Button text="ADD" onAction="#handleAddMember" styleClass="add-button" />
        <Button text="UPDATE" onAction="#handleUpdateMember" styleClass="update-button" />
        <Button text="DELETE" onAction="#handleDeleteMember" styleClass="delete-button" />

        <Region HBox.hgrow="ALWAYS" />

        <TextField fx:id="txtSearch" promptText="ႁႃၸိုဝ်ႈ (Search Name...)" prefWidth="200"
            styleClass="search-field" />
    </HBox>

    <TableView fx:id="memberTable" VBox.vgrow="ALWAYS">
        <columnResizePolicy>
            <TableView fx:constant="CONSTRAINED_RESIZE_POLICY" />
        </columnResizePolicy>
        <columns>
            <TableColumn fx:id="colId" text="ID" maxWidth="80" minWidth="60" />
            <TableColumn fx:id="colName" text="ၸိုဝ်ႈ (Name)" />
            <TableColumn fx:id="colPhone" text="ၾူၼ်း (Phone)" />
        </columns>
    </TableView>
</VBox>
```

---

### 2. The Controller: `MemberController.java`

ၼႆႉပဵၼ် Code ဢၼ်တေၵွင်ႉၸုမ်ႇတင်း **MemberDAO** (Lesson 67) ၶႃႈ။

```java

public class MemberController implements Initializable {
    @FXML
    public TextField txtSearch;
    @FXML
    private TextField txtName, txtPhone;
    @FXML
    private TableView<Member> memberTable;
    @FXML
    private TableColumn<Member, Integer> colId;
    @FXML
    private TableColumn<Member, String> colName, colPhone;

    private MemberDAO memberDAO = new MemberDAO();
    private ObservableList<Member> memberList;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        // 1. တင်ႈပၼ် Table Column ႁႂ်ႈႁူႉၸၵ်း Data တီႈ Model
        colId.setCellValueFactory(new PropertyValueFactory<>("id"));
        colName.setCellValueFactory(new PropertyValueFactory<>("fullName"));
        colPhone.setCellValueFactory(new PropertyValueFactory<>("phone"));

        // 2. Load Data တီႈ Database မႃးၼႄ
        refreshTable();

        // 3. မိူဝ်ႈ Click လွၵ်း Table ႁႂ်ႈ Data ၶိုၼ်ႈၵႂႃႇၼိူဝ် TextField (တွၼ်ႈတႃႇမႄး)
        memberTable.getSelectionModel().selectedItemProperty().addListener((obs, oldVal, newVal) -> {
            if (newVal != null) {
                txtName.setText(newVal.getFullName());
                txtPhone.setText(newVal.getPhone());
            }
        });
    }

    private void refreshTable() {
        memberList = memberDAO.findAll();
        memberTable.setItems(memberList);
    }

    @FXML
    private void handleAddMember() {
        String name = txtName.getText().trim();
        String phone = txtPhone.getText().trim();

        if (name.isEmpty() || phone.isEmpty()) {
            AlertMaker.showAlert(Alert.AlertType.WARNING, "Error", "Input Required", "လူဝ်ႇတႅမ်ႈၶေႃႈမုၼ်း ႁႂ်ႈၸုမ်ႇၶႃႈ!");
            return;
        }

        Member m = new Member(0, name, phone);
        if (memberDAO.save(m)) {
            refreshTable();
            clearFields();
        }
    }

    @FXML
    private void handleUpdateMember() {
        // 1. ၵူတ်ႇထတ်းဝႃႈ User လႆႈလိူၵ်ႈ Row ဝႆႉႁႃႉ?
        Member selectedMember = memberTable.getSelectionModel().getSelectedItem();

        if (selectedMember == null) {
            AlertMaker.showAlert(Alert.AlertType.WARNING, "Error", "No Selection",
                    "ၵရုၼႃႇ လိူၵ်ႈ (Select) ၵူၼ်းဢၼ်ၶႂ်ႈမႄး ၼႂ်း Table ဢွၼ်တၢင်းၶႃႈ!");
            return;
        }

        // 2. ဢဝ် Data မႂ်ႇတီႈ TextField မႃးသႂ်ႇ
        String newName = txtName.getText().trim();
        String newPhone = txtPhone.getText().trim();

        if (newName.isEmpty() || newPhone.isEmpty()) {
            AlertMaker.showAlert(Alert.AlertType.WARNING, "Error", "Input Required",
                    "ၵရုၼႃႇ တႅမ်ႈၶေႃႈမုၼ်း ႁႂ်ႈၸုမ်ႇၶႃႈ!");
            return;
        }

        // 3. တင်ႈ Data ပၼ် Member Object (ၸႂ်ႉ ID တူဝ်ၵဝ်ႇ)
        selectedMember.setFullName(newName);
        selectedMember.setPhone(newPhone);

        // 4. သူင်ႇၵႂႃႇ DAO တွၼ်ႈတႃႇ Update ၼႂ်း Database
        if (memberDAO.update(selectedMember)) {
            refreshTable();
            clearFields();
            AlertMaker.showAlert(Alert.AlertType.INFORMATION, "Success", "Update Success",
                    "မႄးၶေႃႈမုၼ်း ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ!");
        } else {
            AlertMaker.showAlert(Alert.AlertType.ERROR, "Error", "Update Failed",
                    "မီးပၼ်ႁႃ ၼႂ်းၵၢၼ်မႄးၶေႃႈမုၼ်းၶႃႈ!");
        }
    }

    @FXML
    private void handleDeleteMember() {
        Member selected = memberTable.getSelectionModel().getSelectedItem();
        if (selected != null) {
            memberDAO.delete(selected.getId());
            refreshTable();
        }
    }

    private void clearFields() {
        txtName.clear();
        txtPhone.clear();
    }
}
```

---

### 3. CSS for Buttons (`style.css`)

ႁႂ်ႈ Button ႁဝ်းမီးသီၸႅၼ်ႇလႅင်း ၼင်ႇႁႂ်ႈ User ၸႂ်ႉငၢႆႈၶႃႈ။

```css
@import "header.css";

.root {
    -fx-font-family: "Shan Regular";
}

/* 1. Title Styling */
.title-label {
    -fx-font-size: 22px;
    -fx-text-fill: #2c3e50;
    -fx-padding: 0 0 10 0;
}

/* 2. TextField Styling */
.text-field {
    -fx-background-color: white;
    -fx-border-color: #dcdde1;
    -fx-border-radius: 5;
    -fx-background-radius: 5;
    -fx-padding: 8;
}

.text-field:focused {
    -fx-border-color: #3498db;
    -fx-border-width: 2;
}

/* 3. Button Styling (Rounded & Hover) */
.button {
    -fx-cursor: hand;
    -fx-background-radius: 5;
    -fx-font-weight: bold;
    -fx-padding: 8 15;
}

.add-button {
    -fx-background-color: #2ecc71;
    -fx-text-fill: white;
}
.add-button:hover { -fx-background-color: #27ae60; }

.update-button {
    -fx-background-color: #3498db;
    -fx-text-fill: white;
}
.update-button:hover { -fx-background-color: #2980b9; }

.delete-button {
    -fx-background-color: #e74c3c;
    -fx-text-fill: white;
}
.delete-button:hover { -fx-background-color: #c0392b; }

/* 4. TableView Styling (Modern Look) */
.table-view {
    -fx-background-color: transparent;
    -fx-border-color: #dcdde1;
    -fx-border-radius: 5;
}

.table-view .column-header {
    -fx-background-color: #34495e;
    -fx-padding: 10;
}

.table-view .column-header .label {
    -fx-text-fill: white;
    -fx-font-weight: bold;
}

.table-view .table-cell {
    -fx-padding: 10;
    -fx-border-color: transparent transparent #f1f2f6 transparent;
}

.table-row-cell:selected {
    -fx-background-color: #dff9fb;
    -fx-text-fill: #2c3e50;
}

.toolbar-pane {
    -fx-background-color: #f8f9fa;
    -fx-padding: 15;
    -fx-background-radius: 10;
    -fx-border-color: #ecf0f1;
    -fx-border-radius: 10;
}

.search-field {
    -fx-background-color: white;
    -fx-border-color: #3498db;
    -fx-border-radius: 20;
    -fx-background-radius: 20;
    -fx-padding: 8 15;
}
```

---

### 🎓 Summary for Thung Mao Kham Students

* **ObservableList**: မိူဝ်ႈႁဝ်း `setItems(memberList)`၊ TableView တေမႃးၼႄ Data ႁင်းမၼ်းၵမ်းလဵဝ်ၶႃႈ။
* **Selection Model**: ၵၢၼ် Click Row သေ ၶေႃႈမုၼ်းၶိုၼ်ႈၵႂႃႇၼိူဝ် TextField ပဵၼ်လၢႆးႁဵတ်း (Workflow)
  ဢၼ်ငၢႆႈသုတ်း တွၼ်ႈတႃႇ "မႄးၶေႃႈမုၼ်း (Update)" ၶႃႈ။
* **UI Feedback**: ယႃႇလိုမ်းၸႂ်ႉ **AlertMaker** (Lesson 66) မိူဝ်ႈ User ဢမ်ႇတႅမ်ႈၶေႃႈမုၼ်းသင်
  သေၼဵၵ်း Add ၼၼ်ႉၶႃႈ။