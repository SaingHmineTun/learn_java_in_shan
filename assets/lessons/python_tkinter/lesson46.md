## Lesson 46: Searching & Filtering
**(လွၵ်းလၢႆးႁႃၶေႃႈမုၼ်း လႄႈ ၵၢၼ်လိူၵ်ႈၼႄ Data တႅတ်ႈၼႅတ်ႈ)**

### 1. SQL `LIKE` Operator ပဵၼ်သင်?
တႃႇတေႁႃၶေႃႈမုၼ်းၼၼ်ႉ ႁဝ်းတေၸႂ်ႉၶေႃႈသင်ႇ SQL ဢၼ်ၸိုဝ်ႈဝႃႈ `LIKE` ၶႃႈ။ 
မၼ်းပႅၵ်ႇပိူင်ႈတင်း `=` တီႈဢၼ်မၼ်းၸၢင်ႈႁႃ "လိၵ်ႈၵေႃႈၼိုင်ႈ" (Partial Match) ၼႂ်းၸိုဝ်ႈလႆႈၶႃႈယဝ်ႉ။

* **`WHERE name = 'Sai'`**: တေႁႃႁၼ် ၵေႃႉဢၼ်ၸိုဝ်ႈဝႃႈ "Sai" ၼၼ်ႉၵူၺ်း။
* **`WHERE name LIKE 'Sai%'`**: တေႁႃႁၼ်ၵူႈၵေႃႉ ဢၼ်တႄႇလူၺ်ႈ "Sai" (တူဝ်ယၢင်ႇ: Sai La, Sai Mao, Sai Pan)။
* **`WHERE name LIKE '%Mao%'`**: တေႁႃႁၼ်ၵူႈၵေႃႉ ဢၼ်မီးလိၵ်ႈ "Mao" ယူႇၼႂ်းၵႄႈၸိုဝ်ႈၶႃႈယဝ်ႉ။ (တူဝ်ယၢင်ႇ: Sai Mao, Mao Leng, Nam Khay Mao)



---

### 2. လွၵ်းလၢႆးႁဵတ်းၵၢၼ် (Workflow)
1.  User တႅမ်ႈလိၵ်ႈၶဝ်ႈၼႂ်း Search Entry။
2.  Python ဢဝ်လိၵ်ႈၼၼ်ႉၵႂႃႇထၢမ် Database လူၺ်ႈၸႂ်ႉ `LIKE`။
3.  Database သူင်ႇၶေႃႈမုၼ်းဢၼ်မႅၼ်ႈၸွမ်းမႃးပၼ်။
4.  Treeview (Table) လႅၵ်ႈလၢႆႈၼႄၵူၺ်း ၶေႃႈမုၼ်းဢၼ်ႁဝ်းႁႃၼၼ်ႉၶႃႈယဝ်ႉ။

---

### 3. တူဝ်ယၢင်ႇ Code (Search Function)
ၸၢႆးမၢဝ်း ၸၢမ်းထႅမ် Function ၼႆႉ ၶဝ်ႈၵႂႃႇၼႂ်း Software ႁဝ်းတူၺ်းၶႃႈၼႃ:

```python
# --- ၼႂ်း Database Class ---
def search_students(self, query):
    # ၸႂ်ႉ % တႃႇႁႃလိၵ်ႈ ဢၼ်မီးယူႇတီႈလႂ်ၵေႃႈယႃႇ ၼႂ်းၸိုဝ်ႈ
    sql = "SELECT * FROM students WHERE name LIKE ?"
    params = (f'%{query}%',)
    self.cursor.execute(sql, params)
    return self.cursor.fetchall()

# --- ၼႂ်း GUI App ---
def on_search(self):
    search_text = self.search_entry.get()
    
    # 1. ဢဝ် Data ဢၼ်ႁႃႁၼ်
    results = self.db.search_students(search_text)
    
    # 2. လၢင်ႉ Treeview ၵဝ်ႇဢွၵ်ႇ
    for item in self.tree.get_children():
        self.tree.delete(item)
        
    # 3. ၼႄ Data မႂ်ႇ ဢၼ်ႁႃႁၼ်ၵူၺ်း
    for s in results:
        self.tree.insert("", "end", values=s)
```

---

### 4. ၶေႃႈပိုတ်ႇၸႅင်ႈ (Breakdown)
* **`f'%{query}%'`**: ဢၼ်ၼႆႉပဵၼ် Wildcard ၶႃႈ။ မၼ်းမၢႆထိုင်ဝႃႈ "ၽၢႆႇၼႃႈတေမီးလိၵ်ႈသင်ၵေႃႈယႃႇ၊ ၽၢႆႇလင်တေမီးလိၵ်ႈသင်ၵေႃႈယႃႇ၊ ႁႂ်ႈမီးလိၵ်ႈဢၼ် User ႁႃၼၼ်ႉ ယူႇၼႂ်းၵႄႈၵေႃႈလႆႈ" ၶႃႈယဝ်ႉ။
* **Dynamic Filtering**: ႁဝ်းၸၢင်ႈၸႂ်ႉ `.bind("<KeyRelease>", self.on_search)` တႃႇႁႂ်ႈမၼ်း Search ပၼ်ၵမ်းလဵဝ် မိူဝ်ႈ User တိုၵ်ႉတႅမ်ႈလိၵ်ႈယူႇၼၼ်ႉၵေႃႈလႆႈၶႃႈ (ဢမ်ႇလူဝ်ႇၼႅၵ်း Button)။

---

### 5. လွင်ႈတေလႆႈမၢႆတွင်း (Key Points)
ၼႂ်း **TMK Student Records Manager** ၼၼ်ႉ:
1.  ႁဝ်းတေၸႂ်ႉ **Search Bar** တႃႇႁႃလုၵ်ႈႁဵၼ်းလူၺ်ႈၸိုဝ်ႈ။
2.  ႁဝ်းၸၢင်ႈထႅမ် **Filtering** ၸွမ်း `Grade` (တူဝ်ယၢင်ႇ: ၼႄၵူၺ်းလုၵ်ႈႁဵၼ်း Python Class) ၶႃႈယဝ်ႉ။

---