### **Lesson 63: Classes (The blueprint for objects)**

ၼႂ်း JavaScript လႄႈ TypeScript ၼၼ်ႉ **Class** ပဵၼ် "ပိူင်တႅမ်ႈ" (Blueprint) တွၼ်ႈတႃႇသၢင်ႈ Object ၶႃႈ။ မိူၼ်ၼင်ႇ ၸဝ်ႈၵဝ်ႇမီးပိူင်တႅမ်ႈႁိူၼ်း (Blueprints) သေ ၸၢင်ႈဢဝ်ၵႂႃႇသၢင်ႈႁိူၼ်းတေႉ (Objects) လႆႈလၢႆလၢႆလင်ၼၼ်ႉၶႃႈဢေႃႈ။



---

#### **1. Why use Classes? (ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?)**

မိူဝ်ႈပရူဝ်ႇၵရႅမ်ႇႁဝ်းယႂ်ႇမႃး, ၵၢၼ်သၢင်ႈ Object လၢႆလၢႆဢၼ်လူၺ်ႈတႅမ်ႈႁင်းၵူၺ်း (`const obj = {...}`) မၼ်းတေႁဵတ်းႁႂ်ႈၶူတ်ႉသမ်ႉၵၼ်ၼမ်ၶႃႈ။ Class တေၸွႆးႁႂ်ႈႁဝ်း:
* **Structure:** ၸတ်းၵၢၼ်ၶေႃႈမုၼ်း (Data) လႄႈ ၵၢၼ်ႁဵတ်းၵၢၼ် (Logic) ဝႆႉၸွမ်းၵၼ်။
* **Reusability:** တႅမ်ႈဝႆႉပိူင်လဵဝ်သေ သၢင်ႈ Object လႆႈလၢႆလၢႆတူဝ်။
* **Organization:** ႁဵတ်းႁႂ်ႈၶူတ်ႉဢၢၼ်ႇငၢႆႈ လႄႈ မႄးယၢပ်ႇ (Maintainable) ၶႃႈ။

---

#### **2. Basic Class Syntax (ပိူင်တႅမ်ႈ)**

Class တေမီးယူႇ 3 တွၼ်ႈယႂ်ႇၶႃႈ:
1. **Properties:** ၶေႃႈမုၼ်းဢၼ်သိမ်းဝႆႉၼႂ်း Class။
2. **Constructor:** Function ဢၼ်တေႁဵတ်းၵၢၼ် "ၵမ်းလဵဝ်" မိူဝ်ႈႁဝ်းသၢင်ႈ Object မႂ်ႇ။
3. **Methods:** Function ဢၼ် Class ၼၼ်ႉႁဵတ်းၵၢၼ်လႆႈ။

```typescript
class Department {
  name: string; // Property

  // Constructor တႃႇသႂ်ႇၵႃႈၶၼ်ဢွၼ်တၢင်း
  constructor(n: string) {
    this.name = n;
  }

  // Method
  describe() {
    console.log("Department: " + this.name);
  }
}

// ၵၢၼ်သၢင်ႈ Object (Instance)
const accounting = new Department("Accounting");
accounting.describe(); // "Department: Accounting"
```

---

#### **3. The 'this' Keyword**
ၼႂ်း Class, ႁဝ်းၸႂ်ႉ **`this`** တႃႇၸီႉၵႂႃႇတီႈ Property ဢမ်ႇၼၼ် Method ဢၼ်မီးၼႂ်း "တူဝ်မၼ်း" (Current Instance) ၶႃႈဢေႃႈ။ သင်ဢမ်ႇၸႂ်ႉ `this`, TypeScript တေဢမ်ႇႁူႉဝႃႈ `name` ၼၼ်ႉပဵၼ်တူဝ်လႂ်ၶႃႈ။



---

#### **4. Summary Checklist**

- [ ] ႁူႉဝႃႈ **Class** ပဵၼ် Blueprint သေ **Object** ပဵၼ် Instance။
- [ ] ၸႂ်ႉၶေႃႈၵႂၢမ်း **`new`** တႃႇသၢင်ႈ Object တူဝ်မႂ်ႇတီႈ Class။
- [ ] ပွင်ႇၸႂ်ဝႃႈ **`constructor`** ႁဵတ်းၵၢၼ်ၵမ်းလဵဝ် မိူဝ်ႈၸႂ်ႉ `new`။
- [ ] ၸႂ်ႉ **`this`** တႃႇၸီႉၵႂႃႇတီႈ Property ၼႂ်း Class ၼၼ်ႉတေႉတေႉ။

---