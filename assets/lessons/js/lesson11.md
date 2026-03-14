# Lesson 11: Function Declarations & Expressions (လၢႆးသၢင်ႈ Function)

**Function** မၢႆထိုင် ၸုမ်းၵူတ်ႉ (Block of code) ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ ပိူဝ်ႈတေႁဵတ်းၵၢၼ်လွင်ႈၼိုင်ႈ။ ႁႅင်းလီမၼ်းသုတ်းၵေႃႈပဵၼ် **"တႅမ်ႈၼိုင်ႈပွၵ်ႈ၊ ၸႂ်ႉလႆႈၵူႈတီႈ"** (Write once, use everywhere) ၼၼ်ႉၶႃႈ။

### 1. Function Declaration (ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ Function)

ၼႆႉပဵၼ်လၢႆးတႅမ်ႈပိုၼ်ႉထၢၼ်သုတ်း။ ႁဝ်းၸႂ်ႉ Keyword ဝႃႈ `function` ၸွမ်းလူၺ်ႈ "ၸိုဝ်ႈ" မၼ်းၶႃႈ။

```javascript
// 1. သၢင်ႈ (Declare)
function sayHello() {
  console.log("မႂ်ႇသုင်ၶႃႈ!");
}

// 2. ႁွင်ႉၸႂ်ႉ (Call / Invoke)
sayHello(); 

```

### 2. The `return` Keyword (ၵၢၼ်သူင်ႇၽົນလႆႈ)

Function မၢင်ဢၼ် ဢမ်ႇၸႂ်ႈဝႃႈတေ `console.log` ၵူၺ်း၊ မၼ်းလူဝ်ႇ "ၼပ်ႉဢွၵ်ႇ" ၵႃႈၶၼ်သင်ဝႆႉၼိုင်ႈယၢင်ႇ သေသူင်ႇပၼ်ႁဝ်းၶိုၼ်း။ ႁဝ်းၸႂ်ႉ `return` ပိူဝ်ႈတေသူင်ႇၵႃႈၶၼ်ၼၼ်ႉ ဢွၵ်ႇမႃးတေႃႇၽၢႆႇၼွၵ်ႈၶႃႈ။

```javascript
function getAge() {
  return 25;
}

const myAge = getAge(); // myAge တေပဵၼ် 25

```

> **သတိ:** ပေႃးဝႃႈ Function ႁွတ်ႈထိုင်တီႈ `return` ယဝ်ႉ၊ မၼ်းတေ **ၵိုတ်းၵမ်းလဵဝ်**။ ၵူတ်ႉဢၼ်တႅမ်ႈဝႆႉတႂ်ႈ `return` ၼၼ်ႉ တေဢမ်ႇႁဵတ်းၵၢၼ်ယဝ်ႉ။

---

### 3. Function Expression (ၵၢၼ်ဝႆႉ Function ၼႂ်း Variable)

ၼႂ်း JavaScript ၼၼ်ႉ Function ပဵၼ်မိူၼ်ၼင်ႇ "ၶေႃႈမုၼ်း" မဵဝ်းၼိုင်ႈၵူၺ်း၊ ယွၼ်ႉၼၼ် ႁဝ်းဢဝ်မၼ်းၵဵပ်းဝႆႉၼႂ်း Variable လႆႈၶႃႈ။

```javascript
const speak = function() {
  console.log("ၵႂႃႇၵိၼ်ၶဝ်ႈ!");
};

speak(); // ႁွင်ႉၸႂ်ႉၸွမ်းၸိုဝ်ႈ Variable

```

---

### 4. တႅၵ်ႈၼိူင်း Declaration လႄႈ Expression

| လွင်ႈပႅၵ်ႇပိူင်ႈ | Function Declaration | Function Expression |
| --- | --- | --- |
| **Hoisting** | ႁွင်ႉၸႂ်ႉဢွၼ်တၢင်း တႅမ်ႈၵေႃႈလႆႈ (Hoisted) | တေလႆႈတႅမ်ႈဢွၼ်တၢင်း ၸင်ႇႁွင်ႉၸႂ်ႉလႆႈ |
| **Syntax** | `function name() { ... }` | `const name = function() { ... }` |

**လွင်ႈလီတွၼ်း:** တႃႇတႅမ်ႈ Ebook ၸဝ်ႈၵဝ်ႇ၊ တႅၵ်ႈၼိူင်းၼႄဝႃႈ Function Declaration ပဵၼ်မိူၼ် **"ၵျွင်းၽြႃး"** (မီးဝႆႉယူႇတေႃႇသေႇ၊ ၽႂ်ၵေႃႈႁူႉၸၵ်း)၊ သမ်ႉ Expression ပဵၼ်မိူၼ် **"ၵႃးတႅၵ်ႉသီႇ"** (လူဝ်ႇႁွင်ႉဢွၼ်တၢင်း ၸင်ႇမၼ်းတေမႃး)။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 11)

* **Function**: ပဵၼ်ၸုမ်းၵူတ်ႉ ဢၼ်ၸႂ်ႉလႆႈလၢႆလၢႆပွၵ်ႈ (Reusable).
* **Return**: ၸႂ်ႉတႃႇသူင်ႇၵႃႈၶၼ် ဢွၵ်ႇမႃးၼွၵ်ႈ Function.
* **Hoisting**: Declaration ႁွင်ႉၸႂ်ႉလႆႈၵူႈတီႈ၊ Expression တေလႆႈတႅမ်ႈဢွၼ်တၢင်းၸင်ႇၸႂ်ႉလႆႈ။

---