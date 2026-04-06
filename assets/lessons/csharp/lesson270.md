# Lesson 270: "Basic SQL Commands (CRUD)"

သင်ႁဝ်းတေ ႁဵတ်းၵၢၼ်ၸွမ်း Database ၼႆ လူဝ်လႆႈတွင်းဝႆႉ ၶေႃႈၵႂၢမ်းဢၼ်ဝႃႈ **CRUD** (Create, Read, Update, Delete) ၶႃႈ။

### 1. SELECT (ၵၢၼ်လူ / Read)
ၸႂ်ႉတွၼ်ႈတႃႇ "ထၢမ်" ဢဝ်ၶေႃႈမုၼ်းၼႂ်း Table မႃးၼႄၶႃႈ။
* **Syntax:** `SELECT [Columns] FROM [Table] WHERE [Condition]`
* **တူဝ်ယင်ႇ:** သွၵ်ႈႁႃလုၵ်ႈႁဵၼ်းတင်းမူတ်း ဢၼ်ယူႇတီႈဝၢၼ်ႈ "ဝဵင်းမႂ်ႇ"။
```sql
SELECT * FROM Students WHERE VillageName = 'ဝဵင်းမႂ်ႇ';
```
*(တူဝ်မၢႆ `*` ပွင်ႇဝႃႈ "ဢဝ်ၵူႈ Column" ၶႃႈ)*

### 2. INSERT (ၵၢၼ်ထႅမ် / Create)
ၸႂ်ႉတွၼ်ႈတႃႇ "သႂ်ႇ" ၶေႃႈမုၼ်းမႂ်ႇၶဝ်ႈၵႂႃႇၼႂ်း Table ၶႃႈ။
* **Syntax:** `INSERT INTO [Table] ([Columns]) VALUES ([Values])`
* **တူဝ်ယင်ႇ:** ထႅမ်လုၵ်ႈႁဵၼ်းမႂ်ႇၵေႃႉၼိုင်ႈ။
```sql
INSERT INTO Students (FirstName, LastName, Age) 
VALUES ('ၸၢႆး', 'မိူင်း', 20);
```



### 3. UPDATE (ၵၢၼ်မႄး / Update)
ၸႂ်ႉတွၼ်ႈတႃႇ "လႅၵ်ႈပိၼ်ႇ" ၶေႃႈမုၼ်းဢၼ်မီးဝႆႉယူႇယဝ်ႉၶႃႈ။
* **Syntax:** `UPDATE [Table] SET [Column] = [Value] WHERE [Condition]`
* **တူဝ်ယင်ႇ:** မႄးဢႃႇယု (Age) ႁႂ်းပဵၼ် 21 တွၼ်ႈတႃႇလုၵ်ႈႁဵၼ်းမၢႆ ID 101။
```sql
UPDATE Students SET Age = 21 WHERE StudentID = 101;
```
> **သတိ:** သင်ႁဝ်းလိုမ်းသႂ်ႇ `WHERE` ၼႆၸိုင် မၼ်းတေမႄးလိၵ်ႈၵူႈထႅဝ် (Rows) တင်းမူတ်းၼႂ်း Table ၼၼ်ႉၶႃႈၼႃ!

### 4. DELETE (ၵၢၼ်ယႃႉ / Delete)
ၸႂ်ႉတွၼ်ႈတႃႇ "လူတ်း" ၶေႃႈမုၼ်းဢွၵ်ႇပႅတ်ႈလုၵ်ႉၼႂ်း Table ၶႃႈ။
* **Syntax:** `DELETE FROM [Table] WHERE [Condition]`
* **တူဝ်ယင်ႇ:** ယႃႉသဵၼ်ႈမၢႆလုၵ်ႈႁဵၼ်းမၢႆ ID 101 ဢွၵ်ႇပႅတ်ႈ။
```sql
DELETE FROM Students WHERE StudentID = 101;
```


---

### လွင်ႈလမ်ႇလွင်ႈ: ၶေႃႈသင်ႇ WHERE
ၶေႃႈသင်ႇ **`WHERE`** ပဵၼ်တူဝ်မၵ်းမၼ်ႈ "Target" ၶႃႈ။ သင်ႁဝ်းဢမ်ႇသႂ်ႇ `WHERE` ၼႆ
* `SELECT` တေၼႄတင်းမူတ်း (ဢမ်ႇပဵၼ်သင်)။
* `UPDATE` တေမႄးတင်းမူတ်း (ဢၼ်ၼႆႉ ၸၢင်ႈပဵၼ်ပၼ်ႁႃ)။
* `DELETE` တေယႃႉတင်းမူတ်း (ဢၼ်ၼႆႉ ၸၢင်ႈလႅဝ်တင်းမူတ်း)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Statement:** ၶေႃႈသင်ႇ SQL ၼိုင်ႈဢၼ်။
* **Predicate:** ငဝ်းလၢႆးဢၼ်ႁဝ်းၸႂ်ႉၵူတ်ႇထတ်း (မိူၼ်ၼင်ႇ Age > 18)။
* **NULL:** ၵႃႈၶၼ်ပဝ်ႇ (ဢမ်ႇမီးၶေႃႈမုၼ်း)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင် **ႁဝ်း** ၶႂ်ႈသွၵ်ႈႁႃလုၵ်ႈႁဵၼ်း ဢၼ်မီးဢႃႇယု (Age) လိူဝ် 18 ပီတင်းမူတ်းၼႆ ႁဝ်းထုၵ်ႇလီတႅမ်ႈ Code `SELECT` ၸိူင်ႉႁိုဝ်?
2. ႁဵတ်းသင်ၵၢၼ်ၸႂ်ႉ `UPDATE` လႄႈ `DELETE` ၸင်ႇလူဝ်ႇမီး `WHERE` တႃႇသေႇ? သင်ဢမ်ႇသႂ်ႇတေပဵၼ်သင်?
