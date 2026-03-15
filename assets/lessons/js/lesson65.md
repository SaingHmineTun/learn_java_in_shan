# Lesson 65: Modifying Content & Attributes

### 1. Modifying Text Content (လႅၵ်ႈလၢႆႈတူဝ်လိၵ်ႈ)

ႁဝ်းမီး Method လၢႆလၢႆမဵဝ်း တႃႇလႅၵ်ႈလိၵ်ႈၼႂ်း HTML Tag ၶႃႈ:

* **`textContent`**: လႅၵ်ႈလိၵ်ႈ "သိုဝ်ႈသိုဝ်ႈ"။ မၼ်းတေဢမ်ႇလူၺ်ႈ HTML Tag ဢၼ်ႁဝ်းသႂ်ႇၵႂႃႇ။ (ပဵၼ်လၢႆးဢၼ်ပူတ်ႉၽေးသုတ်း)။
* **`innerHTML`**: လႅၵ်ႈပႃး "HTML Tags"။ မၼ်းတေ Render ပဵၼ် Element မႂ်ႇပၼ်။
* **`innerText`**: မိူၼ် `textContent` ၵူၺ်းၵႃႈ မၼ်းတေဢမ်ႇၼႄ လိၵ်ႈဢၼ်ထုၵ်ႇ CSS `display: none` ဝႆႉ။

```javascript
const box = document.querySelector("#myBox");

box.textContent = "<b>မႂ်ႇသုင်ၶႃႈ</b>"; // တေၼႄပဵၼ်တူဝ်လိၵ်ႈ <b> တေႉတေႉ
box.innerHTML = "<b>မႂ်ႇသုင်ၶႃႈ</b>";   // တေၼႄပဵၼ် "မႂ်ႇသုင်ၶႃႈ" (တူဝ်ၼႃ)

```

---

### 2. Modifying Attributes (လႅၵ်ႈလၢႆႈ Property)

Attributes ပဵၼ်ၶေႃႈမုၼ်းဢၼ်ယူႇၼႂ်း Tag မိူၼ်ၼင်ႇ `src`, `href`, `alt`, `id`, `class` ၶႃႈ။

* **`getAttribute(name)`**: ဢဝ်ၵႃႈၶၼ်မၼ်းဢွၵ်ႇမႃး။
* **`setAttribute(name, value)`**: ပၼ်ၵႃႈၶၼ်မႂ်ႇ။
* **`removeAttribute(name)`**: မွတ်ႇပႅတ်ႈ။

```javascript
const link = document.querySelector("a");
const img = document.querySelector("img");

// လႅၵ်ႈ URL ၼႂ်း Link
link.setAttribute("href", "https://google.com");

// လႅၵ်ႈႁၢင်ႈၽၢင်
img.src = "new-image.jpg"; // ၸၢင်ႈၸႂ်ႉ .src ၵမ်းလဵဝ်ၵေႃႈလႆႈ
img.alt = "A beautiful sunset";

```

---

### 3. Modifying Classes (လႅၵ်ႈလၢႆႈ Class List)

ၵၢၼ်လႅၵ်ႈ Class ပဵၼ်လၢႆးဢၼ် "ၶႅၼ်ႇ" သုတ်း တႃႇလႅၵ်ႈ Style ၶွင် Website။ ႁဝ်းၸႂ်ႉ **`classList`** ၶႃႈ။

* **`add()`**: ထႅမ် Class မႂ်ႇ။
* **`remove()`**: မွတ်ႇ Class။
* **`toggle()`**: သင်မီးယူႇႁႂ်ႈမွတ်ႇ၊ သင်ဢမ်ႇမီးႁႂ်ႈထႅမ် (ၵႆႉၸႂ်ႉတႃႇ Dark Mode)။
* **`contains()`**: ၵူတ်ႇထတ်းဝႃႈ မီး Class ၼၼ်ႉယူႇႁႃႉ။

```javascript
const div = document.querySelector("div");

div.classList.add("active");      // ထႅမ် class="active"
div.classList.remove("hidden");   // မွတ်ႇ class="hidden"
div.classList.toggle("dark-mode"); // ပိၼ်ႇၵႂႃႇပိၼ်ႇမႃး

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Security Note:** ဢမ်ႇလီၸႂ်ႉ `innerHTML` တႃႇသႂ်ႇၶေႃႈမုၼ်း ဢၼ်လုၵ်ႉတီႈၵူၼ်းၸႂ်ႉ (User Input) မႃး၊ ယွၼ်ႉမၼ်းၸၢင်ႈထုၵ်ႇ Hack (XSS Attack)။ ထုၵ်ႇလီၸႂ်ႉ **`textContent`** တႅၼ်းၶႃႈ။
* **Direct Access:** တွၼ်ႈတႃႇ Attribute ပိုၼ်ႉထၢၼ် (id, src, value), ႁဝ်းၸၢင်ႈၸႂ်ႉ `element.id = "new"` ၵမ်းလဵဝ်လႆႈယူႇၶႃႈ။

---
