# Lesson 28: Maps (ၵၢၼ်ၵွင်ႉ Key ၸူး Value)

**Map** ပဵၼ် Object မဵဝ်းၼိုင်ႈ ဢၼ်ၸွႆႈႁဝ်းၵဵပ်းၶေႃႈမုၼ်း မိူၼ်ၼင်ႇ "ဝတ်ႉထု" (Key) လႄႈ "ၵႃႈၶၼ်" (Value) မၼ်း။

### 1. ယွၼ်ႉသင်လူဝ်ႇၸႂ်ႉ Map? (Map vs Object)

ပႅၵ်ႇသေ Object၊ Map မီးလွင်ႈလၢၵ်ႇလၢႆး 3 ယၢင်ႇ:

1. **Key Type**: ၼႂ်း Object၊ Key တေလႆႈပဵၼ် String ၵူၺ်း။ ၵူၺ်းၵႃႈၼႂ်း Map၊ **ၸဝ်ႈၵဝ်ႇဢဝ် Number, Array, ႁိုဝ် Object ႁဵတ်းပဵၼ် Key ၵေႃႈလႆႈ**။
2. **Size**: ႁဝ်းၸၢင်ႈႁူႉတူဝ်ၼပ်ႉၶေႃႈမုၼ်းလႆႈငၢႆႈငၢႆႈလူၺ်ႈ `.size`။
3. **Order**: Map တေတွၼ်းမၢႆလမ်ႇတပ်ႉ (Order) ဢၼ်ႁဝ်းသႂ်ႇၶေႃႈမုၼ်းၶဝ်ႈၵႂႃႇ။

---

### 2. Methods ဢၼ်ၸႂ်ႉၼႂ်း Map

ၵၢၼ်ၸတ်းၵၢၼ် Map တေၸႂ်ႉ Methods ၸိူင်ႉၼႆၶႃႈ:

* **`.set(key, value)`**: ထႅမ်ၶေႃႈမုၼ်းမႂ်ႇ (ႁိုဝ် မႄးၵႃႈၶၼ်ၵဝ်ႇ)။
* **`.get(key)`**: ႁွင်ႉဢဝ်ၵႃႈၶၼ် (Value) လုၵ်ႉတီႈ Key။
* **`.has(key)`**: ၵူတ်ႇထတ်းဝႃႈ မီး Key ၼႆႉယူႇႁႃႉ?
* **`.delete(key)`**: မၢတ်ႇၶေႃႈမုၼ်းဢွၵ်ႇ။
* **`.size`**: တူဝ်ၼပ်ႉၶေႃႈမုၼ်းတင်းမူတ်း။

```javascript
const userRoles = new Map();

// ထႅမ်ၶေႃႈမုၼ်း
userRoles.set("sai", "admin");
userRoles.set("nan", "editor");
userRoles.set(101, "guest"); // ၸႂ်ႉ Number ပဵၼ် Key ၵေႃႈလႆႈ

console.log(userRoles.get("sai")); // "admin"
console.log(userRoles.size); // 3

```

---

### 3. ၵၢၼ်ပၼ်ႇလူ Map (Iterating)

ႁဝ်းၸၢင်ႈၸႂ်ႉ `for...of` loop တႃႇလူတူၺ်းၶေႃႈမုၼ်းၼႂ်း Map လႆႈငၢႆႈငၢႆႈၶႃႈ:

```javascript
for (const [name, role] of userRoles) {
  console.log(`${name} ပဵၼ် ${role}`);
}

```

---

### 4. မိူဝ်ႈလႂ်ထိုင်လီၸႂ်ႉ Map?

* မိူဝ်ႈ Key ၶွင်ၸဝ်ႈၵဝ်ႇ ဢမ်ႇၸႂ်ႈ String (မိူၼ်ၼင်ႇ ဢဝ် Object ၵွင်ႉၸူး ၶေႃႈမုၼ်းတၢင်ႇဢၼ်)။
* မိူဝ်ႈၸဝ်ႈၵဝ်ႇလူဝ်ႇထႅမ် လႄႈ မၢတ်ႇၶေႃႈမုၼ်း "ၼမ်ၼႃႇ လႄႈ ၽႂ်းၽၢႆ"။
* မိူဝ်ႈလူဝ်ႇၵုမ်းထိူင်း လမ်ႇတပ်ႉ (Order) ၶေႃႈမုၼ်း။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Map** လႅတ်းလိူဝ် Object ၵွပ်ႈ Key ပဵၼ်လႆႈၵူႈမဵဝ်း။
* ၸႂ်ႉ **`.set()`** လႄႈ **`.get()`** တႃႇၸတ်းၵၢၼ်ၶေႃႈမုၼ်း။
* လီသုတ်း တႃႇၸႂ်ႉႁဵတ်း **Dictionary** ႁိုဝ် **Lookup Table** ဢၼ်လူဝ်ႇ Performance သုင်။

---