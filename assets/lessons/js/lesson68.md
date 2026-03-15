
# Lesson 68: Event Bubbling & Capturing

မိူဝ်ႈၸဝ်ႈၵဝ်ႇၼဵၵ်း (Click) ၼိူဝ် Button ဢၼ်ၼိုင်ႈ၊ JavaScript တေဢမ်ႇထၢင်ႇဝႃႈၸဝ်ႈၵဝ်ႇၼဵၵ်း Button ၼၼ်ႉတူဝ်လဵဝ်ၵူၺ်း။ မၼ်းတေဝူၼ်ႉဝႃႈ ၸဝ်ႈၵဝ်ႇၼဵၵ်းတင်း **Body**, **Div**, လႄႈ **Section** ဢၼ်ႁေႃႇ Button ၼၼ်ႉဝႆႉတင်းမူတ်းၶႃႈ။

### 1. Event Bubbling (ၵၢၼ်လႅၼ်ႈၶိုၼ်ႈ)

ၼႆႉပဵၼ်လၢႆး "ပိုၼ်ႉထၢၼ်" (Default) ၶွင် JavaScript ၶႃႈ။ မိူဝ်ႈ Event ၵိူတ်ႇၶိုၼ်ႈတီႈ Element တူဝ်ၼႂ်းသုတ်း၊ မၼ်းတေ "ၽူင်ႉၶိုၼ်ႈ" (Bubbles up) မိူၼ်ၼင်ႇ "ၼမ်ႉပူၵ်ႇ" (Bubbles) တေႃႇပေႃးၽႅဝ် Root (`document`) ၶႃႈ။

* **Order:** Button -> Div -> Body -> HTML -> Document

### 2. Event Capturing (ၵၢၼ်လႅၼ်ႈလူင်း)

ၼႆႉပဵၼ်လၢႆးဢၼ် "လႅၼ်ႈလူင်း" မႃးလုၵ်ႉတီႈၼိူဝ်သုတ်း တေႃႇပေႃးၽႅဝ် Element ဢၼ်ထုၵ်ႇၼဵၵ်းတေႉတေႉၼၼ်ႉၶႃႈ။ (ၵႆႉႁွင်ႉဝႃႈ **Trickling Phase**)။

* **Order:** Document -> HTML -> Body -> Div -> Button

---

### 3. ၵၢၼ်ၵုမ်းၵမ် Event Flow

ႁဝ်းၸၢင်ႈလိူၵ်ႈလႆႈဝႃႈ ႁဝ်းၶႂ်ႈႁႂ်ႈ Listener ႁဝ်းႁဵတ်းၵၢၼ်ၼႂ်း Phase လႂ် လူၺ်ႈၵၢၼ်ထႅမ် Parameter မၢႆ 3 ၼႂ်း `addEventListener` ၶႃႈ:

```javascript
// Default ပဵၼ် Bubbling (false)
btn.addEventListener("click", () => {
  console.log("Button clicked!");
}, false);

// သင်ပဵၼ် true တေႁဵတ်းၵၢၼ်ၼႂ်း Capturing phase
container.addEventListener("click", () => {
  console.log("Container clicked first!");
}, true);

```

---

### 4. ၵၢၼ်ၵိုတ်း Event (stopPropagation)

ၵမ်းၵမ်း ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈ Event ႁဝ်း "ၽူင်ႉ" ၶိုၼ်ႈၵႂႃႇၸူး Parent Element။ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`e.stopPropagation()`** တႃႇ "တတ်း" သၢႆၵၢၼ်လႅၼ်ႈမၼ်းၶႃႈ။

```javascript
btn.addEventListener("click", (e) => {
  e.stopPropagation(); // ၵိုတ်းဝႆႉတီႈၼႆႈၵူၺ်း၊ ယႃႇပၼ်ၽူင်ႉၶိုၼ်ႈၵႂႃႇၸူး Div
  console.log("Only Button clicked!");
});

```

---

### 💻 တူဝ်ယၢင်ႇ (Practical Scenario)

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇမီး **Pop-up Modal** ဢၼ်မီးပုမ်ႇ "Close" ဝႆႉၽၢႆႇၼႂ်း:

* သင်ၸဝ်ႈၵဝ်ႇၼဵၵ်း Modal (ပိုၼ်ႉလင်) -> ႁႂ်ႈမၼ်းပိတ်း။
* သင်ၸဝ်ႈၵဝ်ႇၼဵၵ်း Close Button -> ႁႂ်ႈမၼ်းပိတ်း။

> ⚠️ သင်ၸဝ်ႈၵဝ်ႇဢမ်ႇၸႂ်ႉ `stopPropagation` တီႈ Button၊ မိူဝ်ႈၼဵၵ်း Button ယဝ်ႉ Event တေၽူင်ႉၶိုၼ်ႈၵႂႃႇၼဵၵ်း Modal ထႅင်ႈပွၵ်ႈၼိုင်ႈ၊ ၸၢင်ႈႁဵတ်းႁႂ်ႈ Logic ႁဝ်း "ယုင်ႈ" ၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Bubbling** ပဵၼ်လၢႆးဢၼ်ႁဝ်းၸႂ်ႉၼမ်သုတ်း (99%)။
* **`e.target`** တေပဵၼ် Element ဢၼ်ထုၵ်ႇၼဵၵ်း "တေႉတေႉ" (Original element)။
* **`e.currentTarget`** တေပဵၼ် Element ဢၼ် "Listener" တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇယၢမ်းလဵဝ် (Parent element ၼႂ်း Bubbling phase)။

---
