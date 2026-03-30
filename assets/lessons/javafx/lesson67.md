## Lesson 67: BaseDAO Interface (Generic Types)

မိူဝ်ႈႁဝ်းတေႁဵတ်း CRUD တွၼ်ႈတႃႇ `Books`, `Members`, လႄႈ `Users` ၼၼ်ႉ၊ သင်ႁဝ်းတႅမ်ႈ Method `save()`, `update()`, `delete()` ဝႆႉၵူႈ Class မၼ်းတေၼမ်ပူၼ်ႉတီႈၶႃႈ (Redundant Code)။ 
ႁဝ်းတေၸႂ်ႉ **Generic Types (<T>)** တွၼ်ႈတႃႇသၢင်ႈ Template ၵၢင်ၼိုင်ႈဢၼ်ၶႃႈ။

### 1. Why use BaseDAO? (ႁဵတ်းသင်လူဝ်ႇၸႂ်ႉ?)

* **Reusability**: တႅမ်ႈ Method တီႈလဵဝ် ၸႂ်ႉလႆႈတင်း Books လႄႈ Members။
* **Consistency**: ႁဵတ်းႁႂ်ႈ DAO ၵူႈတူဝ် မီး Standard မိူၼ်ၵၼ်။
* **Maintenance**: သင်လူဝ်ႇမႄး Logic ၵၢၼ် Update၊ မႃးမႄးတီႈ BaseDAO တီႈလဵဝ်ၵေႃႈ ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ။

-----

### 2. Implementing `BaseDAO.java` (The Interface)

ႁဝ်းတေၸႂ်ႉ `<T>` တွၼ်ႈတႃႇတႅၼ်ႈ "Object" ဢၼ်ႁဝ်းတေၸႂ်ႉ (ၼင်ႇ Book ဢမ်ႇၼၼ် Member) ၶႃႈ။

```java
import javafx.collections.ObservableList;

public interface BaseDAO<T> {
    // 1. Save Data
    boolean save(T data);
    
    // 2. Update Data
    boolean update(T data);
    
    // 3. Delete Data
    boolean delete(int id);
    
    // 4. Get Single Data by ID
    T findById(int id);
    
    // 5. Get All Data (တွၼ်ႈတႃႇ TableView)
    ObservableList<T> findAll();
}
```

-----

### 3\. How to extend in `MemberDAO.java`

မိူဝ်ႈႁဝ်းသၢင်ႈ `MemberDAO`၊ ႁဝ်းတေ Implement `BaseDAO` သေ တႅၼ်ႈ `<T>` လူၺ်ႈ `<Member>` ၶႃႈ။

```java
package top.saimao.dao;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import top.saimao.model.Member;
import top.saimao.utils.Database;

import java.sql.*;

public class MemberDAO implements BaseDAO<Member> {

    @Override
    public boolean save(Member member) {
        String sql = "INSERT INTO members (full_name, phone) VALUES (?, ?)";
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, member.getFullName());
            ps.setString(2, member.getPhone());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean update(Member member) {
        String sql = "UPDATE members SET full_name = ?, phone = ? WHERE id = ?";
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, member.getFullName());
            ps.setString(2, member.getPhone());
            ps.setInt(3, member.getId());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean delete(int id) {
        String sql = "DELETE FROM members WHERE id = ?";
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Member findById(int id) {
        String sql = "SELECT * FROM members WHERE id = ?";
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return new Member(
                        rs.getInt("id"),
                        rs.getString("full_name"),
                        rs.getString("phone")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public ObservableList<Member> findAll() {
        ObservableList<Member> members = FXCollections.observableArrayList();
        String sql = "SELECT * FROM members ORDER BY id DESC";

        try (Connection conn = Database.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                members.add(new Member(
                        rs.getInt("id"),
                        rs.getString("full_name"),
                        rs.getString("phone")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return members;
    }
}
```

-----

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Generic)

* **Generic Type `<T>`**: မၼ်းပဵၼ် "Placeholder" ၶႃႈ။ မိူဝ်ႈႁဝ်းတႅမ်ႈ `BaseDAO<Book>`၊ Java တေႁူႉၵမ်းလဵဝ်ဝႃႈ Method `save(T data)` ၼၼ်ႉ ပဵၼ် `save(Book data)` ၼႆၶႃႈ။
* **ObservableList**: ႁဝ်းၸႂ်ႉ `ObservableList` တႅၼ်ႈ `List` ယူဝ်းယူဝ်း ယွၼ်ႉမၼ်းၵွင်ႉၵၢႆႇတင်း **TableView** ၼႂ်း JavaFX လႆႈလီသေပိူၼ်ႈၶႃႈ။

-----

### 🎓 Summary for Thung Mao Kham Students

* **Clean Code**: ၵၢၼ်ၸႂ်ႉ `BaseDAO` ႁဵတ်းႁႂ်ႈ Project ႁဝ်း တူၺ်းသႅၼ်ႈသႂ် လႄႈ ပဵၼ် Standard မိူၼ် Programmer ၵတ်ႉၶဝ်တႅမ်ႈၶႃႈ။
* **Future Proof**: သင်ဝၼ်းၼိုင်ႈ ႁဝ်းထႅမ် Table မႂ်ႇ (ၼင်ႇ `Category`), ႁဝ်းၵေႃႈၵူၺ်းလူဝ်ႇသၢင်ႈ `CategoryDAO` သေ `implements BaseDAO` ၵေႃႈ ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ။

-----