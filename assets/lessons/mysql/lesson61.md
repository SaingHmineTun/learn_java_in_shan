
# Lesson 61: "Access Control: User Management and GRANT/REVOKE"

**Access Control** မၢႆထိုင်ၵၢၼ်မၵ်းမၼ်ႈဝႃႈ "ၽႂ်" (Who) ၸၢင်ႈ "ႁဵတ်းသင်" (What) ၼႂ်း Database ႁဝ်းၶႃႈ။ 
ႁဝ်းတေလႆႈၸႅၵ်ႇ User ၸွမ်းၼင်ႇၼႃႈၵၢၼ်ၶဝ်ၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "ၵၢၼ်ပၼ်သေႃးႁိူၼ်း" ၶႃႈ...
* **Root User:** မိူၼ်ၸဝ်ႈၶွင်ႁိူၼ်း ဢၼ်မီးသေႃးၵူႈလုၵ်း။
* **App User:** မိူၼ်ၶႅၵ်ႇ ဢၼ်ႁဝ်းပၼ်သေႃးတွၼ်ႈတႃႇ "ၶဝ်ႈၼွၼ်း" (SELECT/INSERT) ၵူၺ်းၵႃႈ ဢမ်ႇပၼ်သေႃး "ၶွၵ်ႈငိုၼ်း" (DROP Table) ၶႃႈ။



### 2. ၵၢၼ်သၢင်ႈ User မႂ်ႇ (CREATE USER)
ႁဝ်းတေလႆႈမၵ်းမၼ်ႈ ၸိုဝ်ႈ User လႄႈ တီႈဢၼ်ၶဝ်တေ Login ၶဝ်ႈမႃး (Host) ၶႃႈ။

```sql
-- '@localhost' မၢႆထိုင် ၶဝ်ႈလႆႈၵူၺ်းၼႂ်း Server တူဝ်မၼ်း
CREATE USER 'maomao'@'localhost' IDENTIFIED BY 'Password123!';
```

### 3. ၵၢၼ်ပၼ်သုၼ်ႇ (GRANT)
မိူဝ်ႈသၢင်ႈယဝ်ႉ... User မႂ်ႇၼၼ်ႉ တေဢမ်ႇပႆႇႁၼ် Table သင်ၶႃႈ။ ႁဝ်းတေလႆႈပၼ် **Privileges** (သုၼ်ႇ) ပၼ်ၶဝ်ၶႃႈ။

```sql
-- ပၼ်သုၼ်ႇ SELECT လႄႈ INSERT ၵူၺ်းၼႂ်း DB 'school'
GRANT SELECT, INSERT ON school.* TO 'maomao'@'localhost';

-- ပၼ်သုၼ်ႇၵူႈယၢင်ႇ (Be Careful!)
-- GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost';
```

### 4. ၵၢၼ်ဢဝ်ပႅတ်ႈသုၼ်ႇၶိုၼ်း (REVOKE)
သင်ႁဝ်းၶႂ်ႈဢဝ် သုၼ်ႇဢၼ်ပၼ်ဝႆႉၼၼ်ႉ ၶိုၼ်း... ႁဝ်းၸႂ်ႉ **`REVOKE`** ၶႃႈ။

```sql
REVOKE INSERT ON school.* FROM 'maomao'@'localhost';
```

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Access Control
* **Principle of Least Privilege:** "ပၼ်သုၼ်ႇဢေႇသုတ်း" ပၼ်ဢၼ်ၶဝ်လူဝ်ႇၸႂ်ႉၵူၺ်း။ (မိူၼ်ၼင်ႇ App ၸဝ်ႈၵဝ်ႇလူဝ်ႇ SELECT/INSERT ၵူၺ်း... ယႃႇပၼ် DELETE ႁိုဝ် DROP ၶႃႈ)။
* **FLUSH PRIVILEGES:** ဝၢႆးသေမႄး Permission ယဝ်ႉၼႆ မၢင်ပွၵ်ႈလူဝ်ႇသင်ႇ Command ၼႆႉ တႃႇႁႂ်ႈ MySQL ဢဝ်သုၼ်ႇမႂ်ႇၼၼ်ႉမႃးၸႂ်ႉၵမ်းလဵဝ်ၶႃႈ။
* **Identifying Host:** `'user'@'%'` မၢႆထိုင် User ၼႆႉ Login ၶဝ်ႈမႃးလုၵ်ႉတီႈ Computer "တီႈလႂ်ၵေႃႈလႆႈ" (Remote access) ၶႃႈၼႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Privileges:** သုၼ်ႇၵၢၼ်ႁဵတ်းၵၢၼ် (SELECT, INSERT, etc.)။
* **Host:** လိၵ်ႈမၢႆ IP ဢမ်ႇၼၼ် ၸိုဝ်ႈ Server ဢၼ် User Login ၶဝ်ႈမႃး။
* **Grant:** ၵၢၼ်ပၼ်သုၼ်ႇ။
* **Revoke:** ၵၢၼ်သိမ်းသုၼ်ႇၶိုၼ်း (Undo grant)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Code SQL တႃႇသၢင်ႈ User ၸိုဝ်ႈဝႃႈ **`developer`** သေပၼ်သုၼ်ႇ **`SELECT`** ၵူၺ်းၼႂ်း Table **`products`** ၶႃႈ။
2.  သင်ၸဝ်ႈၵဝ်ႇပၼ်သုၼ်ႇ **`ALL PRIVILEGES`** ပၼ် App User တင်းမူတ်း... မၼ်းတေပဵၼ်ၽေးၸိူင်ႉႁိုဝ်ၶႃႈ?
3.  တၢင်းပႅၵ်ႇပိူင်ႈၵၼ် ၼႂ်းၵႄႈ **`'user'@'localhost'`** လႄႈ **`'user'@'%'`** ပဵၼ်သင်ၶႃႈ?

---