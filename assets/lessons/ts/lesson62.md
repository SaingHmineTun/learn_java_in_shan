### **Lesson 62: Advanced: AbortController and Canceling Async tasks**

ၼႂ်းလွင်ႈတႅမ်ႈ App တေႉတေႉၼၼ်ႉ မၢင်ပွၵ်ႈႁဝ်းလူဝ်ႇ "ၵိုတ်း" (Cancel) ၵၢၼ်ႁဵတ်းၵၢၼ် Asynchronous ၶႃႈ။ တူဝ်ယၢင်ႇ: မိူဝ်ႈ User ၼဵၵ်း Search သေ သမ်ႉလႅၵ်ႈၸႂ် ၼဵၵ်းပႅတ်ႈ (Cancel) ဢမ်ႇၼၼ် ၶၢႆႉၼႃႈ Page ၵႂႃႇတီႈတၢင်ႇဢၼ် ၼႂ်းမိူဝ်ႈ API တိုၵ်ႉလူတ်ႇယူႇၼၼ်ႉၶႃႈ။ တွၼ်ႈတႃႇႁဵတ်းၼႆလႆႈ ႁဝ်းၸႂ်ႉ **`AbortController`** ၶႃႈဢေႃႈ။

---

#### **1. What is AbortController?**
မၼ်းပဵၼ် JavaScript Object ဢၼ်ၸွႆးႁႂ်ႈႁဝ်း "သူင်ႇသႅၼ်းယၢၼ်ႇ" (Signal) ၵႂႃႇတီႈ Async Task (ၼင်ႇ `fetch`) တႃႇတေသင်ႇႁႂ်ႈမၼ်း **"ၵိုတ်း"** ၵမ်းလဵဝ်ၶႃႈ။

* **`controller.signal`**: ပဵၼ်တူဝ်ဢၼ်ႁဝ်းသူင်ႇၶဝ်ႈၵႂႃႇၼႂ်း `fetch`။
* **`controller.abort()`**: ပဵၼ် Method ဢၼ်ႁဝ်းႁွင်ႉၸႂ်ႉ မိူဝ်ႈၶႂ်ႈၵိုတ်း Task ၼၼ်ႉၶႃႈ။

---

#### **2. Implementation (လၢႆးတႅမ်ႈ)**

```typescript
async function downloadData() {
  // 1. သၢင်ႈ Controller မႂ်ႇ
  const controller = new AbortController();
  const signal = controller.signal;

  // သမုၵ်ႉဝႃႈ ႁဝ်းၶႂ်ႈၵိုတ်းမၼ်း ဝၢႆးသေ 2 ၸႅၵ်ႉၵၼ်ႇ
  setTimeout(() => controller.abort(), 2000);

  try {
    console.log("Downloading...");
    // 2. သူင်ႇ signal ၶဝ်ႈၵႂႃႇၼႂ်း options ၶွင် fetch
    const response = await fetch("https://api.saimao.com/bigfile", { signal });
    const data = await response.json();
    console.log(data);
  } catch (err: any) {
    // 3. ၸႅတ်ႈထတ်းဝႃႈ မၼ်းပဵၼ် Error ယွၼ်ႉၵၢၼ် "Abort" ႁႃႉ?
    if (err.name === "AbortError") {
      console.log("❌ Request was canceled by the user.");
    } else {
      console.log("❌ An actual error occurred:", err);
    }
  }
}
```



---

#### **3. Why use AbortController?**
* **Save Resources:** ႁႄႉၵႅတ်ႇလွင်ႈၸႂ်ႉ Internet လႄႈ Memory ပူၼ်းတီႈ မိူဝ်ႈၶေႃႈမုၼ်းၼၼ်ႉ ဢမ်ႇလူဝ်ႇၸႂ်ႉယဝ်ႉ။
* **Avoid Race Conditions:** မိူဝ်ႈ User ၼဵၵ်း Search ၶိူဝ်းၶိူဝ်း၊ ႁဝ်းၸၢင်ႈၵိုတ်း Request ဢၼ်ၵဝ်ႇ သေ ဢဝ်ၵူၺ်းဢၼ်မႂ်ႇသုတ်းၶႃႈ။
* **User Control:** ပၼ်သုၼ်ႇ User တႃႇတေၵုမ်းထိင်း App ႁႂ်ႈၽႂ်းလႅတ်းလိူဝ်သေၵဝ်ႇ။

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးသၢင်ႈ `new AbortController()`.
- [ ] သူင်ႇ `controller.signal` ၶဝ်ႈၵႂႃႇၼႂ်း `fetch` (ဢမ်ႇၼၼ် Library တၢင်ႇဢၼ်ၼင်ႇ Axios)။
- [ ] ၸႂ်ႉ `controller.abort()` တႃႇၵိုတ်း Task ၵမ်းလဵဝ်။
- [ ] ၸတ်းၵၢၼ် **`AbortError`** ၼႂ်း catch block ႁႂ်ႈတႅတ်ႈတေႃး။



---