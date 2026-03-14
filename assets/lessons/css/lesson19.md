## Lesson 19: Grid Areas

မိူဝ်ႈႁဝ်းၸႂ်ႉ `grid-template-areas` ၼၼ်ႉ ႁဝ်းဢမ်ႇလူဝ်ႇၼပ်ႉတူဝ်ၼပ်ႉလၢႆးသဵၼ်ႈ (Grid Lines) ယဝ်ႉ။ ႁဝ်းၵွၺ်းလူဝ်ႇ "ပၼ်ၸိုဝ်ႈ" ႁပ်း (Box) ႁဝ်း သေဢဝ်မႃးဝၢင်းၸၼ်ပဵၼ်ႁၢင်ႈဝႅပ်ႉၶႃႈ။

### 1. လၢႆးပၼ်ၸိုဝ်ႈ (grid-area)

ဢွၼ်တၢင်းသုတ်း ႁဝ်းလူဝ်ႇသင်ႇဝႆႉတီႈ "လုၵ်ႈ" (Grid Items) ဝႃႈ မၼ်းမီးၸိုဝ်ႈဝႃႈသင်:

```css
.header { grid-area: hd; }
.sidebar { grid-area: sd; }
.main { grid-area: mn; }
.footer { grid-area: ft; }

```

---

### 2. လၢႆးဝၢင်းႁၢင်ႈ (grid-template-areas)

ၵမ်းၼႆႉ တီႈ "ပေႃႈမႄႈ" (Container) ႁဝ်းတေမႃးတႅမ်ႈ "မႅပ်ႉ" (Map) ၶွင်ဝႅပ်ႉသၢႆႉႁဝ်းၶႃႈ။ ႁဝ်းတေၸႂ်ႉ "" တွၼ်ႈတႃႇမၵ်းမၼ်ႈ ၼိုင်ႈထႅဝ်။

**တူဝ်ယၢင်ႇ:**

```css
.container {
  display: grid;
  grid-template-columns: 1fr 3fr; /* Sidebar 1 တွၼ်ႈ၊ Main 3 တွၼ်ႈ */
  grid-template-areas: 
    "hd hd"    /* ထႅဝ်ၼိူဝ်သုတ်း ပဵၼ် Header တင်းသွင်လွၵ်း */
    "sd mn"    /* ထႅဝ်ၵႄႈၵၢင် သၢႆႉပဵၼ် Sidebar၊ ၶႂႃပဵၼ် Main */
    "ft ft";   /* ထႅဝ်တႂ်ႈသုတ်း ပဵၼ် Footer တင်းသွင်လွၵ်း */
}

```

---

### 3. လွင်ႈငၢႆႈၶွင် Grid Areas

* **လူငၢႆႈ:** ၵွၺ်းတူၺ်း Code ၵေႃႈႁူႉယဝ်ႉဝႃႈ ဝႅပ်ႉသၢႆႉႁဝ်းတေမီးႁၢင်ႈၾၢင်ၸိူင်ႉႁိုဝ်။
* **မႄးငၢႆႈ:** သင်ႁဝ်းၶႂ်ႈလႅၵ်ႈလၢႆႈ တီႈယူႇ Sidebar လုၵ်ႉတီႈသၢႆႉ ၵႂႃႇတီႈၶႂႃ၊ ႁဝ်းၵွၺ်းလူဝ်ႇလႅၵ်ႈ "ၸိုဝ်ႈ" ၼႂ်း Code ၵွၺ်း၊ ဢမ်ႇလူဝ်ႇၵႂႃႇမႄး HTML ၶႃႈ။

---

### 4. တူဝ်ယၢင်ႇလွင်ႈၸႂ်ႉတိုဝ်း တႃႇဝႅပ်ႉသၢႆႉတႆး

သင်ႁဝ်းတေႁဵတ်း ဝႅပ်ႉသၢႆႉၶၢဝ်ႇတႆး (Shan News Portal):

```css
.news-grid {
  display: grid;
  grid-template-areas: 
    "headline headline headline"
    "sidebar content ads"
    "footer footer footer";
}

```

*Code ၼႆႉ တေႁဵတ်းႁႂ်ႈဝႅပ်ႉႁဝ်းမီး 3 ထႅဝ်ၸုၵ်း ႁၢင်ႈလီၶိုတ်းၵၢပ်ႈၵမ်းသိုဝ်ႈၶႃႈ။*

---

### ၶေႃႈၵိုတ်းယတ်း (Summary)

* **grid-area:** ၸႂ်ႉပၼ်ၸိုဝ်ႈတီႈ "လုၵ်ႈ" (Items)။
* **grid-template-areas:** ၸႂ်ႉ "တႅမ်ႈႁၢင်ႈ" တီႈ "ပေႃႈမႄႈ" (Container)။
* **Visual Logic:** ႁဵတ်းႁႂ်ႈၵၢၼ်ၸတ်း Layout ဢၼ်ယုင်ႈယၢပ်ႇ ယဵၼ်းပဵၼ်လွင်ႈငၢႆႈ။

---