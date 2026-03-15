
# Lesson 22: The Return Keyword & Execution Flow

ၼႂ်း JavaScript၊ Function တေႃႉမိူၼ်ၼင်ႇ "ၶိူင်ႈၸၢၵ်ႈ" ဢၼ်ႁဝ်းသႂ်ႇၶေႃႈမုၼ်းၶဝ်ႈၵႂႃႇ သေမၼ်းတေ "သူင်ႇ" (Return) သင်မဵဝ်းမဵဝ်းဢွၵ်ႇမႃးပၼ်ႁဝ်းၶႃႈ။

### 1. The `return` Keyword

Keyword `return` မီးၼႃႈတီႈလမ်ႇလွင်ႈ 2 ယၢင်ႇ:

1. **သူင်ႇၵႃႈၶၼ် (Output):** ဢဝ်ၵႃႈၶၼ်ဢၼ်ၼပ်ႉသွၼ်ႇယဝ်ႉ သူင်ႇဢွၵ်ႇမႃးပၼ်တီႈဢၼ်ႁဝ်းႁွင်ႉၸႂ်ႉ (Caller)။
2. **ၵိုတ်းၵၢၼ်ႁဵတ်းၵၢၼ် (Terminate):** မိူဝ်ႈ JavaScript ႁဵတ်းၵၢၼ်မႃးထူပ်း `return` ယဝ်ႉ၊ မၼ်းတေ **"ၵိုတ်း"** ၵမ်းလဵဝ်။ ၵူတ်ႉဢၼ်တႅမ်ႈဝႆႉၽၢႆႇတႂ်ႈ `return` ၼၼ်ႉ တေဢမ်ႇထုၵ်ႇလႅၼ်ႈ (Unreachable code) ၶႃႈ။

```javascript
function checkAge(age) {
  if (age < 18) {
    return "You are too young!"; // ၵိုတ်းတီႈၼႆႈ သင် age < 18
  }
  
  // ၵူတ်ႉတွၼ်ႈၼႆႉတေႁဵတ်းၵၢၼ် မိူဝ်ႈ age >= 18 ၵူၺ်း
  return "Welcome to the club!";
}

console.log(checkAge(15)); // "You are too young!"
console.log(checkAge(20)); // "Welcome to the club!"

```

---

### 2. Execution Flow (လၢႆးလႅၼ်ႈၶွင်ၵူတ်ႉ)

မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Function:

1. JavaScript တေ **"ၵျေႃႇ"** ၶဝ်ႈၵႂႃႇၼႂ်း Function ၼၼ်ႉ။
2. လႅၼ်ႈၵူတ်ႉထႅဝ်ပၼ်ထႅဝ်။
3. မိူဝ်ႈထူပ်း `return`၊ မၼ်းတေ **"ၵျေႃႇဢွၵ်ႇ"** မႃးၶိုၼ်း တီႈဢၼ်မၼ်းထုၵ်ႇႁွင်ႉၸႂ်ႉၼၼ်ႉ ဢိၵ်ႇတင်းၵႃႈၶၼ်ဢၼ်လႆႈမႃးၶႃႈ။

> ⚠️ **သတိ:** သင်ၸဝ်ႈၵဝ်ႇဢမ်ႇတႅမ်ႈ `return` ဝႆႉ၊ Function ၼၼ်ႉတေသူင်ႇၵႃႈၶၼ် **`undefined`** ဢွၵ်ႇမႃးပၼ်ႁဝ်းလူၺ်ႈသၽႃႇဝမၼ်းၶႃႈ။

---

### 3. Returning Multiple Values?

တေႉတေႉမၼ်း `return` သူင်ႇလႆႈၵႃႈၶၼ် "ဢၼ်လဵဝ်" ၵူၺ်း။ ၵူၺ်းၵႃႈ သင်ႁဝ်းၶႂ်ႈသူင်ႇလၢႆလၢႆယၢင်ႇ ႁဝ်းၸၢင်ႈဢဝ်ၶဝ်သႂ်ႇဝႆႉၼႂ်း **Array** ႁိုဝ် **Object** လႆႈၶႃႈ။

```javascript
function getStats(scores) {
  const sum = scores.reduce((a, b) => a + b, 0);
  return {
    total: sum,
    average: sum / scores.length
  }; // သူင်ႇ Object ဢွၵ်ႇၵႂႃႇ
}

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* `return` ၸွႆႈႁႂ်ႈ Function မီးၵႃႈၶၼ် (Result) ဢၼ်ႁဝ်းၸၢင်ႈဢဝ်ၵႂႃႇသိမ်းၼႂ်း Variable လႆႈ။
* ၵူတ်ႉဢၼ်ယူႇၽၢႆႇတႂ်ႈ `return` တေဢမ်ႇႁဵတ်းၵၢၼ်။
* သင်ဢမ်ႇမီး `return`၊ ၵႃႈၶၼ်မၼ်းတေပဵၼ် `undefined`။

---
