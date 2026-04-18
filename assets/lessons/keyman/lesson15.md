## Lesson 15: Multi-Group Processing

### 1. Group ဢၼ်ဝႃႈၼၼ်ႉ ပဵၼ်သင်?
ၼႂ်း Keyman Source Code ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႅၵ်ႇ Rule ႁဝ်းဝႆႉလၢႆလၢႆ Group။
* **Main Group:** တွၼ်ႈတႃႇထတ်းတူၺ်း Key ဢၼ်ၼဵၵ်ႉမႃး (`using keys`)။
* **Post-Processing Group:** တွၼ်ႈတႃႇမႄး (Format) တူဝ်လိၵ်ႈဝၢႆးသေၼဵၵ်ႉယဝ်ႉ။

### 2. ၵၢၼ်ႁဵတ်းၵၢၼ်ၶွင် Multi-Group
မိူဝ်ႈႁဝ်းၼဵၵ်ႉ Key ၼိုင်ႈတူဝ်ၼၼ်ႉ Keyboard တေသူင်ႇၶေႃႈမုၼ်းလတ်းၵႂႃႇလၢႆလၢႆ Group ၸွမ်းၼင်ႇႁဝ်းသင်ႇဝႆႉ။
1.  **Group 1:** တူၺ်း Key ဢၼ်ၼဵၵ်ႉသေ ဢွၵ်ႇၼႄ Output။
2.  **Group 2:** တူၺ်း Context ဢၼ်ဢွၵ်ႇမႃးသေ မႄးပၼ် Unicode (Reordering/Normalization) ႁႂ်ႈမၼ်းမႅၼ်ႈ။



### 3. ၵၢၼ်တႅမ်ႈ Code လူၺ်ႈၸႂ်ႉ `use()`
ႁဝ်းတေၸႂ်ႉၶေႃႈသင်ႇ `use()` တႃႇသူင်ႇ Context ၵႂႃႇထႅင်ႈ Group ၼိုင်ႈယဝ်ႉ။

**တူဝ်ယၢင်ႇ Code:**
```keyman
begin Unicode > use(main)

group(main) using keys
  c --- ၸၼ်ႉထတ်းတူၺ်း Key ဢၼ်ၼဵၵ်ႉမႃး ---
  + [K_U] > 'ၵ'
  + [K_J] > 'ႇ'
  match > use(reorder)  c သင်မီး Rule ဢၼ်မႅၼ်ႈ (Match) ႁႂ်ႈသူင်ႇၵႂႃႇ Group reorder

group(reorder)
  c --- ၸၼ်ႉမႄး Unicode ႁႂ်ႈမၼ်းမႅၼ်ႈၸွမ်းပိူင် (ဢမ်ႇၸႂ်ႉ keys) ---
  U+1087 U+1083 > index(U+1083 U+1087, 2) index(U+1083 U+1087, 1) c Swap ႇ+ု ပဵၼ် ု+ႇ
```

### 4. လွင်ႈလီၶွင် Multi-Group Processing
* **Separation of Concerns:** ၸၼ်ႉတႅမ်ႈ Mapping (K > ၵ) လႄႈ ၸၼ်ႉတႅမ်ႈ Smart Logic (Normalization) တေဢမ်ႇယုင်ႈၵၼ်။
* **Efficiency:** ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Rule တႃႇမႄး Unicode တီႈလဵဝ်ၵူၺ်း (ၼႂ်း Post-group) မၼ်းတေၸွႆးထတ်းပၼ်ၵူႈ Key ဢၼ်ၼဵၵ်ႉမႃးယဝ်ႉ။
* **Readability:** ႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူငၢႆႈ လႄႈ ၸတ်းၵၢၼ် (Debug) လႆႈငၢႆႈမႃးယဝ်ႉ။

---

### Summary (တွၼ်ႈၵႅပ်ႈ Lesson 15)

| IT Terms | ၶေႃႈၵႂၢမ်းတႆး / Definition |
| :--- | :--- |
| **Multi-Group** | ၵၢၼ်ၸႅၵ်ႇ Rule ဝႆႉလၢႆလၢႆတွၼ်ႈ တွၼ်ႈတႃႇၸတ်းၵၢၼ် Logic |
| **use()** | ၶေႃႈသင်ႇတႃႇသူင်ႇ Context လတ်းၵႂႃႇထႅင်ႈ Group ၼိုင်ႈ |
| **Post-Processing** | ၵၢၼ်ၸတ်းၵၢၼ်တူဝ်လိၵ်ႈ ဝၢႆးသေ Keyboard ဢွၵ်ႇ Output မႃးယဝ်ႉ |
| **Match** | ၶေႃႈသင်ႇဢၼ်တေႁဵတ်းၵၢၼ် မိူဝ်ႈမီး Rule တီႈၽၢႆႇၼိူဝ်မၼ်း မႅၼ်ႈ (Match) |

**Summary:** ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းလႆႈႁဵၼ်းႁူႉလွင်ႈၵၢၼ်ၸႅၵ်ႇ Logic Keyboard ႁဝ်းဝႆႉလၢႆလၢႆ **Group**။ ၵၢၼ်ၸႂ်ႉ `use()` တႃႇသူင်ႇၶေႃႈမုၼ်းလတ်းၵႂႃႇၼႂ်း Post-processing groups တေႁဵတ်းႁႂ်ႈ Keyboard **TMK Shan** ႁဝ်းမီးပိူင်ၸတ်းၵၢၼ် Unicode ဢၼ်ၶႅမ်ႉလႅပ်ႈ လႄႈ Code ႁဝ်းမၼ်းသၼ်းလူင်းၼမ်ယဝ်ႉ။

---