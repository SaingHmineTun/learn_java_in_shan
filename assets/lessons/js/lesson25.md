# Lesson 25: Immediately Invoked Functions (IIFE)

### 1. IIFE ပဵၼ်သင်?

**IIFE** ပဵၼ် JavaScript Function ဢၼ်လႅၼ်ႈၵမ်းလဵဝ် မိူဝ်ႈ JavaScript Engine လူမႃးထူပ်းမၼ်းၶႃႈ။ ႁဝ်းၸႂ်ႉမၼ်းတႃႇသၢင်ႈ "ပိုၼ်ႉတီႈသုၼ်ႇတူဝ် (Private Scope)" တႃႇ Variable ႁဝ်း ဢမ်ႇႁႂ်ႈမၼ်းၵႂႃႇယုင်ႈၸွၼ်းတင်း Global Scope ၶႃႈ။

### 2. ပိူင်တႅမ်ႈ (Syntax)

လၢႆးတႅမ်ႈ IIFE မီးတွၼ်ႈလမ်ႇလွင်ႈ 2 ဢၼ်:

1. **Grouping Operator `( )**`: ဢဝ် Function သႂ်ႇဝႆႉၼႂ်းၵွင်းၸိၵ်း တႃႇႁဵတ်းႁႂ်ႈ JavaScript ႁူႉဝႃႈၼႆႉပဵၼ် *Expression* (ဢမ်ႇၸႂ်ႈ Declaration)။
2. **Invoking Parentheses `()**`: ၵွင်းၸိၵ်းတီႈတွၼ်ႈသုတ်း တႃႇသင်ႇႁႂ်ႈမၼ်း "လႅၼ်ႈ" ၵမ်းလဵဝ်ၶႃႈ။

```javascript
(function () {
  const secret = "IIFE is running!";
  console.log(secret);
})();

// ၵူတ်ႉၼႂ်းၼႆႉတေလႅၼ်ႈၵမ်းလဵဝ်!
// console.log(secret); // ❌ Error! (ယွၼ်ႉ secret ယူႇၼႂ်း Private Scope ၶွင် IIFE)

```

---

### 3. ယွၼ်ႉသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ IIFE?

* **Avoid Global Pollution (ႁႄႉၵင်ႈလွင်ႈယုင်ႈၸွၼ်း):** သင်ႁဝ်းတႅမ်ႈ Variable ၼမ်ၼႃႇၼႂ်း Global Scope၊ မၼ်းၸၢင်ႈၵႂႃႇ "တႅတ်ႉ" (Clash) ၵၼ်တင်း Library တၢင်ႇဢၼ်။ IIFE ၸွႆႈ "ပိတ်း" Variable ဝႆႉၼႂ်းတူဝ်မၼ်းၶႃႈ။
* **Encapsulation:** ၸႂ်ႉတႃႇသိမ်း Logical ဢၼ်ႁဝ်းၶႂ်ႈႁဵတ်းပွၵ်ႈလဵဝ်ယဝ်ႉၵေႃႈယဝ်ႉ (မိူၼ်ၼင်ႇ ၵၢၼ်တင်ႈၵႃႈၶၼ်ပိုၼ်ႉထၢၼ် (Initialization) မိူဝ်ႈတႄႇပိုတ်ႇ App)။

---

### 4. IIFE လႄႈ Arrow Functions

ႁဝ်းၸၢင်ႈတႅမ်ႈ IIFE လူၺ်ႈၸႂ်ႉ Arrow Function ၵေႃႈလႆႈၶႃႈ၊ တေႁဵတ်းႁႂ်ႈၵူတ်ႉႁဝ်းပွတ်းလိူဝ်ၵဝ်ႇ:

```javascript
(() => {
  console.log("I am an Arrow Function IIFE!");
})();

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **IIFE** လႅၼ်ႈၵမ်းလဵဝ် မိူဝ်ႈမၼ်းထုၵ်ႇပိုၼ်ေၽၢဝ်ႇယဝ်ႉ။
* ၸႂ်ႉတႃႇႁႄႉၵင်ႈ Variable ဢမ်ႇႁႂ်ႈ "လႅၼ်ႈဢွၵ်ႇ" ၵႂႃႇၸူး Global Scope။
* ၼႂ်း Modern JS (ES6 Modules), ႁဝ်းၸၢင်ႈဢမ်ႇလူဝ်ႇၸႂ်ႉ IIFE ၼမ်မိူၼ်မိူဝ်ႈၵွၼ်ႇ၊ ၵူၺ်းၵႃႈ မၼ်းယင်းတိုၵ်ႉလမ်ႇလွင်ႈၼႃႇ ၼႂ်းၵၢၼ်ပွင်ႇၸႂ်ၵူတ်ႉၵဝ်ႇ (Legacy Code) လႄႈ ၵၢၼ်သၢင်ႈ Private Scope ၶႃႈ။

---
