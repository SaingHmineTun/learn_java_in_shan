# Lesson 61: Promise Static Methods

### 1. Promise.all([p1, p2, p3])

ၼႆႉပဵၼ်တူဝ်ဢၼ်ႁဝ်းၸႂ်ႉၼမ်သုတ်းၶႃႈ။ မၼ်းတေပႂ်ႉတေႃႇ **"ၵူႈတူဝ်"** တေယဝ်ႉတူဝ်ႈလီ (Resolved) ၵွၼ်ႇ၊ ၸင်ႇတေသူင်ႇ Result ဢွၵ်ႇမႃးပဵၼ် Array ၶႃႈ။

* **သတိ:** သင်ဝႃႈမီးတူဝ်လႂ်တူဝ်ၼိုင်ႈ **Rejected** (လူႉ) ၵႂႃႇ၊ မၼ်းတေ Error တင်းမူတ်းၵမ်းလဵဝ်ၶႃႈ။

### 2. Promise.race([p1, p2, p3])

ၸိုဝ်ႈမၼ်းၵေႃႈမွၵ်ႇဝႆႉယဝ်ႉဝႃႈ "ၵၢၼ်ၶႄႉလႅၼ်ႈ"။ တူဝ်လႂ်ယဝ်ႉ **"ဢွၼ်တၢင်းသုတ်း"** (ဢမ်ႇဝႃႈ Resolved ႁိုဝ် Rejected)၊ မၼ်းတေဢဝ်တူဝ်ၼၼ်ႉၵူၺ်းသေ တူဝ်တၢင်ႇၸိူဝ်းမၼ်းတေဢမ်ႇသူင်ၸႂ်ယဝ်ႉၶႃႈ။

### 3. Promise.allSettled([p1, p2, p3])

ၼႆႉပဵၼ်တူဝ်ဢၼ် "ၸႂ်လီ" သုတ်း။ မၼ်းတေပႂ်ႉတေႃႇၵူႈတူဝ်ယဝ်ႉတူဝ်ႈ (Settle) တင်းမူတ်း။ ဢမ်ႇဝႃႈတူဝ်လႂ်တေ Success ႁိုဝ် Fail၊ မၼ်းတေသူင်ႇ Result မႃးပၼ်ၵူႈတူဝ်ၶႃႈ။

### 4. Promise.any([p1, p2, p3])

မၼ်းတေပႂ်ႉဢဝ်တူဝ်ဢၼ် **Success (Resolved) ဢွၼ်တၢင်းသုတ်း** ၵူၺ်း။ သင်ဝႃႈတူဝ်မၢႆ 1 လူႉ၊ မၼ်းတေပႂ်ႉတူဝ်မၢႆ 2 ထႅင်ႈ။ မၼ်းတေ Error ၵေႃႈတေႃႇမိူဝ်ႈ "ၵူႈတူဝ်" လူႉမူတ်းၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (Code Comparison)

```javascript
const p1 = new Promise(res => setTimeout(() => res("Fast"), 1000));
const p2 = new Promise(res => setTimeout(() => res("Slow"), 3000));
const p3 = Promise.reject("Fail!");

// 1. Promise.all -> တေ Error ၵမ်းလဵဝ် ယွၼ်ႉ p3 လူႉ
// Promise.all([p1, p2]).then(console.log); // ["Fast", "Slow"]

// 2. Promise.race -> တေလႆႈ "Fast" ယွၼ်ႉမၼ်းၽႅဝ်ဢွၼ်တၢင်း
Promise.race([p1, p2]).then(console.log); 

// 3. Promise.allSettled -> တေလႆႈ Status ၶွင်ၵူႈတူဝ်
Promise.allSettled([p1, p3]).then(console.log); 

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`Promise.all`** ၶႅၼ်ႇသုတ်း တႃႇလူတ်းယွမ်းၶိင်ႇပႂ်ႉ (Performance) မိူဝ်ႈလူဝ်ႇၶေႃႈမုၼ်းလၢႆလၢႆဢၼ်။
* **`Promise.race`** ၵႆႉၸႂ်ႉတႃႇႁဵတ်း "Timeout" (မိူၼ်ၼင်ႇ: သင်လူတ်ႇၶေႃႈမုၼ်းႁိုင်လိူဝ် 5 သိၵ်ႉ ႁႂ်ႈမၼ်း Error)။
* **`Promise.any`** ၵႆႉၸႂ်ႉမိူဝ်ႈႁဝ်းမီး Server လၢႆလၢႆဢၼ် (Mirrors) သေ ၶႂ်ႈလႆႈၶေႃႈမုၼ်းၼႂ်း Server ဢၼ်ၽႂ်းသုတ်းၶႃႈ။

---