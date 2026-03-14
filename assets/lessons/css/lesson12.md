## Lesson 12: Backgrounds & Gradients

ၼႂ်း CSS ၼၼ်ႉ ႁဝ်းဢမ်ႇၵွၺ်းပၼ်လႆႈသီပိုၼ်ႉလင်ပဵၼ် "သီလဵဝ်"၊ ႁဝ်းၸၢင်ႈလေႃးသီ (Gradients) ဢမ်ႇၼၼ် သႂ်ႇႁၢင်ႈၾၢင် (Images) ပႃးၶႃႈ။

### 1. Background Color & Image

ၵၢၼ်သႂ်ႇသီပိုၼ်ႉလင် လႄႈ ၵၢၼ်သႂ်ႇႁၢင်ႈၾၢင်:

* **Background Color:** ပၼ်သီပိုၼ်ႉလင်သီလဵဝ်။
* **Background Image:** ဢဝ်ႁၢင်ႈၾၢင်မႃးႁဵတ်းပိုၼ်ႉလင်။

**တူဝ်ယၢင်ႇ:**

```css
.hero-section {
  background-color: #f4f4f4; 
  background-image: url('shan-pattern.png');
  background-size: cover; /* ႁႂ်ႈႁၢင်ႈၾၢင်တဵမ်ႁပ်း (Box) */
  background-position: center; /* ႁႂ်ႈႁၢင်ႈၾၢင်ယူႇၵႄႈၵၢင် */
}

```

---

### 2. Linear Gradients (ၵၢၼ်လေႃးသီသဵၼ်ႈသိုဝ်ႈ)

`linear-gradient` ပဵၼ်ၵၢၼ်ႁဵတ်းႁႂ်ႈသီၼိုင်ႈဢၼ် ၵွႆႈၵွႆႈလႅၵ်ႈလၢႆႈပဵၼ်ၵႂႃႇ ထႅင်ႈသီၼိုင်ႈဢၼ်။ မၼ်းႁဵတ်းႁႂ်ႈဝႅပ်ႉသၢႆႉႁဝ်း တူၺ်းပဵၼ် "Modern" ၶိုတ်းၵၢပ်ႈၶႃႈ။

* **ပိူင်တႅမ်ႈ:** `linear-gradient(direction, color1, color2)`

**တူဝ်ယၢင်ႇ:**

```css
.header {
  /* လေႃးသီလႅင်ၵႂႃႇၸူးသီလိူင် တႄႇတၢင်းသၢႆႉၵႂႃႇတၢင်းၶႂႃ */
  background: linear-gradient(to right, #AA0000, #FFD700);
}

```

---

### 3. Radial Gradients (ၵၢၼ်လေႃးသီဝူင်းမူၼ်း)

ပဵၼ်ၵၢၼ်လေႃးသီ ဢၼ်တႄႇတီႈ "ၵႄႈၵၢင်" သေ ယိူင်ႈဢွၵ်ႇၵႂႃႇတၢင်းၼွၵ်ႈ ပဵၼ်ဝူင်းမူၼ်းၶႃႈ။

**တူဝ်ယၢင်ႇ:**

```css
.circle-bg {
  background: radial-gradient(circle, #ffffff, #cccccc);
}

```

---

### 4. Background Overlay (ၵၢၼ်သႂ်ႇသီတပ်ႉၼိူဝ်ႁၢင်ႈ)

ယိူင်ႈၼႆႉ လမ်ႇလွင်ႈသုတ်းတွၼ်ႈတႃႇ "လိၵ်ႈတႆး" ၶႃႈ။ ပေႃးႁဝ်းသႂ်ႇႁၢင်ႈၾၢင်ပဵၼ်ပိုၼ်ႉလင်၊ လိၵ်ႈတႆးႁဝ်းၸၢင်ႈလူယၢပ်ႇ။ ႁဝ်းလူဝ်ႇသႂ်ႇသီသႂ် (Semi-transparent color) တပ်ႉဝႆႉၼိူဝ်ႁၢင်ႈ ဢွၼ်တၢင်းၶႃႈ။

**တူဝ်ယၢင်ႇ:**

```css
.banner {
  /* သႂ်ႇသီလမ်သႂ် 50% တပ်ႉၼိူဝ်ႁၢင်ႈ ႁႂ်ႈလိၵ်ႈတႆးသီၶၢဝ် ပေႃႇလႅင်း */
  background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('mountain.jpg');
  color: white;
}

```

---

### ၶေႃႈၵိုတ်းယတ်း (Summary)

* **Background-size: cover;** ၸွႆႈႁႂ်ႈႁၢင်ႈၾၢင် တဵမ်ဝႆႉၵူႈ Screen။
* **Linear-gradient:** ၸွႆႈႁဵတ်းႁႂ်ႈဝႅပ်ႉႁၢင်ႈလီ လူၺ်ႈၵၢၼ်လေႃးသီ။
* **Overlay:** လမ်ႇလွင်ႈတွၼ်ႈတႃႇႁႂ်ႈ လိၵ်ႈတႆးလူငၢႆႈ မိူဝ်ႈမီးႁၢင်ႈၾၢင်ယူႇတၢင်းတႂ်ႈ။

---
