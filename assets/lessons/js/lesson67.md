# Lesson 67: Event Listeners & Event Objects

### 1. Event Listener ပဵၼ်သင်?

**Event Listener** ပဵၼ် Function ဢၼ်ႁဝ်း "ၵွင်ႉ" ဝႆႉၸွမ်း Element တူဝ်လႂ်တူဝ်ၼိုင်ႈ။ မၼ်းတေ "ၼိမ်" ယူႇတေႃႇပေႃးမီး Event ၵိူတ်ႇၶိုၼ်ႈ ၸင်ႇတေလႅၼ်ႈ (Trigger) ၶႃႈ။

ႁဝ်းၸႂ်ႉ Method **`addEventListener()`** ဢၼ်မီး Parameter 2 တူဝ်:

1. **Event Name:** ၸိုဝ်ႈၵၢၼ်တူင်ႉၼိုင် (မိူၼ်ၼင်ႇ `"click"`, `"submit"`, `"keydown"`)။
2. **Callback Function:** ၵူတ်ႉဢၼ်ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းႁဵတ်း မိူဝ်ႈၵိူတ်ႇ Event ၼၼ်ႉ။

```javascript
const btn = document.querySelector("#myBtn");

btn.addEventListener("click", () => {
  alert("ၸဝ်ႈၵဝ်ႇၼဵၵ်းပုမ်ႇယဝ်ႉၶႃႈ!");
});

```

---

### 2. Event Object (`e`)

မိူဝ်ႈ Event ၼိုင်ႈဢၼ်ၵိူတ်ႇၶိုၼ်ႈ၊ JavaScript တေသူင်ႇ **Object** ဢၼ်ၼိုင်ႈ ၶဝ်ႈမႃးၼႂ်း Callback Function ႁဝ်းတႃႇသေႇ (ၵႆႉတႅမ်ႈဝႃႈ `e` ႁိုဝ် `event`)။ ၼႂ်းၼၼ်ႉတေမီးၶေႃႈမုၼ်းလမ်ႇလွင်ႈ မိူၼ်ၼင်ႇ:

* **`e.target`**: Element တူဝ်ဢၼ်ထုၵ်ႇၼဵၵ်း (Click) တေႉတေႉ။
* **`e.type`**: ၸိုဝ်ႈ Event (မိူၼ်ၼင်ႇ `"click"`)။
* **`e.key`**: တူဝ်လိၵ်ႈဢၼ်ၼဵၵ်းၼိူဝ် Keyboard (တွၼ်ႈတႃႇ `keydown` event)။
* **`e.clientX / e.clientY`**: တီႈယူႇ (Coordinates) ၶွင် Mouse ၼိူဝ်ၼႃႈจอ။

---

### 3. Preventing Default Behavior

မီး Element ၵေတ်ႉမဵဝ်း (မိူၼ်ၼင်ႇ Link `<a>` ႁိုဝ် Form `<button>`) ဢၼ်မီးၵၢၼ်ႁဵတ်းပိုၼ်ႉထၢၼ် (Default)။ မိူၼ်ၼင်ႇ ၼဵၵ်း Link သေ မၼ်းၵႂႃႇၼႃႈလိၵ်ႈမႂ်ႇ။ သင်ႁဝ်းၶႂ်ႈၵိုတ်းမၼ်းဝႆႉ၊ ႁဝ်းၸႂ်ႉ **`e.preventDefault()`** ၶႃႈ။

```javascript
const link = document.querySelector("a");

link.addEventListener("click", (e) => {
  e.preventDefault(); // ၵိုတ်းဢမ်ႇႁႂ်ႈမၼ်းလႅၼ်ႈၸူး URL
  console.log("Link was clicked, but we stayed here!");
});

```

---

### 4. Common Event Types (Events ဢၼ်ၸႂ်ႉၼမ်)

| Category | Event Name | Description |
| --- | --- | --- |
| **Mouse** | `click`, `dblclick`, `mouseenter`, `mouseleave` | ၵၢၼ်ၸႂ်ႉ Mouse |
| **Keyboard** | `keydown`, `keyup`, `keypress` | ၵၢၼ်ၼဵၵ်း Keyboard |
| **Form** | `submit`, `change`, `input`, `focus`, `blur` | ၵၢၼ်တႅမ်ႈၶေႃႈမုၼ်း |
| **Window** | `load`, `resize`, `scroll`, `unload` | ၵၢၼ်လႅၵ်ႈလၢႆႈ Browser |

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`addEventListener`** ၶႅၼ်ႇလိူဝ်လၢႆးတႅမ်ႈ `onclick=""` ၼႂ်း HTML ယွၼ်ႉမၼ်းၸၢင်ႈသႂ်ႇ Listener လႆႈလၢႆလၢႆဢၼ် ၼိူဝ် Element တူဝ်လဵဝ်ၵၼ်။
* ယႃႇလိုမ်းဝႃႈ ၸိုဝ်ႈ Event တေလႆႈယူႇၼႂ်း **`""`** (Quotes) တႃႇသေႇ။
* ၸဝ်ႈၵဝ်ႇၸၢင်ႈမွတ်ႇ Listener ဢွၵ်ႇၶိုၼ်းလႆႈလူၺ်ႈ **`removeEventListener()`** (ၵူၺ်းၵႃႈ လူဝ်ႇၸႂ်ႉ Function ဢၼ်မီးၸိုဝ်ႈ (Named function)၊ ၸႂ်ႉ Anonymous function ဢမ်ႇလႆႈၶႃႈ)။

---
