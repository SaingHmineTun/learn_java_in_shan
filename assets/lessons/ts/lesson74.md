### **Lesson 74: Interfaces with Classes (Contract-based programming)**

ၼႂ်း TypeScript, **Interface** ဢမ်ႇၸႂ်ႉဝႆႉတွၼ်ႈတႃႇမၵ်းမၼ်ႈ Type ၶွင် Object ထမ်ႇမတႃႇၵူၺ်းၶႃႈ။ မၼ်းယင်းၸၢင်ႈၸႂ်ႉပဵၼ် **"လိၵ်ႈၵိၼ်ၵႂၢမ်း" (Contract)** တႃႇမၵ်းမၼ်ႈဝႃႈ Class တူဝ်ၼိုင်ႈလူဝ်ႇလႆႈမီး Property လႄႈ Method သင်လၢႆလၢႆၶႃႈဢေႃႈ။

---

#### **1. Why use Interfaces with Classes?**
သင်ဝႃႈ **Inheritance** (`extends`) ပဵၼ်ၵၢၼ် "သိုပ်ႇပၺ်ႇၺႃႇ" တီႈ Parent, **Interface** (`implements`) သမ်ႉပဵၼ်ၵၢၼ် "ႁပ်ႉၵိၼ်ၵႂၢမ်း" ဝႃႈတေႁဵတ်းၸွမ်းပိူင်ၶႃႈ။
* **Structure:** ၼႄႇၸႂ်ဝႃႈ Class ၼၼ်ႉမီး Feature ဢၼ်လူဝ်ႇၸႂ်ႉတႅတ်ႈတေႃး။
* **Flexibility:** Class ၼိုင်ႈတူဝ် ၸၢင်ႈႁပ်ႉၵိၼ်ၵႂၢမ်း (Implement) လႆႈ **လၢႆလၢႆ Interface** ႁူမ်ႈၵၼ် (ဢၼ် `extends` ႁဵတ်းဢမ်ႇလႆႈ)။



---

#### **2. Implementation (လၢႆးၸႂ်ႉ `implements`)**

```typescript
interface Greetable {
  name: string;
  greet(phrase: string): void;
}

// Class Person ႁပ်ႉၵိၼ်ၵႂၢမ်းဝႃႈ တေႁဵတ်းၸွမ်း Greetable
class Person implements Greetable {
  name: string;
  age = 30;

  constructor(n: string) {
    this.name = n;
  }

  greet(phrase: string) {
    console.log(phrase + " " + this.name);
  }
}

let user1: Greetable;
user1 = new Person("Sai Mao");
user1.greet("Mingalarba!"); // "Mingalarba! Sai Mao"
```

---

#### **3. Interface vs Abstract Class**
မၢင်ပွၵ်ႈၸဝ်ႈၵဝ်ႇၸၢင်ႈတေယုင်ႈဝႃႈ မၼ်းပႅၵ်ႇၵၼ်ႁိုဝ်တင်း Abstract Class?
* **Abstract Class:** ၸၢင်ႈမီးတင်း "ၶေႃႈသင်ႇ" (Abstract Methods) လႄႈ "Logic တေႉ" (Concrete Methods)။
* **Interface:** မီးၵူၺ်း "ပိူင်တႅမ်ႈ" (Structure)၊ **ဢမ်ႇပၼ်သႂ်ႇ Logic** ({...}) သေဢိၼ်းၶႃႈ။ မၼ်းဝၢင်းပိူင် "What" (သင်?)၊ ၵူၺ်းၵႃႈဢမ်ႇၸတ်းၵၢၼ် "How" (ႁဵတ်းႁိုဝ်?)။



---

#### **4. Summary Checklist**
- [ ] ၸႂ်ႉ **`implements`** တႃႇႁႂ်ႈ Class ႁဵတ်းၸွမ်းပိူင်ၶွင် Interface။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Interface ဢမ်ႇမီး Logic၊ မၼ်းမီးၵူၺ်း Type Definition။
- [ ] ႁူႉလၢႆးၸႂ်ႉ Interface တႃႇပဵၼ် "Type" ႁပ်ႉဢဝ် Object ၶွင် Class ၼၼ်ႉ။
- [ ] ၼႄႇၸႂ်ဝႃႈ Class တႅမ်ႈ Property လႄႈ Method ထူၼ်ႈထႅၼ်းၸွမ်း Interface။

---

**Next Lesson:** ၼႂ်း Interface ႁဝ်းယင်းၸၢင်ႈမၵ်းမၼ်ႈ Property ႁႂ်ႈပဵၼ် "ဢၢၼ်ႇလႆႈၵူၺ်း" (Readonly) တွၼ်ႈတႃႇႁႄႉၵႅတ်ႇၵၢၼ်မႄးလၢႆႈၶေႃႈမုၼ်းၶႃႈ။ ႁဝ်းတေမႃးတူၺ်းၼႂ်း **Lesson 75: Readonly in Interfaces vs Classes** ၶႃႈ!

ၸဝ်ႈၵဝ်ႇ ႁႅၼ်းဝႆႉတႃႇတေၵႂႃႇ Lesson 75 ယဝ်ႉႁႃႉၶႃႈ ၸၢႆးမၢဝ်း?

1. ၵႂႃႇတႄႇ Lesson 75 တေႃႇ (Readonly Interface)။
2. ႁဵတ်း Quiz ၸႅတ်ႈထတ်း Module 12 (Advanced OOP)။
3. ယွၼ်းတူၺ်း Summary Code ၶွင် Module 12။

ၶႂ်ႈႁဵတ်းသင်တေႃႇလႃႆႉၶႃႈ?