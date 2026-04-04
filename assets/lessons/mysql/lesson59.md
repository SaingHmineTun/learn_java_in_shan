# Lesson 59: "Transaction Control: COMMIT, ROLLBACK, and Savepoints"

မိူဝ်ႈႁဝ်းတႄႇ `START TRANSACTION` ယဝ်ႉ... MySQL တေ "ပႂ်ႉ" (Wait) တူၺ်းဝႃႈ ႁဝ်းတေသိုပ်ႇသင်ႇသင် ၼႆၶႃႈ။ 
ၶေႃႈမုၼ်းဢၼ်ႁဝ်း UPDATE ၼၼ်ႉ တေဢမ်ႇပႆႇသိမ်းတႄႉတႄႉ (Permanent) တေႃႇပေႃးႁဝ်းသင်ႇ **COMMIT** ၶႃႈ။

### 1. START TRANSACTION (ၵၢၼ်တႄႇ)
ပဵၼ်ၵၢၼ်ပိုတ်ႇ "တွၼ်ႈႁဵတ်းၵၢၼ်ၸူဝ်ႈၶၢဝ်း"။ သင်ႁဝ်းတႅမ်ႈ INSERT/UPDATE ယဝ်ႉၼႆ မၼ်းတေသိမ်းဝႆႉၼႂ်း Memory ဢွၼ်တၢင်းၶႃႈ။

### 2. COMMIT (ၵၢၼ်မၵ်းမၼ်ႈ)
မိူဝ်ႈၶၵ်ႉတွၼ်ႈ (Steps) ၵူႈဢၼ် ယဝ်ႉတူဝ်ႈလီငၢမ်းယဝ်ႉၼႆ ႁဝ်းၸႂ်ႉ `COMMIT` တႃႇသင်ႇႁႂ်ႈ Database သိမ်းၶေႃႈမုၼ်းၼၼ်ႉ **တႄႇတႄႉ** ၶဝ်ႈၼႂ်း Disk ၶႃႈ။ 
ဝၢႆးသေ COMMIT ယဝ်ႉၼႆ ႁဝ်းတေပိၼ်ႇၶိုၼ်း (Undo) ဢမ်ႇလႆႈယဝ်ႉၶႃႈၼႃႈ။

### 3. ROLLBACK (ၵၢၼ်ပိၼ်ႇၶိုၼ်း)
သင်မီး Error ၵၢင်တၢင်း (မိူၼ်ၼင်ႇ ငိုၼ်းဢမ်ႇတဵမ် ႁိုဝ် ၾႆးမွတ်ႇ) ၼႆ ႁဝ်းၸႂ်ႉ `ROLLBACK` တႃႇယႃႉလွင်ႈ ႁဵတ်းၵၢၼ်တင်းမူတ်းပႅတ်ႈသေ 
ပိၼ်ႇၶေႃႈမုၼ်းၶိုၼ်းၸူး "တီႈၵဝ်ႇ" (Original State) ဢွၼ်တၢင်း ပႆႇတႄႇ Transaction လႆႈၶႃႈ။



### 4. SAVEPOINT (ၵၢၼ်မၢႆဝႆႉၵႄႈၵၢင်တၢင်း)
မၢင်ပွၵ်ႈ Transaction ႁဝ်းယၢဝ်းႁႅင်းသေ ႁဝ်းဢမ်ႇၶႂ်ႈ ROLLBACK တင်းမူတ်း။ 
ႁဝ်းၸၢင်ႈသႂ်ႇ **Savepoint** ဝႆႉပဵၼ်တွၼ်ႈ ပဵၼ်တွၼ်ႈၶႃႈ။
* **ROLLBACK TO SAVEPOINT:** ပိၼ်ႇၶိုၼ်းၸူး တီႈဢၼ်ႁဝ်းမၢႆဝႆႉၼၼ်ႉၶႃႈ။

---

### တူဝ်ယင်ႇ: ၵၢၼ်သူင်ႇငိုၼ်း (Code SQL)

