### **Lesson 64: Constructors (Initializing objects with properties)**

**Constructor** ပဵၼ် Method ဢၼ်လွင်ႈယႂ်ႇသုတ်းၼႂ်း Class ၶႃႈ။ မၼ်းပဵၼ် "တူဝ်တႄႇတင်ႈ" ဢၼ်တေႁဵတ်းၵၢၼ်ၵမ်းလဵဝ် မိူဝ်ႈႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း `new` တႃႇသၢင်ႈ Object ၶႃႈဢေႃႈ။ ၼႃႈၵၢၼ်မၼ်းပဵၼ် ၵၢၼ်ႁပ်ႉဢဝ်ၶေႃႈမုၼ်းသေ မႃးသႂ်ႇပၼ် (Initialize) ၼႂ်း Properties ၶွင် Class ၼၼ်ႉၶႃႈ။

---

#### **1. How Constructors Work (ၵၢၼ်ႁဵတ်းၵၢၼ်)**

မိူဝ်ႈႁဝ်းသၢင်ႈ Object, ႁဝ်းၵႆႉၶႂ်ႈပၼ် "ၵႃႈၶၼ်ဢၼ်ပႅၵ်ႇၵၼ်" ပၼ်ၵူႈတူဝ်ၶႃႈ။ တူဝ်ယၢင်ႇ: ႁဝ်းၶႂ်ႈသၢင်ႈ Student လၢႆလၢႆၵေႃႉ ဢၼ်မီးၸိုဝ်ႈဢမ်ႇမိူၼ်ၵၼ်။

```typescript
class Student {
  name: string;
  age: number;

  // Constructor ႁပ်ႉဢဝ် Parameters မႃး
  constructor(userName: string, userAge: number) {
    // ဢဝ်ၵႃႈၶၼ်မႃးသႂ်ႇၼႂ်း Property ၶွင် Class လူၺ်ႈၸႂ်ႉ 'this'
    this.name = userName;
    this.age = userAge;
    console.log("Student object created!");
  }
}

// သူင်ႇ Argument ၶဝ်ႈၵႂႃႇၼႂ်း ဝူင်းလဵၵ်း
const s1 = new Student("Sai Mao", 25);
const s2 = new Student("Nang Hom", 22);

console.log(s1.name); // "Sai Mao"
console.log(s2.name); // "Nang Hom"
```



---

#### **2. Default Values (ၵႃႈၶၼ်ငဝ်ႈတွၼ်ႈ)**

မၢင်ပွၵ်ႈ ႁဝ်းဢမ်ႇလူဝ်ႇႁပ်ႉ Parameter ၵူႈတူဝ်ၵေႃႈလႆႈၶႃႈ။ ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈၵႃႈၶၼ်ဝႆႉၼႂ်း Constructor ၵမ်းလဵဝ်လႆႈၶႃႈဢေႃႈ။

```typescript
class Product {
  name: string;
  isAvailable: boolean;

  constructor(pName: string) {
    this.name = pName;
    this.isAvailable = true; // မၵ်းမၼ်ႈဝႃႈ ပဵၼ် true တႃႇသေႇ မိူဝ်ႈသၢင်ႈမႂ်ႇ
  }
}
```

---

#### **3. Why is it important? (ၵွပ်ႈသင်လႄႈလွင်ႈယႂ်ႇ?)**

* **Validation:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႅတ်းထတ်းၶေႃႈမုၼ်းၼႂ်း Constructor ဢွၼ်တၢင်းတေသိမ်း (ၼင်ႇ ၸႅတ်းဝႃႈ Age လူဝ်ႇပဵၼ်တူဝ်ၼပ်ႉပဵၼ် - Positive number)။
* **Ready-to-use:** ၼႄႇၸႂ်ဝႃႈ Object ဢၼ်သၢင်ႈဢွၵ်ႇမႃးၼၼ်ႉ မီးၶေႃႈမုၼ်းထူၼ်ႈထႅၼ်း လႄႈ ၸႂ်ႉၵၢၼ်လႆႈၵမ်းလဵဝ်။
* **Structure:** ႁဵတ်းႁႂ်ႈၵၢၼ်သၢင်ႈ Object မီးပိူင်မႅၼ်ႈၸွမ်း Interface ဢၼ်ႁဝ်းၶႂ်ႈလႆႈၶႃႈ။



---

#### **4. Summary Checklist**

- [ ] ႁူႉဝႃႈ `constructor` ႁဵတ်းၵၢၼ်ၵမ်းလဵဝ် မိူဝ်ႈၸႂ်ႉ `new`။
- [ ] ၸႂ်ႉ Parameter တႃႇႁပ်ႉၶေႃႈမုၼ်းတီႈၽၢႆႇၼွၵ်ႈ။
- [ ] ၸႂ်ႉ `this.propertyName = parameterName` တႃႇသိမ်းၶေႃႈမုၼ်း။
- [ ] ၼႄႇၸႂ်ဝႃႈ Property တင်းသဵၼ်ႈ လႆႈႁပ်ႉၵႃႈၶၼ် (Value) တီႈၼႂ်း Constructor။

---