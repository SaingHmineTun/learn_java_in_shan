### **Lesson 66: Readonly properties (Protecting data from changes)**

မၢင်ပွၵ်ႈ ႁဝ်းမီး Property ဢၼ်ႁဝ်းၶႂ်ႈ "သႂ်ႇၵႃႈၶၼ်လႆႈပွၵ်ႈလဵဝ်" (မိူဝ်ႈသၢင်ႈ Object) သေ ဝၢႆးၼၼ်ႉ **ႁၢမ်ႈမႄးလၢႆႈ** တေႃႇၸူဝ်ႈၶႃႈ။ တူဝ်ယၢင်ႇ: ID ၶွင်ၵူၼ်းႁဵတ်းၵၢၼ် ဢမ်ႇၼၼ် ၸိုဝ်ႈတႅတ်ႈတေႃး (Constant) ၼႂ်း Class ၶႃႈဢေႃႈ။ ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း **`readonly`** ၼႂ်း TypeScript တႃႇႁဵတ်းလွင်ႈၼႆႉၶႃႈ။

---

#### **1. How Readonly works (ၵၢၼ်ႁဵတ်းၵၢၼ်)**
Property ဢၼ်ပဵၼ် `readonly` ၼၼ်ႉ:
* သႂ်ႇၵႃႈၶၼ်လႆႈတီႈ **Property Definition** ဢမ်ႇၼၼ် တီႈၼႂ်း **Constructor** ၵူၺ်း။
* ဝၢႆးသေ Constructor ႁဵတ်းၵၢၼ်ယဝ်ႉ၊ ၸဝ်ႈၵဝ်ႇတေဢမ်ႇၸၢင်ႈမႄးလၢႆႈမၼ်းလႆႈထႅင်ႈ (ဢၢၼ်ႇလႆႈၵူၺ်း)။

```typescript
class Employee {
  public readonly id: string; // ၸႂ်ႉ readonly ၸွမ်း Access Modifier လႆႈ
  public name: string;

  constructor(id: string, name: string) {
    this.id = id; // ✅ OK: သႂ်ႇၵႃႈၶၼ်လႆႈၼႂ်း Constructor
    this.name = name;
  }

  updateId(newId: string) {
    // this.id = newId; // ❌ Error: Cannot assign to 'id' because it is a read-only property.
  }
}

const emp = new Employee("EMP-001", "Sai Mao");
// emp.id = "EMP-999"; // ❌ Error: ၵူၼ်းၼွၵ်ႈၵေႃႈမႄးလၢႆႈဢမ်ႇလႆႈ
```



---

#### **2. Readonly vs Private**
မၢင်ၵေႃႉၸၢင်ႈတေယုင်ႈဝႃႈ မၼ်းပႅၵ်ႇၵၼ်ႁိုဝ်တင်း `private`?
* **`private`**: ႁႄႉၵႅတ်ႇ "ၵူၼ်းၼွၵ်ႈ" ဢမ်ႇႁႂ်ႈႁၼ်/ၸႂ်ႉ၊ ၵူၺ်းၵႃႈ "ၼႂ်း Class" တိုၵ်ႉမႄးလၢႆႈလႆႈယူႇ။
* **`readonly`**: ႁႄႉၵႅတ်ႇ "ၵၢၼ်မႄးလၢႆႈ" (Modification)။ ဢမ်ႇဝႃႈၼႂ်း Class ဢမ်ႇၼၼ် ၼွၵ်ႈ Class ກေႇမႄးလၢႆႈဢမ်ႇလႆႈ (သင်ပဵၼ် public readonly)။

> **Note:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉႁူမ်ႈၵၼ်လႆႈ: `private readonly id: string;` (ႁၢမ်ႈၵူၼ်းၼွၵ်ႈႁၼ် လႄႈ ၼႂ်း Class ၵေႃႈႁၢမ်ႈမႄးလၢႆႈ)။

---

#### **3. Why use Readonly?**
* **Data Integrity:** ၼႄႇၸႂ်ဝႃႈ ၶေႃႈမုၼ်းဢၼ်လွင်ႈယႂ်ႇ (ၼင်ႇ Database Key) တေဢမ်ႇထုၵ်ႇမႄးလၢႆႈလူၺ်ႈဢမ်ႇတင်ႈၸႂ်။
* **Intent:** ၼႄဝႃႈ Property ၼႆႉ မီးဝႆႉတွၼ်ႈတႃႇ "မၢႆဝႆႉ" (Reference) ၵူၺ်း၊ ဢမ်ႇၸႂ်ႉတွၼ်ႈတႃႇ "ပိၼ်ႇလၢႆႈ" (Mutable state)။
* **Fewer Bugs:** လူတ်းယွမ်းလွင်ႈၽိတ်းပိူင် ဢၼ်ၵိူတ်ႇမႃးတီႈၵၢၼ်မႄးၶေႃႈမုၼ်းသုၵ်ႉယၢင်ႈ။

---

#### **4. Summary Checklist**
- [ ] ၸႂ်ႉ **`readonly`** တွၼ်ႈတႃႇ Property ဢၼ်သႂ်ႇၵႃႈၶၼ်ယဝ်ႉ ဢမ်ႇၶႂ်ႈႁႂ်ႈမႄးလၢႆႈထႅင်ႈ။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `readonly` မႄးလၢႆႈလႆႈၵူၺ်းၼႂ်း **Constructor**။
- [ ] ႁူႉလၢႆးၸႂ်ႉ `readonly` ႁူမ်ႈၸွမ်း Access Modifiers (public/private/protected)။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇၸႂ်ႉ `readonly` ၸွမ်း Property ဢၼ်လူဝ်ႇလႅၵ်ႈလၢႆႈတႃႇသေႇ။

---
