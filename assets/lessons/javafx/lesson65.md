## Lesson 65: The DAO Pattern (Professional Architecture)

**DAO Pattern** ပဵၼ်ၵၢၼ်သၢင်ႈ "ၸေႃႈၵၢင်" (Interface) တွၼ်ႈတႃႇၵွင်ႉၸူး Database။ မၼ်းမီးၽွၼ်းလီၼင်ႇၼႆၶႃႈ:
1. **Separation of Concerns**: Controller မီးၼႃႈတီႈၵုမ်း UI ၵူၺ်း၊ ဢမ်ႇလူဝ်ႇႁူႉလွင်ႈ SQL Query။
2. **Maintainability**: သင်ဝႃႈမိူဝ်ႈၼႃႈမႃး ႁဝ်းလႅၵ်ႈလၢႆႈ DB လုၵ်ႉတီႈ MySQL ၵႂႃႇပဵၼ် MongoDB, ႁဝ်းမႄးၵူၺ်းၼႂ်း DAO... Code ၼႂ်း Controller တေဢမ်ႇလႅၵ်ႈလၢႆႈသင်ၶႃႈ။
3. **Reusability**: ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉ Method ၼႂ်း DAO လုၵ်ႉတီႈ Controller လႆႈၶႃႈ။



---

### 1. Defining the Interface (`BaseDAO.java`)
တွၼ်ႈတႃႇပဵၼ် Professional, ႁဝ်းတေၸႂ်ႉ **Generics `<T>`** တွၼ်ႈတႃႇသၢင်ႈ Standard တွၼ်ႈတႃႇ DAO တင်းသဵင်ႈၶႃႈ။

```java
package com.itsaimao.dao;
import java.util.List;

public interface BaseDAO<T> {
    List<T> getAll();
    T getById(int id);
    boolean save(T t);
    boolean update(T t);
    boolean delete(int id);
}
```

---

### 2. Implementing the BookDAO (`BookDAO.java`)
မိူဝ်ႈလဵဝ် `BookDAO` ႁဝ်းတေ "သိုပ်ႇပူၺ်း" (Implement) လုၵ်ႉတီႈ `BaseDAO` ၶႃႈ။

```java
public class BookDAO implements BaseDAO<Book> {
    
    @Override
    public List<Book> getAll() {
        List<Book> list = new ArrayList<>();
        String sql = "SELECT * FROM books";
        // ... Connection & ResultSet Logic ...
        return list;
    }

    @Override
    public boolean save(Book book) {
        String sql = "INSERT INTO books (title, author, isbn) VALUES (?, ?, ?)";
        // ... PreparedStatement Logic ...
        return true;
    }

    // Update လႄႈ Delete ၵေႃႈတႅမ်ႈလူင်းၼႂ်းၼႆႉတင်းသဵင်ႈၶႃႈ...
}
```

---

### 3. Using DAO in Controller (Clean Code)
မိူဝ်ႈႁဝ်းၸႂ်ႉ DAO Pattern ယဝ်ႉ၊ Code ၼႂ်း `LibraryController` ႁဝ်းတေတူၺ်းငၢႆႈ လႄႈ သႅၼ်ႈသႂ် (Clean) ၼႃႇၶႃႈ။

```java
// တီႈဢၼ်တေတႅမ်ႈ SQL ယၢဝ်းယၢဝ်း ၼႂ်း Controller...
// ႁဝ်းၵူၺ်းႁွင်ႉၸႂ်ႉ Method ဢၼ်ၸႅင်ႈလႅင်းၼင်ႇၼႆၵူၺ်းၶႃႈ:

private void loadData() {
    BookDAO dao = new BookDAO();
    bookList.setAll(dao.getAll()); // သႅၼ်ႈသႂ်ၼႃႇ!
}

@FXML
private void handleDelete() {
    // ... validation ...
    if (bookDAO.delete(selectedBook.getId())) {
        bookList.remove(selectedBook);
    }
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ DAO Pattern)

* **Interface Power**: ၵၢၼ်ၸႂ်ႉ `BaseDAO` ႁဵတ်းႁႂ်ႈႁဝ်းၼႄႉၸႂ်ဝႃႈ DAO ၵူႈဢၼ် (BookDAO, UserDAO) တေမီး Method ပိုၼ်ႉထၢၼ် (CRUD) မိူၼ်ၵၼ်တင်းသဵင်ႈၶႃႈ။
* **Loose Coupling**: Controller လႄႈ Database ဢမ်ႇၵွင်ႉၵၼ် "ႁႅင်း" ပူၼ်ႉတီႈ။ မၼ်းၵူၺ်းဢုပ်ႇၵၼ်တီႈ DAO ၶႃႈ။
* **Data Mapping**: ၼႂ်း DAO ႁဝ်းတေဢဝ် Row လုၵ်ႉတီႈ Database မႃးလႅၵ်ႈပဵၼ် **Object Book** ၵမ်းလဵဝ် ၵွၼ်ႇတေသူင်ႇပၼ် Controller ၶႃႈ။



---

### 🎓 Summary for Thung Mao Kham Students
* **DAO Pattern**: ပဵၼ် "ၵူင်" ဢၼ်ၸတ်းၵၢၼ် Database ႁင်းၵူၺ်းမၼ်း။
* **Clean Controller**: Controller မီးၼႃႈတီႈ "သင်ႇၵၢၼ်" ၵူၺ်း၊ ဢမ်ႇလူဝ်ႇ "ႁဵတ်းၵၢၼ်" (SQL) ႁင်းၵူၺ်းမၼ်း။
* **Professionalism**: ၵၢၼ်ၸတ်း Code ၼင်ႇၼႆ ႁဵတ်းႁႂ်ႈ App ႁဝ်းၶိုၼ်ႈယႂ်ႇ (Scale) လႆႈငၢႆႈ လႄႈ ပိူၼ်ႈမႃးဢၢၼ်ႇ Code ႁဝ်းၵေႃႈ ပွင်ႇၸႂ်ငၢႆႈၶႃႈ။

ၵျႅမ််းယဝ်ႉၶႃႈ ၶူးသၢႆမၢဝ်း! မိူဝ်ႈလဵဝ် Code App Library ႁဝ်း ပဵၼ်ပိူင် Professional သုတ်းယဝ်ႉၶႃႈ။

**Next Step:** ႁဝ်းတေမႃးသိုပ်ႇ **Lesson 66: Implementing UI Loaders (ProgressIndicator)** တွၼ်ႈတႃႇၼႄ "တူဝ်မူၼ်း" မိူဝ်ႈ App လူတ်ႇၶေႃႈမုၼ်းၼမ်ၼမ် ႁႂ်ႈ User ႁူႉဝႃႈ App ပႆႇ "ၵိုတ်း" (Freeze) ၼၼ်ႉ ၵမ်းလဵဝ်ႁႃႉၶႃႈ?