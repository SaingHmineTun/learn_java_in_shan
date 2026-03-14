# Lesson 32: Synchronous vs. Asynchronous

ၼႂ်း JavaScript၊ လၢႆးဢၼ်ၵူတ်ႉ (Code) ႁဵတ်းၵၢၼ်ၼၼ်ႉ ပဵၼ်ပိုၼ်ႉထၢၼ်ဢၼ်လမ်ႇလွင်ႈသုတ်း။ ယွၼ်ႉ JavaScript ပဵၼ် **Single-threaded** (မၼ်းမီး "မိုဝ်း" ၶွင်ႈလဵဝ် တႃႇႁဵတ်းၵၢၼ်)၊ မၼ်းၸင်ႇလူဝ်ႇမီးလၢႆးၸတ်းၵၢၼ် ဢၼ်တေႁဵတ်းႁႂ်ႈမၼ်း ႁဵတ်းၵၢၼ်ယႂ်ႇယႂ်ႇလႆႈ လူၺ်ႈဢမ်ႇႁဵတ်းႁႂ်ႈၼႃႈၸေႃ (Screen) ၵၢင်ႉၵႂႃႇၶႃႈ။

### 1. Synchronous Programming (Blocking)

လၢႆးႁဵတ်းၵၢၼ်ပိုၼ်ႉထၢၼ်ၶွင် JavaScript ပဵၼ် **Synchronous** ၶႃႈ။ မၼ်းတေႁဵတ်းၵၢၼ်ၵႂႃႇၸွမ်းထႅဝ်လိၵ်ႈ တီႈၼိူဝ်လူင်းတႂ်ႈ။ ထႅဝ်ၼိုင်ႈယဝ်ႉ ၸင်ႇတေၵႂႃႇထႅဝ်သွင်။

* **ပၼ်ႁႃ:** သင်ၵၢၼ်သင်ဝႆႉၼိုင်ႈယၢင်ႇ (မိူၼ်ၼင်ႇ လူတ်ႇၾၢႆႇယႂ်ႇယႂ်ႇ) တေလႆႈၸႂ်ႉၶၢဝ်းယၢမ်းႁိုင်၊ ၵူတ်ႉတင်းမူတ်းတေလႆႈၸုၵ်းပႂ်ႉဝႆႉ။ ၵူၼ်းၸႂ်ႉ (User) တေဢမ်ႇၸၢင်ႈၼိပ်ႇသင်လႆႈ၊ Browser တေ "ၵၢင်ႉ" (Freeze) ဝႆႉၶႃႈ။

```javascript
console.log("Step 1: Open Umbrella");
console.log("Step 2: Walk outside"); // တေလႆႈပႂ်ႉ Step 1 ယဝ်ႉၵွၼ်ႇ
console.log("Step 3: Reach destination");

```

---

### 2. Asynchronous Programming (Non-blocking)

**Asynchronous** ပဵၼ်လၢႆးဢၼ်ၸွႆႈႁႂ်ႈ JavaScript "တႄႇ" ႁဵတ်းၵၢၼ်ဢၼ်ႁိုင်ၼၼ်ႉဝႆႉ (Background) သေ ၶၢမ်ႈၵႂႃႇႁဵတ်းၵၢၼ်ထႅဝ်ထႅပ်ႈၼၼ်ႉၵမ်းလဵဝ်။ ပေႃးၵၢၼ်ဢၼ်ႁိုင်ၼၼ်ႉယဝ်ႉ ၸင်ႇၶိုၼ်းမႃးၸတ်းၵၢၼ်ၽွၼ်းလႅတ်း (Result) မၼ်းၶႃႈ။

* **ၽွၼ်းလီ:** ႁဵတ်းႁႂ်ႈ Application ႁဝ်းလႅတ်းၽႂ်းယူႇတႃႇသေႇ။ ၼႂ်းမိူဝ်ႈလူတ်ႇၶေႃႈမုၼ်းယူႇၼၼ်ႉ ၵူၼ်းၸႂ်ႉယင်းတိုၵ်ႉၸၢင်ႈ ပၼ်ႇတူၺ်းၼႃႈလိၵ်ႈ (Scroll) လႄႈ ၼိပ်ႇပုမ်ႇ (Buttons) တၢင်ႇဢၼ်လႆႈယူႇၶႃႈ။

**တူဝ်ယၢင်ႇၸႂ်ႉ `setTimeout`:**
`setTimeout` ပဵၼ် Function ဢၼ်သင်ႇႁႂ်ႈၵူတ်ႉႁဵတ်းၵၢၼ် ဝၢႆးသေၶၢဝ်းယၢမ်းပူၼ်ႉၵႂႃႇ (ၼပ်ႉပဵၼ် Milliseconds)။ မၼ်းပဵၼ်လၢႆးဢၼ်ငၢႆႈသုတ်း တႃႇတူၺ်းၵၢၼ်ႁဵတ်းၵၢၼ် Asynchronous ၶႃႈ။

```javascript
console.log("1. Order Coffee");

// ၼႆႉပဵၼ် Asynchronous
setTimeout(() => {
    console.log("2. Coffee is ready!"); // တေႁဵတ်းၵၢၼ် ဝၢႆးသေ 3 ၸႅၵ်ႉပူၼ်ႉၵႂႃႇ
}, 3000);

console.log("3. Talk to a friend"); 

/* ၽွၼ်းလႅတ်း (Output):
1. Order Coffee
3. Talk to a friend
2. Coffee is ready! (ဢွၵ်ႇမႃး ဝၢႆးသေ 3 ၸႅၵ်ႉ)
*/

```

---

### 3. ပႅၵ်ႇပိူင်ႈၵၼ် (Comparison Table)

| Feature | Synchronous | Asynchronous |
| --- | --- | --- |
| **Execution** | ၸွမ်းလမ်ႇတပ်ႉ (Sequential) | တႄႇမိူဝ်ႈၼႆႉ၊ ယဝ်ႉမိူဝ်ႈၼႃႈ |
| **Blocking** | ႁႄႉၵင်ႈ (Blocks next line) | ဢမ်ႇႁႄႉၵင်ႈ (Non-blocking) |
| **User Experience** | ႁဵတ်းႁႂ်ႈ "ၵၢင်ႉ" (Freezing) | လႅတ်းၽႂ်း (Responsive) |
| **Best for** | ၵၢၼ်တႅပ်းတတ်းငၢႆႈငၢႆႈ, Math | လူတ်ႇၶေႃႈမုၼ်း, Timers, File I/O |

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Synchronous**: ႁဵတ်းၵၢၼ်တူဝ်ၼိုင်ႈယဝ်ႉ တူဝ်ၼိုင်ႈ။
* **Asynchronous**: တႄႇႁဵတ်းၵၢၼ်ဝႆႉ သေ ၶၢမ်ႈၵႂႃႇႁဵတ်းဢၼ်တၢင်ႇယၢင်ႇ၊ မႃးၸတ်းၵၢၼ်မၼ်းၶိုၼ်း မိူဝ်ႈမၼ်းယဝ်ႉ။
* **ယိူင်းဢၢၼ်းလူင်**: ပိူဝ်ႈတေဢမ်ႇႁႂ်ႈ Website ႁဝ်း "ၵၢင်ႉ" ဝႆႉ မိူဝ်ႈတိုၵ်ႉႁဵတ်းၵၢၼ်ၼၵ်းၼၵ်းၶႃႈ။

---