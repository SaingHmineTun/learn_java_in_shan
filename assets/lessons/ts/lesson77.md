### **Lesson 77: Decorators (Adding 'Meta-data' to Classes)**

**Decorators** ပဵၼ် "Function" ဝိသဵတ်ႇ ဢၼ်ႁဝ်းဢဝ်ၵႂႃႇ "သုပ်ႇ" (Attach) ဝႆႉၼႃႈ Class, Method, ဢမ်ႇၼၼ် Property ၶႃႈ။ မၼ်းပဵၼ်ၵၢၼ်ထႅမ် "ပၺ်ႇၺႃႇ" (Behavior) ပၼ်ၶူတ်ႉႁဝ်း လူၺ်ႈဢမ်ႇလူဝ်ႇၵႂႃႇမႄး Logic တီႈၼႂ်းမၼ်းၵမ်းလဵဝ်ၶႃႈဢေႃႈ။ ၼႆႉပဵၼ်ႁူဝ်ၸႂ်ၶွင် **Meta-programming** (ၵၢၼ်တႅမ်ႈၶူတ်ႉ တႃႇၵုမ်းထိင်းၶူတ်ႉတၢင်ႇဢၼ်) ၶႃႈ။

---

#### **1. Setup (ၵၢၼ်တင်ႈၵႃႈ)**
ယွၼ်ႉဝႃႈ Decorators ပဵၼ် Feature ဢၼ်တိုၵ်ႉမီးလွင်ႈပတ်းပိုၼ်ႉယူႇ (Experimental), ၸဝ်ႈၵဝ်ႇလူဝ်ႇလႆႈပိုတ်ႇမၼ်းၼႂ်း `tsconfig.json` ဢွၼ်တၢင်းၶႃႈ:

```json
{
  "compilerOptions": {
    "target": "ES6",
    "experimentalDecorators": true
  }
}
```

---

#### **2. What is a Class Decorator?**
Class Decorator ပဵၼ် Function ဢၼ်ႁပ်ႉဢဝ် **Constructor** ၶွင် Class ၼၼ်ႉပဵၼ် Argument ၶႃႈ။ မၼ်းတေႁဵတ်းၵၢၼ် "ၵမ်းလဵဝ်" မိူဝ်ႈ TypeScript "Define" Class ၼၼ်ႉ (ဢမ်ႇၸႂ်ႉမိူဝ်ႈသၢင်ႈ Object ၼႃ!)။



```typescript
function Logger(constructor: Function) {
  console.log("--- Class Defined ---");
  console.log(constructor);
}

@Logger // ၸႂ်ႉ @ သေၸွမ်းလူၺ်ႈၸိုဝ်ႈ Function တီႈၼႃႈ Class
class Person {
  name = "Sai Mao";
  constructor() {
    console.log("Creating person object...");
  }
}
```

---

#### **3. Why use Decorators? (ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?)**
* **Meta-data:** ထႅမ်ၶေႃႈမုၼ်းပၼ် Class တွၼ်ႈတႃႇႁႂ်ႈ Framework (ၼင်ႇ Angular) ႁူႉဝႃႈ Class ၼႆႉပဵၼ် Component ႁႃႉ? ဢမ်ႇၼၼ် ပဵၼ် Service ႁႃႉ?
* **Code Reusability:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈတႅမ်ႈ Logic တွၼ်ႈတႃႇ "Logging" ဢမ်ႇၼၼ် "Validation" ဝႆႉတီႈလဵဝ် သေဢဝ်ၵႂႃႇၸႂ်ႉ (Decorate) တီႈလႂ်ၵေႃႈလႆႈၶႃႈ။
* **Separation of Concerns:** ၸႅၵ်ႇ "Business Logic" လႄႈ "Support Logic" (ၼင်ႇ Security/Logging) ဢွၵ်ႇပႅၵ်ႇၵၼ် ႁႂ်ႈၶူတ်ႉဢၢၼ်ႇငၢႆႈၶႃႈ။



---

#### **4. Summary Checklist**
- [ ] ပိုတ်ႇ **`experimentalDecorators`** ၼႂ်း `tsconfig.json` ယဝ်ႉတူဝ်ႈ။
- [ ] ႁူႉဝႃႈ **Decorator** ပဵၼ် Function ဢၼ်ႁွင်ႉၸႂ်ႉလူၺ်ႈၶေႃႈၵႂၢမ်း **`@`**။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Class Decorator ႁပ်ႉဢဝ် `constructor` ပဵၼ် Argument။
- [ ] တွၼ်းဝႆႉဝႃႈ Decorators ႁဵတ်းၵၢၼ်မိူဝ်ႈ Class ထုၵ်ႇ **Defined** (ဢမ်ႇၸႂ်ႉမိူဝ်ႈ `new`)။

---
