# Lesson 52: "Views: Virtual Tables for Security and Simplicity"

**View** မၢႆထိုင် "Table ပွမ်" (Virtual Table)။ မၼ်းဢမ်ႇသိမ်းၶေႃႈမုၼ်းဝႆႉတႄႉတႄႉ (Physical Storage)၊ 
ၵူၺ်းၵႃႈ မၼ်းသိမ်း "Command SELECT" ဝႆႉ သေၼႄၽွၼ်းလႆႈဢွၵ်ႇမႃး မိူၼ်ၼင်ႇ Table ဢၼ်ၼိုင်ႈၶႃႈ။

### 1. ပိူင်သၢင်ႈ (The Concept)
ဝူၼ်ႉတူၺ်း "ၵၢၼ်တူၺ်း TV" ၶႃႈ...
* **Database Tables:** ပဵၼ် "ၵူၼ်းႁဵတ်းၵၢၼ်" တႄႉတႄႉ ဢၼ်ယူႇၼႂ်း Studio။
* **View:** ပဵၼ် "ၼႃႈၸေႃး TV" ၸဝ်ႈၵဝ်ႇ။ ၸဝ်ႈၵဝ်ႇႁၼ်ၶေႃႈမုၼ်းလႆႈ၊ ၵူၺ်းၵႃႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇႁၼ်လွင်ႈယုင်ႈယၢင်ႈၽၢႆႇလင် Studio တင်းမူတ်းၶႃႈ။



### 2. ႁဵတ်းသင်လႄႈ လူဝ်ႇၸႂ်ႉ View?
1.  **Simplicity (ငၢႆႈ):** သင်ၸဝ်ႈၵဝ်ႇမီး Query ဢၼ် JOIN ၵၼ် 5 Tables သေယုင်ႈယၢင်ႈႁႅင်း... ၸဝ်ႈၵဝ်ႇၸၢင်ႈသိမ်းမၼ်းဝႆႉၼႂ်း View သေ SELECT ဢဝ်ငၢႆႈငၢႆႈမိူၼ် Table လဵဝ်ၶႃႈ။
2.  **Security (လွတ်ႈၽေး):** ၸဝ်ႈၵဝ်ႇၸၢင်ႈပၼ်သုၼ်ႇ (Permission) ႁႂ်ႈပိူၼ်ႈတူၺ်း View ဢၼ်ဢဝ် "ၶေႃႈမုၼ်းသုၼ်ႇတူဝ်" (မိူၼ်ၼင်ႇ Password ဢမ်ႇၼၼ် ငိုၼ်းလိူၼ်) ထွၼ်ပႅတ်ႈ ယဝ်ႉၼၼ်ႉၶႃႈ။
3.  **Consistency (မိူၼ်ၵၼ်):** တွၼ်ႈတႃႇႁႂ်ႈ Developer ၵူႈၵေႃႉ ၸႂ်ႉ Logic ဢၼ်လဵဝ်ၵၼ် မိူဝ်ႈတူၺ်း Report ၶႃႈ။

### 3. Syntax ၵၢၼ်သၢင်ႈ View
ႁဝ်းၸႂ်ႉ Keyword `CREATE VIEW` သေတႅမ်ႈ SELECT ဝႆႉၽၢႆႇလင်မၼ်းၶႃႈ။

```sql
CREATE VIEW student_report AS
SELECT s.name, c.class_name, g.grade
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN classes c ON e.class_id = c.class_id;
```

**လၢႆးၸႂ်ႉတိုဝ်း:**
ၵမ်းၼႆႉ ၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇတႅမ်ႈ JOIN ၼမ်ၼၼ်ႉယဝ်ႉ၊ ၵူၺ်းၵႃႈ SELECT ဢဝ်လုၵ်ႉၼႂ်း View လႆႈၵမ်းလဵဝ်ၶႃႈ:

```sql
SELECT * FROM student_report;
```

### 4. ၵၢၼ်မႄး လႄႈ ၵၢၼ်ယႃႉ View
* **Update View:** ၸႂ်ႉ `CREATE OR REPLACE VIEW` တႃႇမႄး Logic မၼ်းၶႃႈ။
* **Delete View:** ၸႂ်ႉ `DROP VIEW view_name;` ၶႃႈ။

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Views
* **Read-Only:** ၵမ်ႈၼမ် ႁဝ်းၸႂ်ႉ View တႃႇ "လူ" (Read) ၶေႃႈမုၼ်းၵူၺ်း။ (မၢင်ပွၵ်ႈၸၢင်ႈ UPDATE လႆႈ ၵူၺ်းၵႃႈ မီးပၵ်းၵၢၼ်ယုင်ႈယၢင်ႈၼမ်ၶႃႈ)။
* **No Extra Space:** View ဢမ်ႇၸႂ်ႉတီႈယူႇၼႂ်း Disk ၼမ် (ၵွပ်ႈမၼ်းသိမ်းလိၵ်ႈ Command SELECT ၵူၺ်းၶႃႈ)။
* **Dependence:** သင်ၸဝ်ႈၵဝ်ႇယႃႉ (DROP) Table ပႅတ်ႈၼႆတေႉ View ၼၼ်ႉၵေႃႈတေ "တၢႆ" (Broken) သေၸႂ်ႉဢမ်ႇလႆႈၶႃႈၼႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Virtual Table:** Table ဢၼ်ဢမ်ႇမီးတူဝ်တႄႉ (မီး Logic မၼ်းၵူၺ်း)။
* **Underlying Table:** Table တႄႉ ဢၼ်မီးၶေႃႈမုၼ်းသိမ်းဝႆႉ ၽၢႆႇတႂ်ႈ View။
* **Security Layer:** ၵၢၼ်ၸႂ်ႉ View တႃႇတတ်းၶေႃႈမုၼ်း ဢၼ်ဢမ်ႇၶႂ်ႈႁႂ်ႈပိူၼ်ႈႁၼ်။
* **Abstraction:** ၵၢၼ်ႁဵတ်းႁႂ်ႈလွင်ႈယုင်ႈယၢင်ႈ ႁၢႆၵႂႃႇ သေ ၼႄလွင်ႈဢၼ်ငၢႆႈငၢႆႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Code SQL တႃႇသၢင်ႈ View ၸိုဝ်ႈဝႃႈ **`active_products`** ဢၼ်လိူၵ်ႈဢဝ်ၵုၼ်ႇ ဢၼ်မီး **`stock > 0`** ၶႃႈ။
2.  သင်ၸဝ်ႈၵဝ်ႇထႅမ်ၶေႃႈမုၼ်းမႂ်ႇၶဝ်ႈၼႂ်း Table တႄႉ (Underlying Table)... ၶေႃႈမုၼ်းၼၼ်ႉတေဢွၵ်ႇမႃးၼႂ်း **View** ႁင်းမၼ်းႁႃႉ?
3.  လၢတ်ႈၼႄၽွၼ်းလီ (1) ပိူင် ၵၢၼ်ၸႂ်ႉ View တႅၼ်းၵၢၼ်ပၼ် Permission ႁႂ်ႈပိူၼ်ႈတူၺ်း Table တႄႉၶႃႈ။

---