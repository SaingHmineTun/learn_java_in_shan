### **Lesson 49: Generics (Creating flexible and reusable components)**

ၼႂ်း TypeScript ၼၼ်ႉ **Generics** ပဵၼ်ၶိူင်ႈၵျၢပ်ႈ (Tool) ဢၼ်မီး "Power" သုင်သုတ်းၶႃႈ။ မၼ်းၸွႆးႁႂ်ႈႁဝ်းသၢင်ႈ Function, Interface ဢမ်ႇၼၼ် Class ဢၼ်ႁဵတ်းၵၢၼ်လႆႈၸွမ်း **"ၵူႈ Type"**၊ ၵူၺ်းၵႃႈ ယင်းၵုမ်းထိင်း **Type Safety** ဝႆႉယူႇ (ဢမ်ႇမိူၼ်ၼင်ႇ `any`) ၶႃႈဢေႃႈ။

---

#### **1. Why Generics? (ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?)**

သမုၵ်ႉဝႃႈ ႁဝ်းၶႂ်ႈသၢင်ႈ Function ဢၼ်သူင်ႇ "Input" ဢွၵ်ႇမႃးၶိုၼ်းပဵၼ် "Output" ၸိုင်:

* **လၢႆးထမ်ႇမတႃႇ:** ႁဝ်းလူဝ်ႇတႅမ်ႈ Function တွၼ်ႈတႃႇ `string` ၼိုင်ႈဢၼ်၊ `number` ၼိုင်ႈဢၼ်။
* **ၸႂ်ႉ `any`:** ႁဝ်းတေႁၢႆလၢႆ "Type Checking" ၵႂႃႇၵမ်းလဵဝ်။
* **ၸႂ်ႉ Generics:** ႁဝ်းသၢင်ႈ "Type Variable" တႃႇႁပ်ႉဢဝ် Type ဢၼ်သူင်ႇၶဝ်ႈမႃး သေ မၢႆဝႆႉပၼ်ၵမ်းလဵဝ်ၶႃႈ။



---

#### **2. Generic Function Syntax**

ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း **`<T>`** (T မၢႆထိုင် Type) ဝႆႉၼႃႈ ဝူင်းလဵၵ်း Parameter ၶႃႈ။

```typescript
// T ပဵၼ် "Placeholder" တႃႇ Type ဢၼ်တေသူင်ႇၶဝ်ႈမႃး
function identity<T>(arg: T): T {
  return arg;
}

// လၢႆးႁွင်ႉၸႂ်ႉ (Explicit)
let output1 = identity<string>("Sai Mao"); // output1 ပဵၼ် string

// လၢႆးႁွင်ႉၸႂ်ႉ (Inferred - TypeScript ႁူႉႁင်းၵူၺ်း)
let output2 = identity(101); // output2 ပဵၼ် number
```

---

#### **3. Generics with Multiple Types**

ႁဝ်းယင်းၸၢင်ႈၸႂ်ႉ Type Variable လၢႆလၢႆတူဝ် ၸွမ်းၵၼ်လႆႈၶႃႈ (ၵႆႉၸႂ်ႉ T, U, V)။

```typescript
function merge<T, U>(objA: T, objB: U) {
  return { ...objA, ...objB };
}

const mergedObj = merge({ name: "Mao" }, { age: 25 });
console.log(mergedObj.name); // ✅ TypeScript ႁူႉဝႃႈမီး .name
```



---

#### **4. Summary Checklist**

- [ ] ႁူႉဝႃႈ `<T>` ပဵၼ် "Type Variable" ဢၼ်ႁပ်ႉ Type သင်ၵေႃႈလႆႈ။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Generics ၸွႆးႁႂ်ႈၶူတ်ႉ **Reusable** (ၸႂ်ႉၶိုၼ်းလႆႈ) လႄႈ **Type-Safe**။
- [ ] ႁူႉလၢႆးၸႂ်ႉ Generics ၼႂ်း Function ဢၼ်မီး Parameter လၢႆလၢႆမဵဝ်း။
- [ ] ပွင်ႇၸႂ်ဝႃႈ TypeScript ၸၢင်ႈ "Inference" (ႁူႉႁင်းၵူၺ်း) ဝႃႈ T ပဵၼ်သင် လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈ `<string>` ၵေႃႈလႆႈ။

---