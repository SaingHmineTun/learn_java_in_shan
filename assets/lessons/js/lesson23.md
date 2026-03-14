# Lesson 23: Arrays & Arrays Methods (ပိုၼ်ႉထၢၼ် Array)

**Array** ပဵၼ် Data Structure ဢၼ်ငၢႆႈသုတ်း လႄႈ ၸႂ်ႉၼမ်သုတ်း။ မၼ်းပဵၼ် "ထႅဝ်" ဢၼ်ႁဝ်းၸၢင်ႈၵဵပ်းၶေႃႈမုၼ်းလၢႆလၢႆမဵဝ်း ဝႆႉၼႂ်းတူဝ်လႅၵ်ႈ (Variable) တူဝ်လဵဝ်ၵၼ်။

### 1. ၵၢၼ်သၢင်ႈ လႄႈ Index (မၢႆထႅဝ်)

ၼႂ်း JavaScript Array၊ ႁဝ်းတႄႇၼပ်ႉမၢႆထႅဝ်တီႈ **0** တႃႇသေႇ။

```javascript
const mySkills = ["HTML", "CSS", "JS"];

console.log(mySkills[0]); // "HTML"
console.log(mySkills.length); // 3 (တူဝ်ၼပ်ႉတင်းမူတ်း)

```

### 2. Basic Methods (ၵၢၼ်ၸတ်းၵၢၼ်ပိုၼ်ႉထၢၼ်)

Methods ၸိူဝ်းၼႆႉ ၸွႆႈႁႂ်ႈႁဝ်းထႅမ် ႁိုဝ် မၢတ်ႇၶေႃႈမုၼ်းဢွၵ်ႇ လုၵ်ႉတီႈ "ႁူဝ်" လႄႈ "ႁၢင်" ၶွင်ထႅဝ်ၶႃႈ။

| Method | ၵၢၼ်ႁဵတ်း (Action) | ဢွင်ႈတီႈ (Position) |
| --- | --- | --- |
| **`.push()`** | ထႅမ်ၶေႃႈမုၼ်းသႂ်ႇ | ၽၢႆႇလင် (End) |
| **`.pop()`** | မၢတ်ႇၶေႃႈမုၼ်းဢွၵ်ႇ | ၽၢႆႇလင် (End) |
| **`.unshift()`** | ထႅမ်ၶေႃႈမုၼ်းသႂ်ႇ | ၽၢႆႇၼႃႈ (Front) |
| **`.shift()`** | မၢတ်ႇၶေႃႈမုၼ်းဢွၵ်ႇ | ၽၢႆႇၼႃႈ (Front) |

**တူဝ်ယၢင်ႇ (Example):**

```javascript
let cart = ["Milk", "Bread"];

cart.push("Egg");     // ["Milk", "Bread", "Egg"]
cart.pop();          // ["Milk", "Bread"]
cart.unshift("Tea"); // ["Tea", "Milk", "Bread"]

```

---

### 3. Splice & Slice (ၵၢၼ်တတ်း လႄႈ ၵၢၼ်သႂ်ႇတီႈၵၢင်)

မၢင်ၵမ်းႁဝ်းဢမ်ႇၶႂ်ႈၸတ်းၵၢၼ်ၵူၺ်းတီႈႁူဝ် လႄႈ တီႈႁၢင်၊ ႁဝ်းၶႂ်ႈမႄးတီႈၵၢင်မၼ်းၶႃႈ။

* **`.slice()`**: ၸႂ်ႉတႃႇ "ၵေႃပီႇ" ဢဝ်တွၼ်ႈလႂ်တွၼ်ႈၼိုင်ႈ ၼႂ်း Array ဢွၵ်ႇမႃး (Array ၵဝ်ႇတေဢမ်ႇလႅၵ်ႈလၢႆႈ)။
* **`.splice()`**: ၸႂ်ႉတႃႇ "မၢတ်ႇဢွၵ်ႇ" ႁိုဝ် "ထႅမ်သႂ်ႇ" ၶေႃႈမုၼ်းမႂ်ႇ တီႈ Index ဢၼ်ႁဝ်းတႅပ်းတတ်း (Array ၵဝ်ႇတေလႅၵ်ႈလၢႆႈၵႂႃႇ)။

```javascript
const members = ["Sai", "Nan", "Kham", "Mo"];

// slice(start, end)
const team = members.slice(1, 3); // ["Nan", "Kham"]

// splice(index, howmany, item1, ...)
members.splice(1, 1, "Lon"); // တီႈ Index 1, မၢတ်ႇဢွၵ်ႇ 1 တူဝ်, သႂ်ႇ "Lon" တႅၼ်း
// ၵမ်းၼႆႉ members တေပဵၼ် ["Sai", "Lon", "Kham", "Mo"]

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Array** ၵဵပ်းၶေႃႈမုၼ်းၸွမ်းလမ်ႇတပ်ႉ။
* ၸႂ်ႉ **`.push/.pop`** ၼမ်သုတ်း ၵွပ်ႈမၼ်းၽႂ်းလိူဝ် `.shift/.unshift` (ဢမ်ႇလူဝ်ႇၶยၢႆႉ Index တၢင်ႇတူဝ်)။
* **`.slice`** ပဵၼ်ၵၢၼ် Copy၊ **`.splice`** ပဵၼ်ၵၢၼ် Modify (မႄးတူဝ်ၵဝ်ႇ)။

---