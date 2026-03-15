
# Lesson 64: Selecting Elements

တႃႇတေလႅၵ်ႈလၢႆႈ Element တူဝ်လႂ်တူဝ်ၼိုင်ႈ၊ JavaScript လူဝ်ႇ "ႁႃ" မၼ်းႁႂ်ႈႁၼ်ဢွၼ်တၢင်း။ ႁဝ်းမီး Method လၢႆလၢႆမဵဝ်း ဢၼ်ၸႂ်ႉတႃႇႁႃၶႃႈ။

### 1. getElementById()

ၼႆႉပဵၼ်လၢႆးဢၼ် **ၽႂ်းသုတ်း** လႄႈ **မႅၼ်ႈသုတ်း** ၶႃႈ။ မၼ်းတေႁႃ Element ဢၼ်မီး `id` ၼၼ်ႉၵူၺ်း။

```javascript
const title = document.getElementById("main-title");

```

### 2. querySelector()

ၼႆႉပဵၼ် Method ဢၼ် **"ၵတ်ႉၶႅၼ်ႇသုတ်း"** လႄႈ Programmer ၵႆႉၸႂ်ႉၼမ်သုတ်းၶႃႈ။ မၼ်းၸႂ်ႉ **CSS Selectors** တႃႇႁႃ (မိူၼ်ၼင်ႇ `#` တႃႇ id, `.` တႃႇ class)။

* မၼ်းတေသူင်ႇ Element **တူဝ်ဢွၼ်တၢင်းသုတ်း** ဢၼ်မၼ်းႁႃႁၼ်ၼၼ်ႉမႃးပၼ်ၵူၺ်း။

```javascript
const header = document.querySelector("h1");      // ႁႃၸွမ်း Tag
const btn = document.querySelector(".btn-submit"); // ႁႃၸွမ်း Class
const main = document.querySelector("#container"); // ႁႃၸွမ်း ID

```

### 3. querySelectorAll()

သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈလႆႈ Element **တင်းမူတ်း** ဢၼ်မီး Class ႁိုဝ် Tag မိူၼ်ၵၼ်၊ တေလႆႈၸႂ်ႉ Method ၼႆႉၶႃႈ။

* မၼ်းတေသူင်ႇ **NodeList** (မိူၼ် Array) ဢွၵ်ႇမႃး။

```javascript
const allItems = document.querySelectorAll(".list-item");

// ၸၢင်ႈၸႂ်ႉ forEach တႃႇ Loop တူၺ်းၵူႈတူဝ်
allItems.forEach(item => {
  console.log(item.textContent);
});

```

---

### 4. Method ပၢၼ်ၵဝ်ႇ (Older Methods)

ၸဝ်ႈၵဝ်ႇၸၢင်ႈႁၼ်ၵူတ်ႉပၢၼ်ၵဝ်ႇ ၸႂ်ႉ Method ၸိူဝ်းၼႆႉယူႇ:

* `getElementsByClassName()`: သူင်ႇ HTMLCollection ၶွင် Class ၼၼ်ႉမႃး။
* `getElementsByTagName()`: သူင်ႇ HTMLCollection ၶွင် Tag ၼၼ်ႉမႃး။

> 💡 **Note:** HTMLCollection ဢမ်ႇမိူၼ် NodeList၊ မၼ်းဢမ်ႇၸၢင်ႈၸႂ်ႉ `.forEach()` လႆႈၵမ်းလဵဝ်ၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (Practical Example)

ဝူၼ်ႉဝႃႈႁဝ်းမီး HTML ၼႆႉ:

```html
<ul id="fruit-list">
  <li class="orange">လိူၼ်း</li>
  <li class="apple">ဢႅပ်ႉပႄႇလ်</li>
</ul>

```

ႁဝ်းၸၢင်ႈလိူၵ်ႈမႃးၸႂ်ႉၼႂ်း JS:

```javascript
const list = document.querySelector("#fruit-list");
const firstFruit = document.querySelector(".orange");
const allFruits = document.querySelectorAll("li");

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`querySelector`** ပဵၼ် "ၵူႈသမ်ႇပႃႉ" (Versatile) သုတ်း၊ တႅမ်ႈလႆႈၵူႈယၢင်ႇ။
* သင်ႁႃဢမ်ႇႁၼ်၊ JavaScript တေသူင်ႇ **`null`** ဢွၵ်ႇမႃးပၼ်။
* NodeList ဢၼ်လႆႈမႃးၼႂ်း `querySelectorAll` ၼၼ်ႉ ၸၢင်ႈၸႂ်ႉ `forEach` လႆႈ ၵူၺ်းၵႃႈ ဢမ်ႇၸၢင်ႈၸႂ်ႉ Method ၶွင် Array တၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ `.map()`) လႆႈၵမ်းလဵဝ်ၶႃႈ။

---
