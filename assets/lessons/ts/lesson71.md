### **Lesson 71: Abstract Classes (Creating 'blueprints' for subclasses)**

ၼႂ်း Lesson ဢွၼ်တၢင်း ႁဝ်းလႆႈႁဵၼ်းလွင်ႈ **Inheritance** (ၵၢၼ်သိုပ်ႇ Class) မႃးယဝ်ႉၶႃႈ။ ၵူၺ်းၵႃႈ မၢင်ပွၵ်ႈ ႁဝ်းမီး Class "ငဝ်ႈတွၼ်ႈ" (Base Class) ဢၼ်မီးဝႆႉတွၼ်ႈတႃႇ "ဝၢင်းပိူင်" (Standard) ၵူၺ်း၊ သေ ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈၽႂ်ဢဝ်မၼ်းၵႂႃႇသၢင်ႈပဵၼ် Object (`new`) လႆႈတေႉတေႉၶႃႈ။

တူဝ်ယၢင်ႇ: ႁဝ်းမီး Class **`Shape`** (ႁၢင်ႈၾၢင်)။ ႁဝ်းႁူႉဝႃႈ `Shape` တေလူဝ်ႇမီး `color`၊ ၵူၺ်းၵႃႈ ႁဝ်းဢမ်ႇၸၢင်ႈသၢင်ႈ "Shape" တူဝ်ၼိုင်ႈဢွၵ်ႇမႃးလႆႈ လူၺ်ႈဢမ်ႇႁူႉဝႃႈ မၼ်းပဵၼ် ဝူင်းမူၼ်း ဢမ်ႇၼၼ် သီႇၸဵင်ႇၶႃႈ။ ႁဝ်းၸင်ႇၸႂ်ႉ **Abstract Class** ၶႃႈဢေႃႈ။

---

#### **1. What is an Abstract Class?**
**Abstract Class** ပဵၼ် Class ဢၼ်:
* **ႁၢမ်ႈသၢင်ႈ Instance:** ၸဝ်ႈၵဝ်ႇတေဢမ်ႇၸၢင်ႈၸႂ်ႉ `new Shape()` လႆႈၶႃႈ။
* **ပဵၼ် Blueprint:** မၼ်းမီးဝႆႉတွၼ်ႈတႃႇႁႂ်ႈ Class တၢင်ႇၸိူဝ်းမႃးသိုပ်ႇ (`extends`) ဢဝ်ၵူၺ်း။
* **ဝၢင်းပိူင်:** မၼ်းၸၢင်ႈမၵ်းမၼ်ႈ Method ဢၼ် Class လုၵ်ႈ "လူဝ်ႇလႆႈမီး" တႃႇသေႇၶႃႈ။



---

#### **2. Implementation (လၢႆးတႅမ်ႈ)**
ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း **`abstract`** ဝႆႉၼႃႈ `class` ၶႃႈ။

```typescript
abstract class Department {
  constructor(public id: string, public name: string) {}

  describe() {
    console.log(`Department (${this.id}): ${this.name}`);
  }

  // Abstract Method: ဝၢင်းပိူင်ဝႃႈ လူဝ်ႇလႆႈမီး Method ၼႆႉ
  // ၵူၺ်းၵႃႈ ဢမ်ႇတႅမ်ႈ Logic ဝႆႉ (လူဝ်ႇလႆႈတႅမ်ႈၼႂ်း Class လုၵ်ႈ)
  abstract printReports(): void;
}

// const dept = new Department("D1", "General"); 
// ❌ Error: Cannot create an instance of an abstract class.
```

---

#### **3. Why use Abstract Classes?**
* **Enforce Standards:** ၼႄႇၸႂ်ဝႃႈ Class လုၵ်ႈ (ၼင်ႇ `ITDepartment`, `Accounting`) တေမီး Method ဢၼ်ႁဝ်းသင်ႇဝႆႉၼၼ်ႉၵူႈတူဝ်။
* **Code Sharing:** သိမ်း Logic ဢၼ်မိူၼ်ၵၼ်ဝႆႉတီႈ Parent (ၼင်ႇ `describe()`) သေ ၸႂ်ႉႁူမ်ႈၵၼ်လႆႈ။
* **Logical Structure:** ၸွႆးႁႂ်ႈပရူဝ်ႇၵရႅမ်ႇႁဝ်း မီးပိူင်ၽႅၼ်ဢၼ်တႅတ်ႈတေႃး၊ ဢမ်ႇပၼ်ႁႂ်ႈမီး Object ဢၼ်ဢမ်ႇၵုမ်ႇထူၼ်ႈ (Incomplete objects) လႅၼ်ႈယူႇၼႂ်း System။



---

#### **4. Summary Checklist**
- [ ] ၸႂ်ႉ **`abstract`** တႃႇသၢင်ႈ Class ဢၼ်ပဵၼ် Blueprint ၵူၺ်း။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Abstract Class သၢင်ႈပဵၼ် Object ဢမ်ႇလႆႈ (`new` ဢမ်ႇလႆႈ)။
- [ ] ၸႂ်ႉ **Abstract Method** တွၼ်ႈတႃႇ "သင်ႇ" ႁႂ်ႈ Class လုၵ်ႈတႅမ်ႈ Logic ႁင်းၵူၺ်း။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇၸႂ်ႉ Abstract Class မိူဝ်ႈမီး Logic ပိုၼ်ႉထၢၼ်ဢၼ်ၶႂ်ႈ Reuse ၸွမ်းၵၼ်။

---