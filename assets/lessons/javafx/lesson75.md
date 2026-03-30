## Lesson 75: Transaction UI (The History View)

ဝၢႆးလုၵ်ႉတီႈႁဝ်းမီး Logic ၵၢၼ်ယိမ်ပပ်ႉ (Issue Engine) ယဝ်ႉယဝ်ႉ, ၵမ်းၼႆႉႁဝ်းလူဝ်ႇမီးၼႃႈလိၵ်ႈ UI တွၼ်ႈတႃႇၼႄသဵၼ်ႈမၢႆၵၢၼ်ယိမ်တင်းသဵင်ႈ ႁႂ်ႈ Admin ၵူတ်ႇထတ်းလႆႈငၢႆႈၶႃႈ။ ႁဝ်းတေၸႂ်ႉ **SQL JOIN** တွၼ်ႈတႃႇဢဝ် "ၸိုဝ်ႈ" မႃးၼႄ တႅၼ်းမၢႆ ID ၼႂ်း TableView ၶႃႈ။

---

### 1. The Data Layer: SQL Joins (`TransactionDAO.java`)

ယွၼ်ႉ Model `Transaction` ႁဝ်းသိမ်းဝႆႉပဵၼ် Full Objects (User, Member, Book), ၼႂ်း DAO ႁဝ်းတေလႆႈ Query ဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ Table တင်းသဵင်ႈသေ မႃးၵေႃႇသၢင်ႈ (Construct) ပဵၼ် Object ၶိုၼ်းၶႃႈ။

```java

    public ObservableList<Transaction> findAll() {
        ObservableList<Transaction> list = FXCollections.observableArrayList();
        // ၸႂ်ႉ SELECT * တွၼ်ႈတႃႇဢဝ် Columns တင်းသဵင်ႈ လုၵ်ႉတီႈ Tables ဢၼ် Join ဝႆႉ
        String sql = "SELECT t.*, u.*, m.*, b.* " +
                "FROM transactions t " +
                "JOIN users u ON t.user_id = u.id " +
                "JOIN members m ON t.member_id = m.id " +
                "JOIN books b ON t.book_id = b.id " +
                "ORDER BY t.id DESC";

        try (Connection conn = DBConnection.getInstance().getConnection();
             Statement st = conn.createStatement();
             ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                // 1. Create Real User Object
                User u = new User();
                u.setId(rs.getInt("u.id")); // မၢႆတွင်း: သင် Column Name မိူၼ်ၵၼ် လူဝ်ႇၸႂ်ႉ Alias
                u.setUsername(rs.getString("username"));
                u.setRole(top.saimao.model.UserRole.valueOf(rs.getString("role")));

                // 2. Create Real Member Object
                Member m = new Member(
                        rs.getInt("m.id"),
                        rs.getString("full_name"),
                        rs.getString("phone"),
                        rs.getString("image_path")
                );

                // 3. Create Real Book Object
                Book b = new Book(
                        rs.getInt("b.id"), rs.getString("title"), rs.getString("author"),
                        rs.getString("category"), rs.getString("isbn"), rs.getString("publisher"),
                        rs.getInt("total_qty"), rs.getInt("available_qty"), rs.getString("b.image_path")
                );

                // 4. Add to Transaction with Real Objects
                list.add(new Transaction(
                        rs.getInt("t.id"), u, m, b,
                        rs.getDate("issue_date").toLocalDate(),
                        rs.getString("status")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
```

---

### 2. The View: FXML Layout (`TransactionView.fxml`)

ႁဝ်းတေၸႂ်ႉ `style.css` ဢၼ်ၸဝ်ႈၵဝ်ႇမီးဝႆႉၼၼ်ႉ တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းမီးလွင်ႈ Consistent ၵၼ်ၶႃႈ။

