### **Lesson 67: Shorthand Initialization (Writing cleaner constructors)**

မိူဝ်ႈႁဝ်းတႅမ်ႈ Class ၼႂ်း TypeScript ၼၼ်ႉ၊ လၢႆးတႅမ်ႈ "ပိူင်ၵဝ်ႇ" ႁဵတ်းႁႂ်ႈႁဝ်းလူဝ်ႇတႅမ်ႈၸိုဝ်ႈ Property သမ်ႉၵၼ်လၢႆတီႈၼႃႇၶႃႈ (Definition, Parameter, လႄႈ Assignment)။ TypeScript ၸင်ႇသၢင်ႈ **Shorthand Initialization** မႃး တႃႇႁႂ်ႈႁဝ်းတႅမ်ႈၶူတ်ႉလႆႈသႅၼ်ႈသႂ်လိူဝ်သေၵဝ်ႇၶႃႈ။

---

#### **1. The Old Way (လၢႆးတႅမ်ႈပိူင်ၵဝ်ႇ)**
တူၺ်းၶူတ်ႉတွၼ်ႈၼႆႉၶႃႈ၊ ႁဝ်းလူဝ်ႇတႅမ်ႈ `id` လႄႈ `name` သမ်ႉၵၼ် 3 တီႈ:

```typescript
class Department {
  public id: string; // 1. Property Definition
  public name: string;

  constructor(id: string, name: string) { // 2. Parameter
    this.id = id; // 3. Assignment
    this.name = name;
  }
}
```

---

#### **2. The Shorthand Way (လၢႆးတႅမ်ႈလတ်း)**
ႁဝ်းၸၢင်ႈ "ႁူမ်ႈ" ၵူႈလွင်ႈဝႆႉၼႂ်း **Constructor Parameter** ၵမ်းလဵဝ်လႆႈၶႃႈ။ ၵူၺ်းၵႃႈ လူဝ်ႇလႆႈသႂ်ႇ **Access Modifier** (public, private, protected, readonly) ဝႆႉၼႃႈ Parameter ၼၼ်ႉတႃႇသေႇၶႃႈဢေႃႈ။

```typescript
class Department {
  // ဢမ်ႇလူဝ်ႇတႅမ်ႈ Property Definition ဝႆႉၼိူဝ် Constructor ယဝ်ႉ
  constructor(public id: string, public name: string, private readonly secret: string) {
    // ဢမ်ႇလူဝ်ႇတႅမ်ႈ this.id = id ယဝ်ႉ
    // TypeScript တေႁဵတ်းပၼ်ႁင်းၵူၺ်း (Automatic Assignment)
  }
}

const d1 = new Department("D1", "Accounting", "SecretKey");
console.log(d1.name); // ✅ OK
// console.log(d1.secret); // ❌ Error: secret is private
```



---

#### **3. Why use Shorthand?**
* **Less Code:** လူတ်းယွမ်းၵၢၼ်တႅမ်ႈၶူတ်ႉသမ်ႉၵၼ် (Boilerplate code)။
* **Readability:** ဢၢၼ်ႇငၢႆႈလိူဝ်သေၵဝ်ႇ ယွၼ်ႉႁဝ်းႁၼ်ၵမ်းလဵဝ်ဝႃႈ Class ၼႆႉမီး Property သင်လၢႆလၢႆ။
* **Consistency:** ၼႄႇၸႂ်ဝႃႈ Property တင်းသဵၼ်ႈ လႆႈႁပ်ႉၵႃႈၶၼ် (Value) တီႈၼႂ်း Constructor တႅတ်ႈတေႃး။

---

#### **4. Rules to Remember**
* လူဝ်ႇလႆႈသႂ်ႇ **Access Modifier** (ၼင်ႇ `public`) ၸင်ႇတေပဵၼ် Shorthand။
* သင်ဢမ်ႇသႂ်ႇ Modifier, မၼ်းတေပဵၼ်ၵူၺ်း "Local Parameter" ထမ်ႇမတႃႇ ဢၼ်ဢမ်ႇၸၢင်ႈၸႂ်ႉၼွၵ်ႈ Constructor။
* ၸဝ်ႈၵဝ်ႇယင်းၸၢင်ႈၸႂ်ႉႁူမ်ႈၵၼ်လႆႈ (ၼင်ႇ ၸႂ်ႉ Shorthand မၢင်တူဝ် လႄႈ ၸႂ်ႉ Longhand မၢင်တူဝ်)။

---

#### **5. Summary Checklist**
- [ ] ႁူႉလၢႆးတႅမ်ႈ Constructor ႁႂ်ႈပဵၼ် Shorthand လူၺ်ႈၵၢၼ်သႂ်ႇ Access Modifiers။
- [ ] ပွင်ႇၸႂ်ဝႃႈ TypeScript တေႁဵတ်း Assignment (`this.x = x`) ပၼ်ႁင်းၵူၺ်း။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Access Modifier (public/private/etc.) တႃႇသေႇ မိူဝ်ႈၶႂ်ႈၸႂ်ႉ Shorthand။
- [ ] ၸၢင်ႈၸႂ်ႉ `readonly` ႁူမ်ႈၸွမ်း Shorthand လႆႈ (ၼင်ႇ `constructor(public readonly id: string)`)။

---