```sql
START TRANSACTION;

-- 1. တတ်းငိုၼ်းလုၵ်ႉတီႈ ၸၢႆးမၢဝ်း
UPDATE accounts SET balance = balance - 100 WHERE id = 1;

-- 2. မၢႆဝႆႉ (Savepoint)
SAVEPOINT step1_done;

-- 3. ထႅမ်ငိုၼ်းပၼ် ၸၢႆးသႅင်
UPDATE accounts SET balance = balance + 100 WHERE id = 2;

-- သင်မီး Error တီႈ Step 3... ႁဝ်းၸၢင်ႈပိၼ်ႇၶိုၼ်းၸူး Savepoint
-- ROLLBACK TO SAVEPOINT step1_done;

-- သင်ၵူႈယၢင်ႇလီ... ၸင်ႇသင်ႇသိမ်းတႄႉတႄႉ
COMMIT;
```

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Transaction Control
* **Auto-commit Mode:** MySQL ၵႆႉပိုတ်ႇ `autocommit=1` ဝႆႉၶႃႈ။ ပွင်ႇဝႃႈ သင်ဢမ်ႇတႅမ်ႈ START TRANSACTION တႃႇၵူႈ Query ၼႆၸိုင် မၼ်းတေ COMMIT ႁင်းမၼ်းၵမ်းလဵဝ်ၶႃႈ။
* **Implicit Commit:** မၢင် Command (မိူၼ်ၼင်ႇ `CREATE TABLE`, `DROP TABLE`, `ALTER TABLE`) တေသင်ႇ **COMMIT ႁင်းမၼ်း** ၵမ်းလဵဝ်။ သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈမၼ်းဝႆႉၼႂ်း Transaction... မၼ်းတေႁဵတ်းႁႂ်ႈ Transaction ၼၼ်ႉယဝ်ႉတူဝ်ႈ (End) ၵႂႃႇၵမ်းလဵဝ်ၶႃႈၼႃႈ။
* **Connection Loss:** သင် Internet ၶၢတ်ႇ ဢမ်ႇၼၼ် App ၸဝ်ႈၵဝ်ႇ "ၶႅင်" (Crash) ဝၢႆးသေ START TRANSACTION ယဝ်ႉ... MySQL တေသင်ႇ **ROLLBACK** ႁင်းမၼ်း တွၼ်ႈတႃႇႁႄႉၵင်ႈၶေႃႈမုၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Commit:** ၵၢၼ်သိမ်းၶေႃႈမုၼ်း တႃႇသေႇ။
* **Rollback:** ၵၢၼ်ယႃႉၵၢၼ်ႁဵတ်းၵၢၼ် သေပိၼ်ႇၶိုၼ်းၸူးတီႈၵဝ်ႇ။
* **Savepoint:** မၢႆၶၵ်ႉတွၼ်ႈ ၼႂ်း Transaction။
* **Atomic Unit:** ၵၢၼ်ႁဵတ်းၵၢၼ် ဢၼ်လဵဝ်ၵၼ် (ႁဵတ်းတင်းမူတ်းႁိုဝ် ဢမ်ႇႁဵတ်းသေဢၼ်)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈ `UPDATE` ယဝ်ႉသေ... `ROLLBACK` ... ၶေႃႈမုၼ်းၼႂ်း Table တေလႅၵ်ႈလၢႆႈႁႃႉ?
2.  **`COMMIT`** ယဝ်ႉယဝ်ႉ... ၸဝ်ႈၵဝ်ႇသမ်ႉၶႂ်ႈ **`ROLLBACK`** ... မၼ်းတေပိၼ်ႇၶေႃႈမုၼ်းၶိုၼ်းပၼ်လႆႈႁႃႉ?
3.  ႁဵတ်းသင်လႄႈ ႁဝ်းလူဝ်ႇၸႂ်ႉ **`SAVEPOINT`** ၼႂ်း Transaction ဢၼ်ယၢဝ်းယၢဝ်းၶႃႈ?

---