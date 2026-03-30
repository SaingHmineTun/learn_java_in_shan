### **Lesson 76: Borrow/Return/Delete Transaction**

ဢၼ်ၸုမ်ႇၸပ်းတင်း Logic ၵၢၼ်ယိမ်ပပ်ႉ ၸွမ်းၼင်ႇ Project **LMS Library** ၶႃႈ။

---

### 1. FXML Layer (`TransactionView.fxml`)

ႁဝ်းတေထႅမ် Button တွၼ်ႈတႃႇ Add လႄႈ Delete ၶဝ်ႈၵႂႃႇၶႃႈ။

```xml
<?xml version="1.0" encoding="UTF-8"?><?import javafx.scene.control.*?><?import javafx.scene.layout.*?>

<AnchorPane prefHeight="650.0" prefWidth="1000.0" stylesheets="@../css/style.css"
    xmlns="http://javafx.com/javafx/17" xmlns:fx="http://javafx.com/fxml/1"
    fx:controller="top.saimao.controller.TransactionController">
    <children>
        <VBox spacing="15.0" AnchorPane.bottomAnchor="20.0" AnchorPane.leftAnchor="20.0"
            AnchorPane.rightAnchor="20.0" AnchorPane.topAnchor="20.0">
            <children>
                <Label styleClass="title-label"
                    text="သဵၼ်ႈမၢႆၵၢၼ်ယိမ်ပပ်ႉ (Transaction Management)" />

                <HBox alignment="CENTER_LEFT" spacing="10.0" styleClass="toolbar-pane">
                    <children>
                        <TextField fx:id="txtSearch" prefWidth="180.0" promptText="ႁႃသဵၼ်ႈမၢႆ..."
                            styleClass="search-field" />

                        <Separator orientation="VERTICAL" />

                        <ComboBox fx:id="comboMember" prefWidth="150.0"
                            promptText="လိူၵ်ႈ Member" />
                        <ComboBox fx:id="comboBook" prefWidth="150.0" promptText="လိူၵ်ႈ Book" />
                        <Button onAction="#handleIssueBook" styleClass="add-button"
                            text="+ Issue Book" />

                        <Separator orientation="VERTICAL" />

                        <Button onAction="#handleReturnBook" styleClass="update-button"
                            text="↺ Return Book" />

                        <Region HBox.hgrow="ALWAYS" />

                        <Button onAction="#handleDeleteTransaction" styleClass="delete-button"
                            text="Delete" />
                        <Button onAction="#handleRefresh" styleClass="update-button"
                            text="Refresh" />
                    </children>
                </HBox>

                <TableView fx:id="transactionTable" VBox.vgrow="ALWAYS">
                    <columns>
                        <TableColumn fx:id="colId" prefWidth="50" text="ID" />
                        <TableColumn fx:id="colMember" prefWidth="180" text="Member Name" />
                        <TableColumn fx:id="colBook" prefWidth="180" text="Book Title" />
                        <TableColumn fx:id="colDate" prefWidth="120" text="Issue Date" />
                        <TableColumn fx:id="colStatus" prefWidth="100" text="Status" />
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

### 2. CSS Layer (`style.css`)

ႁဝ်းတေၸႂ်ႉ Style ဢၼ်ၸဝ်ႈၵဝ်ႇမီးဝႆႉယဝ်ႉ ႁႂ်ႈ UI ႁဝ်းမၼ်ႈၵိုမ်း (Consistent) ၶႃႈ။

```css
/* ၸႂ်ႉ CSS ဢၼ်ၸဝ်ႈၵဝ်ႇသူင်ႇမႃး */
.add-button { -fx-background-color: #2ecc71; -fx-text-fill: white; }
.delete-button { -fx-background-color: #e74c3c; -fx-text-fill: white; }
.update-button { -fx-background-color: #3498db; -fx-text-fill: white; }
.table-view .column-header { -fx-background-color: #34495e; }
```

---

### 3. Java Controller Layer (`TransactionController.java`)

ၼႆႉပဵၼ် Controller ဢၼ်ႁွင်ႉၸႂ်ႉ **TransactionService** တွၼ်ႈတႃႇႁဵတ်း Atomic Save ၶႃႈ။

```java
public class TransactionController implements Initializable {
    @FXML
    private TableView<Transaction> transactionTable;
    @FXML
    private TableColumn<Transaction, Integer> colId;
    @FXML
    private TableColumn<Transaction, String> colMember, colBook, colDate, colStatus;
    @FXML
    private TextField txtSearch;

    // UI Selection Components
    @FXML
    private ComboBox<Member> comboMember;
    @FXML
    private ComboBox<Book> comboBook;

    private TransactionDAO transDAO = new TransactionDAO();
    private MemberDAO memberDAO = new MemberDAO();
    private BookDAO bookDAO = new BookDAO();
    private TransactionService transService = new TransactionService(); //

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        // 1. Setup Table Columns (Mapping Nested Objects)
        colId.setCellValueFactory(new javafx.scene.control.cell.PropertyValueFactory<>("id"));
        colMember.setCellValueFactory(data -> new SimpleStringProperty(data.getValue().getMember().getFullName())); //
        colBook.setCellValueFactory(data -> new SimpleStringProperty(data.getValue().getBook().getTitle())); //
        colDate.setCellValueFactory(data -> new SimpleStringProperty(data.getValue().getDate().toString()));
        colStatus.setCellValueFactory(new javafx.scene.control.cell.PropertyValueFactory<>("status"));

        // 2. Load Selection Data
        setupComboBoxes();
        refreshTable();
    }

    private void setupComboBoxes() {
        // Load Members & Books into ComboBoxes
        comboMember.setItems(memberDAO.findAll()); //
        comboBook.setItems(bookDAO.findAll());     //

        // တင်ႈပၼ်ႁႂ်ႈ ComboBox ၼႄၸိုဝ်ႈ (Display Name)
        comboMember.setConverter(new StringConverter<Member>() {
            @Override
            public String toString(Member m) {
                return m == null ? "" : m.getFullName();
            }

            @Override
            public Member fromString(String s) {
                return null;
            }
        });

        comboBook.setConverter(new StringConverter<Book>() {
            @Override
            public String toString(Book b) {
                return b == null ? "" : b.getTitle();
            }

            @Override
            public Book fromString(String s) {
                return null;
            }
        });
    }

    @FXML
    private void handleIssueBook() {
        Member selectedMember = comboMember.getSelectionModel().getSelectedItem();
        Book selectedBook = comboBook.getSelectionModel().getSelectedItem();

        if (selectedMember == null || selectedBook == null) {
            AlertMaker.showAlert(Alert.AlertType.WARNING, "Warning", "Selection Required", "ၵရုၼႃႇလိူၵ်ႈ Member လႄႈ Book ဢွၼ်တၢင်းၶႃႈ!");
            return;
        }

        // ဢဝ် ID User ဢၼ် Logged-in ယူႇယခု
        int userId = UserSession.getInstance().getUserId();
        System.out.println("User ID: " + userId);

        // ႁွင်ႉၸႂ်ႉ Service တွၼ်ႈတႃႇႁဵတ်း Atomic Transaction
        if (transService.issueBook(userId, selectedMember.getId(), selectedBook.getId())) {
            AlertMaker.showAlert(Alert.AlertType.INFORMATION, "Success", "Issue Success", "ယိမ်ပပ်ႉပၼ် Member ယဝ်ႉယဝ်ႉၶႃႈ!");
            refreshTable();
            comboBook.setItems(bookDAO.findAll()); // Refresh stock in UI
        } else {
            AlertMaker.showAlert(Alert.AlertType.ERROR, "Error", "Issue Failed", "မီးပၼ်ႁႃ ၼႂ်းၵၢၼ်ယိမ် (Stock ဢမ်ႇလိူဝ် ဢမ်ႇၼၼ် DB Error)!");
        }
    }

    @FXML
    private void handleDeleteTransaction() {
        Transaction selected = transactionTable.getSelectionModel().getSelectedItem();

        if (selected == null) {
            AlertMaker.showAlert(Alert.AlertType.WARNING, "Warning", "No Selection", "ၵရုၼႃႇ လိူၵ်ႈသဵၼ်ႈမၢႆဢွၼ်တၢင်းၶႃႈ!");
            return;
        }

        // ၵူတ်ႇထတ်း Status: သင်ဝႃႈတိုၵ်ႉယိမ်ဝႆႉယူႇ (BORROWED) ဢမ်ႇပၼ်လူတ်း
        if ("BORROWED".equals(selected.getStatus())) {
            AlertMaker.showAlert(Alert.AlertType.ERROR, "Security Error", "Cannot Delete",
                    "ဢမ်ႇၸၢင်ႈလူတ်းသဵၼ်ႈမၢႆၼႆႉလႆႈ! ယွၼ်ႉပပ်ႉၼႆႉ ယင်းပႆႇလႆႈသူင်ႇၶိုၼ်းၶႃႈ။");
            return;
        }

        // သင် Status ပဵၼ် RETURNED ယဝ်ႉ ၸင်ႇပၼ်လူတ်း
        if (transDAO.delete(selected.getId())) {
            AlertMaker.showAlert(Alert.AlertType.INFORMATION, "Success", "Deleted", "လူတ်းသဵၼ်ႈမၢႆယဝ်ႉယဝ်ႉၶႃႈ!");
            refreshTable();
        }
    }

    private void refreshTable() {
        transactionTable.setItems(transDAO.findAll()); //
    }

    @FXML
    private void handleRefresh() {
        refreshTable();
        setupComboBoxes();
    }

    @FXML
    private void handleReturnBook() {
        // 1. ၵူတ်ႇထတ်းဝႃႈ လိူၵ်ႈ Row ဝႆႉယဝ်ႉႁႃႉ?
        Transaction selected = transactionTable.getSelectionModel().getSelectedItem();

        if (selected == null) {
            AlertMaker.showAlert(Alert.AlertType.WARNING, "Warning", "No Selection", "ၵရုၼႃႇ လိူၵ်ႈသဵၼ်ႈမၢႆ ဢၼ်ၶႂ်ႈသူင်ႇၶိုၼ်းဢွၼ်တၢင်းၶႃႈ!");
            return;
        }

        // 2. ၵူတ်ႇထတ်းဝႃႈ ပပ်ႉၼႆႉ သူင်ႇယဝ်ႉယဝ်ႉႁႃႉ?
        if ("RETURNED".equals(selected.getStatus())) {
            AlertMaker.showAlert(Alert.AlertType.INFORMATION, "Info", "Already Returned", "ပပ်ႉၽိုၼ်ၼႆႉ သူင်ႇၶိုၼ်းယဝ်ႉယဝ်ႉၶႃႈ!");
            return;
        }

        // 3. ႁွင်ႉၸႂ်ႉ Service တွၼ်ႈတႃႇ Update DB (Atomic)
        if (transService.returnBookTransaction(selected.getId(), selected.getBook().getId())) {
            AlertMaker.showAlert(Alert.AlertType.INFORMATION, "Success", "Returned", "သူင်ႇပပ်ႉၶိုၼ်း ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ!");
            refreshTable(); // Update UI
        } else {
            AlertMaker.showAlert(Alert.AlertType.ERROR, "Error", "Return Failed", "မီးပမ်း (Stock လိုင်မ်း မီးပမ်း)!");
        }
    }
}
```

---

### 🎓 Summary for Thung Mao Kham Students

* **Atomic Save**: ၵၢၼ် Add Transaction လူဝ်ႇလႆႈႁွင်ႉၸႂ်ႉ `TransactionService` တွၼ်ႈတႃႇႁႂ်ႈ Stock
  ၼႂ်း `books` လူတ်းယွမ်းၵႂႃႇၸွမ်းၵၼ်။
* **Consistency**: ၵၢၼ်ၸႂ်ႉ `style.css` ဢၼ်မိူၼ်ၵၼ်တင်းၼႃႈလိၵ်ႈ Books လႄႈ Members မၼ်းႁဵတ်းႁႂ်ႈ App
  ႁဝ်းတူၺ်းလီ လႄႈ ၸႂ်ႉငၢႆႈၶႃႈ။
* **Data Integrity**: ၵၢၼ် Delete Transaction တေၸွႆႈလုမ်းလားသဵၼ်ႈမၢႆ ဢၼ် Admin တႅမ်ႈၽိတ်းဝႆႉၶႃႈ။

ၸဝ်ႈၵဝ်ႇ ဢူဝ်ႇၶေႇ (OK) ၸွမ်းၼင်ႇ Code တွၼ်ႈၼႆႉယူႇႁႃႉၶႃႈ? ပေႃးဢူဝ်ႇၶေႇယဝ်ႉ ႁဝ်းတေၵႂႃႇ **Lesson 77:
The Return Engine (Stock Recovery)** တွၼ်ႈတႃႇမႄး Logic ၵၢၼ်သူင်ႇပပ်ႉၶိုၼ်းၶႃႈၼႃ!