## Lesson 17: Grid Fundamentals

CSS Grid ၼႆႉ မိူၼ်ၼင်ႇႁဝ်းတႅမ်ႈ "လွၵ်းတႃတႅပ်ႉ" (Chessboard) ဝႆႉၼိူဝ်ဝႅပ်ႉသၢႆႉႁဝ်းသေ၊ ႁဝ်းၸၢင်ႈဢဝ် Elements ၵႂႃႇဝႆႉၼႂ်းလွၵ်းလႂ်ၵေႃႈလႆႈၶႃႈ။

### 1. ပေႃႈမႄႈ လႄႈ လုၵ်ႈ (Grid Container & Items)

မိူၼ်ၼင်ႇ Flexbox ၼင်ႇၵဝ်ႇ၊ ႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈတီႈ Parent မၼ်းဢွၼ်တၢင်း:

```css
.grid-container {
  display: grid; /* ပိုတ်ႇၸႂ်ႉပိူင် Grid */
}

```

### 2. မၵ်းမၼ်ႈထႅဝ်ၸုၵ်း (Grid Columns)

ႁဝ်းၸၢင်ႈသင်ႇဝႃႈ ၶႂ်ႈႁႂ်ႈမီး "ထႅဝ်ၸုၵ်း" (Columns) ၵေႇႁိုဝ် လႄႈ ၵႂၢင်ႈၵေႇႁိုဝ်။

* **Property:** `grid-template-columns`

**တူဝ်ယၢင်ႇ:**

```css
.container {
  display: grid;
  /* ႁဵတ်းႁႂ်ႈမီး 3 ထႅဝ်ၸုၵ်း ဢၼ်ၵႂၢင်ႈ 100px ၽဵင်ႇၵၼ် */
  grid-template-columns: 100px 100px 100px;
}

```

---

### 3. မၵ်းမၼ်ႈထႅဝ်ၼွၼ်း (Grid Rows)

သင်ႁဝ်းၶႂ်ႈမၵ်းမၼ်ႈတၢင်းသုင် ၶွင်ထႅဝ်ၼွၼ်းၵေႃႈ ၸၢင်ႈႁဵတ်းလႆႈၶႃႈ။

* **Property:** `grid-template-rows`

**တူဝ်ယၢင်ႇ:**

```css
.container {
  display: grid;
  grid-template-columns: 200px 200px;
  grid-template-rows: 150px 150px; /* မီး 2 ထႅဝ်ၼွၼ်း သုင် 150px */
}

```

---

### 4. လွင်ႈၸႂ်ႉ repeat() (ၵၢၼ်တႅမ်ႈ Code ႁႂ်ႈပွတ်း)

သင်ႁဝ်းမီးထႅဝ်ၼမ်ၼႃႇသေ ဢမ်ႇၶႂ်ႈတႅမ်ႈ Code သိုပ်ႇၵၼ်ယၢဝ်းယၢဝ်း၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ `repeat()` လႆႈၶႃႈ။

```css
/* တႅၼ်းတၢင်ၵၢၼ်တႅမ်ႈ 100px 3 ပွၵ်ႈ */
grid-template-columns: repeat(3, 100px);

```

---

### ၶေႃႈၵိုတ်းယတ်း (Summary)

* **display: grid;** ပိုတ်ႇၸႂ်ႉပိူင် Grid တီႈ Container။
* **grid-template-columns:** မၵ်းမၼ်ႈ တၢင်းၵႂၢင်ႈ လႄႈ ႁူဝ်ၼပ်ႉ ထႅဝ်ၸုၵ်း။
* **grid-template-rows:** မၵ်းမၼ်ႈ တၢင်းသုင် ၶွင်ထႅဝ်ၼွၼ်း။

---