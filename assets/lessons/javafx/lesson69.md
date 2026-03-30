## ## Lesson 69: Member Profiles (Blob vs. File Path)

ၼႂ်းၵၢၼ်ၵဵပ်းႁၢင်ႈ (Images) ၼၼ်ႉ ႁဝ်းလိူၵ်ႈၸႂ်ႉလၢႆး **File Path** ယွၼ်ႉမၼ်းႁဵတ်းႁႂ်ႈ Database ႁဝ်းလႅၼ်ႈဝႆ (Fast Performance) လႄႈ ၸတ်းၵၢၼ်ငၢႆႈလိူဝ်ၵၢၼ်ၵဵပ်းပဵၼ် BLOB ၼႂ်း Table ၶႃႈ။



### 1. Database Schema Update
ဢွၼ်တၢင်းသုတ်း ႁဝ်းလူဝ်ႇမႄးထႅမ် Column `image_path` ၶဝ်ႈၼႂ်း Table `members` ၶႃႈ။

```sql
-- ထႅမ် Column တွၼ်ႈတႃႇၵဵပ်းၸိုဝ်ႈၾၢႆႇႁၢင်ႈ (Filename)
ALTER TABLE members 
ADD COLUMN image_path VARCHAR(255) DEFAULT 'default.png' AFTER phone;
```

---

### 2. Member Model (`Member.java`)
မႄးထႅမ် Variable `imagePath` ၼႂ်း Class Model ႁဝ်းၶႃႈ။

```java
public class Member {
    private int id;
    private String fullName;
    private String phone;
    private String imagePath; // ထႅမ်သႂ်ႇမႂ်ႇ

    public Member(int id, String fullName, String phone, String imagePath) {
        this.id = id;
        this.fullName = fullName;
        this.phone = phone;
        this.imagePath = imagePath;
    }

    // Getters and Setters
    public String getImagePath() { return imagePath; }
    public void setImagePath(String imagePath) { this.imagePath = imagePath; }
    // ... (other getters/setters)
}
```

---

### 3. MemberDAO (`MemberDAO.java`)
မႄး SQL ၼႂ်း `save` လႄႈ `update` ႁႂ်ႈမၼ်းၵုမ်းၵၢၼ်ပႃး `image_path` ၶႃႈ။

```java
@Override
public boolean save(Member member) {
    String sql = "INSERT INTO members (full_name, phone, image_path) VALUES (?, ?, ?)";
    try (Connection conn = Database.getConnection(); 
         PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setString(1, member.getFullName());
        ps.setString(2, member.getPhone());
        ps.setString(3, member.getImagePath()); 
        return ps.executeUpdate() > 0;
    } catch (SQLException e) {
        e.printStackTrace();
        return false;
    }
}
```

---

### 4. Member Controller (`MemberController.java`)
ၼႆႉပဵၼ် Code ဢၼ်လွင်ႈယႂ်ႇ တွၼ်ႈတႃႇ Copy ႁၢင်ႈၵႂႃႇသိမ်းၼႂ်း Local Folder လႄႈ ၼႄႁၢင်ႈၼိူဝ် UI ၶႃႈ။

