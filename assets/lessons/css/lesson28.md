## Lesson 28: Shadows & Glassmorphism

ၵၢၼ်တႅမ်ႈဝႅပ်ႉသၢႆႉ ႁႂ်ႈတူၺ်းမီး "တၢင်းလိုၵ်ႉ" ၼၼ်ႉ တေၸွႆႈႁႂ်ႈၵူၼ်းၸႂ်ႉ (User) ႁူႉဝႃႈ Element လႂ် လမ်ႇလွင်ႈလိူဝ်ၵၼ်ၶႃႈ။

### 1. Box Shadows (တိုင်ႇႁပ်း)

`box-shadow` ၸွႆႈႁႂ်ႈ Element ၼၼ်ႉ "ၵိၼ်ႇ" (Pop) ဢွၵ်ႇမႃးၼိူဝ်ၼႃႈจอ။

* **Syntax:** `box-shadow: [x-offset] [y-offset] [blur] [spread] [color];`

**တူဝ်ယၢင်ႇ:**

```css
.card {
  /* ၶၢႆႉတိုင်ႇၵႂႃႇၶႂႃ 0, တႂ်ႈ 4px, ႁႂ်ႈမၼ်းမိုဝ်း (blur) 10px, သီလမ်ၸၢင် */
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

```

---

### 2. Text Shadows (တိုင်ႇလိၵ်ႈ)

ၸွႆႈႁႂ်ႈလိၵ်ႈတႆးႁဝ်း လူငၢႆႈလိူဝ်ၵဝ်ႇ မိူဝ်ႈမၼ်းယူႇၼိူဝ်ႁၢင်ႈၾၢင် ဢၼ်မီးသီၼမ်ၼမ်။

```css
.hero-text {
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}

```

---

### 3. Glassmorphism (ပိူင်ၵႅဝ်ႈၸၢင်)

ၼႆႉပဵၼ် Design ဢၼ်ၶိုတ်းၵၢပ်ႈသုတ်း (မိူၼ်ၼင်ႇၼႂ်း iOS ဢမ်ႇၼၼ် Windows 11)။ မၼ်းတေႁဵတ်းႁႂ်ႈ Element ႁဝ်း တူၺ်းမိူၼ် "ၵႅဝ်ႈၸၢင်" ဢၼ်ႁၼ်လုၵ်ႉလၢင်း တွၼ်ႈတၢင်းလင်ၶႃႈ။

**လၢႆးႁဵတ်း:** ႁဝ်းလူဝ်ႇၸႂ်ႉ `backdrop-filter: blur()` လႄႈ သီပိုၼ်ႉဢၼ်ၸၢင် (Transparent background)။

**တူဝ်ယၢင်ႇ Code:**

```css
.glass-panel {
  background: rgba(255, 255, 255, 0.2); /* သီၶၢဝ်ၸၢင် */
  backdrop-filter: blur(10px);          /* ႁဵတ်းႁႂ်ႈတၢင်းလင်မိုဝ်း */
  border: 1px solid rgba(255, 255, 255, 0.3); /* သႂ်ႇၶွပ်ႇၵႅဝ်ႈဢိတ်းၼိုင်ႈ */
  border-radius: 15px;
  padding: 20px;
}

```

---

### 4. တူဝ်ယၢင်ႇတႃႇဝႅပ်ႉသၢႆႉတႆး

ႁဝ်းၸၢင်ႈၸႂ်ႉ Glassmorphism တွၼ်ႈတႃႇႁဵတ်း "Menu" ဢၼ်လွင်ႈယူႇၼိူဝ် ႁၢင်ႈပိုၼ်ႉ (Background Image) ႁၢင်ႈလီလီ:

```css
.shan-nav {
  position: sticky;
  top: 0;
  background: rgba(170, 0, 0, 0.5); /* သီလႅင်တႆး ဢၼ်ၸၢင် */
  backdrop-filter: blur(8px);
  color: white;
}

```

---

### ၶေႃႈၵိုတ်းယတ်း (Summary)

* **Shadows:** ၸွႆႈပၼ် "တၢင်းလိုၵ်ႉ" လႄႈ လွင်ႈလမ်ႇလွင်ႈ (Hierarchy)။
* **Glassmorphism:** ၸႂ်ႉ `backdrop-filter` တွၼ်ႈတႃႇႁဵတ်းႁၢင်ႈၾၢင် "ၵႅဝ်ႈၸၢင်" ဢၼ်ၶိုတ်းၵၢပ်ႈ။
* **Transparency:** ၸႂ်ႉ `rgba()` တႃႇမၵ်းမၼ်ႈသီ ဢၼ်ႁၼ်လုၵ်ႉလၢင်းလႆႈ။

---
