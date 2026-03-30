## Lesson 70: Book Inventory (CRUD)

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈပိူင် Inventory တွၼ်ႈတႃႇၵုမ်းပပ်ႉလိၵ်ႈ ဢၼ်မီးၼႂ်း **Thung Mao Kham** ႁဝ်းၶႃႈ။



### 1. Database Schema
ၸႂ်ႉ SQL ၼႆႉ တွၼ်ႈတႃႇသၢင်ႈ Table ၼႂ်း MySQL ႁဝ်းၶႃႈ။

```sql
CREATE TABLE IF NOT EXISTS books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100),
    category VARCHAR(50),
    isbn VARCHAR(20) UNIQUE,
    publisher VARCHAR(100),
    total_qty INT DEFAULT 1,
    available_qty INT DEFAULT 1,
    image_path VARCHAR(255) DEFAULT 'default_book.png'
);
```

---

### 2. The Model: `Book.java`
ႁဝ်းလူဝ်ႇမီး Variables ႁႂ်ႈၵိုၵ်းၵၼ်တင်း Database Columns ၶႃႈ။

```java
public class Book {
    private int id;
    private String title;
    private String author;
    private String category;
    private String isbn;
    private String publisher;
    private int totalQty;
    private int availableQty;
    private String imagePath;

    // Full Constructor
    public Book(int id, String title, String author, String category, String isbn, String publisher, int totalQty, int availableQty, String imagePath) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.category = category;
        this.isbn = isbn;
        this.publisher = publisher;
        this.totalQty = totalQty;
        this.availableQty = availableQty;
        this.imagePath = imagePath;
    }

    // Getters and Setters...
}
```

---

### 3. The Data Tier: `BookDAO.java`
ႁဝ်းတႅမ်ႈ Code တွၼ်ႈတႃႇသိမ်းၶေႃႈမုၼ်းပပ်ႉ ႁႂ်ႈၸုမ်ႇၵူႈလွၵ်းၶႃႈ။

```java

public class BookDAO implements BaseDAO<Book> {

    @Override
    public boolean save(Book book) {
        String sql = "INSERT INTO books (title, author, category, isbn, publisher, total_qty, available_qty, image_path) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = DBConnection.getInstance().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, book.getTitle());
            ps.setString(2, book.getAuthor());
            ps.setString(3, book.getCategory());
            ps.setString(4, book.getIsbn());
            ps.setString(5, book.getPublisher());
            ps.setInt(6, book.getTotalQty());
            ps.setInt(7, book.getTotalQty()); // ၵမ်းတႄႇ Available တူင်ႇ Total
            ps.setString(8, book.getImagePath());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean update(Book data) {
        String sql = "UPDATE books SET title = ?, author = ?, category = ?, isbn = ?, publisher = ?, total_qty = ?, available_qty = ?, image_path = ? WHERE id = ?";
        try (Connection conn = DBConnection.getInstance().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, data.getTitle());
            ps.setString(2, data.getAuthor());
            ps.setString(3, data.getCategory());
            ps.setString(4, data.getIsbn());
            ps.setString(5, data.getPublisher());
            ps.setInt(6, data.getTotalQty());
            ps.setInt(7, data.getAvailableQty());
            ps.setString(8, data.getImagePath());
            ps.setInt(9, data.getId());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    @Override
    public boolean delete(int id) {
        String sql = "DELETE FROM books WHERE id = ?";
        try (Connection conn = DBConnection.getInstance().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Book findById(int id) {
        String sql = "SELECT * FROM books WHERE id = ?";
        try (Connection conn = DBConnection.getInstance().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new Book(
                            rs.getInt("id"), rs.getString("title"), rs.getString("author"),
                            rs.getString("category"), rs.getString("isbn"), rs.getString("publisher"),

                            rs.getInt("total_qty"), rs.getInt("available_qty"), rs.getString("image_path")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public ObservableList<Book> findAll() {
        ObservableList<Book> books = FXCollections.observableArrayList();
        String sql = "SELECT * FROM books ORDER BY id DESC";
        try (Connection conn = DBConnection.getInstance().getConnection();
             Statement st = conn.createStatement();
             ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                books.add(new Book(
                        rs.getInt("id"), rs.getString("title"), rs.getString("author"),
                        rs.getString("category"), rs.getString("isbn"), rs.getString("publisher"),
                        rs.getInt("total_qty"), rs.getInt("available_qty"), rs.getString("image_path")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return books;
    }

}
```

---

### 4. FXML UI Structure: `BookView.fxml`
ႁဝ်းတေၸႂ်ႉ `GridPane` တွၼ်ႈတႃႇဝၢင်း TextField ႁႂ်ႈမၼ်းတူၺ်းငၢႆႈ လႄႈ ၸႅၼ်ႇလႅင်းၶႃႈ။

