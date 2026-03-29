## Lesson 34: Setting up MySQL Native Environment

ၵၢၼ်ၸႂ်ႉ MySQL Server တူဝ်တႄႉ (Native) တေႁဵတ်းႁႂ်ႈႁဝ်းႁူႉၸွမ်းလွင်ႈ **System Services**, **User Privileges**, လႄႈ **Port Management** ဢၼ်တႄႉမၼ်းၶႃႈ။



### 1. Installation Components (ၶိူင်ႈဢၼ်လူဝ်ႇသႂ်ႇ)
ႁဝ်းတေၸႂ်ႉ **MySQL Installer** (Web Community Edition) တွၼ်ႈတႃႇသႂ်ႇ 2 ဢၼ်ၼႆႉၶႃႈ:
* **MySQL Server (8.0/9.0+)**: တူဝ် Engine ဢၼ်တေၵဵပ်းၶေႃႈမုၼ်းတႄႉတႄႉ။ လူတ်ႇလူင်းဢဝ်လႆႈ တီႈၼႆႈၶႃႈ (https://dev.mysql.com/downloads/mysql/8.0.html)
* **MySQL Workbench**: တူဝ် GUI ဢၼ်ႁဝ်းတေၸႂ်ႉတႅမ်ႈ SQL လႄႈ တူၺ်း Table ၶႃႈ။ လူတ်ႇဢဝ်တီႈၼႆႈၶႃႈ (https://dev.mysql.com/downloads/workbench/)

---

### 2. Critical Configuration Steps (လွင်ႈလူဝ်ႇၾၢင်ႉမိူဝ်ႈသွၼ်)

မိူဝ်ႈႁဝ်းလူတ်ႇသႂ်ႇ (Install) ၼၼ်ႉ လူဝ်ႇၼဵၵ်းပၼ်တီႈ 3 တီႈၼႆႉၶႃႈ:

* **Port Number**: Standard ပဵၼ် **3306**။ (သင်မီး XAMPP ဝႆႉယူႇၵေႃႈ လူဝ်ႇပိၵ်ႉ XAMPP ဝႆႉၵွၼ်ႇ ဢမ်ႇၼၼ်လႅၵ်ႈ Port ၶႃႈ)။
* **Authentication Method**: လိူၵ်ႈ **"Use Legacy Authentication Method"** (MySQL 5.x compatibility) တေငၢႆႈလိူဝ်တွၼ်ႈတႃႇၵွင်ႉ Java ၶႃႈ။ (ဢမ်ႇၼၼ်ၸႂ်ႉ Strong Password ၵေႃႈလႆႈယူႇၶႃႈ)။
* **Root Password**: ဢၼ်ၼႆႉ လွင်ႈယႂ်ႇတေႉတေႉ။ ၸႂ်ႉ Password ဢၼ်ငၢႆႈငၢႆႈ ၼင်ႇ `root` ဢမ်ႇၼၼ် `1234` တွၼ်ႈတႃႇ Lab ၼႂ်း Thung Mao Kham ၶႃႈ။

---

### 3. Creating our First Database (SQL)
မိူဝ်ႈသႂ်ႇယဝ်ႉယဝ်ႉ ႁဝ်းတေပိုတ်ႇ **MySQL Workbench** သေ တႅမ်ႈ SQL တွၼ်ႈတႃႇသၢင်ႈ Database ၸိူဝ်းၼႆႉၶႃႈ:

```sql
-- 1. သၢင်ႈ Database တွၼ်ႈတႃႇ Project ႁဝ်း
CREATE DATABASE tmk_db;

-- 2. ၸႂ်ႉ Database ဢၼ်သၢင်ႈမႃး
USE tmk_db;

-- 3. သၢင်ႈ Table တွၼ်ႈတႃႇၸမ်းၵၢၼ် (Test Table)
CREATE TABLE connection_test (
    id INT PRIMARY KEY AUTO_INCREMENT,
    status VARCHAR(50),
    checked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4. သႂ်ႇၶေႃႈမုၼ်းၸမ်းတူၺ်း 1 ဢၼ်
INSERT INTO connection_test (status) VALUES ('Server is Online');
```

---

### 🛠️ Technical Breakdown (ပၢႆးၸၢင်ႈ Connectivity)

* **Windows Service**: MySQL Server တေလႅၼ်ႈယူႇၼႂ်း Background ပဵၼ် **Windows Service**။ ႁဝ်းဢမ်ႇလူဝ်ႇပိုတ်ႇ Control Panel ၼင်ႇ XAMPP တႃႇသေႇၶႃႈ။
* **Localhost (127.0.0.1)**: ပဵၼ် IP ဢၼ် Java တေၸႂ်ႉႁႃ MySQL Server ၼႂ်း Computer လုၵ်ႈၼၼ်ႉၶႃႈ။
* **Schemas**: ၼႂ်း Workbench ႁဝ်းတေႁွင်ႉ Database ဝႃႈ "Schemas" ၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students
* **MySQL Server**: ပဵၼ် "ႁွင်ႈလူင်" ၵဵပ်းၶေႃႈမုၼ်း (The Brain)။
* **MySQL Workbench**: ပဵၼ် "ၼႃႈၸေႃး" ၵုမ်းထိင်း (The Interface)။
* **SQL**: ပဵၼ် "လိၵ်ႈ" ဢၼ်ႁဝ်းလၢတ်ႈၸွမ်း Database။