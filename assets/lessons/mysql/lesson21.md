# Lesson 21: "Integrity Constraints: NOT NULL, UNIQUE, and DEFAULT"

မိူဝ်ႈႁဝ်းသၢင်ႈ Table ၼၼ်ႉ ႁဝ်းဢမ်ႇၵူၺ်းမၵ်းမၼ်ႈ Data Type ၵူၺ်းၶႃႈ။ 
ႁဝ်းလူဝ်ႇမီး "ပၵ်းၵၢၼ်" တႃႇႁၢမ်ႈဢမ်ႇႁႂ်ႈၵူၼ်းၸႂ်ႉ App သႂ်ႇၶေႃႈမုၼ်းၽိတ်း ဢမ်ႇၼၼ် ဝႆႉပဝ်ႇ (Empty) ၼၼ်ႉၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "ၵၢၼ်ၽိူမ်ႉထႅမ်ၾွမ်ႇ" (Form Filling) ၼိုင်ႈဢၼ်ၶႃႈ...
* **NOT NULL:** မိူၼ်ၼင်ႇ လုၵ်းဢၼ်မီး "တူဝ်လႅင်" (*) - လူဝ်ႇတႅမ်ႈတႃႇသေႇ၊ ႁၢမ်ႈတေဢမ်ႇလႆးဝႆႉပဝ်ႇ။
* **UNIQUE:** မိူၼ်ၼင်ႇ "ၸိုဝ်ႈ User" - တေဢမ်ႇလႆႈမိူၼ်ၵၼ်တင်းပိူၼ်ႈ။
* **DEFAULT:** မိူၼ်ၼင်ႇ "ဝဵင်း" - သင်ၸဝ်ႈၵဝ်ႇဢမ်ႇတႅမ်ႈ... Database တေထႅမ်ပၼ် "မူႇၸေႊ" ႁင်းမၼ်း။



### 2. NOT NULL (ႁၢမ်ႈဝႆႉပဝ်ႇ)
ၸႂ်ႉတွၼ်ႈတႃႇ Column ဢၼ် "လူဝ်ႇမီးၶေႃႈမုၼ်းတႃႇသေႇ" ၶႃႈ။ သင်ႁဝ်းဢမ်ႇသႂ်ႇ... MySQL တေဢမ်ႇပၼ်သိမ်းသေ တေပဵၼ် (Error) ၶႃႈ။
* **Syntax:** `column_name data_type NOT NULL`
* **Best for:** ၸိုဝ်ႈ (Name), Password, Email, PK ID။

### 3. UNIQUE (ႁၢမ်ႈမိူၼ်ၵၼ်)
ၸႂ်ႉတွၼ်ႈတႃႇ ၶေႃႈမုၼ်း "တေဢမ်ႇလႆႈမိူၼ်ၵၼ်" ၼႂ်း Table တင်းမူတ်းၶႃႈ။
* **Syntax:** `column_name data_type UNIQUE`
* **Note:** UNIQUE ၸၢင်ႈပဵၼ် NULL လႆႈ (သင်ႁဝ်းဢမ်ႇလႆႈတင်ႈ NOT NULL ဝႆႉ)။ ၵူၺ်းၵႃႈ သင်မီးၶေႃႈမုၼ်း... မၼ်းတေလႆႈ ပႅၵ်ႇပိူၼ်ႈတႃႇသေႇၶႃႈ။
* **Best for:** Email, Phone Number, NRC ID, Username။

### 4. DEFAULT (ၵႃႈၶၼ်တင်ႈဝႆႉ)
ၸႂ်ႉတွၼ်ႈတႃႇ ထႅမ်ၶေႃႈမုၼ်းပၼ်ႁင်းၶေႃ မိူဝ်ႈၵူၼ်းၸႂ်ႉ App ဢမ်ႇလႆႈသူင်ႇၶေႃႈမုၼ်းမႃးၶႃႈ။
* **Syntax:** `column_name data_type DEFAULT 'value'`
* **Best for:** ဝဵင်း (City), Status (မိူၼ်ၼင်ႇ 'active'), ဝၼ်းသႂ်ႇၶေႃႈမုၼ်း (CURRENT_TIMESTAMP)။

### 5. တူဝ်ယင်ႇ Code: ၵၢၼ်ၸႂ်ႉ Constraints ႁူမ်ႈၵၼ်

```sql
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE, -- လူဝ်ႇမီးတႃႇသေႇ လႄႈ ႁၢမ်ႈသွၼ်ႉပိူၼ်ႈ
    email VARCHAR(100) UNIQUE,           -- ႁၢမ်ႈသွၼ်ႉပိူၼ်ႈ ၵူၺ်းၵႃႈ ဝႆႉပဝ်ႇလႆႈ (NULL)
    country VARCHAR(50) DEFAULT 'Myanmar', -- သင်ဢမ်ႇသႂ်ႇ တေပဵၼ် Myanmar
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- မၢႆၶၢဝ်းယၢမ်း ပၼ်ႁင်းၵူၺ်း
);
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Constraint:** ပၵ်းၵၢၼ်ႁၢမ်ႈ တွၼ်ႈတႃႇ Data Integrity။
* **Nullability:** လွင်ႈပၼ်သုၼ်ႇ (ဢမ်ႇၼၼ် ႁၢမ်ႈ) ဢမ်ႇႁႂ်ႈဝႆႉလုၵ်းပဝ်ႇ။
* **Unique Key:** Column ဢၼ်မီး Constraint UNIQUE (မၼ်းၸွႆႈႁႂ်ႈသွၵ်ႈႁႃဝႆးလိူဝ် ၵွပ်ႈ DB တေႁဵတ်း Index ဝႆႉၶႃႈ)။
* **Literal Default:** ၵႃႈၶၼ် Default ဢၼ်ပဵၼ်လိၵ်ႈ ဢမ်ႇၼၼ် တူဝ်ၼပ်ႉ (Fixed value)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
တႅမ်ႈ Code SQL တႃႇသၢင်ႈ Table **`products`** ဢၼ်မီး Constraints ၸိူဝ်းၼႆႉၶႃႈ...
1.  **`product_id`**: ပဵၼ် Primary Key လႄႈ Auto Increment။
2.  **`product_code`**: ႁၢမ်ႈပဝ်ႇ (NOT NULL) လႄႈ ႁၢမ်ႈသွၼ်ႉပိူၼ်ႈ (UNIQUE)။
3.  **`product_name`**: ႁၢမ်ႈပဝ်ႇ (NOT NULL)။
4.  **`stock_quantity`**: သင်ဢမ်ႇသႂ်ႇ ႁႂ်ႈပဵၼ် **0** (DEFAULT)။
5.  **`category`**: သင်ဢမ်ႇသႂ်ႇ ႁႂ်ႈပဵၼ် **'General'** (DEFAULT)။

---