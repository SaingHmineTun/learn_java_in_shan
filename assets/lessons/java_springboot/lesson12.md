# Lesson 12: "Data Seeding with data.sql" (ၵၢၼ်သႂ်ႇၶေႃႈမုၼ်းတေႇငဝ်ႈ)

မိူဝ်ႈႁဝ်းတႅမ်ႈ App မႂ်ႇၼၼ်ႉ Database ႁဝ်းတေပဝ်ႇ (Empty) ဝႆႉယူႇၶႃႈ။
သင်ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းမီးၶေႃႈမုၼ်းလိၵ်ႈတႆးဝႆႉၵမ်းလဵဝ် တွၼ်ႈတႃႇၸၢမ်း (Test) ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉၾၢႆႇ *
*`data.sql`** ၶႃႈ။

### 1. ၾၢႆႇ `data.sql` ၼႆႉ ႁဵတ်းသင်?

Spring Boot တေၵူတ်ႇထတ်းတူၺ်းၼႂ်း Folder `resources` သေ သင်မၼ်းႁၼ်ၾၢႆႇဢၼ်ၸိုဝ်ႈဝႃႈ `data.sql` ၼႆ
မၼ်းတေ "လႅၼ်ႈ" (Run) SQL Command ဢၼ်မီးၼႂ်းမၼ်းၼၼ်ႉ ၶဝ်ႈၵႂႃႇၼႂ်း MySQL ႁင်းၵူၺ်း မိူဝ်ႈ App
တႄႇလႅၼ်ႈ (Start) ၶႃႈ။

### 2. ၵၢၼ်သၢင်ႈၾၢႆႇ `data.sql`

ႁႂ်ႈၸဝ်ႈၶူးသၢင်ႈၾၢႆႇမႂ်ႇၼိုင်ႈဢၼ် ၸိုဝ်ႈဝႃႈ `data.sql` ဝႆႉၼႂ်း `src/main/resources` သေသႂ်ႇ Code
ၸိူင်ႉၼႆၶႃႈ:

```sql
-- သႂ်ႇၶေႃႈမုၼ်းလိၵ်ႈတႆး တွၼ်ႈတႃႇၸမ်းတူၺ်း
INSERT INTO words (shan_word, english_meaning, part_of_speech) VALUES ('ၵိၼ်', 'Eat', 'v');
INSERT INTO words (shan_word, english_meaning, part_of_speech) VALUES ('ၼွၼ်း', 'Sleep', 'v');
INSERT INTO words (shan_word, english_meaning, part_of_speech) VALUES ('ၵူၼ်း', 'Person', 'n');
INSERT INTO words (shan_word, english_meaning, part_of_speech) VALUES ('ႁၢင်ႈလီ', 'Beautiful', 'adj');
INSERT INTO words (shan_word, english_meaning, part_of_speech) VALUES ('ဝၢၼ်ႈ', 'Village', 'n');
```

---

### 3. ၵၢၼ် Config ႁႂ်ႈ Spring Boot ပၼ်ႇ SQL

ၼႂ်း Spring Boot 3 လႄႈ 4 ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈသင်ႇၵၢၼ် (Config) ၼႂ်း **`application.properties`**
ၵမ်းၼိုင်ႈ ႁႂ်ႈမၼ်း Run SQL ၸွမ်းၵၼ်တင်း Hibernate ၶႃႈ:

```properties
# သင်ႇႁႂ်ႈ Spring Boot လႅၼ်ႈ data.sql ၸွမ်းတင်း Hibernate (DDL)
spring.sql.init.mode=always
```

### 4. ၵၢၼ်ၵူတ်ႇထတ်း (Check in Database)

မိူဝ်ႈႁဝ်း **Restart App** ၼၼ်ႉ:

1. တူၺ်းၼႂ်း **Console (Log)**: ႁဝ်းတေႁၼ်လိၵ်ႈ `Executing SQL script from resource...` ၼႄဝႆႉ။
2. ပိုတ်ႇ **MySQL Workbench** သေတႅမ်ႈ Query: `SELECT * FROM words;` တူၺ်းၶႃႈ
3. ႁဝ်းတေႁၼ်လိၵ်ႈတႆး 5 ၶေႃႈ ဢၼ်ႁဝ်းသႂ်ႇဝႆႉၼၼ်ႉ ၵႂႃႇမီးယူႇၼႂ်း Table ယဝ်ႉၶႃႈ!

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Data Seeding:** ၵၢၼ်သႂ်ႇၶေႃႈမုၼ်း "တေႇငဝ်ႈ" ၶဝ်ႈၵႂႃႇၼႂ်း Database တွၼ်ႈတႃႇၸၢမ်းတူၺ်း ဢမ်ႇၼၼ်
  တွၼ်ႈတႃႇ Default Settings။
* **SQL Script:** ၾၢႆႇဢၼ်သိမ်း "ၵႂၢမ်းသင်ႇ" ၶွင် SQL ဝႆႉတင်းၼမ်။
* **UTF-8:** ပိူင်မၢႆတွင်းတူဝ်လိၵ်ႈ ဢၼ်ႁဵတ်းႁႂ်ႈလိၵ်ႈတႆးၼႄလႆႈမၢၼ်ႇမႅၼ်ႈ (Spring Boot ၸတ်းၵၢၼ်ပၼ်
  UTF-8 ပဵၼ် Default ဝႆႉယဝ်ႉၶႃႈ)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**

1. သင်ႁဝ်းၶႂ်ႈသႂ်ႇၶေႃႈမုၼ်းလိၵ်ႈတႆး 100 ၶေႃႈ ၵမ်းလဵဝ်ၼၼ်ႉ ႁဝ်းတေလႆႈၵႂႃႇတႅမ်ႈသႂ်ႇၼႂ်းၾၢႆႇလႂ်?
2. ၵွပ်ႈသင်ႁဝ်းၸင်ႇလူဝ်ႇသႂ်ႇ `spring.sql.init.mode=always` ၼႂ်းၾၢႆႇ Properties?