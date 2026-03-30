## Lesson 60: Database Schema (Mapping the Full Library System)

ၼႂ်း App ႁဝ်းၼႆႉ တေမီး Table တင်းသဵင်ႈ **4 ဢၼ်** ဢၼ်ၵွင်ႉၵၢႆႇၵၼ်ဝႆႉ။ ႁဝ်းတေလႆႈၸႅၵ်ႇဝႃႈ Table လႂ်ၵဵပ်း "ၵူၼ်းႁဵတ်းၵၢၼ်"၊ Table လႂ်ၵဵပ်း "ပပ်ႉ" လႄႈ Table လႂ်ၵဵပ်း "ၵၢၼ်ယူတ်ႉပပ်ႉ" ၶႃႈ။



### 1. Table: `users` (Staff / Admin)
ပဵၼ် Table တွၼ်ႈတႃႇ **Librarian (ၵူၼ်းပႂ်ႉႁွင်ႉသမ်ႇမုတ်ႈ)** ၶဝ်ႈၸႂ်ႉ App။
* **id**: (PK) မၢႆၶႅပ်း User။
* **username**: ၸိုဝ်ႈၶဝ်ႈၸႂ်ႉ (Username)။
* **password**: Password ဢၼ် Hashed ဝႆႉ (တွၼ်ႈတႃႇ Security)။
* **role**: (ADMIN / STAFF) တွၼ်ႈတႃႇၸႅၵ်ႇဢၢၼ်ႇၼၢတ်ႈၵၢၼ်။

### 2. Table: `members` (Library Card Holders)
ပဵၼ် Table ၵဵပ်းသဵၼ်ႈၸိုဝ်ႈလုၵ်ႈႁဵၼ်း ဢမ်ႇၼၼ် ၵူၼ်းမိူင်းမၢဝ်း ဢၼ်မီးသိုင်ႇယူတ်ႉပပ်ႉ။
* **id**: (PK) မၢႆၶႅပ်း Member။
* **full_name**: ၸိုဝ်ႈတႅမ်ႈလိၵ်ႈတႆး (Supported Shan Unicode)။
* **phone**: မၢႆၾူၼ်း တွၼ်ႈတႃႇတိတ်းတေႃႇ မိူဝ်ႈလိုမ်းသူင်ႇပပ်ႉ။

### 3. Table: `books` (Book Inventory)
ပဵၼ် Table ၵဵပ်းၶေႃႈမုၼ်းပပ်ႉလိၵ်ႈ တင်းသဵင်ႈ။ ႁဝ်းလူဝ်ႇၵဵပ်းပႃး **Inventory Logic** ၶႃႈ။
* **id**: (PK) မၢႆၶႅပ်းပပ်ႉ။
* **title**: ၸိုဝ်ႈပပ်ႉ (Shan/English/Burmese)။
* **author**: ၸိုဝ်ႈၵူၼ်းတႅမ်ႈ။
* **total_qty**: ပပ်ႉတင်းသဵင်ႈ ဢၼ်မီးၼႂ်း Library။
* **available_qty**: ပပ်ႉဢၼ်ၵိုတ်းဝႆႉ တေႃႇၼႃႈ Shelf (တွၼ်ႈတႃႇ Logic ယိမ်ပပ်ႉ)။

### 4. Table: `transactions` (Borrow & Return Records)
ၼႆႉပဵၼ် **"Heart"** ၶေႃႈ App ႁဝ်း၊ မၼ်းတေ JOIN ဢဝ် Table တင်းသဵင်ႈမႃးၸုမ်ႇၵၼ်ၶႃႈ။
* **id**: (PK)။
* **user_id**: (FK) ၵွင်ႉၸူး `users.id` (Admin ၵေႃႉလႂ်ပဵၼ်ၵူၼ်းႁဵတ်းၵၢၼ်ပၼ်)။
* **member_id**: (FK) ၵွင်ႉၸူး `members.id` (ၽႂ်ယိမ်ၵႂႃႇ)။
* **book_id**: (FK) ၵွင်ႉၸူး `books.id` (ယိမ်ပပ်ႉလႂ်ၵႂႃႇ)။
* **issue_date**: ဝၼ်းယိမ်။
* **status**: (BORROWED / RETURNED)။

---

### 🛠️ Full SQL Script (MySQL)

တႅမ်ႈ SQL ၼင်ႇၼႆ ၼႂ်း MySQL Workbench ဢမ်ႇၼၼ် PHPMyAdmin ၶႃႈ။

```sql
-- 1. Table တွၼ်ႈတႃႇ Staff Login
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) DEFAULT 'ADMIN'
);

-- 2. Table ၵူၼ်းယူတ်ႉပပ်ႉ (Members)
CREATE TABLE members (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    phone VARCHAR(20)
);

-- 3. Table ပပ်ႉလိၵ်ႈ (Inventory Focused)
CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,    
    author VARCHAR(100),             
    category VARCHAR(50),           
    isbn VARCHAR(20) UNIQUE,        
    total_qty INT NOT NULL DEFAULT 1,         
    available_qty INT NOT NULL DEFAULT 1,     
    description TEXT,                
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4. Table ၵၢၼ်ယူတ်ႉ (The Master Join Table)
CREATE TABLE transactions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    member_id INT,
    book_id INT,
    issue_date DATE,
    status VARCHAR(20) DEFAULT 'BORROWED',
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL,
    FOREIGN KEY (member_id) REFERENCES members(id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE
);
```

---

### 🎓 Summary for Thung Mao Kham Students

* **Normalization**: ႁဝ်းၸႅၵ်ႇ Code ပဵၼ် 4 Table ၼင်ႇၼႆ ႁဵတ်းႁႂ်ႈ Data ႁဝ်းဢမ်ႇသုၵ်ႉယုင်ႈ (Organized)။
* **Foreign Key (FK)**: ပဵၼ် "ၵၢၼ်ၵွင်ႉ" (Relationship)။ သင်ႁဝ်းယႃႉ (Delete) Member ၵေႃႉၼိုင်ႈပႅတ်ႈ၊ ၶေႃႈမုၼ်း Transaction ၶဝ်ၵေႃႈတေလူႉၵႂႃႇၸွမ်း (Cascade) ၼင်ႇႁႂ်ႈ Data ၼႂ်း DB ႁဝ်းသႅၼ်ႈသႂ်ၶႃႈ။
* **Inventory Logic**: တွၼ်ႈတႃႇ Lesson တၢင်ႇဢၼ်၊ ႁဝ်းတေလႆႈတႅမ်ႈ Java Code ႁႂ်ႈမၼ်းၵႂႃႇ Update `available_qty` ၼႂ်း Table `books` ၵူႈပွၵ်ႈ ဢၼ်မီးၵၢၼ်ယိမ်/သူင်ႇၶႃႈ။

---