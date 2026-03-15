
# Lesson 07: Essential String Methods

Methods ၵေႃႈပဵၼ် Function ဢၼ်ႁဵတ်းၵၢၼ်ပၼ် String ၼၼ်ႉၶႃႈ။ လွင်ႈလမ်ႇလွင်ႈဢၼ်လူဝ်ႇတွၼ်းဝႆႉတႄႉ **Strings are Immutable** (လႅၵ်ႈလၢႆႈဢမ်ႇလႆႈ)။ ပွင်ႇဝႃႈ Method တေဢမ်ႇၵႂႃႇမႄး String တူဝ်ၵဝ်ႇ၊ မၼ်းတေ **သၢင်ႈ String တူဝ်မႂ်ႇ** ဢၼ်မႄးယဝ်ႉၼၼ်ႉဢွၵ်ႇမႃးပၼ်ၶႃႈ။

### 1. ၵၢၼ်လႅၵ်ႈတူဝ်လိၵ်ႈ ယႂ်ႇ/ဢွၼ်ႇ

* **`.toUpperCase()`**: လႅၵ်ႈပဵၼ်တူဝ်ယႂ်ႇတင်းမူတ်း။
* **`.toLowerCase()`**: လႅၵ်ႈပဵၼ်တူဝ်ဢွၼ်ႇတင်းမူတ်း။

```javascript
let greeting = "Hello Shan State";
console.log(greeting.toUpperCase()); // "HELLO SHAN STATE"
console.log(greeting.toLowerCase()); // "hello shan state"

```

### 2. ၵၢၼ်ထႅတ်ႈ (Trim) လႄႈ ၵၢၼ်ႁႃ (Search)

* **`.trim()`**: ထႅတ်ႈပႅတ်ႈ "ပိုၼ်ႉတီႈပဝ်ႇ" (Spaces) ဢၼ်ယူႇၽၢႆႇၼႃႈ လႄႈ ၽၢႆႇလင်လိၵ်ႈ။
* **`.includes()`**: ၵူတ်ႇထတ်းဝႃႈ မီးတူဝ်လိၵ်ႈဢၼ်ႁဝ်းႁႃၼၼ်ႉယူႇၼႂ်းၼၼ်ႉႁႃႉ? (ဢွၵ်ႇ `true/false`)။

```javascript
let email = "  myemail@gmail.com  ";
console.log(email.trim()); // "myemail@gmail.com"

let text = "JavaScript is fun";
console.log(text.includes("fun")); // true

```

### 3. ၵၢၼ်တတ်း (Slicing) လႄႈ ၵၢၼ်လႅၵ်ႈ (Replace)

* **`.slice(start, end)`**: တတ်းဢဝ်လိၵ်ႈတွၼ်ႈၼိုင်ႈ (တႄႇတီႈ index ဢၼ်ၼိုင်ႈ တေႃႇထိုင် ဢၼ်ၼိုင်ႈ)။
* **`.replace(old, new)`**: လႅၵ်ႈတူဝ်လိၵ်ႈၵဝ်ႇ ပဵၼ်တူဝ်လိၵ်ႈမႂ်ႇ။

```javascript
let fruit = "Apple, Banana, Kiwi";
console.log(fruit.slice(7, 13)); // "Banana" (တႄႇၼပ်ႉတီႈ 0)

let message = "I love Java";
console.log(message.replace("Java", "JavaScript")); // "I love JavaScript"

```

---

### 4. Method Chaining (ၵၢၼ်ႁွင်ႉၸႂ်ႉသိုပ်ႇၵၼ်)

ႁဝ်းၸၢင်ႈဢဝ် Method လၢႆလၢႆဢၼ် မႃးသိုပ်ႇၵၼ်လႆႈၼႂ်းထႅဝ်လဵဝ်ၶႃႈ:

```javascript
let username = "  SaiKham  ";
let cleanName = username.trim().toLowerCase();
console.log(cleanName); // "saikham"

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Methods** ၸွႆႈႁႂ်ႈႁဝ်းၸတ်းၵၢၼ် String လႆႈၽႂ်း။
* String တူဝ်ၵဝ်ႇတေဢမ်ႇလႅၵ်ႈလၢႆႈ၊ Method တေပၼ် **String တူဝ်မႂ်ႇ** မႃးတႃႇသေႇ။
* ၸႂ်ႉ **`.includes()`** တႃႇၵူတ်ႇထတ်းၶေႃႈမုၼ်း လႄႈ **`.trim()`** တႃႇႁဵတ်းႁႂ်ႈ Data ႁဝ်းသႅၼ်ႈသႂ်ၶႃႈ။

---
