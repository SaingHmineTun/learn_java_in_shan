### **Lesson 57: Promises (Pending, Resolved, and Rejected states)**

တွၼ်ႈတႃႇတေၵႄႈလွင်ႈ "Callback Hell" ၼၼ်ႉ JavaScript ၸင်ႇသၢင်ႈ **Promise** ဢွၵ်ႇမႃးၶႃႈ။ Promise မၢႆထိုင် "ၵၢၼ်ၵိၼ်ၵႂၢမ်း" ဝႃႈ တေသူင်ႇၶေႃႈမုၼ်းမႃးပၼ် ၼႂ်းမိူဝ်းၼႃႈ (Future Value) ၶႃႈဢေႃႈ။

---

#### **1. Understanding the 3 States (သၢႆငၢႆ 3 ပိူင်)**
Promise ၼိုင်ႈဢၼ် မီးသၢႆငၢႆ ၸိူဝ်ႉၼႆၶႃႈ:
1.  **Pending (ထႃႉယူႇ):** တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ၊ ဢမ်ႇပႆႇႁူႉဝႃႈတေဢွင်ႇ ဢမ်ႇၼၼ် ၽိတ်းပိူင်။
2.  **Resolved / Fulfilled (ဢွင်ႇမႅၼ်ႈ):** ႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈလီ လႄႈ သူင်ႇၶေႃႈမုၼ်း (Data) မႃးယဝ်ႉ။
3.  **Rejected (ၽိတ်းပိူင်):** မီးလွင်ႈၶတ်းလၢတ်း (Error) သေ ဢမ်ႇၸၢင်ႈသူင်ႇၶေႃႈမုၼ်းမႃးလႆႈ။



---

#### **2. How to Create a Promise (လၢႆးသၢင်ႈ)**
ႁဝ်းၸႂ်ႉ `new Promise` သေ ႁပ်ႉဢဝ် Function သွင်တူဝ်: `resolve` (မိူဝ်ႈဢွင်ႇ) လႄႈ `reject` (မိူဝ်ႈၽိတ်း) ၶႃႈ။

```typescript
const myDataPromise = new Promise<string>((resolve, reject) => {
  const success = true;

  setTimeout(() => {
    if (success) {
      resolve("✅ Data retrieved from Muse Server!");
    } else {
      reject("❌ Connection failed!");
    }
  }, 2000);
});
```

---

#### **3. Consuming a Promise (လၢႆးဢဝ်ၵႂႃႇၸႂ်ႉ)**
ႁဝ်းၸႂ်ႉ `.then()` တႃႇႁပ်ႉၶေႃႈမုၼ်း မိူဝ်ႈမၼ်း **Resolved** လႄႈ `.catch()` တႃႇႁပ်ႉ Error မိူဝ်ႈမၼ်း **Rejected** ၶႃႈ။

```typescript
myDataPromise
  .then((data) => {
    console.log(data); // "✅ Data retrieved..."
  })
  .catch((error) => {
    console.error(error); // "❌ Connection failed!"
  })
  .finally(() => {
    console.log("Process finished."); // ႁဵတ်းၵၢၼ်တႃႇသေႇ
  });
```



---

#### **4. Why use Promises?**
* **Clean Code:** ဢမ်ႇလူဝ်ႇ "ငႅတ်း" (Nest) ၶူတ်ႉၶဝ်ႈၵႂႃႇတိၵ်းတိၵ်း မိူၼ် Callback ယဝ်ႉ။
* **Chaining:** ႁဝ်းၸၢင်ႈ "သိုပ်ႇ" Promise တေႃႇၵၼ်လႆႈငၢႆႈငၢႆႈ (ၼင်ႇ `.then().then().then()`)။
* **Better Error Handling:** ၸႂ်ႉ `.catch()` တူဝ်လဵဝ် တႃႇၸတ်းၵၢၼ် Error တင်းသဵၼ်ႈၼႂ်း Chain ၼၼ်ႉၶႃႈ။

---

#### **5. Summary Checklist**
- [ ] ပွင်ႇၸႂ်သၢႆငၢႆ 3 ပိူင်: **Pending**, **Resolved**, လႄႈ **Rejected**။
- [ ] ႁူႉလၢႆးသၢင်ႈ Promise လူၺ်ႈၵၢၼ်ၸႂ်ႉ `resolve` လႄႈ `reject`။
- [ ] ၸႂ်ႉ `.then()` တႃႇႁပ်ႉ Success Data လႄႈ `.catch()` တႃႇႁပ်ႉ Error။
- [ ] ႁူႉဝႃႈ `.finally()` တေႁဵတ်းၵၢၼ်တႃႇသေႇ ဝၢႆးသေ Promise ယဝ်ႉတူဝ်ႈ။

---