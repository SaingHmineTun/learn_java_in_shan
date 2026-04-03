# Lesson 6: "Installation & Unicode: Configuring utf8mb4 for Shan Text"

မိူဝ်ႈႁဝ်းတေၸႂ်ႉ MySQL ၼၼ်ႉ ႁဝ်းလူဝ်ႇမီး Software 2 တူဝ်ၶႃႈ။ ဢၼ်ၼိုင်ႈပဵၼ် "တူဝ်ႁဵတ်းၵၢၼ်" (Server) သေ ထႅင်ႈဢၼ်ၼိုင်ႈပဵၼ် "ၼႃႈတႃ Software" (Workbench) ၶႃႈ။

### 1. တီႈ Download (Where to Download)
ႁဝ်းထုၵ်ႇလီ Download ဢဝ်တူဝ် **MySQL Community Server** ဢၼ်ပဵၼ် Free Version ၶႃႈ။
* **Official Website:** [dev.mysql.com/downloads/installer/](https://dev.mysql.com/downloads/installer/)
* **Recommendation:** တွၼ်ႈတႃႇ Windows... ႁဝ်းထုၵ်ႇလီလိူၵ်ႈဢဝ် **"MySQL Installer for Windows"** ၵွပ်ႈမၼ်းတေပႃးမႃးတင်း Server, Workbench, လႄႈ Shell ၼႂ်းတူဝ်လဵဝ်ၵၼ်ၶႃႈ။

### 2. လၢႆး Install ႁႂ်ႈမၢၼ်ႇမႅၼ်ႈ (Installation Steps)
မိူဝ်ႈ Install ၼၼ်ႉ လူဝ်ႇမၢႆတွင်း 3 တီႈၶႃႈ။
1.  **Choosing Setup Type:** လိူၵ်ႈဢဝ် **"Developer Default"** ႁႂ်ႈမၼ်း Install ပၼ်တင်း Workbench လႄႈ Server ၶႃႈ။
2.  **Authentication Method:** လိူၵ်ႈဢဝ် **"Use Strong Password Encryption"** ၶႃႈ။
3.  **Root Password:** တီႈၼႆႉသမ်ႉ **လွင်ႈလူင်** ၶႃႈ။ လူဝ်ႇတင်ႈ Password ဢၼ်ႁဝ်းတေဢမ်ႇလိုမ်း (တူဝ်ယင်ႇ: `root123`)။ ၵွပ်ႈဝႃႈ ႁဝ်းတေလႆႈၸႂ်ႉ Password ၼႆႉ တႃႇၵွင်ႉ Database တႃႇသေႇၶႃႈ။



### 3. ပိူင် Unicode တွၼ်ႈတႃႇလိၵ်ႈတႆး (The utf8mb4 Concept)
မိူဝ်ႈ Install ယဝ်ႉ... ႁဝ်းလူဝ်ႇမႄး "Character Set" (ပိူင်လိၵ်ႈ) မၼ်း ႁႂ်ႈသိမ်းလိၵ်ႈတႆးလႆႈၶႃႈ။
* **ASCII:** သိမ်းလႆႈ လိၵ်ႈဢင်းၵိတ်း လၢႆလၢႆၵူၺ်း။
* **UTF-8:** သိမ်းလႆႈ လိၵ်ႈလၢႆလၢႆၽႃႇသႃႇ။
* **utf8mb4:** ပဵၼ် "UTF-8" ဢၼ်တဵမ်ထူၼ်ႈသုတ်း (မီး 4-byte)။ မၼ်းၸၢင်ႈသိမ်းလႆႈ လိၵ်ႈတႆး၊ လိၵ်ႈမၢၼ်ႈ၊ လႄႈ Emoji (😀, 🚀) ၶႃႈ။

### 4. တူဝ်ယင်ႇ Code: ၵၢၼ်သၢင်ႈ Database တႃႇလိၵ်ႈတႆး
မိူဝ်ႈႁဝ်းသၢင်ႈ Database ၼႂ်း Workbench... ႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈ **Character Set** လႄႈ **Collation** ၸွမ်းၶႃႈ။

```sql
-- သၢင်ႈ Database ဢၼ်ပၼ်သုၼ်ႇသိမ်းလိၵ်ႈတႆး လႆႈမၢၼ်ႇမႅၼ်ႈ
CREATE DATABASE shan_community_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

-- သၢင်ႈ Table ဢၼ်သိမ်းၸိုဝ်ႈတႆး
CREATE TABLE members (
    id INT PRIMARY KEY AUTO_INCREMENT,
    shan_name VARCHAR(100) CHARACTER SET utf8mb4,
    address TEXT CHARACTER SET utf8mb4
);
```

### 5. ၵၢၼ်မႄးလႅၵ်ႈလၢႆႈ Table ဢၼ်မီးဝႆႉယူႇယဝ်ႉ
သင်ႁဝ်းမီး Table ၵဝ်ႇ ဢၼ်သိမ်းလိၵ်ႈတႆးယဝ်ႉ ဢွၵ်ႇပဵၼ် `????` ယူႇၼၼ်ႉ... ႁဝ်းမႄးလႆႈၸွမ်းၼင်ႇၼႆၶႃႈ။

```sql
-- မႄးတင်း Table ႁႂ်ႈပဵၼ် utf8mb4
ALTER TABLE members 
CONVERT TO CHARACTER SET utf8mb4 
COLLATE utf8mb4_unicode_ci;
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **MySQL Installer:** Software ဢၼ်ၸွႆႈ Install MySQL Products တင်းၼမ်။
* **Root Password:** Password တွၼ်ႈတႃႇ Admin သုင်သုတ်း ၼႂ်း Database။
* **utf8mb4_unicode_ci:** ပဵၼ် Collation ဢၼ်မၢၼ်ႇမႅၼ်ႈသုတ်း တွၼ်ႈတႃႇ Unicode ၵူႈၽႃႇသႃႇ။
* **Mojibake:** ၸိုဝ်ႈႁွင်ႉ မိူဝ်ႈလိၵ်ႈဢွၵ်ႇမႃးပဵၼ်ႁၢင်ႈယုင်ႈ (မိူၼ်ၼင်ႇ ???? )။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၸၢမ်း Download လႄႈ Install MySQL ၼႂ်းၶွမ်းၸဝ်ႈၵဝ်ႇ ႁႂ်ႈယဝ်ႉတူဝ်ႈၶႃႈ။
2. ပိုတ်ႇ MySQL Workbench သေ ၸၢမ်းသၢင်ႈ Database ဢၼ်မီး Character Set ပဵၼ် **`utf8mb4`**။
3. ၸၢမ်း `INSERT` ၸိုဝ်ႈလိၵ်ႈတႆး ၶဝ်ႈၵႂႃႇသေ တူၺ်းဝႃႈ မၼ်းဢွၵ်ႇမၢၼ်ႇမႅၼ်ႈယူႇႁႃႉ?

---