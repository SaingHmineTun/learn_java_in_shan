
# Lesson 19: Function Declarations vs. Expressions

ၼႂ်း JavaScript၊ ႁဝ်းၸၢင်ႈသၢင်ႈ Function လႆႈလၢႆလၢႆလၢႆး။ 2 လၢႆး ဢၼ်ၵႆႉၸႂ်ႉလိူဝ်ပိူၼ်ႈတႄႉပဵၼ် **Declaration** (ၵၢၼ်ပိုၼ်ေၽၢဝ်ႇ) လႄႈ **Expression** (ၵၢၼ်ပၼ်ၵႃႈၶၼ်) ၶႃႈ။

### 1. Function Declaration

ၼႆႉပဵၼ်လၢႆးတႅမ်ႈ "ယူဝ်းယူဝ်း" ဢၼ်ႁဝ်းၵႆႉႁၼ်ၶႃႈ။ မၼ်းတႄႇလူၺ်ႈ Keyword `function` သေ ၸွမ်းလူၺ်ႈ "ၸိုဝ်ႈ" မၼ်းၶႃႈ။

```javascript
function sayHello(name) {
  return `မႂ်ႇသုင်ၶႃႈ ${name}!`;
}

// ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Calling)
console.log(sayHello("Sai Kham")); 

```

* **လွင်ႈၶႅၼ်ႇမၼ်း:** မၼ်းမီး **Hoisting** ၶႃႈ။ ပွင်ႇဝႃႈ ၸဝ်ႈၵဝ်ႇၸၢင်ႈ "ႁွင်ႉၸႂ်ႉ" Function ၼႆႉ ဢွၼ်တၢင်းတေတႅမ်ႈမၼ်းၵေႃႈလႆႈၶႃႈ။

---

### 2. Function Expression

ၼႆႉပဵၼ်ၵၢၼ်သၢင်ႈ Function သေ ဢဝ်မၼ်းၵႂႃႇသိမ်းဝႆႉၼႂ်း **Variable** ၶႃႈ။

```javascript
const sayHello = function(name) {
  return `မႂ်ႇသုင်ၶႃႈ ${name}!`;
};

// ၵၢၼ်ႁွင်ႉၸႂ်ႉ
console.log(sayHello("Sai Kham"));

```

* **လွင်ႈၶႅၼ်ႇမၼ်း:** မၼ်းဢမ်ႇမီး Hoisting။ ၸဝ်ႈၵဝ်ႇတေလႆႈ "တႅမ်ႈမၼ်းယဝ်ႉ" ၸင်ႇတေႁွင်ႉၸႂ်ႉလႆႈၶႃႈ။ ၼႆႉႁဵတ်းႁႂ်ႈၵူတ်ႉႁဝ်းမီးပိူင် (Structure) လီလိူဝ်ၶႃႈ။

---

### 3. လွင်ႈပႅၵ်ႇပိူင်ႈ ဢၼ်လမ်ႇလွင်ႈ (Key Differences)

| Feature | Function Declaration | Function Expression |
| --- | --- | --- |
| **Hoisting** | လႆႈ (ႁွင်ႉၸႂ်ႉဢွၼ်တၢင်းလႆႈ) | ဢမ်ႇလႆႈ (လူဝ်ႇတႅမ်ႈယဝ်ႉၸင်ႇၸႂ်ႉ) |
| **ၸိုဝ်ႈ (Name)** | လူဝ်ႇမီးၸိုဝ်ႈတႃႇသေႇ | ၸၢင်ႈပဵၼ် Anonymous (ဢမ်ႇပၼ်ၸိုဝ်ႈ) |
| **လွင်ႈၸႂ်ႉတိုဝ်း** | ၸႂ်ႉတႃႇ Logic ပိုၼ်ႉထၢၼ် | ၸႂ်ႉတႃႇ Logical Flow ဢၼ်သုၵ်ႉယုင်ႈ လႄႈ Callback |

---

### 4. Anatomy of a Function (တွၼ်ႈၵေႃႇသၢင်ႈ Function)

မိူဝ်ႈႁဝ်းသၢင်ႈ Function ၼိုင်ႈဢၼ် မၼ်းမီးတွၼ်ႈလမ်ႇလွင်ႈ 3 ယၢင်ႇ:

1. **Parameters**: ၶေႃႈမုၼ်းဢၼ်ႁဝ်း "ႁပ်ႉၶဝ်ႈ" (Input)။
2. **Function Body**: ၵူတ်ႉဢၼ်တေႁဵတ်းၵၢၼ်ၼႂ်း `{ }`။
3. **Return Statement**: ၵႃႈၶၼ်ဢၼ်ႁဝ်း "သူင်ႇဢွၵ်ႇ" (Output)။

> ⚠️ **သတိ:** သင် Function ဢမ်ႇမီး `return`၊ မၼ်းတေသူင်ႇၵႃႈၶၼ် `undefined` ဢွၵ်ႇမႃးပၼ်တႃႇသေႇၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Function Declaration** လီတႃႇသၢင်ႈ Function ဢၼ်တေၸႂ်ႉၵူႈတီႈၼႂ်း File။
* **Function Expression** လီတႃႇၵုမ်းၵမ် Logic ႁႂ်ႈသႅၼ်ႈသႂ် (Clean) လႄႈ ၸွႆႈႁႄႉၵင်ႈပၼ်ႁႃ Hoisting။
* ၵူႈပွၵ်ႈဢၼ်ႁွင်ႉၸႂ်ႉ Function၊ JavaScript တေ "သၢင်ႈပိုၼ်ႉတီႈမႂ်ႇ" တႃႇၼပ်ႉသွၼ်ႇၵူတ်ႉၼၼ်ႉၶႃႈ။

---
