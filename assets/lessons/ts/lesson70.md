### **Lesson 70: Static Properties & Methods (Global class data)**

ၼႂ်း Lesson ဢွၼ်တၢင်း ႁဝ်းလႆႈႁၼ်ဝႃႈ တွၼ်ႈတႃႇတေၸႂ်ႉ Property ဢမ်ႇၼၼ် Method ၼႂ်း Class ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ `new` တႃႇသၢင်ႈ Object (Instance) ဢွၼ်တၢင်းၶႃႈ။ ၵူၺ်းၵႃႈ **Static** တေပႅၵ်ႇပိူင်ႈၵၼ်ၶႃႈ။ မၼ်းပဵၼ်ၶေႃႈမုၼ်းဢၼ်ပဵၼ်ၶွင် **"တူဝ် Class"** တေႃႇၼႃႈ၊ မၼ်းဢမ်ႇၸႂ်ႉၶွင် Object ဢၼ်သၢင်ႈဢွၵ်ႇမႃးၶႃႈ။

---

#### **1. What is Static? (Static ပဵၼ်သင်?)**
**Static Properties** လႄႈ **Methods** ၼႆႉ:
* ႁွင်ႉၸႂ်ႉလႆႈၵမ်းလဵဝ်တီႈ "ၸိုဝ်ႈ Class" (Class Name)။
* ဢမ်ႇလူဝ်ႇသၢင်ႈ Instance (`new ClassName()`) ၵေႃႈၸႂ်ႉလႆႈ။
* ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇသိမ်း **Global Data** ဢမ်ႇၼၼ် **Utility Functions** ဢၼ်ၵူႈ Object လူဝ်ႇၸႂ်ႉမိူၼ်ၵၼ်ၶႃႈ။



---

#### **2. Implementation (လၢႆးတႅမ်ႈ)**
ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း **`static`** ဝႆႉၼႃႈ Property ဢမ်ႇၼၼ် Method ၶႃႈ။

```typescript
class Department {
  static fiscalYear = 2026; // Static Property

  constructor(public id: string, public name: string) {
    // ⚠️ မၢႆတွၼ်း: ၼႂ်း Constructor ႁဝ်းဢမ်ႇၸၢင်ႈၸႂ်ႉ this.fiscalYear လႆႈ
    // ယွၼ်ႉ 'this' ၸီႉၵႂႃႇတီႈ Instance၊ ၵူၺ်းၵႃႈ Static ပဵၼ်ၶွင် Class
    console.log(Department.fiscalYear); // ✅ လူဝ်ႇၸႂ်ႉၸိုဝ်ႈ Class ႁွင်ႉဢဝ်
  }

  static createEmployee(name: string) { // Static Method
    return { name: name };
  }
}

// ႁွင်ႉၸႂ်ႉလႆႈလူၺ်ႈဢမ်ႇလူဝ်ႇ 'new'
const employee1 = Department.createEmployee("Sai Mao");
console.log(employee1); // { name: "Sai Mao" }
console.log(Department.fiscalYear); // 2026
```

---

#### **3. Why use Static? (ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?)**
* **Namespace/Utility:** မိူၼ်ၼင်ႇ `Math` Object ၼႂ်း JavaScript ၶႃႈဢေႃႈ။ ႁဝ်းဢမ်ႇတႅမ်ႈ `new Math()`, ႁဝ်းၸႂ်ႉ `Math.PI` ဢမ်ႇၼၼ် `Math.pow()` လႆႈၵမ်းလဵဝ်။
* **Global Constants:** သိမ်းၶေႃႈမုၼ်းဢၼ်မိူၼ်ၵၼ်တႃႇၵူႈ Instance (ၼင်ႇ Version Number ဢမ်ႇၼၼ် API URL)။
* **Helper Methods:** သၢင်ႈ Method ဢၼ်ႁဵတ်းၵၢၼ်ပၼ် Logic ထမ်ႇမတႃႇ ဢၼ်ဢမ်ႇလူဝ်ႇပိုင်ႈဢိင် Data ၼႂ်း Object။



---

#### **4. Summary Checklist**
- [ ] ၸႂ်ႉ **`static`** တႃႇမၵ်းမၼ်ႈ Property/Method ႁႂ်ႈပဵၼ်ၶွင် Class။
- [ ] ႁွင်ႉၸႂ်ႉလူၺ်ႈ `ClassName.propertyName` ဢမ်ႇၼၼ် `ClassName.methodName()`။
- [ ] ပွင်ႇၸႂ်ဝႃႈ **`this`** ၼႂ်း Static Method တေဢမ်ႇၸီႉၵႂႃႇတီႈ Instance Properties။
- [ ] ၸႂ်ႉ Static တွၼ်ႈတႃႇ Utility logic ဢၼ်ၸႂ်ႉႁူမ်ႈၵၼ်လႆႈၵူႈတီႈ။

---
