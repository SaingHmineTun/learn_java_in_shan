# Lesson 62: "Security: Encryption and Role-Based Access (RBAC)"

ၼႂ်းၵၢၼ်ႁဵတ်း App တႄႉတႄႉ... လွင်ႈ "ယုမ်ႇယမ်" (Trust) ပဵၼ်ဢၼ်လွင်ႈယႂ်ႇသုတ်းၶႃႈ။ 
သင် Database ၸဝ်ႈၵဝ်ႇ ထုၵ်ႇလၵ်ႉ (Hacked) သေ Password ပိူၼ်ႈႁၢႆၼႆၸိုင် App ၸဝ်ႈၵဝ်ႇ တေလူႉလႅဝ်ၵႂႃႇၵမ်းလဵဝ်ၶႃႈ။

### 1. Encryption (ၵၢၼ်သႂ်ႇသေႃးၶေႃႈမုၼ်း)
ႁဝ်းဢမ်ႇထုၵ်ႇလီသိမ်း "ၶေႃႈမုၼ်းလပ်ႉ" (မိူၼ်ၼင်ႇ Password ႁိုဝ် မၢႆ Credit Card) ပဵၼ်လိၵ်ႈလၢႆလၢႆ (Plain Text) ၼႂ်း Table ၶႃႈ။

* **Hashing (One-way):** ၸႂ်ႉတွၼ်ႈတႃႇ Password။ မၼ်းတေလႅၵ်ႈ Password ပဵၼ်လိၵ်ႈယုင်ႈယၢင်ႈ ဢၼ်ဢဝ်ၶိုၼ်းဢမ်ႇလႆႈ (မိူၼ်ၼင်ႇ MD5, SHA2, SHA256)။
* **Encryption (Two-way):** ၸႂ်ႉတွၼ်ႈတႃႇၶေႃႈမုၼ်း ဢၼ်ႁဝ်းလူဝ်ႇ "ဢဝ်ၶိုၼ်း" (Decrypt) မိူၼ်ၼင်ႇ မၢႆၾၢင် ဢမ်ႇၼၼ် မၢႆၾူၼ်းၶႃႈ။



**တူဝ်ယင်ႇ ၵၢၼ်သႂ်ႇ Password လူၺ်ႈ SHA2:**
```sql
INSERT INTO users (username, password) 
VALUES ('sai_mao', SHA2('MySecretPassword', 256));
```

### 2. Role-Based Access Control (RBAC)
မိူဝ်ႈ User မီးၼမ်ၼႆၸိုင် ၵၢၼ်ၵႂႃႇပၼ် GRANT သုၼ်ႇ ၵူႈၵေႃႉၼႆႉ မၼ်းယုင်ႈယၢင်ႈႁႅင်းၶႃႈ။ 
ႁဝ်းၸင်ႇသၢင်ႈ **"Role"** (ၸၼ်ႉထၢၼ်ႈ) ဝႆႉဢွၼ်တၢင်း သေၸင်ႇဢဝ် User သႂ်ႇၶဝ်ႈၼႂ်း Role ၼၼ်ႉၶႃႈ။

* **Roles Example:**
    * `app_developer`: မီးသုၼ်ႇ SELECT/UPDATE ၵူၺ်း။
    * `report_viewer`: မီးသုၼ်ႇ SELECT ၵူၺ်း။
    * `db_admin`: မီးသုၼ်ႇၵူႈယၢင်ႇ။



### 3. Syntax ၵၢၼ်ၸႂ်ႉ Role (MySQL 8.0+)
```sql
-- 1. သၢင်ႈ Role
CREATE ROLE 'reporter';

-- 2. ပၼ်သုၼ်ႇပၼ် Role
GRANT SELECT ON school.* TO 'reporter';

-- 3. ဢဝ် User သႂ်ႇၼႂ်း Role
GRANT 'reporter' TO 'maomao'@'localhost';

-- 4. ပိုတ်ႇၸႂ်ႉ Role (Active)
SET DEFAULT ROLE 'reporter' TO 'maomao'@'localhost';
```