```xml
<?xml version="1.0" encoding="UTF-8"?>

<?import javafx.geometry.Insets?>
<?import javafx.scene.control.*?>
<?import javafx.scene.image.ImageView?>
<?import javafx.scene.image.Image?>
<?import javafx.scene.layout.*?>

<VBox spacing="25" styleClass="content-pane" stylesheets="@../css/style.css"
    xmlns:fx="http://javafx.com/fxml" fx:controller="top.saimao.controller.BookController">

    <padding>
        <Insets top="30" right="30" bottom="30" left="30"/>
    </padding>

    <Label text="ၸတ်းၵၢၼ်ပပ်ႉလိၵ်ႈ (Book Inventory)" styleClass="title-label"/>

    <HBox spacing="20" styleClass="toolbar-pane" alignment="CENTER_LEFT">

        <VBox spacing="10" alignment="CENTER">
            <ImageView fx:id="imgBook" fitWidth="100" fitHeight="130" pickOnBounds="true" preserveRatio="true">
                <image>
                    <Image url="@../images/default_book.png"/>
                </image>
            </ImageView>
            <Button text="Change" onAction="#handleSelectImage" styleClass="update-button" prefWidth="80"/>
        </VBox>

        <GridPane hgap="10" vgap="10" HBox.hgrow="ALWAYS">
            <TextField fx:id="txtTitle" promptText="Book Title" GridPane.columnIndex="0" GridPane.rowIndex="0" prefWidth="250"/>
            <TextField fx:id="txtAuthor" promptText="Author" GridPane.columnIndex="1" GridPane.rowIndex="0" prefWidth="200"/>
            <TextField fx:id="txtCategory" promptText="Category" GridPane.columnIndex="0" GridPane.rowIndex="1"/>
            <TextField fx:id="txtIsbn" promptText="ISBN" GridPane.columnIndex="1" GridPane.rowIndex="1"/>
            <TextField fx:id="txtPublisher" promptText="Publisher" GridPane.columnIndex="2" GridPane.rowIndex="0"/>
            <TextField fx:id="txtQty" promptText="Total Qty" GridPane.columnIndex="2" GridPane.rowIndex="1" prefWidth="80"/>
        </GridPane>

        <VBox spacing="10" alignment="CENTER">
            <Button text="ADD" onAction="#handleAddBook" styleClass="add-button" prefWidth="100"/>
            <Button text="UPDATE" onAction="#handleUpdateBook" styleClass="update-button" prefWidth="100"/>
            <Button text="DELETE" onAction="#handleDeleteBook" styleClass="delete-button" prefWidth="100"/>
        </VBox>
    </HBox>

    <TableView fx:id="bookTable" VBox.vgrow="ALWAYS">
        <columnResizePolicy>
            <TableView fx:constant="CONSTRAINED_RESIZE_POLICY"/>
        </columnResizePolicy>
        <columns>
            <TableColumn fx:id="colId" text="ID" maxWidth="50"/>
            <TableColumn fx:id="colTitle" text="Title"/>
            <TableColumn fx:id="colAuthor" text="Author"/>
            <TableColumn fx:id="colCategory" text="Category"/>
            <TableColumn fx:id="colQty" text="Total"/>
            <TableColumn fx:id="colAvailable" text="Available"/>
        </columns>
    </TableView>
</VBox>
```

### 5. Controller: `BookController.java`

