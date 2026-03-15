# Lesson 69: Event Delegation Patterns

### 1. ပၼ်ႁႃ: သင်မီး Element ၼမ်ၼမ်လူး?

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇမီးသဵၼ်ႈမၢႆ (List) ဢၼ်မီး `<li>` ယူႇ 1,000 တူဝ်။ သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ `forEach` သေၵႂႃႇသႂ်ႇ `addEventListener` ပၼ်ၵူႈတူဝ်ၼႆၸိုင်:

1. **Memory:** မၼ်းတေၵိၼ် Memory ၼမ် (ယွၼ်ႉမီး Listener 1,000 တူဝ်)။
2. **Dynamic Content:** သင်ၸဝ်ႈၵဝ်ႇထႅမ် `<li>` မႂ်ႇမႃးဝၢႆးလင်၊ တူဝ်မႂ်ႇၼၼ်ႉတေ **ဢမ်ႇမီး** Listener ၸပ်းမႃးၸွမ်းၶႃႈ။

---

### 2. Event Delegation ပဵၼ်သင်?

တႅၼ်းၵၢၼ်တေပၼ် Listener ၸူး "လုၵ်ႈ" (Children) ၵူႈတူဝ်၊ ႁဝ်းပၼ် Listener ၸူး **"ပေႃးမႄႈ" (Parent)** တူဝ်လဵဝ်ၵူၺ်း။ မိူဝ်ႈႁဝ်းၼဵၵ်းလုၵ်ႈတူဝ်လႂ်ၵေႃႈယႃႇ၊ Event တေ **Bubble** ၶိုၼ်ႈမႃးၸူး ပေႃးမႄႈမၼ်း သေႁဝ်းၸင်ႇၵူတ်ႇထတ်းဝႃႈ "တူဝ်ဢၼ်ထုၵ်ႇၼဵၵ်းၼၼ်ႉ ပဵၼ်တူဝ်ဢၼ်ႁဝ်းၶႂ်ႈလႆႈႁႃႉ?" ၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (The Smart Way)

```javascript
const list = document.querySelector("#fruit-list");

// သႂ်ႇ Listener တီႈ <ul> (Parent) တူဝ်လဵဝ်ၵူၺ်း
list.addEventListener("click", (e) => {
  
  // ၵူတ်ႇထတ်းဝႃႈ တူဝ်ဢၼ်ထုၵ်ႇၼဵၵ်း (e.target) ပဵၼ် <li> ႁႃႉ?
  if (e.target.tagName === "LI") {
    console.log("ၸဝ်ႈၵဝ်ႇၼဵၵ်းဝႃႈ:", e.target.textContent);
    e.target.style.color = "orange";
  }
});

```

---

### 3. ၵၢၼ်ၸႂ်ႉ `closest()`

ၵမ်းၵမ်း Element ၼႂ်း List ႁဝ်းမၼ်းၸၢင်ႈမီး Tag သွၼ်ႉၵၼ် (မိူၼ်ၼင်ႇ `<li><span>Text</span></li>`)။ သင်ႁဝ်းၼဵၵ်းၼိူဝ် `<span>`၊ `e.target` တေပဵၼ် span သေ Logic ႁဝ်းၸၢင်ႈၽိတ်း။ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`.closest()`** တႃႇႁႃ Parent ဢၼ်မႅၼ်ႈၸွမ်း Selector ၶႃႈ။

```javascript
list.addEventListener("click", (e) => {
  const li = e.target.closest("li"); // ႁႃ <li> ဢၼ်ယူႇၸွမ်းမၼ်းသုတ်း
  
  if (li && list.contains(li)) {
    console.log("Clicked on LI or its children!");
  }
});

```

---

### 4. ၽွၼ်းလီၶွင် Event Delegation

* **Performance:** ၸႂ်ႉ Memory ဢေႇလိူဝ် ယွၼ်ႉမီး Listener တူဝ်လဵဝ်ၵူၺ်း။
* **Dynamic Elements:** ဢမ်ႇဝႃႈၸဝ်ႈၵဝ်ႇတေထႅမ် Element မႂ်ႇမႃးမိူဝ်ႈလႂ်ၵေႃႈယႃႇ၊ မၼ်းတေႁဵတ်းၵၢၼ်လႆႈၵမ်းလဵဝ် (ယွၼ်ႉမၼ်းပႂ်ႉထွမ်ႇယူႇတီႈ Parent)။
* **Cleaner Code:** ၵူတ်ႉလူငၢႆႈ လႄႈ ၸတ်းၵၢၼ် (Maintain) လႆႈငၢႆႈၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Event Delegation** ဢိင်ၼိူဝ် **Event Bubbling** တႃႇသေႇ။
* လူဝ်ႇၵူတ်ႇထတ်း **`e.target`** ႁႂ်ႈလီ တႅၼ်းၵၢၼ် `e.currentTarget` (ယွၼ်ႉ `currentTarget` တေပဵၼ် Parent တႃႇသေႇ)။
* ၼႆႉပဵၼ် Pattern ဢၼ်လူဝ်ႇၸႂ်ႉတေႃႇၵႂႃႇၼႂ်းၵၢၼ်တႅမ်ႈ App ဢၼ်ယႂ်ႇလူင်ၶႃႈ။

---