## Lesson 38: Embedding Iframes: Maps and External Content

တွၼ်ႈသုတ်းသေပိူၼ်ႈၼႂ်း Module ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလွင်ႈၵၢၼ် "ယိမ်ဢဝ်" (Embed) ၼိူဝ်ႉလိၵ်ႈလႄႈ လွၵ်းလၢႆးႁဵတ်းသၢင်ႈတီႈဝႅပ်ႉသၢႆႉတၢင်ႇဢၼ် မႃးၼႄဝႆႉၼႂ်းၼႃႈလိၵ်ႈႁဝ်းၶႃႈ။ တီႈၼႆႉႁဝ်းၸႂ်ႉ tag `<iframe>` ဢၼ်ပဵၼ်တူဝ်ယေႃႈ **Inline Frame** ၶႃႈဢေႃႈ။

---

#### 1. What is an Iframe?

`<iframe>` မိူၼ်ၼင်ႇ "ပႅတ်ႉလႅင်း" (Window) လဵၵ်ႉလဵၵ်ႉဢၼ်ၼိုင်ႈ ဢၼ်ႁဝ်းၸၢတ်ႈဝႆႉၼႂ်းဝႅပ်ႉသၢႆႉႁဝ်း တွၼ်ႈတႃႇပိုတ်ႇတူၺ်းဝႅပ်ႉသၢႆႉတၢင်ႇဢၼ်။

* **`src`**: တီႈယူႇ (URL) ၶွင်ၼႃႈလိၵ်ႈ ဢမ်ႇၼၼ် Video ဢၼ်ႁဝ်းၶႂ်ႈၼႄ။
* **`width` & `height**`: မၵ်းမၼ်ႈတၢင်းၵႂၢင်ႈလႄႈ တၢင်းသုင်။
* **`loading="lazy"`**: ၸွႆႈႁႂ်ႈဝႅပ်ႉသၢႆႉဝႆး (မၼ်းတေတက်ႉ Iframe ၼၼ်ႉၵေႃႈတေႃႉတႄႉမိူဝ်ႈၵူၼ်းလူလိၵ်ႈ Scroll လူင်းၵႂႃႇၸူးမၼ်းၵူၺ်း)။

---

#### 2. Common Use Cases (ၵၢၼ်ၸႂ်ႉတိုဝ်းၵႆႉသုတ်း)

##### A. Embedding Google Maps

မိူဝ်ႈၸဝ်ႈၵဝ်ႇၶႂ်ႈၼႄ "တီႈယူႇလၢၼ်ႉ" ၼႂ်းၼႃႈလိၵ်ႈ Contact Us၊ ၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇတႅမ်ႈႁင်းကိုယ်တိုင်။ ၵူၺ်းၵႃႈ ၵႂႃႇဢဝ် Code တီႈ Google Maps မႃးသႂ်ႇလႆႈၶႃႈ။

```html
<iframe 
  src="https://www.google.com/maps/embed?..." 
  width="600" 
  height="450" 
  style="border:0;" 
  allowfullscreen="" 
  loading="lazy">
</iframe>

```

##### B. Embedding YouTube Videos

တွၼ်ႈတႃႇ Video ဢၼ်ယၢဝ်းၼႃႇ ႁဝ်းၵႆႉၸႂ်ႉလၢႆးၼႆႉ တႅၼ်းၵၢၼ်ၸႂ်ႉ tag `<video>` တွၼ်ႈတႃႇလူတ်းၽွၼ်း Server ၼၵ်းၶႃႈ။

```html
<iframe 
  width="560" 
  height="315" 
  src="https://www.youtube.com/embed/VIDEO_ID" 
  title="YouTube video player" 
  frameborder="0" 
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
  allowfullscreen>
</iframe>

```

---

#### 3. Security Warning (လွင်ႈႁႅင်းၵၢင်ႇ) 🔒

ယေႃႈဝႃႈ Iframe မၼ်းပဵၼ်ၵၢၼ်ပိုတ်ႇဝႅပ်ႉသၢႆႉတၢင်ႇဢၼ်ၼႂ်းဝႅပ်ႉသၢႆႉႁဝ်း၊ မၼ်းၸၢင်ႈမီးလွင်ႈၵၢင်းသႂ်ႇ (Security Risk)။

* **Sandbox Attribute:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈသႂ်ႇ `sandbox` တွၼ်ႈတႃႇ "ၵိုတ်းဝႆႉ" ၵၢၼ်ပိုတ်ႇ Popup ဢမ်ႇၼၼ် ၵၢၼ်လဵၼ်ႈ Script ၸိူဝ်းဢၼ်ဢမ်ႇလုမ်းၵၢင်းၼၼ်ႉလႆႈၶႃႈ။

```html
<iframe src="https://example.com" sandbox></iframe>

```

---

#### 💡 တူဝ်ယၢင်ႇ (Example)

ဝူၼ်ႉဝႃႈ ၸဝ်ႈၵဝ်ႇတိုၵ်ႉသၢင်ႈ **ႁိူၼ်းမႂ်ႇ**:

1. **Standard Tags (`img`, `video`):** မိူၼ်ၼင်ႇၸဝ်ႈၵဝ်ႇ "ဢဝ်ႁၢင်ႈတိတ်းၽႃ" ၼႂ်းႁိူၼ်းၸဝ်ႈၵဝ်ႇ။ မၼ်းပဵၼ်ၶွင်ၸဝ်ႈၵဝ်ႇတႄႉတႄႉ။
2. **Iframe:** မိူၼ်ၼင်ႇၸဝ်ႈၵဝ်ႇ "ၸတ်းပႅတ်ႉလႅင်း" (Window) ဢၼ်တူၺ်းၵႂႃႇႁၼ်လႆႈ "သူၼ်မွၵ်ႇပိူၼ်ႈ" ဢၼ်ယူႇၽၢႆႇၼွၵ်ႈ။ ၸဝ်ႈၵဝ်ႇတူၺ်းလႆႈ၊ ႁၼ်လႆႈ ၵူၺ်းၵႃႈ မၼ်းဢမ်ႇၸႂ်ႈသူၼ်မွၵ်ႇ ၼႂ်းႁိူၼ်းၸဝ်ႈၵဝ်ႇတႄႉတႄႉၼၼ်ႉယဝ်ႉ။

---