```java

public class BookController implements Initializable {

    @FXML
    private TextField txtTitle, txtAuthor, txtCategory, txtIsbn, txtPublisher, txtQty;
    @FXML
    private ImageView imgBook;
    @FXML
    private TableView<Book> bookTable;
    @FXML
    private TableColumn<Book, Integer> colId, colQty, colAvailable;
    @FXML
    private TableColumn<Book, String> colTitle, colAuthor, colCategory;

    private BookDAO bookDAO = new BookDAO();
    private File selectedFile;
    private final String BOOK_PHOTO_DIR = "book_covers/";

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        // 1. Setup Table Columns
        colId.setCellValueFactory(new PropertyValueFactory<>("id"));
        colTitle.setCellValueFactory(new PropertyValueFactory<>("title"));
        colAuthor.setCellValueFactory(new PropertyValueFactory<>("author"));
        colCategory.setCellValueFactory(new PropertyValueFactory<>("category"));
        colQty.setCellValueFactory(new PropertyValueFactory<>("totalQty"));
        colAvailable.setCellValueFactory(new PropertyValueFactory<>("availableQty"));

        refreshTable();

        // 2. Selection Listener: Show data and image when row is clicked
        bookTable.getSelectionModel().selectedItemProperty().addListener((obs, oldVal, newVal) -> {
            if (newVal != null) {
                txtTitle.setText(newVal.getTitle());
                txtAuthor.setText(newVal.getAuthor());
                txtCategory.setText(newVal.getCategory());
                txtIsbn.setText(newVal.getIsbn());
                txtPublisher.setText(newVal.getPublisher());
                txtQty.setText(String.valueOf(newVal.getTotalQty()));
                displayImage(newVal.getImagePath());
            }
        });
    }

    @FXML
    public void handleSelectImage() {
        FileChooser fileChooser = new FileChooser();
        fileChooser.getExtensionFilters().add(new FileChooser.ExtensionFilter("Images", "*.png", "*.jpg", "*.jpeg"));
        selectedFile = fileChooser.showOpenDialog(null);

        if (selectedFile != null) {
            imgBook.setImage(new Image(selectedFile.toURI().toString()));
        }
    }

    private String saveImageToLocal() throws IOException {
        if (selectedFile == null) return "default_book.png";

        File destFolder = new File(BOOK_PHOTO_DIR);
        if (!destFolder.exists()) destFolder.mkdirs();

        String fileName = System.currentTimeMillis() + "_" + selectedFile.getName();
        File destFile = new File(destFolder, fileName);
        Files.copy(selectedFile.toPath(), destFile.toPath());

        return fileName;
    }

    private void displayImage(String imageName) {
        File file = new File(BOOK_PHOTO_DIR + imageName);
        if (file.exists()) {
            imgBook.setImage(new Image(file.toURI().toString()));
        } else {
            imgBook.setImage(new Image(getClass().getResource("/images/default_book.png").toExternalForm()));
        }
    }

    @FXML
    private void handleAddBook() {
        try {
            if (txtTitle.getText().isEmpty() || txtQty.getText().isEmpty()) {
                AlertMaker.showAlert(Alert.AlertType.WARNING, "Warning", "Input Required", "Title and Quantity are required!");
                return;
            }

            String imageName = saveImageToLocal();
            int qty = Integer.parseInt(txtQty.getText());

            Book newBook = new Book(0, txtTitle.getText(), txtAuthor.getText(),
                    txtCategory.getText(), txtIsbn.getText(),
                    txtPublisher.getText(), qty, qty, imageName);

            if (bookDAO.save(newBook)) {
                refreshTable();
                clearFields();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void refreshTable() {
        bookTable.setItems(bookDAO.findAll());
    }

    private void clearFields() {
        txtTitle.clear();
        txtAuthor.clear();
        txtCategory.clear();
        txtIsbn.clear();
        txtPublisher.clear();
        txtQty.clear();
        selectedFile = null;
        imgBook.setImage(new Image(getClass().getResource("/images/default_book.png").toExternalForm()));
    }

    public void handleUpdateBook(ActionEvent event) {
        try {
            Book selectedBook = bookTable.getSelectionModel().getSelectedItem();
            if (selectedBook != null) {
                selectedBook.setTitle(txtTitle.getText());
                selectedBook.setAuthor(txtAuthor.getText());
                selectedBook.setCategory(txtCategory.getText());
                selectedBook.setIsbn(txtIsbn.getText());
                selectedBook.setPublisher(txtPublisher.getText());
                selectedBook.setTotalQty(Integer.parseInt(txtQty.getText()));
                selectedBook.setImagePath(saveImageToLocal());
                if (bookDAO.update(selectedBook)) {
                    refreshTable();
                    clearFields();
                }
                AlertMaker.showAlert(Alert.AlertType.INFORMATION, "Success", "Update Success", "Book updated successfully!");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void handleDeleteBook(ActionEvent event) {
        try {
            Book selectedBook = bookTable.getSelectionModel().getSelectedItem();
            if (selectedBook != null) {
                if (bookDAO.delete(selectedBook.getId())) {
                    refreshTable();
                    clearFields();
                }
                AlertMaker.showAlert(Alert.AlertType.INFORMATION, "Success", "Delete Success", "Book deleted successfully!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
```

---

### 🎓 Summary for Thung Mao Kham Students
* **Category Column**: ၵၢၼ်ထႅမ် `category` ၸွႆႈႁႂ်ႈႁဝ်းၸၢင်ႈ Search တူၺ်းပပ်ႉ "လိၵ်ႈတႆး" ဢမ်ႇၼၼ် "ပပ်ႉသၢႆႊ" လႆႈငၢႆႈငၢႆႈၶႃႈ။
* **Initial Stock**: မိူဝ်ႈထႅမ်ပပ်ႉမႂ်ႇ၊ `available_qty` တေလႆႈတူင်ႇ `total_qty` တႃႇသေႇ ယွၼ်ႉပပ်ႉယင်းဢမ်ႇတိုၵ်ႉမီးၵူၼ်းယူတ်ႉၵႂႃႇၶႃႈ။
* **UI Layout**: ၵၢၼ်ၸႅၵ်ႇ Buttons ဝႆႉၽၢႆႇၶႂႃ `GridPane` ႁဵတ်းႁႂ်ႈ User ၼဵၵ်းလႆႈငၢႆႈ မိူဝ်ႈတႅမ်ႈၶေႃႈမုၼ်းယဝ်ႉၶႃႈ။

ၶႅမ်ႉယဝ်ႉႁႃႉၶႃႈ? သိုပ်ႇၵႂႃႇ **Lesson 71: Relational Logic** တွၼ်ႈတႃႇသွၼ်လၢႆးၵုမ်းသဵၼ်ႈမၢႆပပ်ႉ လႆႈယဝ်ႉႁႃႉၶႃႈ?