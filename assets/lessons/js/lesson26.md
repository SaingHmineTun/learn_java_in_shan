
# Lesson 26: Introduction to Closures

### 1. Closure ပဵၼ်သင်?

**Closure** ပဵၼ်လွင်ႈဢၼ် Function ၼိုင်ႈဢၼ် ၸၢင်ႈ "တွၼ်း" (Remember) လႄႈ ၸၢင်ႈ "ၶဝ်ႈထိုင်" (Access) Variable ဢၼ်ယူႇၼႂ်း **Parent Scope** ၶွင်မၼ်းဝႆႉလႆႈ တႃႇသေႇ၊ တင်းၼင်ႇ Parent Function ၼၼ်ႉ ႁဵတ်းၵၢၼ်ယဝ်ႉသေ ပိတ်းၵႂႃႇယဝ်ႉၵေႃႈယဝ်ႉၶႃႈ။

ႁႂ်ႈဝူၼ်ႉဝႃႈ: Closure ပဵၼ်မိူၼ်ၼင်ႇ **"ထူင်ပႃႈလင် (Backpack)"** ဢၼ် Function ဢဝ်ติดတူဝ်ၵႂႃႇၵူႈတီႈ။ ၼႂ်းထူင်ၼၼ်ႉ မၼ်းတေသိမ်းဝႆႉ Variable တင်းမူတ်း ဢၼ်မၼ်း "ယိူင်ႈၸႂ်ႉ (Reference)" ဝႆႉ မိူဝ်ႈယၢမ်းမၼ်းထုၵ်ႇသၢင်ႈမႃးၼၼ်ႉၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (Code Example)

```javascript
function outerFunction() {
  let count = 0; // Variable ၼႂ်း Parent Scope

  return function innerFunction() {
    count++; // မၼ်း "တွၼ်း" count ဝႆႉလႆႈ
    console.log(`Count is: ${count}`);
  };
}

const myCounter = outerFunction();

myCounter(); // Count is: 1
myCounter(); // Count is: 2
myCounter(); // Count is: 3

```

**မၼ်းႁဵတ်းၵၢၼ်ၸိူင်ႉၼိုင်?**

1. မိူဝ်ႈႁဝ်းႁွင်ႉ `outerFunction()`၊ မၼ်းတေသူင်ႇ `innerFunction` ဢွၵ်ႇမႃးသေ သိမ်းဝႆႉၼႂ်း `myCounter`။
2. ပိူင်ယူဝ်းယူဝ်းတႄႉ Variable `count` လူဝ်ႇသဵင်ႈၵႂႃႇ မိူဝ်ႈ `outerFunction` ႁဵတ်းၵၢၼ်ယဝ်ႉ။
3. ၵူၺ်းၵႃႈ ယွၼ်ႉ **Closure**၊ `innerFunction` မၼ်း "မတ်ႉ" Variable `count` ဝႆႉၼႂ်းထူင်ပႃႈလင်မၼ်းယဝ်ႉ။ ၵွပ်ႈၼၼ် မၼ်းၸင်ႇယင်းတိုၵ်ႉၸႂ်ႉ လႄႈ လႅၵ်ႈလၢႆႈၵႃႈၶၼ် `count` လႆႈယူႇတိၵ်းတိၵ်းၶႃႈ။

---

### 2. ယွၼ်ႉသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ Closures?

* **Data Privacy (ၵုမ်းၵမ်ၶေႃႈမုၼ်း):** ၸႂ်ႉတႃႇႁဵတ်း Variable ႁႂ်ႈပဵၼ် "Private"။ ၵူၼ်းၼွၵ်ႈ (Global Scope) ဢမ်ႇၸၢင်ႈမႃးလႅၵ်ႈလၢႆႈ `count` လႆႈ၊ မၼ်းတေလႅၵ်ႈလႆႈလူၺ်ႈၸႂ်ႉ Function ဢၼ်ႁဝ်းပၼ်ဝႆႉၼၼ်ႉၵူၺ်းၶႃႈ။
* **State Management:** ၸွႆႈႁႂ်ႈ Function မီး "ၵႂၢမ်းတွၼ်း (Memory)" တႃႇသိမ်းၵႃႈၶၼ်သင်မဵဝ်းမဵဝ်းဝႆႉ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Closure** မၼ်းၵိူတ်ႇၶိုၼ်ႈၵမ်းလဵဝ် မိူဝ်ႈ Function ၼိုင်ႈဢၼ် ထုၵ်ႇသၢင်ႈဝႆႉၼႂ်း Function ထႅင်ႈတူဝ်ၼိုင်ႈ။
* မၼ်းၸွႆႈႁႂ်ႈ Function "တွၼ်း" ၶေႃႈမုၼ်းဝႆႉလႆႈ တင်းၼင်ႇ Scope ၼၼ်ႉသဵင်ႈၵႂႃႇယဝ်ႉ။
* ၼႆႉပဵၼ်ပိုၼ်ႉထၢၼ်လမ်ႇလွင်ႈ တႃႇပွင်ႇၸႂ် **Asynchronous JS**, **Event Handlers**, လႄႈ **React Hooks** ၶႃႈ။

---
