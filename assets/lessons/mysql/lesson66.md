# Lesson 66: "Indexing II: Composite and Covering Index Strategies"

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးတူၺ်းလၢႆးသၢင်ႈ Index ဢၼ် "ၶိုတ်းၸၼ်ႉ" (Advanced) လိူဝ်ၵဝ်ႇ 
တွၼ်ႈတႃႇ Query ဢၼ်လူဝ်ႇၸႅတ်ႈ လၢႆလၢႆ Column ႁူမ်ႈၵၼ်ၶႃႈ။

### 1. Composite Index (Index ဢၼ်ႁူမ်ႈလၢႆ Column)
**Composite Index** (ဢမ်ႇၼၼ် Multiple-column Index) ပဵၼ်ၵၢၼ်သၢင်ႈ Index ဢၼ်ၼိုင်ႈ ဢၼ်ႁူမ်ႈပႃးဝႆႉ လၢႆလၢႆ Column ၶႃႈ။



* **ပၵ်းၵၢၼ် Left-to-Right:** MySQL တေၸႂ်ႉ Index ၼႆႉလႆႈၵေႃႈ တေႃႇမိူဝ်ႈ ၸဝ်ႈၵဝ်ႇၸႂ်ႉ Column ဢၼ်ယူႇ "ၽၢႆႇသၢႆႉသုတ်း" ၼႂ်း Index ၼၼ်ႉ ၼႂ်း WHERE clause ၶႃႈ။
* **တူဝ်ယင်ႇ:** သင်ၸဝ်ႈၵဝ်ႇသၢင်ႈ Index ဝႆႉတီႈ `(last_name, first_name)`...
    * `WHERE last_name = 'Hmine'` -> **ၸႂ်ႉလႆႈ**
    * `WHERE last_name = 'Hmine' AND first_name = 'Sai'` -> **ၸႂ်ႉလႆႈ (ဝႆးသုတ်း)**
    * `WHERE first_name = 'Sai'` -> **ၸႂ်ႉဢမ်ႇလႆႈ** (ၵွပ်ႈဢမ်ႇပႃး last_name ဢၼ်ယူႇၽၢႆႇသၢႆႉသုတ်း)။

### 2. Covering Index (Index ဢၼ်ၵုမ်ႇထူၼ်ႈ)
ၼႆႉပဵၼ် "ၸၼ်ႉသုင်" ႁင်းၵၢၼ် Optimization ၶႃႈ။ **Covering Index** မၢႆထိုင် Index ဢၼ်မီး "ၶေႃႈမုၼ်းတင်းမူတ်း" ဢၼ် Query လူဝ်ႇၸႂ်ႉ ဝႆႉၼႂ်းတူဝ်မၼ်းယဝ်ႉ။



* **ၽွၼ်းလီ:** MySQL ဢမ်ႇလူဝ်ႇၵႂႃႇပိုတ်ႇတူၺ်းၼႂ်း Table တႄႉ (Base Table) ထႅင်ႈယဝ်ႉ။ မၼ်းလူဢဝ်ၶေႃႈမုၼ်းၼႂ်း Index သေ သူင်ႇၽွၼ်းလႆႈပၼ်ၵမ်းလဵဝ်။
* **EXPLAIN:** သင်ၸဝ်ႈၵဝ်ႇႁၼ် `Using index` ၼႂ်း Column **Extra** ၼႆ ပွင်ႇဝႃႈၼၼ်ႉပဵၼ် Covering Index ၶႃႈ။

### 3. Prefix Indexing (Index တွၼ်ႈတၢင်းၼႃႈ)
သင်ၸဝ်ႈၵဝ်ႇမီး Column ဢၼ်တႅမ်ႈလိၵ်ႈယၢဝ်းႁႅင်း (မိူၼ်ၼင်ႇ `address` ဢမ်ႇၼၼ် `description` TEXT) ၼႆ ၵၢၼ်သၢင်ႈ Index တင်းမူတ်း တေႁဵတ်းႁႂ်ႈ File ယႂ်ႇႁႅင်းၶႃႈ။
* **Prefix Index:** ႁဝ်းလိူၵ်ႈဢဝ်တူဝ်လိၵ်ႈ "တၢင်းၼႃႈ" မၼ်း (မိူၼ်ၼင်ႇ 10 တူဝ်) မႃးႁဵတ်း Index ၶႃႈ။
* `CREATE INDEX idx_addr ON users(address(10));`

### 4. Index Cardinality (တၢင်းပႅၵ်ႇပိူင်ႈၶေႃႈမုၼ်း)
**Cardinality** မၢႆထိုင် တၢင်းၼမ်ၶေႃႈမုၼ်းဢၼ် "ဢမ်ႇမိူၼ်ၵၼ်" ၼႂ်း Column ၼၼ်ႉၶႃႈ။
* **High Cardinality:** (လီ) မိူၼ်ၼင်ႇ `email`, `user_id` (မီးၵႃႈၶၼ်ပႅၵ်ႇၵၼ်ၼမ်)။
* **Low Cardinality:** (ဢမ်ႇလီ) မိူၼ်ၼင်ႇ `gender` (မီးလႆႈ M, F ၵူၺ်း)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Composite Index:** Index ဢၼ်ႁူမ်ႈဝႆႉ Column လၢႆလၢႆဢၼ်။
* **Covering Index:** Index ဢၼ်မီးၶေႃႈမုၼ်းၵူႈယၢင်ႇ ဢၼ်လူဝ်ႇၸႂ်ႉ (ဢမ်ႇလူဝ်ႇပိုတ်ႇ Table တႄႉ)။
* **Cardinality:** တၢင်းၼမ်ၵႃႈၶၼ် ဢၼ်ပႅၵ်ႇပိူင်ႈၵၼ် ၼႂ်း Column။
* **Left-to-Right Rule:** ပၵ်းၵၢၼ် ၵၢၼ်လိူၵ်ႈၸႂ်ႉ Composite Index ၸွမ်းၼင်ႇ ဢၼ်တႅမ်ႈဝႆႉ တႄႇသၢႆႉၸူးၶႂႃ ၶႃႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ၸဝ်ႈၵဝ်ႇမီး Index တီႈ `(city, street)`... Query `WHERE street = 'Main St'` တေၸႂ်ႉ Index ၼၼ်ႉႁႃႉ? ၵွပ်ႈသင်?
2.  **Covering Index** ၸွႆႈႁႂ်ႈ Query ဝႆးလိူဝ် Index ธรรมဒါ ၸိူင်ႉႁိုဝ်ၶႃႈ?
3.  သင် Column ၼိုင်ႈဢၼ်မီးၵူၺ်းၵႃႈၶၼ် 'Yes' လႄႈ 'No' (Low Cardinality)... ၸဝ်ႈၵဝ်ႇထုၵ်ႇလီသႂ်ႇ Index ပၼ်မၼ်းႁႃႉ?

---