# Lesson 63: "Backup & Recovery: Logical Dumps and Restoration"

**Backup** မၢႆထိုင်ၵၢၼ်ထုတ်ႇ (Export) ၶေႃႈမုၼ်းဢွၵ်ႇမႃးသိမ်းဝႆႉ ၼွၵ်ႈ Database Server သေ 
**Recovery** ပဵၼ်ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းၼၼ်ႉ သႂ်ႇၶိုၼ်း (Import) မိူဝ်ႈမီးပၼ်ႁႃၶႃႈ။

### 1. Logical Backup (mysqldump)
ၼႂ်း MySQL... လၢႆးဢၼ်ပိူၼ်ႈၸႂ်ႉၼမ်သုတ်းပဵၼ် **Logical Backup**။ မၼ်းတေထုတ်ႇၶေႃႈမုၼ်းဢွၵ်ႇမႃးပဵၼ် "လိၵ်ႈ Command SQL" (မိူၼ်ၼင်ႇ CREATE TABLE လႄႈ INSERT) ဝႆႉၼႂ်း File `.sql` ၶႃႈ။

**ၶိူင်ႈမိုဝ်းလူင်:** `mysqldump` (ၸႂ်ႉၼႂ်း Terminal/Command Prompt)။



### 2. Syntax ၵၢၼ်ထုတ်ႇ Backup (Export)
ၸဝ်ႈၵဝ်ႇတေလႆႈတႅမ်ႈၼႂ်း Terminal (ဢမ်ႇၸႂ်ႈၼႂ်း MySQL Shell) ၶႃႈ:

```bash
# Backup ၵူၺ်း Database ၼိုင်ႈဢၼ်
mysqldump -u username -p db_name > backup_file.sql

# Backup တင်း Server (ၵူႈ Database)
mysqldump -u username -p --all-databases > all_backup.sql
```

### 3. Syntax ၵၢၼ်ဢဝ်ၶိုၼ်း (Restoration / Import)
မိူဝ်ႈလူဝ်ႇဢဝ်ၶေႃႈမုၼ်းၶိုၼ်း... ႁဝ်းၸႂ်ႉ Command `mysql` ธรรมဒါ သေသူင်ႇ File SQL ၶဝ်ႈၵႂႃႇၶႃႈ:

```bash
mysql -u username -p db_name < backup_file.sql
```

### 4. ႁဵတ်းသင်လႄႈ လူဝ်ႇ Backup ယူႇတႃႇသေႇ?
1.  **Hardware Failure:** Disk လူႉ ဢမ်ႇၼၼ် Server လႅႉ။
2.  **Human Error:** တႅမ်ႈ `DELETE` လူၺ်ႈဢမ်ႇမီး `WHERE` (ပဵၼ်လွင်ႈလီၵူဝ်သုတ်း!)။
3.  **Security Attacks:** မိူဝ်ႈထုၵ်ႇ Hack ဢမ်ႇၼၼ် ထုၵ်ႇ Ransomware (လၵ်ႉသႂ်ႇသေႃးၶေႃႈမုၼ်းသေယွၼ်းငိုၼ်း)။
4.  **Migration:** မိူဝ်ႈၶႂ်ႈလႅၵ်ႈ Server မႂ်ႇ ဢမ်ႇၼၼ် ၶၢႆႉ Database ၶိုၼ်ႈ Cloud (မိူၼ်ၼင်ႇ AWS/Google Cloud)။

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Backup & Recovery
* **Schedule Backups:** ယႃႇပႂ်ႉ Backup ႁင်းတူဝ်... ၸႂ်ႉ **Events** ဢမ်ႇၼၼ် **Cron Jobs** တႃႇႁႂ်ႈမၼ်း Backup ႁင်းမၼ်းၵူႈဝၼ်းၶႃႈ။
* **Offsite Storage:** ယႃႇသိမ်း File Backup ဝႆႉၼႂ်း Server တူဝ်လဵဝ်ၵၼ်။ သင် Server တူဝ်ၼၼ်ႉလူႉ... Backup ၵေႃႈတေႁၢႆၸွမ်းၶႃႈ။ တေလႆႈသူင်ႇၵႂႃႇသိမ်းတီႈ Cloud ဢမ်ႇၼၼ် External Drive ၶႃႈ။
* **Test Your Backups:** မၢင်ပွၵ်ႈ File Backup ၸၢင်ႈ "လူႉ" (Corrupted) ဝႆႉ။ လူဝ်ႇၸၢမ်း Import ၶိုၼ်းတူၺ်း ယူႇတႃႇသေႇ ႁႂ်ႈမၼ်ႈၸႂ်ဝႃႈ မၼ်းၸႂ်ႉလႆႈတႄႉတႄႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **mysqldump:** ၶိူင်ႈမိုဝ်း Backup ႁင်း MySQL ဢၼ်ထုတ်ႇဢွၵ်ႇပဵၼ် SQL Text။
* **Logical Backup:** ၵၢၼ် Backup ဢၼ်သိမ်းပဵၼ် SQL Commands (လူငၢႆႈ၊ ပႃးတၢင်းလၢႆ Platform)။
* **Physical Backup:** ၵၢၼ် Copy File Database တႄႉတႄႉ (ဝႆးလိူဝ်၊ ၵူၺ်းၵႃႈ ယုင်ႈယၢင်ႈလိူဝ်)။
* **Restore:** ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉၼႂ်း Backup မႃးသႂ်ႇၶိုၼ်းၼႂ်း Database။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တၢင်းပႅၵ်ႇပိူင်ႈၵၼ် ၼႂ်းၵႄႈ **`>`** လႄႈ **`<`** ၼႂ်း Command Line တွၼ်ႈတႃႇ Backup ပဵၼ်သင်ၶႃႈ?
2.  ႁဵတ်းသင်လႄႈ ႁဝ်းဢမ်ႇထုၵ်ႇလီသိမ်း File Backup ဝႆႉၼႂ်း Server လဵဝ်ၵၼ် တင်း Database တႄႉၶႃႈ?
3.  ၸဝ်ႈၵဝ်ႇတေၸၢမ်း (Test) ၸိူင်ႉႁိုဝ် ဝႃႈ File Backup ဢၼ်ၸဝ်ႈၵဝ်ႇမီးၼၼ်ႉ ၸႂ်ႉလႆႈတႄႉ ဢမ်ႇတႄႉၶႃႈ?

---