```java
public class MemberController implements Initializable {
    @FXML private ImageView imgProfile;
    @FXML private TextField txtName, txtPhone;
    @FXML private TableView<Member> memberTable;

    private File selectedFile;
    private final String PHOTO_DIR = "member_photos/";

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        // ... (Column binding logic)

        // ၼႄႁၢင်ႈ မိူဝ်ႈ Click Row ၼႂ်း Table
        memberTable.getSelectionModel().selectedItemProperty().addListener((obs, oldVal, newVal) -> {
            if (newVal != null) {
                txtName.setText(newVal.getFullName());
                txtPhone.setText(newVal.getPhone());
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
            imgProfile.setImage(new Image(selectedFile.toURI().toString()));
        }
    }

    private String saveImageToLocal() throws IOException {
        if (selectedFile == null) return "default.png";

        File destFolder = new File(PHOTO_DIR);
        if (!destFolder.exists()) destFolder.mkdirs();

        String fileName = System.currentTimeMillis() + "_" + selectedFile.getName();
        File destFile = new File(destFolder, fileName);
        Files.copy(selectedFile.toPath(), destFile.toPath());
        
        return fileName;
    }

    private void displayImage(String imageName) {
        File file = new File(PHOTO_DIR + imageName);
        if (file.exists()) {
            imgProfile.setImage(new Image(file.toURI().toString()));
        } else {
            imgProfile.setImage(new Image(getClass().getResource("/images/default.png").toExternalForm()));
        }
    }

    @FXML
    private void handleAddMember() {
        try {
            String imageName = saveImageToLocal(); // သိမ်းႁၢင်ႈဢွၼ်တၢင်း
            Member m = new Member(0, txtName.getText().trim(), txtPhone.getText().trim(), imageName);
            
            if (memberDAO.save(m)) {
                refreshTable();
                clearFields();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    private void clearFields() {
        txtName.clear();
        txtPhone.clear();
        selectedFile = null;
        imgProfile.setImage(new Image(getClass().getResource("/images/default.png").toExternalForm()));
    }
}
```

---

### 5. FXML UI Structure
ႁဝ်းတေဝၢင်း `ImageView` ဝႆႉၽၢႆႇသၢႆႉၶေႃႈ Inputs ၼင်ႇႁႂ်ႈမၼ်းတူၺ်းလီၶႃႈ။

```xml
<HBox spacing="20" alignment="CENTER_LEFT" styleClass="toolbar-pane">
    <VBox spacing="10" alignment="CENTER">
        <ImageView fx:id="imgProfile" fitWidth="100" fitHeight="100" pickOnBounds="true" preserveRatio="true">
            <Image url="@../images/default.png"/>
        </ImageView>
        <Button text="Change" onAction="#handleSelectImage" styleClass="update-button"/>
    </VBox>

    <VBox spacing="10">
        <HBox spacing="10" alignment="CENTER_LEFT">
            <TextField fx:id="txtName" promptText="Full Name" prefWidth="250"/>
            <TextField fx:id="txtPhone" promptText="Phone" prefWidth="150"/>
        </HBox>
        <HBox spacing="10">
            <Button text="ADD" onAction="#handleAddMember" styleClass="add-button"/>
            <Button text="UPDATE" onAction="#handleUpdateMember" styleClass="update-button"/>
            <Button text="DELETE" onAction="#handleDeleteMember" styleClass="delete-button"/>
        </HBox>
    </VBox>
</HBox>
```

---

### 🎓 Summary for Thung Mao Kham Students
* **The Workflow**: သိမ်းႁၢင်ႈ (Local File) -> ဢဝ်ၸိုဝ်ႈၾၢႆႇ (FileName) -> သိမ်းၶဝ်ႈ Database (Record)။
* **Data Consistency**: ၸိုဝ်ႈၾၢႆႇၼႂ်း Database လူဝ်ႇမိူၼ်ၵၼ်တင်း ၾၢႆႇတူဝ်ၸႂ်ၼႂ်း Folder ၶႃႈ။
* **UI Responsiveness**: ၵၢၼ်ၸႂ်ႉ `selectedItemProperty` listener ႁဵတ်းႁႂ်ႈႁၢင်ႈလႅၵ်ႈလၢႆးၵမ်းလဵဝ် မိူဝ်ႈႁဝ်းလိူၵ်ႈ Member ၵေႃႉမႂ်ႇၼႂ်း Table ၶႃႈ။

ၶႅမ်ႉယဝ်ႉႁႃႉၶႃႈ? သိုပ်ႇၵႂႃႇ **Lesson 70: Book Inventory (CRUD)** လႆႈယဝ်ႉႁႃႉၶႃႈ?