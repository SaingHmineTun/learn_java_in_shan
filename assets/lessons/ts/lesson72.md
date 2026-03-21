### **Lesson 72: Abstract Methods (Enforcing logic implementation)**

ၼႂ်း Lesson 71 ႁဝ်းလႆႈႁူႉဝႃႈ **Abstract Class** ပဵၼ် Class "ငဝ်ႈတွၼ်ႈ" ဢၼ်သၢင်ႈပဵၼ် Object ဢမ်ႇလႆႈၶႃႈ။ ဝၼ်းၼႆႉႁဝ်းတေမႃးတူၺ်း **Abstract Methods** ဢၼ်ပဵၼ် "ၶေႃႈသင်ႇ" (Command) ႁႂ်ႈ Class လုၵ်ႈလူဝ်ႇလႆႈတႅမ်ႈ Logic ႁင်းၵူၺ်းၶႃႈဢေႃႈ။

---

#### **1. What is an Abstract Method?**
**Abstract Method** ပဵၼ် Method ဢၼ်မီးၵူၺ်း "ၸိုဝ်ႈ" (Signature) လႄႈ "Type"၊ ၵူၺ်းၵႃႈ **ဢမ်ႇမီး Logic** ({...}) ဝႆႉၼႂ်း Parent Class ၶႃႈ။

* **ၶေႃႈသင်ႇ:** "ၵူႈ Class ဢၼ်သိုပ်ႇတီႈၵဝ်ၵႂႃႇၼၼ်ႉ လူဝ်ႇလႆႈမီး Method ၼႆႉ၊ ၵူၺ်းၵႃႈ Logic မၼ်းတႄႉ ၸဝ်ႈၵဝ်ႇတႅမ်ႈႁင်းၵူၺ်း!"
* **Type Safety:** TypeScript တေထတ်းၸႅတ်ႈပၼ်ဝႃႈ Class လုၵ်ႈတႅမ်ႈယဝ်ႉႁႃႉ? သင်ဢမ်ႇတႅမ်ႈ မၼ်းတေ **Error** ၵမ်းလဵဝ်ၶႃႈ။



---

#### **2. Implementation (လၢႆးတႅမ်ႈ)**

```typescript
abstract class Department {
  constructor(protected id: string, public name: string) {}

  // 1. ဝၢင်းပိူင်ဝႃႈ လူဝ်ႇမီး Method ၼႆႉ
  abstract describe(): void;
}

class ITDepartment extends Department {
  constructor(id: string) {
    super(id, "IT");
  }

  // 2. လူဝ်ႇလႆႈတႅမ်ႈ (Implement) Logic ႁင်းၵူၺ်း
  describe() {
    console.log("IT Department - ID: " + this.id);
  }
}

class AccountingDepartment extends Department {
  constructor(id: string) {
    super(id, "Accounting");
  }

  // 3. တႅမ်ႈ Logic ဢၼ်ပႅၵ်ႇပိူင်ႈၵၼ်
  describe() {
    console.log("Accounting Department - ID: " + this.id);
  }
}
```

---

#### **3. Why use Abstract Methods?**
* **Consistency:** ၼႄႇၸႂ်ဝႃႈ ဢမ်ႇဝႃႈတေပဵၼ် Department လႂ်ၵေႃႈယဝ်ႉ၊ မၼ်းတေမီး Method `describe()` တႃႇသေႇ။
* **Custom Logic:** ပၼ်သုၼ်ႇ Class လုၵ်ႈ တႅမ်ႈ Logic ဢၼ်မႅၼ်ႈၸွမ်းၼႃႈၵၢၼ်မၼ်း (ၼင်ႇ IT describe ပႅၵ်ႇတင်း Accounting)။
* **Polymorphism:** ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉ `.describe()` လႆႈတီႈၵူႈ Object ဢၼ်သိုပ်ႇမႃးတီႈ `Department` လူၺ်ႈဢမ်ႇလူဝ်ႇမႆႈၸႂ်ဝႃႈ မၼ်းပဵၼ် Class လႂ်တေႉတေႉၶႃႈ။



---

#### **4. Summary Checklist**
- [ ] ၸႂ်ႉ **`abstract`** ဝႆႉၼႃႈ Method ၼႂ်း Abstract Class (ဢမ်ႇသႂ်ႇ `{}` ပၼ်မၼ်း)။
- [ ] ၼႄႇၸႂ်ဝႃႈ Class လုၵ်ႈ တင်းသဵၼ်ႈတႅမ်ႈ Logic ပၼ် Abstract Method ၼၼ်ႉယဝ်ႉ။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Abstract Method ၸၢင်ႈမီး Parameters လႄႈ Return Type ၸိူဝ်ႉၼင်ႇ Method ထမ်ႇမတႃႇ။
- [ ] ႁူႉဝႃႈ သင် Class လုၵ်ႈဢမ်ႇတႅမ်ႈ Logic ပၼ်၊ မၼ်းၵေႃႈလူဝ်ႇလႆႈပဵၼ် Abstract Class သိုပ်ႇၵႂႃႇၶႃႈ။

---
