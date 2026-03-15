# Lesson 57: Promises (States & Flow)

### 1. Promise ပဵၼ်သင်?

**Promise** ပဵၼ် Object ဢၼ်တႅၼ်းပၼ် "ၵႃႈၶၼ်ဢၼ်တေမႃးၼႂ်းဝၼ်းၼႃႈ" (Future Value) ၶႃႈ။ ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇၵႂႃႇသင်ႇ Pizza တီႈလၢၼ်ႉ:

1. လၢၼ်ႉပၼ် "ၶိူင်ႈသၼ်ႇ" (Buzzer) မႃးၼိုင်ႈဢၼ် — ၼႆႉပဵၼ် **Promise**။
2. ယၢမ်းလဵဝ် Pizza ပႆႇယဝ်ႉ (ပႂ်ႉယူႇ) — ၼႆႉႁွင်ႉဝႃႈ **Pending**။
3. ပေႃး Pizza ယဝ်ႉ၊ ၶိူင်ႈသၼ်ႇမႃးသေ ၸဝ်ႈၵဝ်ႇလႆႈၵိၼ် — ၼႆႉႁွင်ႉဝႃႈ **Fulfilled (Resolved)**။
4. သင်ဝႃႈ Pizza သုတ်းယဝ်ႉ ၶဝ်ဢမ်ႇႁဵတ်းပၼ်လႆႈ — ၼႆႉႁွင်ႉဝႃႈ **Rejected**။

---

### 2. States ၶွင် Promise

Promise ၼိုင်ႈဢၼ် မီးလႆႈ 3 သၢႆငၢႆ (States):

1. **Pending:** သၢႆငၢႆတႄႇတိုၼ်း၊ တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ (ပႆႇႁူႉၽົນ)။
2. **Fulfilled (Resolved):** ၵၢၼ်ႁဵတ်းယဝ်ႉတူဝ်ႈလီ လႄႈ လႆႈၶေႃႈမုၼ်းမႃး။
3. **Rejected:** ၵၢၼ်ႁဵတ်းၽိတ်းပိူင်ႈ (Error) ႁိုဝ် လႅၵ်ႈလၢႆႈဢမ်ႇလႆႈ။

---

### 💻 တူဝ်ယၢင်ႇ (How to create a Promise)

ႁဝ်းသၢင်ႈ Promise လူၺ်ႈၸႂ်ႉ `new Promise()` သေသူင်ႇ Function ဢၼ်မီး `resolve` လႄႈ `reject` ၶဝ်ႈၵႂႃႇၶႃႈ။

```javascript
const myPromise = new Promise((resolve, reject) => {
  const success = true;

  // ႁဵတ်းႁႂ်ႈမၼ်းပႂ်ႉ 2 သိၵ်ႉ (မိူၼ်ၼင်ႇလူတ်ႇၶေႃႈမုၼ်း)
  setTimeout(() => {
    if (success) {
      resolve("ပွၵ်ႈၼႆႉ ၵၢၼ်ႁဵတ်းယဝ်ႉတူဝ်ႈလီယဝ်ႉၶႃႈ!"); 
    } else {
      reject("မီးပၼ်ႁႃသေၸိူဝ်ႉသေယၢင်ႇယဝ်ႉ!"); 
    }
  }, 2000);
});

// ၵၢၼ်ၸႂ်ႉတူဝ်ယၢင်ႇ
console.log(myPromise); // တေၼႄပဵၼ် <pending>

```

---

### 3. ႁပ်ႉဢဝ်ၶေႃႈမုၼ်းၼင်ႇႁိုဝ်?

မိူဝ်ႈ Promise ယဝ်ႉတူဝ်ႈ (Settle)၊ ႁဝ်းတေၸႂ်ႉ Method ၸိူဝ်းၼႆႉတႃႇၸတ်းၵၢၼ်:

* **`.then()`**: ႁဵတ်းၵၢၼ် မိူဝ်ႈလႆႈ `resolve` (Success)။
* **`.catch()`**: ႁဵတ်းၵၢၼ် မိူဝ်ႈလႆႈ `reject` (Error)။

```javascript
myPromise
  .then((data) => {
    console.log("Success:", data);
  })
  .catch((err) => {
    console.log("Error:", err);
  });

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* Promise ၸွႆႈႁႂ်ႈႁဝ်းၸတ်းၵၢၼ် Async Code ႁႂ်ႈမိူၼ်တင်း Synchronous Code။
* ပေႃး Promise ၼိုင်ႈဢၼ် **Settle** (Resolved ႁိုဝ် Rejected) ယဝ်ႉ၊ သၢႆငၢႆမၼ်းတေ **ဢမ်ႇလႅၵ်ႈလၢႆႈ** လႆႈထႅင်ႈ။
* သၢႆငၢႆ **Rejected** လူဝ်ႇမီး `.catch()` တႃႇၸတ်းၵၢၼ်တႃႇသေႇ၊ သင်ဢမ်ႇၼၼ် Browser တေထႅင်ႇ Error "Uncaught in Promise" ၶႃႈ။

---