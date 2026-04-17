## Lesson 6: Using store() as Variables

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းႁူႉလွင်ႈၵၢၼ်ၸႂ်ႉ `store()` တႃႇႁဵတ်းႁႂ်ႈ Code ႁဝ်းသႅၼ်ႈ (Clean) လႄႈ ၸတ်းၵၢၼ်လႆႈငၢႆႈယဝ်ႉ။

### 1. store() ဢၼ်ဝႃႈၼၼ်ႉ ပဵၼ်သင်?
ၼႂ်းၵၢၼ်တႅမ်ႈ Code (Programming) ၼၼ်ႉ `store()` မိူၼ်တင်း **Variables** ဢမ်ႇၼၼ် **Arrays** ယဝ်ႉ။
မၼ်းၸၢင်ႈၵိုတ်းသိမ်း (Store) တူဝ်လိၵ်ႈလၢႆလၢႆတူဝ် ဝႆႉၼႂ်းၸိုဝ်ႈဢၼ်လဵဝ်ၵၼ်ယဝ်ႉ။

### 2. လွင်ႈလီၶွင်ၵၢၼ်ၸႂ်ႉ store()
* **Clean Code:** ၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇတႅမ်ႈ Code ယၢဝ်းယႅၼ်းၵူႈထႅဝ်။
* **Easy Maintenance:** သင်ဝႃႈၶႂ်ႈမႄးတူဝ်လိၵ်ႈ ၸဝ်ႈၵဝ်ႇမႄးတီႈ `store` တီႈလဵဝ်ၵေႃႈယဝ်ႉယဝ်ႉ။
* **Dynamic Rules:** မၼ်းၸွႆးႁႂ်ႈႁဝ်းတႅမ်ႈ Logic ဢၼ်ႁွင်ႉဝႃႈ **Pattern Matching** (တူၺ်းၼႂ်း Lesson ၼႃႈ) လႆႈယဝ်ႉ။

### 3. ၵၢၼ်တႅမ်ႈ Code လူၺ်ႈၸႂ်ႉ store()
ႁဝ်းတေၸၢင်ႈဢဝ် Code ယၢဝ်းယႅၼ်းၶွင်ၸဝ်ႈၵဝ်ႇၼၼ်ႉ မႃးတႅမ်ႈပဵၼ် `store()` ၼင်ႇၼႆၶႃႈ:

```keyman
c --- Define Variables (Stores) ---
store(shan_numbers_key) '1234567890'
store(shan_numbers_val) '႑႒႓႔႕႖႗႘႙႐'

store(consonants_key) 'QWERT YUIP'
store(consonants_val) 'ၸတၼမဢ ပၵငႁ'

c --- Logic Using Store ---
+ any(shan_numbers_key) > index(shan_numbers_val, 1)
+ any(consonants_key)    > index(consonants_val, 1)
```



---

### Summary (တွၼ်ႈၵႅပ်ႈ Lesson 6)

| IT Terms | ၶေႃႈၵႂၢမ်းတႆး / Definition |
| :--- | :--- |
| **store()** | တူဝ်ၵိုတ်းသိမ်းၶေႃႈမုၼ်း (Variable/Array) |
| **any()** | ၶေႃႈသင်ႇတႃႇထတ်းတူၺ်းဝႃႈ "မီးတူဝ်လႂ်တူဝ်ၼိုင်ႈၼႂ်း store ႁႃႉ?" |
| **index()** | ၶေႃႈသင်ႇတႃႇဢဝ်တူဝ်လိၵ်ႈဢွၵ်ႇမႃး ၸွမ်းၼင်ႇတႅၼ်ႈ (Index) ဢၼ်မႅၼ်ႈၵၼ် |
| **Clean Code** | ၵၢၼ်တႅမ်ႈ Code ႁႂ်ႈလူငၢႆႈ၊ သၼ်း လႄႈ ၸတ်းၵၢၼ်ငၢႆႈ |

**Summary:** ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းလႆႈႁူႉၸၵ်းလွင်ႈၵၢၼ်ၸႂ်ႉ `store()` တႃႇၸတ်းၵၢၼ် Code ႁႂ်ႈမၼ်းပဵၼ်ပိူင် (Array-based mapping)။ ၵၢၼ်ၸႂ်ႉ `any()` လႄႈ `index()` တေႁဵတ်းႁႂ်ႈ Code ႁဝ်းသၼ်းလူင်းၼမ်သေ ၸတ်းၵၢၼ်လႆႈငၢႆႈမိူၼ် Developer တႄႇတႄႇယဝ်ႉ။

---