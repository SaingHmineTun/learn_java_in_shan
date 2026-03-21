### **Lesson 24: Function Overloading (One name, multiple ways)**

ၼႂ်း TypeScript ၼႆႉ ၵႆႉမီးလွင်ႈတၢင်းဢၼ်ႁဝ်းၶႂ်ႈႁႂ်ႈ Function ၸိုဝ်ႈလဵဝ်ၵၼ် ႁဵတ်းၵၢၼ်လႆႈလၢႆလၢႆပိူင် ၸွမ်းၼင်ႇ **Parameter** ဢၼ်သူင်ႇမႃးၼၼ်ႉၶႃႈ။ ဢၼ်ၼႆႉႁဝ်းႁွင်ႉဝႃႈ **Function Overloading** ၶႃႈဢေႃႈ။

---

#### **1. Function Overloading ပဵၼ်သင်?**
မၼ်းပဵၼ်ၵၢၼ်မၢႆ "ပိူင် (Signature)" ဝႆႉလၢႆလၢႆဢၼ် တွၼ်ႈတႃႇ Function တူဝ်လဵဝ်ၵၼ်။ မၼ်းၸွႆးႁႂ်ႈ TypeScript ႁူႉဝႃႈ သင်သူင်ႇ `string` မႃး တေသူင်ႇ `string` ဢွၵ်ႇ၊ သင်သူင်ႇ `number` မႃး တေသူင်ႇ `number` ဢွၵ်ႇ ၼႆၶႃႈ။

**ပိူင်တႅမ်ႈ (Syntax):**
ႁဝ်းတေတႅမ်ႈ Signature ဝႆႉဢွၼ်တၢင်း (ဢမ်ႇမီး `{ }`) သေ ၸင်ႇမႃးတႅမ်ႈ Implementation (တွၼ်ႈဢၼ်မီး `{ }`) ဝႆႉတၢင်းလင်ၶႃႈ။

```typescript
// 1. Overload Signatures (မၢႆပိူင်ဝႆႉ)
function reverse(value: string): string;
function reverse(value: number[]): number[];

// 2. Implementation (တွၼ်ႈႁဵတ်းၵၢၼ်တေႉတေႉ)
function reverse(value: any): any {
  if (typeof value === "string") {
    return value.split("").reverse().join("");
  } else {
    return value.reverse();
  }
}

console.log(reverse("MUSE"));       // "ESUM"
console.log(reverse([1, 2, 3, 4])); // [4, 3, 2, 1]
```



---

#### **2. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?**
သင်ဝႃႈႁဝ်းၸႂ်ႉ Union Type ၼင်ႇ `(value: string | number[])` လၢႆလၢႆၸိုင် TypeScript တေဢမ်ႇၼႄႇၸႂ်ဝႃႈ ၽူၼ်မၼ်း (Return) တေဢွၵ်ႇမႃးပဵၼ်သင်တေႉတေႉၶႃႈ။

* **Strict Safety:** မိူဝ်ႈႁဝ်းၸႂ်ႉ Overloading၊ TypeScript တေႁူႉၵမ်းလဵဝ်ဝႃႈ သင် Input ပဵၼ် String၊ Output ၵေႃႈလူဝ်ႇပဵၼ် String ၵူၺ်း ၼႆၶႃႈ။
* **Better Autocomplete:** မိူဝ်ႈလုၵ်ႈႁဵၼ်းသူင်ႇ Parameter ၶဝ်ႈမႃး၊ VS Code တေၼႄပၼ်တၢင်းလိူၵ်ႈ (Options) ၸွမ်းၼင်ႇ Signature ဢၼ်ႁဝ်းမၢႆဝႆႉၼၼ်ႉၶႃႈ။

---

#### **3. Summary Checklist**
- [ ] ႁူႉလၢႆးတႅမ်ႈ Overload Signatures တႃႇမၢႆတၢင်းလိူၵ်ႈလၢႆလၢႆမဵဝ်း။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Implementation Function တူဝ်လင်သုတ်းၼၼ်ႉ လူဝ်ႇလႆႈႁပ်ႉလႆႈၵူႈ Type (ၸႂ်ႉ Union ဢမ်ႇၼၼ် any)။
- [ ] ႁူႉဝႃႈ Overloading ၸွႆးႁႂ်ႈ Function တူဝ်လဵဝ်ၵၼ် "မီးပၺ်ႇၺႃႇ" လိူဝ်သေၵဝ်ႇ။
- [ ] ၸႂ်ႉ Overloading တႃႇႁဵတ်းႁႂ်ႈ Return Type တႅတ်ႈတေႃးၸွမ်း Parameter။

---