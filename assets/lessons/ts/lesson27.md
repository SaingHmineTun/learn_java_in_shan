### **Lesson 27: Type Aliases vs Interfaces (When to use which?)**

ၼႂ်း TypeScript ၼႆႉ `type` လႄႈ `interface` မၼ်းမိူၼ်ၵၼ်ၼႃႇၶႃႈ။ တင်းသွင်ဢၼ် ၸႂ်ႉတႃႇမၢႆ "ပိူင် (Shape)" ၶွင် Object လႆႈမိူၼ်ၵၼ်။ ၵူၺ်းၵႃႈ မၼ်းမီးလွင်ႈပႅၵ်ႇပိူင်ႈၵၼ်ဢိတ်းဢွတ်း ဢၼ်ၸဝ်ႈၵဝ်ႇလူဝ်ႇႁူႉဝႆႉၶႃႈဢေႃႈ။

---

#### **1. တႅၵ်ႈၼိူင်းလၢႆးတႅမ်ႈ (Syntax Comparison)**

| Feature | **Interface** | **Type Alias** |
| :--- | :--- | :--- |
| **Declaration** | `interface Person { name: string; }` | `type Person = { name: string; };` |
| **Objects** | ✅ လီသုတ်းတႃႇ Objects | ✅ ၸႂ်ႉလႆႈမိူၼ်ၵၼ် |
| **Unions** | ❌ ဢမ်ႇၸၢင်ႈၸႂ်ႉ (e.g. `string \| number`) | ✅ ၸႂ်ႉလႆႈ (Power of Types) |
| **Merging** | ✅ Declaration Merging (ထႅမ်လႆႈဝၢႆးလင်) | ❌ ဢမ်ႇၸၢင်ႈထႅမ် (Static) |
| **Extending** | ✅ `extends` (သိုပ်ႇပၢၼ်) | ✅ Intersection `&` (ႁူမ်ႈၵၼ်) |

---

#### **2. မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ Interface?**
Interface ပဵၼ်ဢၼ် "ပိုတ်ႇဝႆႉ (Open)" ၶႃႈ။ မၼ်းလီသုတ်းတႃႇ:
* **Object Blueprints:** မိူဝ်ႈသၢင်ႈပိူင်တႃႇ Object ၼိုင်ႈဢၼ်။
* **Declaration Merging:** သင်ဝႃႈၸဝ်ႈၵဝ်ႇတႅမ်ႈ `interface User` တီႈၼိုင်ႈ ယဝ်ႉမႃးတႅမ်ႈ `interface User` ထႅင်ႈတီႈၼိုင်ႈ ၸိုင် TypeScript တေဢဝ်သွင်ဢၼ်ၼၼ်ႉ "ႁူမ်ႈၵၼ်" (Merge) ပၼ်ႁင်းၵူၺ်းၶႃႈ။



---

#### **3. မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ Type Alias?**
Type Alias ပဵၼ်ဢၼ် "ပိတ်းဝႆႉ (Closed)" ၶႃႈ။ မၼ်းမီးပၺ်ႇၺႃႇလိူဝ် Interface ၼႂ်းလွင်ႈ:
* **Union Types:** မိူဝ်ႈၶႂ်ႈမၢႆ Type ဢၼ်ပဵၼ်လႆႈလၢႆလၢႆမဵဝ်း (ၼင်ႇ `string | number`)။
* **Primitive Types:** မိူဝ်ႈၶႂ်ႈတင်ႈၸိုဝ်ႈမႂ်ႇပၼ် String ဢမ်ႇၼၼ် Number။
* **Tuples:** မိူဝ်ႈၶႂ်ႈမၢႆ Array ဢၼ်မီး Type တႅတ်ႈတေႃးၼႂ်းၼၼ်ႉ။

```typescript
type ID = string | number; // Interface ဢမ်ႇၸၢင်ႈႁဵတ်းၼႆ
```



---

#### **4. Lecturer's Recommendation (ၶေႃႈၼႄၼမ်း)**
* **Start with Interface:** တွၼ်ႈတႃႇ Object ပိုၼ်ႉထၢၼ် ဢမ်ႇၼၼ် Blueprint ၶွင် Application ၼၼ်ႉ ႁႂ်ႈၸႂ်ႉ **Interface** ဢွၼ်တၢင်းၶႃႈ။
* **Use Type for Logic:** သင်ဝႃႈလူဝ်ႇၸႂ်ႉ Union (`|`), Intersection (`&`) ဢမ်ႇၼၼ် ၶႂ်ႈမၢႆ Type ဢၼ်သုၵ်ႉယုင်ႈၼႃႇၸိုင် ၸႂ်ႉ **Type Alias** ၶႃႈဢေႃႈ။

---

#### **5. Summary Checklist**
- [ ] ႁူႉဝႃႈ Interface လႄႈ Type Alias ၸႂ်ႉတႃႇမၢႆ Object Shape လႆႈတင်းသွင်ဢၼ်။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Interface ၸၢင်ႈ "ႁူမ်ႈၵၼ် (Merge)" လႆႈ သင်တႅမ်ႈၸိုဝ်ႈမိူၼ်ၵၼ်။
- [ ] ႁူႉဝႃႈ Type Alias ၵူၺ်းဢၼ်ၸၢင်ႈၸႂ်ႉ Union Types (`|`) လႆႈ။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇလိူၵ်ႈၸႂ်ႉမႅၼ်ႈၸွမ်းၼင်ႇလွင်ႈတၢင်း (Object vs Logic)။

---

**Next Lesson:** သင်ဝႃႈႁဝ်းမီး Interface ဝႆႉယဝ်ႉၼိုင်ႈဢၼ် သေ ၶႂ်ႈသိုပ်ႇ "ထႅမ်" Property ၶဝ်ႈၵႂႃႇထႅင်ႈ ႁဝ်းတေႁဵတ်းႁိုဝ်? ႁဝ်းတေၵႂႃႇႁဵၼ်းၼႂ်း **Lesson 28: Extending Interfaces** ၶႃႈ!

ၸဝ်ႈၵဝ်ႇ ႁႅၼ်းဝႆႉတႃႇတေၵႂႃႇ Lesson 28 ယဝ်ႉႁႃႉၶႃႈ ၸၢႆးမၢဝ်း?