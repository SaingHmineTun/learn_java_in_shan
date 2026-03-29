## Lesson 43: The Data Model (Expense POJO Class)

**POJO** ၼႆႉ ယေႃႈမႃးတီႈ **Plain Old Java Object** ၶႃႈ။ 
မၼ်းပဵၼ် Class ယူဝ်းယူဝ်း ဢၼ်မီး Variables တွၼ်ႈတႃႇၵဵပ်းၶေႃႈမုၼ်း 
ႁႂ်ႈမႅၼ်ႈၸွမ်း Table **`expenses`** ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉၶႃႈ။



### 1. Defining the Model (`Expense.java`)
ႁဝ်းတေတႅမ်ႈ Class ၼႆႉဝႆႉၼႂ်း Package **`com.itsaimao.model`** ၶႃႈ။

```java
package com.itsaimao.model;

import java.time.LocalDate;

public class Expense {
    // 1. Private Fields (Encapsulation)
    private int id;
    private String description;
    private double amount;
    private String category;
    private LocalDate date;

    // 2. Default Constructor (လူဝ်ႇမီးတူဝ်ႇသေႇ တွၼ်ႈတႃႇ Library တၢင်ႇဢၼ်ၸႂ်ႉ)
    public Expense() {}

    // 3. Parameterized Constructor (တွၼ်ႈတႃႇသၢင်ႈ Object ဝႆးဝႆး)
    public Expense(String description, double amount, String category, LocalDate date) {
        this.description = description;
        this.amount = amount;
        this.category = category;
        this.date = date;
    }

    // 4. Getters and Setters (တွၼ်ႈတႃႇလူတ်ႇ လႄႈ မႄး ၶေႃႈမုၼ်း)
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public double getAmount() { return amount; }
    public void setAmount(double amount) { this.amount = amount; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }

    public LocalDate getDate() { return date; }
    public void setDate(LocalDate date) { this.date = date; }
}
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Data Modeling)

* **Encapsulation**: ၵၢၼ်တင်ႈ Variables ပဵၼ် **`private`** တေႁဵတ်းႁႂ်ႈ Code ႁဝ်းလွတ်ႈၽေး။ ၵူၼ်းတၢင်ႇၸိူဝ်း ဢၼ်တေလူဝ်ႇမႄးၶေႃႈမုၼ်းၼၼ် တေလႆႈၸႂ်ႉတိုဝ်း **Getter/Setter** ၵူၺ်းၶႃႈ။
* **Mapping Logic**:
    * `int id` ↔ `INT PRIMARY KEY`
    * `String description` ↔ `VARCHAR`
    * `double amount` ↔ `DECIMAL` (ၼႂ်း Java ႁဝ်းၸႂ်ႉ double)
    * `LocalDate date` ↔ `DATE` (ၸႂ်ႉ `java.time.LocalDate` မၼ်းၵွင်ႉၸွမ်း JavaFX `DatePicker` လႆႈငၢႆႈၶႃႈ)



---

### 🎓 Summary for Thung Mao Kham Students

* **Model Class**: ပဵၼ် "Class" ဢၼ် Java ၸႂ်ႉတွၼ်ႈတႃႇ "ႁွပ်ႇ" ၶေႃႈမုၼ်းၵႂႃႇမႃးၼႂ်း App ႁဝ်း။
* **POJO Principle**: လူဝ်ႇမီး Private Fields, No-arg Constructor, လႄႈ Getters/Setters တႃႇသေႇ။
* **Object-Oriented**: တႅမ်ႈ Class ၼိုင်ႈဢၼ် တွၼ်ႈတႃႇ Table ၼိုင်ႈဢၼ် ၼႆႉပဵၼ်လၢႆးတႅမ်ႈ ဢၼ်သႅၼ်ႈသႂ် (Clean Code) ၶႃႈ။