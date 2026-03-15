# Lesson 63: DOM Tree Architecture & Node Types

### 1. DOM ပဵၼ်သင်?

**DOM** (Document Object Model) ပဵၼ် "ပိူင်ႁၢင်ႈ" ဢၼ် Browser သၢင်ႈဝႆႉ တွၼ်ႈတႃႇမွၵ်ႇဝႃႈ HTML ၼႃႈလိၵ်ႈၼိုင်ႈဢၼ် မီးသင်ဝႆႉ။ JavaScript တေဢမ်ႇမွၵ်ႇလႆႈဝႃႈ HTML ပဵၼ် "လိၵ်ႈ"၊ မၼ်းတေႁၼ် HTML ပဵၼ် **Object** ဢၼ်သိုပ်ႇၵၼ်ဝႆႉမိူၼ် "ၵိင်ႇမႆႉ" (Tree) ၶႃႈ။

### 2. The DOM Tree

မိူဝ်ႈ Browser လူတ်ႇ HTML ယဝ်ႉ၊ မၼ်းတေၸႅၵ်ႇပဵၼ်ၸၼ်ႉပဵၼ်ၶၼ်ႉ:

* **`window`**: ပဵၼ် "ၸဝ်ႈလူင်" ဢၼ်ႁုမ်ႉၵူႈယၢင်ႇဝႆႉ (Browser window)။
* **`document`**: ပဵၼ် "မႄႈငဝ်ႈ" ၶွင် HTML ၼႃႈလိၵ်ႈႁဝ်း။
* **`<html>`**: ပဵၼ် Root element။
* **`<body>`, `<head>`, `<div>`, `<h1>**`: ပဵၼ်ၵိင်ႇမႆႉ (Branch) ဢၼ်ယူႇၽၢႆႇတႂ်ႈမၼ်း။

### 3. Node Types (မဵဝ်းၶွင်ၼူတ်ႉ)

ၼႂ်း DOM Tree၊ "ၵူႈယၢင်ႇ" ပဵၼ် **Node** တင်းမူတ်း၊ ၵူၺ်းၵႃႈ မၼ်းမီးမဵဝ်းပႅၵ်ႇၵၼ်:

1. **Element Node:** ပဵၼ် HTML Tags (မိူၼ်ၼင်ႇ `<div>`, `<a>`, `<p>`)။ ၼႆႉပဵၼ်တူဝ်ဢၼ်ႁဝ်းတေလႅၵ်ႈလၢႆႈၼမ်သုတ်း။
2. **Text Node:** ပဵၼ် "တူဝ်လိၵ်ႈ" ဢၼ်ယူႇၼႂ်း Tags။
3. **Attribute Node:** ပဵၼ် Property ၼႂ်း Tag (မိူၼ်ၼင်ႇ `class`, `id`, `src`)။
4. **Comment Node:** ပဵၼ်ၶေႃႈမုၼ်းဢၼ်ႁဝ်း Comment ဝႆႉ ``။

---

### 💻 တူဝ်ယၢင်ႇ (Mental Model)

ဝူၼ်ႉတူၺ်း HTML ဢွၼ်ႇၼႆႉၶႃႈ:

```html
<div id="box">
  <p>Hello World</p>
</div>

```

ၼႂ်း DOM Tree မၼ်းတေပဵၼ်:

* `div` (Element Node)
* `id="box"` (Attribute Node)
* `p` (Element Node)
* `"Hello World"` (Text Node)





---

### 4. ယွၼ်ႉသင်ႁဝ်းလူဝ်ႇႁူႉ?

သင်ႁဝ်းဢမ်ႇႁူႉ "ပိူင်ၵိင်ႇမႆႉ" မၼ်း၊ ႁဝ်းတေဢမ်ႇၸၢင်ႈ "ၸီႉ" (Target) လႆႈမႅၼ်ႈဝႃႈ ႁဝ်းၶႂ်ႈလႅၵ်ႈလၢႆႈလိၵ်ႈတီႈလႂ် ႁိုဝ် ၶႂ်ႈသႂ်ႇသီ (Color) တီႈလႂ်ၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **DOM** ဢမ်ႇၸႂ်ႈ HTML၊ မၼ်းပဵၼ် **Object representation** ၶွင် HTML။
* **Document** Object ပဵၼ် "ၵိတ်ႉ" (Gate) ဢၼ်တေႁႄႉႁဝ်းၶဝ်ႈၸူး DOM တင်းမူတ်း။
* ၵူႈယၢင်ႇၼိူဝ်ၼႃႈလိၵ်ႈ (ပႃးတင်း Line break လႄႈ Space) ၸၢင်ႈပဵၼ် Node လႆႈတင်းမူတ်းၶႃႈ။

---