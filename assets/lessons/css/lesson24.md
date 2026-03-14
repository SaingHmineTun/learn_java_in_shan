## Lesson 24: Breakpoints & Strategy

**Breakpoint** ပွင်ႇဝႃႈ ၸိုင်ႈၼႃႈจอ (Width) ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႃႈ ႁႂ်ႈ CSS လႅၵ်ႈလၢႆႈပဵၼ်ထႅင်ႈပိူင်ၼိုင်ႈၶႃႈ။

### 1. တူဝ်ၼပ်ႉ Breakpoints ဢၼ်ပိူၼ်ႈၸႂ်ႉၼမ် (Common Breakpoints)

ႁဝ်းဢမ်ႇၸၢင်ႈတႅမ်ႈ CSS တႃႇၵူႈၶိူင်ႈ (Device) လႆႈ၊ ၵွပ်ႈၼၼ် ႁဝ်းလူဝ်ႇလိူၵ်ႈဢဝ်ၶၼၢတ်ႈဢၼ်ပဵၼ်ပိုၼ်ႉထၢၼ်ၶႃႈ။

| Device | Width (Breakpoint) | လၢႆးၸႂ်ႉ Media Query |
| --- | --- | --- |
| **Mobile (ၾူၼ်း)** | 480px | (Default CSS / No Query) |
| **Tablet (ထႅပ်ႉလႅတ်ႉ)** | 768px | `@media (min-width: 768px)` |
| **Laptop (ၶွမ်ႇပိဝ်ႇတႃႇ)** | 1024px | `@media (min-width: 1024px)` |
| **Desktop (จอယႂ်ႇ)** | 1200px | `@media (min-width: 1200px)` |

---

### 2. Strategy: တူၺ်း "လိၵ်ႈ" ပဵၼ်ပိူင်လူင် (Content-First Breakpoints)

ၼွၵ်ႈလိူဝ်သေတူၺ်းၶၼၢတ်ႈ Screen ယဝ်ႉ၊ လၢႆးဢၼ်ၵတ်ႉၶႅၼ်ႇသုတ်းၵေႃႈပဵၼ် ၵၢၼ်တူၺ်း "လိၵ်ႈတႆး" ႁဝ်းၶႃႈ။

* ပေႃးႁဝ်းၸၼ်ၼႃႈจอ Browser ႁဝ်းႁူတ်းၶဝ်ႈမႃး၊ တီႈလႂ်ဢၼ်လိၵ်ႈႁဝ်းတႄႇ "တႅၵ်ႇ" ဢမ်ႇၼၼ် "လူယၢပ်ႇ" ၼၼ်ႉယဝ်ႉ ႁဝ်းလူဝ်ႇသႂ်ႇ Breakpoint ၶႃႈ။

---

### 3. တူဝ်ယၢင်ႇၵၢၼ်တႅမ်ႈ (Full Strategy)

ၼႆႉပဵၼ်တူဝ်ယၢင်ႇၵၢၼ်ၸတ်း Grid တွၼ်ႈတႃႇဝႅပ်ႉသၢႆႉတႆး ႁႂ်ႈမၼ်းလႅတ်း (Responsive) ၶႃႈ:

```css
/* 1. တႃႇ Mobile: မီး 1 ထႅဝ်ၸုၵ်း (Default) */
.news-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 15px;
}

/* 2. တႃႇ Tablet: ပဵၼ် 2 ထႅဝ်ၸုၵ်း */
@media (min-width: 768px) {
  .news-grid {
    grid-template-columns: 1fr 1fr;
  }
}

/* 3. တႃႇ Desktop: ပဵၼ် 3 ထႅဝ်ၸုၵ်း */
@media (min-width: 1024px) {
  .news-grid {
    grid-template-columns: 1fr 1fr 1fr;
  }
}

```

---

### 4. ၶေႃႈၼႅၼ်းၼမ်း (Best Practices)

* **Keep it simple:** ဢမ်ႇလူဝ်ႇသႂ်ႇ Breakpoints ၼမ်ပူၼ်ႉတီႈ (3-4 ဢၼ်ၵေႃႈတဵမ်ထူၼ်ႈယဝ်ႉ)။
* **Use Relative Units:** ၸႂ်ႉ `rem`, `em`, ဢမ်ႇၼၼ် `%` တႅၼ်း `px` ၼႂ်း Media Query တေႁဵတ်းႁႂ်ႈဝႅပ်ႉယိုတ်းယုၵ်ႉလႆႈလီလိူဝ်ၶႃႈ။
* **Test it:** ၸႂ်ႉ "Inspect Element" (F12) ၼႂ်း Browser သေတူၺ်းၶၼၢတ်ႈၼႃႈจอၵူႈပိူင်။

---

### ၶေႃႈၵိုတ်းယတ်း (Summary)

* **Breakpoints:** ပဵၼ်ၸိုင်ႈတႅၵ်ႇ တွၼ်ႈတႃႇလႅၵ်ႈ Layout။
* **768px & 1024px:** ပဵၼ်တူဝ်ၼပ်ႉဢၼ်လမ်ႇလွင်ႈသုတ်း။
* **Goal:** ႁႂ်ႈလိၵ်ႈတႆးႁဝ်း ယူႇတီႈလႂ်ၵေႃႈ လူငၢႆႈ၊ ႁၢင်ႈလီ၊ လႄႈ ၶႅမ်ႉလႅပ်ႈ။

---