```xml
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>

<AnchorPane prefHeight="600.0" prefWidth="900.0" stylesheets="@../css/style.css" 
            xmlns="http://javafx.com/javafx/17" xmlns:fx="http://javafx.com/fxml/1" 
            fx:controller="top.saimao.controller.TransactionController">
   <children>
      <VBox spacing="15.0" AnchorPane.bottomAnchor="20.0" AnchorPane.leftAnchor="20.0" 
            AnchorPane.rightAnchor="20.0" AnchorPane.topAnchor="20.0">
         <children>
            <Label styleClass="title-label" text="သဵၼ်ႈမၢႆၵၢၼ်ယိမ်ပပ်ႉ (Transaction History)" />
            
            <HBox alignment="CENTER_LEFT" spacing="10.0" styleClass="toolbar-pane">
               <children>
                  <TextField fx:id="txtSearch" prefWidth="300.0" promptText="ႁႃလူၺ်ႈၸိုဝ်ႈ Member ဢမ်ႇၼၼ် ပပ်ႉ..." styleClass="search-field" />
                  <Region HBox.hgrow="ALWAYS" />
                  <Button onAction="#handleRefresh" styleClass="update-button" text="Refresh" />
               </children>
            </HBox>
            
            <TableView fx:id="transactionTable" VBox.vgrow="ALWAYS">
              <columns>
                <TableColumn fx:id="colId" prefWidth="50" text="ID" />
                <TableColumn fx:id="colMember" prefWidth="200" text="Member Name" />
                <TableColumn fx:id="colBook" prefWidth="200" text="Book Title" />
                <TableColumn fx:id="colDate" prefWidth="150" text="Issue Date" />
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

### 3. Implementation: Controller Logic (`TransactionController.java`)

ယွၼ်ႉ Model ႁဝ်းပဵၼ် Objects, ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ `CellValueFactory` လွၵ်းလၢႆးမႂ်ႇ တွၼ်ႈတႃႇ "ၸူၵ်း" ဢဝ်ၸိုဝ်ႈမႃးၼႄၶႃႈ။

```java
public class TransactionController implements Initializable {
    @FXML private TableView<Transaction> transactionTable;
    @FXML private TableColumn<Transaction, Integer> colId;
    @FXML private TableColumn<Transaction, String> colMember, colBook, colDate, colStatus;
    @FXML private TextField txtSearch;

    private TransactionDAO transDAO = new TransactionDAO();

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        colId.setCellValueFactory(new PropertyValueFactory<>("id"));
        
        // ၸူၵ်းဢဝ် Full Name လုၵ်ႉတီႈ Member Object
        colMember.setCellValueFactory(data -> 
            new SimpleStringProperty(data.getValue().getMember().getFullName()));
        
        // ၸူၵ်းဢဝ် Title လုၵ်ႉတီႈ Book Object
        colBook.setCellValueFactory(data -> 
            new SimpleStringProperty(data.getValue().getBook().getTitle()));
            
        colDate.setCellValueFactory(new PropertyValueFactory<>("date"));
        colStatus.setCellValueFactory(new PropertyValueFactory<>("status"));

        refreshTable();
    }

    private void refreshTable() {
        transactionTable.setItems(transDAO.findAll());
    }
    
    @FXML
    private void handleRefresh() { refreshTable(); }
}
```



---

### 🎓 Summary for Thung Mao Kham Students

* **Object-Oriented UI**: ၵၢၼ်သိမ်း `Member member` တႅၼ်း `int memberId` မၼ်းႁဵတ်းႁႂ်ႈႁဝ်း ၸၢင်ႈၼႄၶေႃႈမုၼ်းလုၵ်ႉၼႂ်း Object လႆႈၵမ်းလဵဝ် တီႈ TableView ၶႃႈ။
* **SQL Joins for Clarity**: ၵၢၼ်ၸႂ်ႉ **SQL JOIN** ၼၼ်ႉ ယႂ်ႇပဵၼ် (Necessary) တႄႉတႄႉ၊ ယွၼ်ႉမၼ်းလႅၵ်ႈလၢႆႈ ID ဢၼ်ပဵၼ်မၢႆၼပ်ႉ ႁႂ်ႈပဵၼ် "ၸိုဝ်ႈ" ဢၼ်ၵူၼ်းႁဝ်းလူလႆႈငၢႆႈၶႃႈ။
* **Consistent Styling**: ႁဝ်းၸႂ်ႉ `style.css` တွၼ်ႈတႃႇႁႂ်ႈ TableView လႄႈ Search Field တူၺ်းလီမိူၼ်ၼင်ႇၼႃႈလိၵ်ႈ Books လႄႈ Members ၶႃႈ။