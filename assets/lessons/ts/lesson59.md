### **Lesson 59: Error Handling in Async (Try/Catch with Await)**

မိူဝ်ႈႁဝ်းၸႂ်ႉ `await` ၼၼ်ႉ၊ သင်ဝႃႈ Promise ၼၼ်ႉမၼ်း **Rejected** (မီးလွင်ႈၽိတ်းပိူင်) ၸိုင်၊ မၼ်းတေ "Throw" Error ဢွၵ်ႇမႃးၵမ်းလဵဝ်ၶႃႈ။ သင်ႁဝ်းဢမ်ႇၸတ်းၵၢၼ်ဝႆႉ၊ App ႁဝ်းၸၢင်ႈ Crash လႆႈၶႃႈဢေႃႈ။ လၢႆးဢၼ်လီသုတ်းတွၼ်ႈတႃႇ Async/Await တႄႉ ပဵၼ်ၵၢၼ်ၸႂ်ႉ **Try...Catch** ၶႃႈ။

---

#### **1. Why use Try/Catch?**
ၼႂ်း Lesson 57 ႁဝ်းၸႂ်ႉ `.catch()` တႃႇ Promises။ ၵူၺ်းၵႃႈ ၼႂ်း `async` function, ႁဝ်းၸၢင်ႈၸႂ်ႉ **Try...Catch** ဢၼ်တူၺ်းမိူၼ်ၶူတ်ႉ Synchronous ထမ်ႇမတႃႇ၊ ႁဵတ်းႁႂ်ႈႁဝ်းၸတ်းၵၢၼ် Error လႆႈသႅၼ်ႈသႂ်လိူဝ်သေၵဝ်ႇၶႃႈ။

```typescript
async function fetchUserData() {
  try {
    console.log("Loading...");
    // သင် Promise ၼႆႉ Rejected, မၼ်းတေလႅၼ်ႈၵႂႃႇတီႈ catch block ၵမ်းလဵဝ်
    const response = await fetch("https://api.saimao.com/user"); 
    const data = await response.json();
    console.log(data);
  } 
  catch (error) {
    // ၸတ်းၵၢၼ် Error တီႈၼႆႉ
    console.error("❌ Failed to load user:", error);
  } 
  finally {
    // ၵိုတ်း Loading Spinner ဢမ်ႇၼၼ် Cleanup ၶေႃႈမုၼ်း
    console.log("Request finished.");
  }
}
```



---

#### **2. Handling Multiple Awaits**
ၽွၼ်းလီၶွင် Try/Catch ပဵၼ်ၵၢၼ် "ႁူမ်ႈ" ၸတ်းၵၢၼ် Error တီႈလဵဝ်ၵၼ်ၶႃႈ။ ဢမ်ႇဝႃႈ `await` တူဝ်လႂ်ၽိတ်းၵေႃႈယဝ်ႉ၊ မၼ်းတေမႃးတီႈ `catch` တူဝ်လဵဝ်ၵၼ်ၶႃႈဢေႃႈ။

```typescript
async function processOrder() {
  try {
    const item = await getItem();    // သင်ၽိတ်းတီႈၼႆႉ...
    const price = await getPrice();  // ...ဢမ်ႇၼၼ် တီႈၼႆႉ...
    await shipOrder(item, price);    // ...ၵေႃႈတေမႃးတီႈ catch ၼင်ႇၵၼ်ၶႃႈ
  } catch (err) {
    console.log("Order failed!");
  }
}
```

---

#### **3. Custom Error Logic**
ၸဝ်ႈၵဝ်ႇယင်းၸၢင်ႈၸႅတ်းထတ်း Type ၶွင် Error ၼႂ်း catch block (မိူၼ် Lesson 45) တႃႇၼႄ Warning ဢၼ်ပႅၵ်ႇပိူင်ႈၵၼ်လႆႈၶႃႈ။

```typescript
catch (error) {
  if (error instanceof Error) {
    console.log("Message: " + error.message);
  }
}
```



---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးႁူမ်ႈ `await` ဝႆႉၼႂ်း `try` block တႃႇႁႄႉၵႅတ်ႇ Error။
- [ ] ၸႂ်ႉ `catch` တႃႇၸတ်းၵၢၼ်လွင်ႈၽိတ်းပိူင် (Rejected Promise)။
- [ ] ၸႂ်ႉ `finally` တႃႇႁဵတ်းၵၢၼ်တွၼ်ႈလင်သုတ်း (ၼင်ႇ ၵိုတ်း Loading)။
- [ ] ပွင်ႇၸႂ်ဝႃႈ သင်ဢမ်ႇၸႂ်ႉ try/catch ၸွမ်း await, Error ၼၼ်ႉတေ "Bubbling" ၶိုၼ်ႈၵႂႃႇတီႈ Function ဢၼ်ႁွင်ႉမၼ်းၼၼ်ႉၶႃႈ။

---