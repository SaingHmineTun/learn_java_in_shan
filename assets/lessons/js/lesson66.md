
# Lesson 66: Changing CSS via JavaScript

ႁဝ်းၸၢင်ႈလႅၵ်ႈလၢႆႈ CSS လႆႈ 2 လၢႆးလူင်ၶႃႈ:

### 1. ၵၢၼ်ၸႂ်ႉ Property `.style` (Inline Styles)

လၢႆးၼႆႉပဵၼ်ၵၢၼ်သႂ်ႇ CSS ၶဝ်ႈၵႂႃႇၼႂ်း Tag ၵမ်းလဵဝ် (Inline)။ ႁဝ်းၸႂ်ႉ Property `style` သေၸူးၸိုဝ်ႈ CSS Property ၼၼ်ႉၶႃႈ။

* **ပၵ်းပိူင်:** ၸိုဝ်ႈ CSS ဢၼ်မီးၶีดး (Dash) မိူၼ်ၼင်ႇ `background-color` တေလႆႈလႅၵ်ႈပဵၼ် **camelCase** -> `backgroundColor` ၶႃႈ။

```javascript
const box = document.querySelector(".box");

box.style.backgroundColor = "skyblue";
box.style.width = "200px";
box.style.marginTop = "50px";
box.style.borderRadius = "10px";

```

---

### 2. ၵၢၼ်ၸႂ်ႉ `.classList` (Best Practice)

လၢႆးၼႆႉပဵၼ်လၢႆးဢၼ် "ၶႅၼ်ႇ" သုတ်း လႄႈ လူငၢႆႈသုတ်းၶႃႈ။ တႅၼ်းၵၢၼ်တေမႃးလႅၵ်ႈသီၼိုင်ႈဢၼ်၊ တႅမ်ႈ Font ၼိုင်ႈဢၼ်၊ ႁဝ်းတႅမ်ႈ Class ဝႆႉၼႂ်း CSS သေ ၸႂ်ႉ JavaScript တႃႇ "ပိၼ်ႇ" (Toggle) Class ၼၼ်ႉၶႃႈ။

* **CSS:**

```css
.highlight {
  background-color: yellow;
  font-weight: bold;
  transform: scale(1.1);
}

```

* **JavaScript:**

```javascript
const text = document.querySelector("p");

// ၸႂ်ႉ toggle တႃႇပၼ်ႁႂ်ႈမၼ်းလႅၵ်ႈလၢႆႈၵႂႃႇမႃး
text.classList.toggle("highlight");

```

---

### 3. ၵၢၼ်ၸႂ်ႉ `cssText`

သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈသႂ်ႇ CSS ၼမ်ၼမ်ႁူမ်ႈၵၼ်ၼႂ်းထႅဝ်လဵဝ်၊ ၸၢင်ႈၸႂ်ႉ `style.cssText` လႆႈၶႃႈ။

```javascript
box.style.cssText = "color: white; background: red; padding: 20px;";

```

---

### 4. ၵၢၼ်ဢဝ်ၵႃႈၶၼ် CSS ဢွၵ်ႇမႃး (Computed Styles)

သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ `element.style.color` မၼ်းတေၼႄၵႃႈၶၼ် ဢၼ်ၸဝ်ႈၵဝ်ႇသႂ်ႇဝႆႉလူၺ်ႈ JS ၵူၺ်း။ သင်ၶႂ်ႈႁူႉၵႃႈၶၼ် CSS တေႉတေႉ ဢၼ်လုၵ်ႉတီႈ External CSS File မႃး၊ လူဝ်ႇၸႂ်ႉ **`getComputedStyle()`** ၶႃႈ။

```javascript
const btn = document.querySelector("button");
const styles = getComputedStyle(btn);

console.log(styles.backgroundColor); // တေၼႄသီတေႉတေႉ ဢၼ် Browser Render ဝႆႉ

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Separation of Concerns:** ထုၵ်ႇလီၸႂ်ႉ **`.classList`** လိူဝ် `.style` ယွၼ်ႉမၼ်းႁဵတ်းႁႂ်ႈ CSS လႄႈ JS ဢမ်ႇယုင်ႈၵၼ်ၼမ်။
* **Units:** မိူဝ်ႈလႅၵ်ႈတၢင်းၵႂၢင်ႈ (Width/Height) လူၺ်ႈ `.style`၊ ယႃႇလိုမ်းသႂ်ႇ Unit မိူၼ်ၼင်ႇ `"px"`, `"%"`, `"rem"` ၶႃႈ။ သင်ဢမ်ႇသႂ်ႇ မၼ်းတေဢမ်ႇႁဵတ်းၵၢၼ်။
* **Inline Priority:** ၵၢၼ်ၸႂ်ႉ `.style` မီး Priority (ၼမ်ႉၼၵ်း) သုင်လိူဝ် CSS ၼႂ်း File၊ မၼ်းတေ Override ၵူႈယၢင်ႇၶႃႈ။

---
