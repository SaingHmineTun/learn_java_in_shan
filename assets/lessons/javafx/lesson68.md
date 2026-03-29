## Lesson 68: Advanced Schema Design (Foreign Keys & Relations)

ၼႂ်း Module 8, ႁဝ်းမီး Table `books` လႄႈ `users` ဝႆႉယဝ်ႉ။ 
ၵူၺ်းၵႃႈ ၼႂ်းပိူင် Library တႄႉတႄႉ၊ ႁဝ်းလူဝ်ႇႁူႉဝႃႈ **"ၽူႈၸႂ်ႉတိုဝ်းၵေႃႉလႂ် ယိမ်ပပ်ႉလႂ်ၵႂႃႇ?"** ၼႆၶႃႈ။ 
တွၼ်ႈတႃႇႁဵတ်းၼႆလႆႈ ႁဝ်းလူဝ်ႇၸႂ်ႉ **Foreign Keys** တွၼ်ႈတႃႇသၢင်ႈ **Relationship** ၶႃႈ။



### 1. Database Relationships (ပိူင်ၵွင်ႉၵၢႆႇ)
ၼႂ်း LMS ႁဝ်း တေမီး Relationship 3 ပိူင်:
* **One-to-Many**: User ၵေႃႉၼိုင်ႈ ၸၢင်ႈယိမ်ပပ်ႉလႆႈ "လၢႆလၢႆပပ်ႉ" (One User Can Borrow Many Books!)။
* **Many-to-One**: ပပ်ႉလၢႆလၢႆပပ်ႉ ထုၵ်ႇယိမ်လႆႈလူၺ်ႈ User ၵေႃႉလဵဝ်။ (Many Books can be borrowed by one user)
* **Many-to-Many**: ပပ်ႉၼိုင်ႈပပ်ႉ ၸၢင်ႈထုၵ်ႇယိမ်လူၺ်ႈ User လၢႆလၢႆၵေႃႉ (ၵူၺ်းၵႃႈ လူဝ်ႇမီး Table ၵၢင် တွၼ်ႈတႃႇၵဵပ်း History)။

---

### 2. Creating the Transaction Table (SQL)
ႁဝ်းလူဝ်ႇသၢင်ႈ Table `transactions` (ဢမ်ႇၼၼ် `borrow_records`) တွၼ်ႈတႃႇပဵၼ် "ၶူဝ်" ၵွင်ႉ `users` လႄႈ `books` ၶႃႈ။

```sql
CREATE TABLE transactions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    book_id INT,
    borrow_date DATE DEFAULT (CURRENT_DATE),
    return_date DATE,
    status ENUM('BORROWED', 'RETURNED') DEFAULT 'BORROWED',
    
    -- သၢင်ႈ Foreign Key တွၼ်ႈတႃႇၵွင်ႉၸူး Table တၢင်ႇဢၼ်
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);
```



---

### 3. Java Model Update (`Transaction.java`)
မိူဝ်ႈၼႂ်း Database မီး Relationship ယဝ်ႉ၊ ၼႂ်း Java ႁဝ်းၵေႃႈလူဝ်ႇမီး Model ဢၼ်ႁပ်ႉၶေႃႈမုၼ်းၸိူဝ်းၼႆႉၶႃႈ။

```java
public class Transaction {
    private int id;
    private User user; // ႁဝ်းဢဝ် Object User မႃးသႂ်ႇၵမ်းလဵဝ် (Professional Way)
    private Book book; // ႁဝ်းဢဝ် Object Book မႃးသႂ်ႇ
    private LocalDate borrowDate;
    private LocalDate returnDate;
    private String status;

    // Getters and Setters...
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Database Design)

* **Referential Integrity**: ၵၢၼ်ၸႂ်ႉ Foreign Key ၸွႆႈၵႅတ်းပၼ်ႁႃ "ၶေႃႈမုၼ်းၽိတ်း"။ မိူၼ်ၼင်ႇ ႁဝ်းတေဢမ်ႇၸၢင်ႈထွၼ် (Delete) User ဢွၵ်ႇလႆႈ သင်ဝႃႈၶဝ်တိုၵ်ႉယိမ်ပပ်ႉဝႆႉယူႇ (MySQL တေ Block ဝႆႉ) ၶႃႈ။
* **Data Consistency**: ႁဵတ်းႁႂ်ႈႁဝ်း ယုမ်ႇၸႂ် ၶေႃႈမုၼ်းၼႂ်း App ႁဝ်းလႆႈ (Reliable) 100% ၶႃႈ။
* **Normalization**: ပဵၼ်ၵၢၼ်ၸတ်းၵၢၼ် Database ႁႂ်ႈၶေႃႈမုၼ်းဢမ်ႇသွၼ်ႉၵၼ် (Redundancy) ၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **Foreign Key**: ပဵၼ် "ၸႅင်ႊ" (Chain) ဢၼ်ၵွင်ႉ Table ၼိုင်ႈဢၼ် ၸူးထႅင်ႈ Table ၼိုင်ႈဢၼ်။
* **Transactions Table**: ပဵၼ် "ပိုၼ်း" (History) ဢၼ်မၢႆဝႆႉဝႃႈ ၽႂ်ယိမ်ပပ်ႉလႂ် ၼၼ်ႉၶႃႈ။
* **Professionalism**: ၵၢၼ်ဢဝ် Object (`User`, `Book`) မႃးသႂ်ႇၼႂ်း Model `Transaction` ႁဵတ်းႁႂ်ႈ Code ႁဝ်းၸတ်းၵၢၼ်လႆႈငၢႆႈ လႄႈ ၵွင်ႉၵၢႆႇၵၼ်လီၶႃႈ။