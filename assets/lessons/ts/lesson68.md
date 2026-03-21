### **Lesson 68: Inheritance (Reusing code with 'extends')**

**Inheritance** ပဵၼ်ႁူဝ်ၸႂ်ၶွင် OOP ဢၼ်ၸွႆးႁႂ်ႈႁဝ်း "သိုပ်ႇပၺ်ႇၺႃႇ" တီႈ Class ၼိုင်ႈဢၼ် ၵႂႃႇၸူးထႅင်ႈ Class ၼိုင်ႈဢၼ်ၶႃႈ။ မၼ်းႁဵတ်းႁႂ်ႈႁဝ်းဢဝ် Property လႄႈ Method ဢၼ်မီးဝႆႉယဝ်ႉၼၼ်ႉ မႃးၸႂ်ႉၶိုၼ်း (Reuse) လႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈမႂ်ႇၶႃႈဢေႃႈ။

---

#### **1. Base Class vs Derived Class**
* **Base Class (Parent):** ပဵၼ် Class "ငဝ်ႈတွၼ်ႈ" ဢၼ်မီး Logic ပိုၼ်ႉထၢၼ်။
* **Derived Class (Child):** ပဵၼ် Class "လုၵ်ႈ" ဢၼ်သိုပ်ႇဢဝ် (Inherit) တီႈ Parent မႃး လႄႈ ၸၢင်ႈထႅမ် Logic မႂ်ႇၶဝ်ႈၵႂႃႇလႆႈၶႃႈ။

ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း **`extends`** တႃႇသိုပ်ႇ Class ၶႃႈ။

---

#### **2. Implementation (လၢႆးတႅမ်ႈ)**

သမုၵ်ႉဝႃႈ ႁဝ်းမီး `Department` ပဵၼ် Parent သေ ႁဝ်းၶႂ်ႈသၢင်ႈ `ITDepartment` ဢၼ်မီး Property ၽိเศษ (ၼင်ႇ `admins`) ၶႃႈ:

```typescript
class Department {
  constructor(public id: string, public name: string) {}

  describe() {
    console.log(`Department (${this.id}): ${this.name}`);
  }
}

// ITDepartment သိုပ်ႇဢဝ် Property/Method တီႈ Department တင်းသဵၼ်ႈ
class ITDepartment extends Department {
  admins: string[];
  constructor(id: string, admins: string[]) {
    // လူဝ်ႇႁွင်ႉ super() တႃႇသူင်ႇ Data ၵႂႃႇပၼ် Parent Constructor
    super(id, "IT"); 
    this.admins = admins;
  }
}

const it = new ITDepartment("D1", ["Sai Mao"]);
it.describe(); // ✅ OK: ၸႂ်ႉ Method ၶွင် Parent လႆႈၵမ်းလဵဝ်
console.log(it.admins); // ["Sai Mao"]
```



---

#### **3. Overriding Methods**
Class လုၵ်ႈ ၸၢင်ႈမႄးလၢႆႈ (Override) Method ၶွင် Parent ႁႂ်ႈပဵၼ် Logic ႁင်းၵူၺ်းမၼ်းလႆႈၶႃႈ။

```typescript
class AccountingDepartment extends Department {
  // Override describe method
  describe() {
    console.log("Accounting Department - ID: " + this.id);
  }
}
```



---

#### **4. Why use Inheritance?**
* **DRY (Don't Repeat Yourself):** ဢမ်ႇလူဝ်ႇတႅမ်ႈ `id`, `name`, လႄႈ `describe()` သမ်ႉၵၼ်ၼႂ်းၵူႈ Class။
* **Specialization:** သၢင်ႈ Class ဢၼ်မီးၼႃႈၵၢၼ် "တႅတ်ႈတေႃး" လိူဝ်သေ Parent။
* **Consistency:** ၼႄႇၸႂ်ဝႃႈ Class လုၵ်ႈတင်းသဵၼ်ႈ တေမီးပိုၼ်ႉထၢၼ် (Base features) မိူၼ်ၵၼ်။

---

#### **5. Summary Checklist**
- [ ] ၸႂ်ႉ **`extends`** တႃႇသိုပ်ႇ Class တီႈ Parent ၵႂႃႇၸူး Child။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Child Class တေလႆႈ Property/Method ၶွင် Parent မႃးတင်းသဵၼ်ႈ။
- [ ] ႁူႉလၢႆးၸႂ်ႉ **`super()`** တွၼ်ႈတႃႇႁွင်ႉ Constructor ၶွင် Parent (လွင်ႈယႂ်ႇသုတ်း!)။
- [ ] ႁူႉလၢႆး **Override** Method မိူဝ်ႈၶႂ်ႈလႅၵ်ႈလၢႆႈ Logic ၼႂ်း Child Class။

---