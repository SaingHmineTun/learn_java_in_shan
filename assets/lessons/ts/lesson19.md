### **Lesson 19: Function Declarations (Parameters & Return Types)**

ၼႂ်း TypeScript ၼႆႉ Function ပဵၼ်ႁူဝ်ၸႂ်ပိူင်လူင် ဢၼ်ၸွႆးႁႂ်ႈႁဝ်းၸႅၵ်ႇၶူတ်ႉ (Code) ပဵၼ်တွၼ်ႈ ပဵၼ်တွၼ်ႈ သေ ၸႂ်ႉၶိုၼ်းလႆႈငၢႆႈငၢႆႈၶႃႈ။ လွင်ႈပႅၵ်ႇပိူင်ႈတင်း JavaScript တႄႉၵေႃႈ ပဵၼ်ၵၢၼ်မၢႆ **Type** ဝႆႉ ႁႂ်ႈၼႄႇၸႂ်ဝႃႈ ၶေႃႈမုၼ်းဢၼ်သူင်ႇၶဝ်ႈ လႄႈ သူင်ႇဢွၵ်ႇ မႅၼ်ႈၸွမ်းၼင်ႇႁဝ်းၶႂ်ႈလႆႈၶႃႈ။

---

#### **1. Anatomy of a TypeScript Function**
မိူဝ်ႈႁဝ်းသၢင်ႈ Function ႁဝ်းလူဝ်ႇလႆႈမၢႆ Type ဝႆႉ 2 တီႈၶႃႈ:
1.  **Parameters:** ၶေႃႈမုၼ်းဢၼ်တေသူင်ႇၶဝ်ႈၵႂႃႇ (Input)။
2.  **Return Type:** ၶေႃႈမုၼ်းဢၼ်တေသူင်ႇဢွၵ်ႇမႃးၶိုၼ်း (Output)။



**တူဝ်ယၢင်ႇ (Example):**
```typescript
function add(a: number, b: number): number {
  return a + b;
}

console.log(add(10, 20)); // 30
```
* **`(a: number, b: number)`**: မၢႆထိုင်ဝႃႈ Parameter တင်းသွင်တူဝ် လူဝ်ႇလႆႈပဵၼ် "တူဝ်ၼပ်ႉ" ၵူၺ်း။
* **`: number`** (ၽၢႆႇလင်ဝူင်းလဵၵ်း): မၢႆထိုင်ဝႃႈ Function ၼႆႉ တေသူင်ႇၵႃႈၶၼ် (Return) ဢွၵ်ႇမႃးပဵၼ် "တူဝ်ၼပ်ႉ" ၶႃႈ။

---

#### **2. Function ဢၼ်ဢမ်ႇမီး Return (Void Type)**
ၵႆႉမီးလွင်ႈတၢင်းဢၼ် Function ႁဝ်း ၵူၺ်းတႅမ်ႈလိၵ်ႈဢွၵ်ႇၼိူဝ် Screen (console.log) သေ ဢမ်ႇမီးၵႃႈၶၼ်သင် တႃႇတေသူင်ႇၶိုၼ်းမႃး (No return value)။ ၼႂ်း TypeScript ႁဝ်းတေၸႂ်ႉ Type **`void`** ၶႃႈဢေႃႈ။

```typescript
function sayHello(name: string): void {
  console.log("မႂ်ႇသုင်ၶႃႈ, " + name);
  // ဢမ်ႇလူဝ်ႇမီး return statement
}
```

---

#### **3. ၵၢၼ်ၸႅတ်ႈထတ်း (Type Checking)**
တီႈလီမၼ်းတႄႉ TypeScript တေၸႅတ်ႈထတ်းပၼ် ႁႂ်ႈႁဝ်းတႅမ်ႈၶူတ်ႉ "ၼိမ်" ၵႂႃႇၵမ်းလဵဝ်ၶႃႈ:
* သင်ၸဝ်ႈၵဝ်ႇသူင်ႇ "လိၵ်ႈ (string)" ၶဝ်ႈၵႂႃႇၼႂ်း Parameter ဢၼ်မၢႆဝႆႉပဵၼ် "number" ၼၼ်ႉ TypeScript တေပၼ် Error ၵမ်းလဵဝ်။
* သင်ၸဝ်ႈၵဝ်ႇမၢႆ Return Type ပဵၼ် `number` သေတႃႉ သမ်ႉသူင်ႇ `string` ဢွၵ်ႇမႃးၸိုင် မၼ်းၵေႃႈတေပၼ် Error ၶႃႈ။



---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးမၢႆ Type ပၼ် Parameters ၼႂ်းဝူင်းလဵၵ်း `( )`။
- [ ] ႁူႉလၢႆးမၢႆ Return Type ဝႆႉၽၢႆႇလင်ဝူင်းလဵၵ်း `:`။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `void` ၸႂ်ႉမိူဝ်ႈ Function ဢမ်ႇမီးၵႃႈၶၼ်သူင်ႇၶိုၼ်း (No return)။
- [ ] ႁူႉဝႃႈ TypeScript တေၸႅတ်ႈထတ်းပၼ် ႁႂ်ႈ Input လႄႈ Output မႅၼ်ႈၸွမ်း Type။

---
