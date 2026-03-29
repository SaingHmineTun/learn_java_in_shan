## 📘 Lesson 51: Database Migration (Importing SQL Files)

**Database Migration** ၼႆႉ မၢႆထိုင်ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်း လုၵ်ႉတီႈၾၢႆႇၼိုင်ႈ (ၼင်ႇ .sql) သိုဝ်ႈၵႂႃႇၸူး Database Server ႁဝ်းၶႃႈ။ 
မၼ်းႁဵတ်းႁႂ်ႈလုၵ်ႈႁဵၼ်းၵူႈၵေႃႉ မီးၶေႃႈမုၼ်းဢၼ်မိူၼ်ၵၼ် တွၼ်ႈတႃႇၸၢမ်း App ၶႃႈ။



### 1. Preparing the SQL File (ၵၢၼ်ႁၢင်ႈႁႅၼ်း)
မိူဝ်ႈပႆႇ Import၊ လူဝ်ႇႁႂ်ႈ ၼႂ်းၾၢႆႇ `shan_proverbs.sql` ၼၼ်ႉ မီး Code တွၼ်ႈတႃႇသၢင်ႈ Table ပႂ်ႉဝႆႉၶႃႈ:

```sql
-- ၼႂ်းၾၢႆႇ .sql လူဝ်ႇမီး Schema ၼင်ႇၼႆ:
CREATE TABLE IF NOT EXISTS shan_proverbs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    proverb_key VARCHAR(10) NOT NULL,
    proverb TEXT NOT NULL
);
```

---

### 2. Steps to Import (လၢႆးႁဵတ်းၸွမ်းထႅဝ်)

1.  ပိုတ်ႇ **MySQL Workbench** သေ ၶဝ်ႈၵႂႃႇၼႂ်း Connection ႁဝ်း။
2.  ၵႂႃႇတီႈ Menu **File** > **Open SQL Script...**။
3.  လိူၵ်ႈဢဝ်ၾၢႆႇ **`shan_proverbs.sql`** ဢၼ်ႁဝ်းမီးဝႆႉၼၼ်ႉ။
4.  မိူဝ်ႈ Code ပိုတ်ႇမႃးယဝ်ႉၼၼ်ႉ ထႅမ်လိၵ်ႈသႂ်ႇ `USE tmk_db;` တီႈၼိူဝ်သုတ်း မၼ်းၸင်ႇတေႁူႉဝႃႈ တေလႆႈၵႂႃႇထွၵ်ႇသႂ်ႇၼႂ်း Database တူဝ်လႂ်ၶႃႈ။
5.  ၼဵၵ်းပုမ်ႇ **Lightning Bolt (⚡)** တွၼ်ႈတႃႇ Execute ၵမ်းလဵဝ်ၶႃႈ။



---

### 3. Verification (ၵၢၼ်ၸႅတ်ႈတူၺ်း)
မိူဝ်ႈ Server ႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈ (Output Window ၼႄသီၶဵဝ်) ၼၼ်ႉ တႅမ်ႈ SQL တွၼ်ႈတႃႇထတ်းတူၺ်း ၶေႃႈမုၼ်းတႄႉၶႃႈ:

```sql
SELECT COUNT(*) FROM shan_proverbs; 
-- တေလႆႈဢွၵ်ႇမႃး 2,624 ၼႆၶႃႈ!
```

---

### 🛠️ Technical Tip for Students (ၶေႃႈၾၢင်ႉ)

* **Encoding**: ယွၼ်ႉလိၵ်ႈတႆးပဵၼ် (Unicode) လႄႈ ႁဵတ်း Database ပဵၼ်ဝႆႉ **`utf8mb4`** ၶႃႈ။ သင်ဢမ်ႇၼၼ် လိၵ်ႈတႆးတေပဵၼ် "???" ၶႃႈ။
* **Large Files**: သင်ၾၢႆႇ SQL ယႂ်ႇၼႃႇ (ၼင်ႇ 100MB+)၊ ၵၢၼ်ပိုတ်ႇ Script ၼႂ်း Workbench ၸၢင်ႈႁဵတ်းႁႂ်ႈ Computer ၵိုတ်း/ထိူင်း ၶႃႈ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ **Server > Data Import** တွၼ်ႈတႃႇ Import ၾၢႆႇယႂ်ႇယႂ်ႇလႆႈငၢႆႈလိူဝ်ၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **SQL Script**: ပဵၼ် "ပပ်ႉမၢႆတွင်း" ဢၼ်ၵဵပ်း Code တင်းသဵင်ႈ တွၼ်ႈတႃႇသၢင်ႈ Database။
* **Importing**: ၵၢၼ်လူတ်ႇၶေႃႈမုၼ်းဢၼ်မီးၼမ်ၼမ် ၶဝ်ႈ Database ဝႆးဝႆး ဢမ်ႇလူဝ်ႇတႅမ်ႈ Java Code ထႅင်ႈၶႃႈ။