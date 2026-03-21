### **Lesson 8: Type Inference (Letting TypeScript do the work)**

ၼႂ်း Lesson 7 ၼၼ်ႉ ႁဝ်းလႆႈႁၼ်ဝႃႈ ႁဝ်းလူဝ်ႇတႅမ်ႈ `:` တႃႇမၢႆ Type ဝႆႉ။ ၵူၺ်းၵႃႈ ၼႂ်း TypeScript တႄႉ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `:` ဝႆႉၵူႈတီႈၵေႃႈလႆႈၶႃႈ။ မၼ်းမီးပၺ်ႇၺႃႇ ဢၼ်တေၸၢင်ႈ **"လၢမ်း (Infer)"** ႁူႉပၼ်ႁင်းၵူၺ်းဝႃႈ ဝေႇရီႇယေႇပူဝ်ႇ (Variable) ၼၼ်ႉ ပဵၼ် Type သင်ၶႃႈဢေႃႈ။

---

#### **1. Type Inference ပဵၼ်သင်?**
မိူဝ်ႈၸဝ်ႈၵဝ်ႇသၢင်ႈ Variable သေ သႂ်ႇၵႃႈၶၼ် (Value) ပၼ်မၼ်းၵမ်းလဵဝ်ၼၼ်ႉ TypeScript တေမၢႆဝႆႉပၼ်ဝႃႈ Variable ၼၼ်ႉ ပဵၼ် Type ၸိူဝ်ႉၼင်ႇၵႃႈၶၼ်ဢၼ်သႂ်ႇပၼ်ၼၼ်ႉၶႃႈ။

**တူဝ်ယၢင်ႇ (Example):**
```typescript
let city = "Muse"; 
// TypeScript ႁူႉပၼ်ၵမ်းလဵဝ်ဝႃႈ city ပဵၼ် 'string' ၶႃႈ။

let population = 100000;
// TypeScript ႁူႉပၼ်ၵမ်းလဵဝ်ဝႃႈ population ပဵၼ် 'number' ၶႃႈ။
```



---

#### **2. ၵၢၼ်ၵႅတ်ႇၶႄၵေႃႈ တေႃႉတႄႉမီးယူႇ (Safety stays)**
သင်ဝႃႈႁဝ်းဢမ်ႇတႅမ်ႈ Type ဝႆႉသေတႃႉ၊ TypeScript တေၵႅတ်ႇၶႄပၼ်ယူႇၵူႈၶၢဝ်းၶႃႈ။ သင်ဝႃႈႁဝ်းၸမ်းလႅၵ်ႈၵႃႈၶၼ်မၼ်းပဵၼ်မဵဝ်းတၢင်ႇဢၼ်ၸိုင် မၼ်းတေပၼ် Error ၵမ်းလဵဝ်ၶႃႈ။

```typescript
let score = 100; // Inferred as number

score = "Perfect"; 
// ❌ Error: Type 'string' is not assignable to type 'number'.
```

---

#### **3. မိူဝ်ႈလႂ်လူဝ်ႇတႅမ်ႈ Type (Annotation)?**
သင်ဝႃႈ TypeScript လၢမ်းႁူႉပၼ်လႆႈယူႇၼႆ ႁဝ်းလူဝ်ႇတႅမ်ႈ `:` ဝႆႉမိူဝ်ႈလႂ်လႃႆႉ?

* **သၢင်ႈဝႆႉလၢႆလၢႆ (Declaration only):** မိူဝ်ႈႁဝ်းသၢင်ႈ Variable ဝႆႉသေ ဢမ်ႇပႆႇသႂ်ႇၵႃႈၶၼ်ပၼ်မၼ်းၵမ်းလဵဝ်။
  ```typescript
  let studentName: string; // လူဝ်ႇမၢႆဝႆႉ ဢမ်ႇၼၼ် TypeScript တေဢမ်ႇႁူႉ။
  ```
* **ႁႂ်ႈမၼ်းၸႅတ်ႈ (Strictness):** မိူဝ်ႈႁဝ်းၶႂ်ႈႁႂ်ႈ TypeScript ၸႅတ်ႈထတ်းပၼ် ႁႂ်ႈၼႄႇၸႂ်ဝႃႈ ၶေႃႈမုၼ်းတေဢမ်ႇၽိတ်းမဵဝ်း။

---

#### **4. Summary Checklist**
- [ ] ႁူႉဝႃႈ TypeScript ၸၢင်ႈလၢမ်း Type (Infer) လႆႈႁင်းၵူၺ်း။
- [ ] ပွင်ႇၸႂ်ဝႃႈ သင်သႂ်ႇၵႃႈၶၼ်ပၼ်ၵမ်းလဵဝ် ဢမ်ႇလူဝ်ႇတႅမ်ႈ `:` ກေႃႈလႆႈ။
- [ ] ႁူႉဝႃႈ လွင်ႈၵႅတ်ႇၶႄ (Type Safety) တေႃႉတႄႉမီးယူႇ ၸိူဝ်ႉၼင်ႇၵဝ်ႇ။

---