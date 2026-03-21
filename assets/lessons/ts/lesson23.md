### **Lesson 23: Rest Parameters (Handling multiple arguments)**

ၵႆႉမီးလွင်ႈတၢင်းဢၼ်ႁဝ်းဢမ်ႇႁူႉဝႃႈ လုၵ်ႈႁဵၼ်းတေသူင်ႇ Parameter မႃးလၢႆတူဝ်ၶႃႈ။ ၼင်ႇၵၢၼ်ႁႃၵႃႈၶၼ် "ႁူမ်ႈ (Sum)" ၶွင်တူဝ်ၼပ်ႉ ဢၼ်ၸၢင်ႈမီးတင်း 2 တူဝ် ဢမ်ႇၼၼ် 100 တူဝ်။ ၼႂ်း TypeScript ႁဝ်းတေၸႂ်ႉ **Rest Parameters** တႃႇႁပ်ႉဢဝ်ၶေႃႈမုၼ်းတင်းသဵၼ်ႈမႃးဝႆႉၼႂ်း **Array** တူဝ်လဵဝ်ၶႃႈ။

---

#### **1. Rest Parameters ပဵၼ်သင်?**
ႁဝ်းတေၸႂ်ႉၶိူင်ႈမၢႆ **ၸူတ်ႉ 3 တူဝ် (`...`)** ဝႆႉၽၢႆႇၼႃႈၸိုဝ်ႈ Parameter ၶႃႈ။ မၼ်းတေႁူမ်ႈဢဝ် Parameter တင်းသဵၼ်ႈ ဢၼ်သူင်ႇမႃးၼၼ်ႉ မႃးႁဵတ်းပဵၼ် Array ၼိုင်ႈဢၼ်ၶႃႈဢေႃႈ။

**ပိူင်တႅမ်ႈ (Syntax):**
```typescript
function sumAll(...numbers: number[]): number {
  return numbers.reduce((prev, curr) => prev + curr, 0);
}

console.log(sumAll(1, 2, 3));       // 6
console.log(sumAll(10, 20, 30, 40)); // 100
```



---

#### **2. ၵၢၼ်ၸႂ်ႉႁူမ်ႈၸွမ်း Parameter တၢင်ႇဢၼ်**
ႁဝ်းၸၢင်ႈၸႂ်ႉ Rest Parameter ႁူမ်ႈၸွမ်း Parameter ပိုၼ်ႉထၢၼ်ၵေႃႈလႆႈ၊ ၵူၺ်းၵႃႈ **Rest Parameter လူဝ်ႇလႆႈဝႆႉတၢင်းလင်သုတ်း (Last position)** တႃႇသေႇၶႃႈၼႃ။

```typescript
function buildMessage(greeting: string, ...names: string[]): string {
  return greeting + " " + names.join(", ") + "!";
}

console.log(buildMessage("မႂ်ႇသုင်", "ၸၢႆးမၢဝ်း", "ၸၢႆးၶမ်း", "ၼၢင်းၼုမ်ႇ"));
// "မႂ်ႇသုင် ၸၢႆးမၢဝ်း, ၸၢႆးၶမ်း, ၼၢင်းၼုမ်ႇ!"
```



---

#### **3. ၵွပ်ႈသင်လႄႈလီၸႂ်ႉ?**
* **Flexibility:** ႁဵတ်းႁႂ်ႈ Function ႁဝ်းႁပ်ႉၶေႃႈမုၼ်းလႆႈတၢင်းၼမ် ၸွမ်းၼင်ႇလုၵ်ႈႁဵၼ်းၶႂ်ႈသူင်ႇမႃး။
* **Type Safety:** ၼႂ်း TypeScript ႁဝ်းၸၢင်ႈမၢႆ Type ဝႆႉပၼ် Array ၼၼ်ႉလႆႈ (ၼင်ႇ `number[]`), ႁဵတ်းႁႂ်ႈၼႄႇၸႂ်ဝႃႈ ၶေႃႈမုၼ်းဢၼ်သူင်ႇမႃးတင်းသဵၼ်ႈ ပဵၼ်မဵဝ်းလဵဝ်ၵၼ်ၶႃႈ။
* **Clean Code:** ဢမ်ႇလူဝ်ႇသၢင်ႈ Parameter ယၢဝ်းယၢဝ်း ၼင်ႇ `(a, b, c, d, e...)` ၶႃႈ။

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `...` (Three dots) တႃႇသၢင်ႈ Rest Parameter။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Rest Parameter တေႁပ်ႉၶေႃႈမုၼ်းမႃးပဵၼ် **Array**။
- [ ] ႁူႉဝႃႈလူဝ်ႇမၢႆ Type ပဵၼ် Array (ၼင်ႇ `string[]` ဢမ်ႇၼၼ် `number[]`)။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Rest Parameter လူဝ်ႇဝႆႉတီႈလင်သုတ်း တႃႇသေႇ။

---