### 4. ႁဵတ်းသင်လႄႈ လူဝ်ႇၸႂ်ႉ RBAC?
1.  **Scalability:** သင်မီးၵူၼ်းႁဵတ်းၵၢၼ်မႂ်ႇ 10 ၵေႃႉ... ၸဝ်ႈၵဝ်ႇၵူၺ်းဢဝ်ၶဝ်သႂ်ႇၼႂ်း Role 'reporter' ၵမ်းလဵဝ်ၵေႃႈယဝ်ႉယဝ်ႉၶႃႈ။
2.  **Consistency:** မၼ်ႈၸႂ်ဝႃႈ ၵူၼ်းၼႃႈၵၢၼ်မိူၼ်ၵၼ် တေမီးသုၼ်ႇမိူၼ်ၵၼ်တႃႇသေႇ။
3.  **Audit:** ၵူတ်ႇထတ်းလႆႈငၢႆႈ ဝႃႈၽႂ်မီးသုၼ်ႇၸိူင်ႉႁိုဝ် ၼႂ်း Database ၶႃႈ။

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Security
* **SQL Injection:** ႁႄႉၵင်ႈၵၢၼ် "လၵ်ႉသႂ်ႇ Code SQL ၽိတ်းပိူင်" လုၵ်ႉတီႈ App ၸဝ်ႈၵဝ်ႇ လူၺ်ႈၵၢၼ်ၸႂ်ႉ **Prepared Statements** ၼႂ်း Code Dart/Flutter ၶႃႈ။
* **Sensitive Data:** ယႃႇသိမ်းၶေႃႈမုၼ်းဢၼ်ဢမ်ႇလူဝ်ႇ (မိူၼ်ၼင်ႇ မၢႆ Credit Card တဵမ်ထူၼ်ႈ) သင်ဢမ်ႇလူဝ်ႇတႄႉတႄႉၶႃႈ။
* **Regular Updates:** မႄး Password လႄႈ ၵူတ်ႇထတ်း Role ယူႇတႃႇသေႇၶႃႈၼႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Encryption:** ၵၢၼ်လႅၵ်ႈၶေႃႈမုၼ်းပဵၼ် Code လပ်ႉ ဢၼ်လူဢမ်ႇလႆႈ သင်ဢမ်ႇမီးသေႃး (Key)။
* **Hashing:** ၵၢၼ်လႅၵ်ႈၶေႃႈမုၼ်းပဵၼ် Code လပ်ႉ ဢၼ်ပိၼ်ႇၶိုၼ်းဢမ်ႇလႆႈ (One-way)။
* **RBAC:** ၵၢၼ်ၸတ်းၵၢၼ်သုၼ်ႇ (Permissions) ၸွမ်းၼင်ႇၸၼ်ႉထၢၼ်ႈၵူၼ်း။
* **SQL Injection:** လၢႆးၵၢၼ် Hack Database ဢၼ်ပိူၼ်ႈလၵ်ႉသူင်ႇ Command SQL လုၵ်ႉတီႈ Text Field ၼႂ်း App ၶႃႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  **Hashing** တင်း **Encryption** ပႅၵ်ႇၵၼ်ၸိူင်ႉႁိုဝ်? ဢၼ်လႂ်လီတွၼ်ႈတႃႇသိမ်း **Password** ၶႃႈ?
2.  သင်ၸဝ်ႈၵဝ်ႇမီး User 100 ၵေႃႉ... ၵၢၼ်ၸႂ်ႉ **Role** တေၸွႆႈပၼ်ၽွၼ်းလီသင်ၶႃႈ?
3.  တႅမ်ႈ Code SQL တႃႇသၢင်ႈ Role ၸိုဝ်ႈဝႃႈ **`editor`** သေပၼ်သုၼ်ႇ **`UPDATE`** ၵူၺ်းၼႂ်း Table **`students`** ၶႃႈ။

---