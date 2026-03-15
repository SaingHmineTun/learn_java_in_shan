
# Lesson 70: DOM Traversal

ၵၢၼ် "ပႆ" (Traversing) ၼႂ်း DOM Tree မီး 3 သၢႆတၢင်းလူင်ၶႃႈ:

### 1. ပႆၶိုၼ်ႈၼိူဝ် (Moving Upwards)

တႃႇတေႁႃ "ပေႃးမႄႈ" (Parent) ၶွင် Element ၼၼ်ႉ:

* **`parentElement`**: ဢဝ် Element ဢၼ်ႁေႃႇမၼ်းဝႆႉယူႇၼၼ်ႉဢွၵ်ႇမႃး။
* **`closest(selector)`**: (ၵတ်ႉၶႅၼ်ႇသုတ်း) ႁႃ Parent ဢၼ်မႅၼ်ႈၸွမ်း Selector ဢၼ်ႁဝ်းပၼ်ဝႆႉ၊ ဢမ်ႇဝႃႈမၼ်းတေယူႇသုင်ၵႂႃႇလၢႆၸၼ်ႉၵေႃႈယႃႇ။

```javascript
const child = document.querySelector(".my-item");
console.log(child.parentElement); // ဢဝ်တူဝ်ၼိူဝ်မၼ်း 1 ၸၼ်ႉ
console.log(child.closest(".container")); // ႁႃ Parent ဢၼ်မီး class "container"

```

---

### 2. ပႆလူင်းတႂ်ႈ (Moving Downwards)

တႃႇတေႁႃ "လုၵ်ႈ" (Children) ၶွင် Element ၼၼ်ႉ:

* **`children`**: ဢဝ် Element ဢၼ်ယူႇၽၢႆႇတႂ်ႈမၼ်း "တင်းမူတ်း" ဢွၵ်ႇမႃး (ပဵၼ် HTMLCollection)။
* **`firstElementChild`**: ဢဝ်လုၵ်ႈတူဝ်ဢွၼ်တၢင်းသုတ်း။
* **`lastElementChild`**: ဢဝ်လုၵ်ႈတူဝ်လုၼ်ႈသုတ်း။

---

### 3. ပႆၵႂႃႇၽၢႆႇၶၢင်ႈ (Moving Sideways)

တႃႇတေႁႃ "ပီႈၼွင်ႉ" (Siblings) ဢၼ်ယူႇၸၼ်ႉလဵဝ်ၵၼ်:

* **`previousElementSibling`**: ဢဝ်တူဝ်ဢၼ်ယူႇ "ၽၢႆႇၼႃႈ" မၼ်း။
* **`nextElementSibling`**: ဢဝ်တူဝ်ဢၼ်ယူႇ "ၽၢႆႇလင်" မၼ်း။

```javascript
const item2 = document.querySelector("#item-2");
const item1 = item2.previousElementSibling;
const item3 = item2.nextElementSibling;

```

---

### ⚠️ သတိ: Element vs Node

ၼႂ်း JavaScript မၼ်းမီး Property ဢၼ်မိူၼ်ၵၼ် ၵူၺ်းၵႃႈ "ပႅၵ်ႇၵၼ်" ဢိတ်းၼိုင်ႈၶႃႈ:

* သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ `childNodes` ႁိုဝ် `nextSibling` (ဢမ်ႇမီးၶေႃႈၵႂၢမ်း **Element**): မၼ်းတေၼပ်ႉပႃး **Whitespace** (လွၵ်းပဝ်ႇ) လႄႈ **Comments** ဝႃႈပဵၼ် Node ၼိုင်ႈဢၼ်ၼႆၶႃႈ။
* **Best Practice:** ၵႆႉၸႂ်ႉတွၼ်ႈဢၼ်မီးၶေႃႈၵႂၢမ်း **`Element`** တေႃႇလင် (မိူၼ်ၼင်ႇ `nextElementSibling`) တႃႇႁႂ်ႈလႆႈ HTML Tag တေႉတေႉၵူၺ်းၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Traversal** ၸွႆႈႁႂ်ႈၵူတ်ႉႁဝ်း "Flexible" လိူဝ်ၵဝ်ႇ။ တႅၼ်းၵၢၼ်တေပၼ် `id` ၸူးၵူႈ Element၊ ႁဝ်းလိူၵ်ႈဢဝ်တူဝ်လဵဝ်သေ ပႆၵႂႃႇႁႃတူဝ်တၢင်ႇၸိူဝ်းလႆႈ။
* **`closest()`** ပဵၼ် Method ဢၼ်မီးလွင်ႈၸႂ်ႉတိုဝ်းၼမ်သုတ်း မိူဝ်ႈႁဵတ်း Event Delegation ၶႃႈ။

---