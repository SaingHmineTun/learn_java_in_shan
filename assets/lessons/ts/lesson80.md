### **Lesson 80: Conditional Types (Logic inside your Types)**

ၼႂ်း TypeScript, **Conditional Types** ႁဵတ်းႁႂ်ႈႁဝ်းတႅမ်ႈ "Logic" (If-Else) ၶဝ်ႈၵႂႃႇၼႂ်း **Type** ႁဝ်းလႆႈၶႃႈ။ မၼ်းၸွႆးႁႂ်ႈ Type ႁဝ်း "လိူၵ်ႈလႆႈ" (Choose) ၸွမ်းၼင်ႇ Type ဢၼ်သူင်ႇၶဝ်ႈၵႂႃႇၼၼ်ႉပဵၼ်သင်ၶႃႈဢေႃႈ။

---

#### **1. The Syntax (ပိူင်တႅမ်ႈ)**
မၼ်းၸႂ်ႉပိူင် **Ternary Operator** (`? :`) မိူၼ်ၼင်ႇၼႂ်း JavaScript ၶႃႈ:

$$T \text{ extends } U ? X : Y$$

* သင်ဝႃႈ **$T$** မၼ်းမႅၼ်ႈၸွမ်း (Assign) **$U$** လႆႈ ၸိုင် -> ဢဝ် Type **$X$**။
* သင်ဢမ်ႇမႅၼ်ႈ ၸိုင် -> ဢဝ် Type **$Y$**။



---

#### **2. Simple Example (တူဝ်ယၢင်ႇငၢႆႈငၢႆႈ)**
သမုၵ်ႉဝႃႈ ႁဝ်းၶႂ်ႈသၢင်ႈ Type ဢၼ်တေၸႅတ်းဝႃႈ ၶေႃႈမုၼ်းၼၼ်ႉ ပဵၼ် `string` ႁႃႉ?

```typescript
type CheckString<T> = T extends string ? "Yes, it is string" : "No, it is not";

type Result1 = CheckString<string>; // Type ပဵၼ် "Yes, it is string"
type Result2 = CheckString<number>; // Type ပဵၼ် "No, it is not"
```

---

#### **3. Real-world Use Case (ၵၢၼ်ၸႂ်ႉတေႉ)**
ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇ "Filter" ဢမ်ႇၼၼ် "Transform" Type ဢၼ်သုၵ်ႉယၢင်ႈၶႃႈ။ တူဝ်ယၢင်ႇ: သင်ႁဝ်းသူင်ႇ `string` ၶဝ်ႈၵႂႃႇ ႁႂ်ႈမၼ်း Return `string[]`၊ သင်သူင်ႇ `number` ၶဝ်ႈၵႂႃႇ ႁႂ်ႈမၼ်း Return `number[]` ၶႃႈ။

```typescript
type ToArray<T> = T extends any ? T[] : never;

type StringArray = ToArray<string>; // string[]
type NumberArray = ToArray<number>; // number[]
```



---

#### **4. Why use Conditional Types?**
* **Flexibility:** ႁဵတ်းႁႂ်ႈ Generics ႁဝ်း "လူင်ႉလႅၼ်း" (Smart) လိူဝ်သေၵဝ်ႇ။
* **Type Safety:** ၼႄႇၸႂ်ဝႃႈ Return Type ၶွင် Function တေမႅၼ်ႈၸွမ်း Parameter ဢၼ်သူင်ႇၶဝ်ႈၵႂႃႇတႅတ်ႈတေႃး။
* **Complex API:** ၸွႆးႁႂ်ႈႁဝ်းတႅမ်ႈ Type ပၼ် Library ဢၼ်ယႂ်ႇယႂ်ႇ (ၼင်ႇ Redux ဢမ်ႇၼၼ် Prisma) ႁႂ်ႈမၼ်းမႅၼ်ႈပိူင် ၵူႈသႅၼ်းၶႃႈ။

---

#### **5. Summary Checklist**
- [ ] ၸႂ်ႉ **`T extends U ? X : Y`** တႃႇသၢင်ႈ Logic ၼႂ်း Type။
- [ ] ပွင်ႇၸႂ်ဝႃႈ မၼ်းပဵၼ်ၵၢၼ်လိူၵ်ႈ Type ၸွမ်းၼင်ႇ "Condition"။
- [ ] ႁူႉဝႃႈ Conditional Types ၵႆႉၸႂ်ႉႁူမ်ႈၸွမ်း **Generics**။
- [ ] ၸႂ်ႉ **`never`** ၼႂ်းတွၼ်ႈ Else (`: never`) သင်ဝႃႈဢမ်ႇၶႂ်ႈပၼ်ၸႂ်ႉ Type တၢင်ႇမဵဝ်း။

---