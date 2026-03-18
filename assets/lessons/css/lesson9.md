## Lesson 9: Web Fonts for Shan

ၵမ်ႈၼမ် Computer ဢမ်ႇၼၼ် Phone ၸိူဝ်းဢၼ် လုၵ်ႉတီႈမိူင်းၵႆမႃးၼၼ်ႉ ၶဝ်ဢမ်ႇပႃးၾွၼ်တ်ႉလိၵ်ႈတႆးဝႆႉ။ 
သင်ႁဝ်းဢမ်ႇသႂ်ႇ Web Fonts၊ ၵူၼ်းလူလိၵ်ႈႁဝ်းတေႁၼ်ပဵၼ် "တူဝ်သီႇၸဵင်ႇ" (Square boxes) ၵွၺ်းၶႃႈယဝ်ႉ။

### 1. Web Fonts ဢၼ်ဝႃႈၼၼ်ႉပဵၼ်သင်?

Web Fonts ၵေႃႈပဵၼ် ၾၢႆႇၾွၼ်တ်ႉ (Font files) ဢၼ်ႁဝ်းဢဝ်ဝႆႉၼိူဝ် Server ယဝ်ႉ။ 
မိူဝ်ႈၵူၼ်းၵေႃႉၼိုင်ႈပိုတ်ႇဝႅပ်ႉႁဝ်း၊ Browser တေ "Download" ၾွၼ်တ်ႉၼၼ်ႉမႃးၸႂ်ႉ တႃႇၼႄလိၵ်ႈတႆးႁဝ်း ႁႂ်ႈႁၢင်ႈလီယဝ်ႉ။

### 2. လၢႆးၸႂ်ႉ Google Fonts (လၢႆးငၢႆႈ)

Google Fonts မီးၾွၼ်တ်ႉလိၵ်ႈတႆး (Unicode) ဢၼ်ႁၢင်ႈလီ လႄႈ ၸႂ်ႉလႆႈငၢႆႈၸႂ်တေႉတေႇ။ 
တူဝ်ယၢင်ႇမိူၼ်ၼင်ႇ **Noto Sans Myanmar** (ဢၼ်ပႃးတူဝ်တႆး)။

**လၢႆးၸႂ်ႉ:**
ဢဝ် Code ၼႆႉၵႂႃႇဝႆႉၼႂ်း `<head>` ဢၼ်မီးဝႆ့ၼႂ်း HTML လႄႈ:

```html
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Myanmar:wght@400;700&display=swap" rel="stylesheet">

```

---

### 3. လၢႆးၸႂ်ႉ @font-face (လၢႆးတႅတ်ႈတေႃး)

သင်ႁဝ်းမီးၾၢႆႇၾွၼ်တ်ႉ (မိူၼ်ၼင်ႇ `NamKhone.ttf` ဢမ်ႇၼၼ် `PangLong.ttf`) ဝႆႉၼႆ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ `@font-face` ၼႂ်း CSS ယဝ်ႉ။

**တူဝ်ယၢင်ႇ:**

```css
/* 1. လၢတ်ႈၼႄပၼ် Browser ဝႃႈ ၾွၼ်တ်ႉယူႇတီႈလႂ် */
@font-face {
  font-family: 'NamKhoneWeb';
  src: url('fonts/NamKhone.woff2') format('woff2');
}

/* 2. ဢဝ်မႃးၸႂ်ႉတိုဝ်း */
body {
  font-family: 'NamKhoneWeb';
}

```

---

### 4. Font Fallbacks (ၾွၼ်တ်ႉတႅၼ်းတၢင်)

မိူဝ်ႈၾွၼ်တ်ႉလူင်ႁဝ်း Download ဢမ်ႇလႆႈ၊ ႁဝ်းၸၢင်ႊမၵ်းမၼ်ႈ "ၾွၼ်တ်ႉတႅၼ်းတၢင်" ဝႆႉယဝ်ႉ။

```css
p {
  font-family: 'NamKhoneWeb', 'PangLong', 'Noto Sans Myanmar', sans-serif;
}

```

*Browser တေတူၺ်း 'NamKhoneWeb' ဢွၼ်တၢင်း၊ ပေႃးဢမ်ႇမီး တေတူၺ်း 'PangLong' ၵႂႃႇၸိူင်ႉၼႆတိၵ်းတိၵ်းယဝ်ႉ။*

---

### ၶေႃႈၵိုတ်းယတ်း (Summary)

* **Web Fonts:** ၸွႆႈႁႂ်ႈၵူၼ်းလူလိၵ်ႈႁၼ်လိၵ်ႈတႆး လႆႈၵူႈတီႈ ၵူႈၶိူင်ႈ။
* **Google Fonts:** လၢႆးၸႂ်ႉငၢႆႈ၊ ဢမ်ႇလူဝ်ႇမီးၾၢႆႇၾွၼ်တ်ႉႁင်းၵွၺ်း။
* **@font-face:** ၸႂ်ႉတွၼ်ႈတႃႇၾွၼ်တ်ႉ ဢၼ်ႁဝ်းလိူၵ်ႈဝႆႉႁင်းၵွၺ်း (Custom Fonts)။

---