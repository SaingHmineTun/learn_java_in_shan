### **Lesson 58: Async/Await (Writing Async code like Synchronous)**

တင်းဝႃႈ Promises ၸွႆးႁဝ်းၵႄႈလွင်ႈ Callback Hell ယဝ်ႉၵေႃႈယဝ်ႉ၊ ၵူၺ်းၵႃႈ ၵၢၼ်ၸႂ်ႉ `.then().then()` ၼမ်ၼႃႇၼၼ်ႉ ယင်းႁဵတ်းႁႂ်ႈၶူတ်ႉႁဝ်း "ဢၢၼ်ႇယၢပ်ႇ" ယူႇၶႃႈ။ **Async/Await** ပဵၼ် "Syntactic Sugar" ဢၼ်သၢင်ႈဝႆႉၼိူဝ် Promises တႃႇႁႂ်ႈႁဝ်းတႅမ်ႈၶူတ်ႉ Asynchronous ႁႂ်ႈမၼ်းတူၺ်းမိူၼ် "ၶူတ်ႉထမ်ႇမတႃႇ" (Synchronous) ၶႃႈဢေႃႈ။

---

#### **1. The `async` Keyword**
မိူဝ်ႈႁဝ်းသႂ်ႇ `async` ဝႆႉၼႃႈ Function ၸိုင်:
* Function ၼၼ်ႉ တေသူင်ႇ (Return) **Promise** ဢွၵ်ႇမႃးတႃႇသေႇ။
* မၼ်းတေပၼ်ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း `await` ဝႆႉၼႂ်း Function ၼၼ်ႉလႆႈၶႃႈ။

```typescript
async function greet() {
  return "Hello Muse!";
}

// greet() တေသူင်ႇ Promise<string> ဢွၵ်ႇမႃး
greet().then(res => console.log(res));
```

---

#### **2. The `await` Keyword**
`await` မၢႆထိုင် "ႁႂ်ႈၵိုတ်းထႃႉယူႇတီႈၼႆႉ" တေႃႇ Promise ၼၼ်ႉတေ **Resolved** (ႁဵတ်းၵၢၼ်ယဝ်ႉ) ၸင်ႇတေလႅၼ်ႈၵႂႃႇ Line တေႃႇၵႂႃႇၶႃႈ။

```typescript
// လၢႆးတႅမ်ႈလူၺ်ႈ Async/Await
async function showData() {
  console.log("Fetching...");

  // ၵိုတ်းထႃႉယူႇတီႈၼႆႉ 2 ၸႅၵ်ႉၵၼ်ႇ
  const data = await myDataPromise; 

  console.log(data); // "✅ Data retrieved..."
  console.log("Done!");
}

showData();
```



---

#### **3. Why use Async/Await?**
* **Readability:** ၶူတ်ႉမၼ်းလႅၼ်ႈ "ၼိူဝ်လူင်းတႂ်ႈ" တႅတ်ႈတေႃး၊ ဢၢၼ်ႇငၢႆႈလိူဝ်သေ `.then()` ၼမ်ၶႃႈ။
* **Debugging:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈသႂ်ႇ **Breakpoint** တီႈ Line ဢၼ် `await` ဝႆႉၼၼ်ႉသေ ၸႅတ်းထတ်း Variable လႆႈငၢႆႈငၢႆႈၶႃႈ။
* **Structure:** ႁဵတ်းႁႂ်ႈ Logic ဢၼ်သုၵ်ႉယၢင်ႈ တူၺ်းသႅၼ်ႈသႂ်လိူဝ်သေၵဝ်ႇ။

---

#### **4. Comparison (ပိူင်တႅၵ်ႈၼိူင်း)**

| Promise (.then) | Async/Await |
| :--- | :--- |
| ၸႂ်ႉ `.then()` တႃႇသိုပ်ႇ Chain | ၸႂ်ႉ `await` တႃႇၵိုတ်းထႃႉ |
| ၸႂ်ႉ `.catch()` တႃႇႁပ်ႉ Error | ၸႂ်ႉ `try...catch` တႃႇႁပ်ႉ Error |
| ၶူတ်ႉၸၢင်ႈယုင်ႈၼႂ်း Nested chain | ၶူတ်ႉသႅၼ်ႈသႂ် မိူၼ် Synchronous |



---

#### **5. Summary Checklist**
- [ ] ႁူႉလၢႆးသႂ်ႇ `async` ဝႆႉၼႃႈ Function တႃႇႁပ်ႉ Promise။
- [ ] ၸႂ်ႉ `await` တႃႇၵိုတ်းထႃႉ Result တီႈ Promise (ၸႂ်ႉလႆႈၼႂ်း async function ၵူၺ်း)။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `await` တေဢမ်ႇ "Block" Thread တင်းသဵၼ်ႈ (မၼ်းၵိုတ်းၵူၺ်းၼႂ်း function ၼၼ်ႉ)။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇပွင်ႇၸႂ်ဝႃႈ `await` လူဝ်ႇလႆႈၸႂ်ႉၸွမ်း Promise တႃႇသေႇ။

---
