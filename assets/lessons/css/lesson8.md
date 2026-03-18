## Lesson 8: Units of Measurement

ၼႂ်း CSS ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႅၵ်ႇ "တူဝ်ၼပ်ႉ" ဝႆႉပဵၼ် 2 ၸုမ်းလူင်လႆႈ:

### 1. Absolute Units

ပဵၼ် unit "ပိူင်တၢႆ" ဝႆႉ၊ ဢမ်ႇလႅၵ်ႈလၢႆႈၸွမ်းသင်။

* **px (Pixels):** ပဵၼ်ဢၼ်ႁဝ်းၸႂ်ႉၼမ်သုတ်း။
* **cm (Centimeters):**
* **mm (Millimeters):**
* **in (Inches):** 1in မီး 96px
* **pt (Points):** 1pt မီး 1/72in
* **pc (Picas):** 1pc မီး 12pt

---

### 2. Relative Units

ပဵၼ် unit ဢၼ် "လႅၵ်ႈလၢႆႈ" ၸွမ်း Font ဢမ်ႇၼၼ် ၸွမ်းတၢင်းၵႂၢင်ႈ Parent Element/Screen။

* **% (Percentage):** ယွၼ်ႈၸွမ်းတၢင်းၵႂၢင်ႈၶွင် "ပေႃႈမႄႈ" (Parent Box) မၼ်း။
* **em:** ယွၼ်ႈၸွမ်းတူဝ် Font ၶွင် Element ၼၼ်ႉ။
* **rem (Root em):** ယွၼ်ႈၸွမ်းတူဝ် Font ၶွင် `<html>` (Root)။
* **vw / vh (Viewport Width/Height):** ယွၼ်ႈၸွမ်း ၶွင်ၼႃႈၸေႃး (Screen)။

---

### 3. တူဝ်ယၢင်ႇလွင်ႈတႅမ်ႈ Code

```css
h1 {
  font-size: 2.5rem;   /* ယႂ်ႇလိူဝ် Font ပိုၼ်ႉထၢၼ် 2.5 ပၼ်ႇ */
}

.container {
  width: 90%;          /* ႁႂ်ႈၵႂၢင်ႈ 90% တီႈၼႃႈ Screen */
  padding: 20px;       /* ပၼ် Padding လူၺ်ႈ px */
}

```

---

### ၶေႃႈၵိုတ်းယတ်း (Summary)

* **px:** ၸႂ်ႉမိူဝ်ႈၶႂ်ႈလႆႈ တင်းယႂ်ႇၵႂၢင်ႈ "ပိူင်တၢႆ"။
* **rem:** ၸႂ်ႉမိူဝ်ႈမႄး "Font" ႁႂ်ႈမၼ်း ႁဵတ်းၵၢၼ်လီငၢမ်း တီႈ Screen ၵူႈဢၼ်။
* **% / vw:** ၸႂ်ႉမိူဝ်ႈမႄး "တၢင်းၵႂၢင်ႈ Box" ႁႂ်ႈမၼ်း ယႂ်ႇ/လဵၵ်ႉ ၸွမ်း screen။

---