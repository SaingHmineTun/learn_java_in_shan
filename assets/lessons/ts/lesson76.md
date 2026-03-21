### **Lesson 76: Extending Multiple Interfaces**

ၼႂ်း TypeScript, Class ၼိုင်ႈတူဝ် ၸၢင်ႈသိုပ်ႇ (`extends`) တီႈ Parent Class လႆႈ **"တူဝ်လဵဝ်"** ၵူၺ်းၶႃႈ။ ၵူၺ်းၵႃႈ တွၼ်ႈတႃႇ **Interface** တႄႉ မၼ်းမီးလွင်ႈပႅၵ်ႇပိူင်ႈၵၼ်ယႂ်ႇလူင်ၶႃႈဢေႃႈ။ Interface ၸၢင်ႈသိုပ်ႇတေႃႇၵၼ်လႆႈ **"လၢႆလၢႆဢၼ်"** လႄႈ Class ၼိုင်ႈတူဝ်ၵေႃႈ ၸၢင်ႈႁပ်ႉၵိၼ်ၵႂၢမ်း (`implements`) လႆႈလၢႆ Interface ႁူမ်ႈၵၼ်ၶႃႈ။

---

#### **1. Interface Inheritance (Interface သိုပ်ႇ Interface)**
ႁဝ်းၸၢင်ႈဢဝ် Interface ဢၼ်မီးဝႆႉယဝ်ႉၼၼ်ႉ မႃးႁူမ်ႈၵၼ်သေ သၢင်ႈပဵၼ် Interface ဢၼ်ယႂ်ႇလိူဝ်သေၵဝ်ႇလႆႈၶႃႈ။

```typescript
interface Named {
  readonly name: string;
}

interface Greetable extends Named {
  greet(phrase: string): void;
}

// ယၢမ်းၼႆႉ Greetable တေမီးတင်း 'name' လႄႈ 'greet()' ႁူမ်ႈၵၼ်ၶႃႈ
```

---

#### **2. Implementing Multiple Interfaces (Class ႁပ်ႉလၢႆဢၼ်)**
ၼႆႉပဵၼ် "Power" ဢၼ်ယႂ်ႇသုတ်းၶွင် Interface ၶႃႈ။ ၸဝ်ႈၵဝ်ႇၸၢင်ႈသႂ်ႇ Interface လၢႆလၢႆဢၼ် လူၺ်ႈၸႂ်ႉ **"ၶေႃႇမႃႇ" (,)** ၶႅၼ်ႈဝႆႉၶႃႈဢေႃႈ။

```typescript
interface CanEat {
  eat(): void;
}

interface CanFly {
  fly(): void;
}

// Class Bird ႁပ်ႉၵိၼ်ၵႂၢမ်းဝႃႈ တေႁဵတ်းလႆႈတင်းသွင်လွင်ႈ
class Bird implements CanEat, CanFly {
  eat() {
    console.log("Eating seeds...");
  }
  fly() {
    console.log("Flying in the sky!");
  }
}
```



---

#### **3. Why use Multiple Interfaces?**
* **Granularity:** ၸဝ်းၵဝ်ႇၸၢင်ႈသၢင်ႈ Interface ဢၼ် "လဵၵ်းလဵၵ်း" (Small/Specific) သေ ဢဝ်မႃးႁူမ်ႈၵၼ် မိူဝ်ႈလူဝ်ႇၸႂ်ႉၵူၺ်း။
* **Flexibility:** ႁႄႉၵႅတ်ႇလွင်ႈတႅမ်ႈ Class ဢၼ်ယႂ်ႇပူၼ်းတီႈ (God Objects) လူၺ်ႈၵၢၼ်ၸႅၵ်ႇၼႃႈၵၢၼ် (Responsibilities) ဢွၵ်ႇပဵၼ် Interface ပႅၵ်ႇၵၼ်။
* **Composition over Inheritance:** ၼႂ်း OOP, ၵၢၼ်ဢဝ် Features လၢႆလၢႆမဵဝ်းမႃး "ႁူမ်ႈၵၼ်" (Compose) မၼ်းလီလိူဝ်သေၵၢၼ် "သိုပ်ႇ" (Inherit) တေႃႇၵၼ်ပဵၼ်သႅၼ်းယႂ်ႇလူင်ၶႃႈ။

---

#### **4. Summary Checklist**
- [ ] ၸႂ်ႉ **`extends`** တႃႇႁူမ်ႈ Interface လၢႆလၢႆဢၼ်ၶဝ်ႈၸွမ်းၵၼ်။
- [ ] ၸႂ်ႉ **`implements Interface1, Interface2`** တႃႇႁႂ်ႈ Class မီး Features လၢႆမဵဝ်း။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Class လူဝ်ႇလႆႈတႅမ်ႈ Properties/Methods ႁႂ်ႈထူၼ်ႈထႅၼ်းၸွမ်း **"ၵူႈ Interface"** ဢၼ်မၼ်းႁပ်ႉၵိၼ်ၵႂၢမ်းဝႆႉ။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇၸႅၵ်ႇ Interface ႁႂ်ႈလဵၵ်းသေ ႁွင်ႉၸႂ်ႉၸွမ်းၼႃႈၵၢၼ်တေႉတေႉ။

---

**Congratulations!** ၸဝ်ႈၵဝ်ႇယဝ်ႉယဝ်ႉၶႃႈ တွၼ်ႈတႃႇ **Module 12: Advanced OOP**! ယၢမ်းၼႆႉ ၸဝ်ႈၵဝ်ႇပဵၼ် "Architect" ဢၼ်ၸၢင်ႈဝၢင်းပိူင် (Standard) ႁႂ်ႈ App ၶွင်ၸဝ်ႈၵဝ်ႇမီးလွင်ႈၵႅၼ်ႇၶႅင် လႄႈ ၸတ်းၵၢၼ်ငၢႆႈယဝ်ႉၶႃႈ။

ႁဝ်းတေၵႂႃႇတႄႇ **Module 13: Generics** (တွၼ်ႈဢၼ်တေႁဵတ်းႁႂ်ႈၶူတ်ႉၸဝ်ႈၵဝ်ႇ "Reusable" သုတ်းၶတ်း) တေႃႇႁႃႉၶႃႈ ၸၢႆးမၢဝ်း?

1. ၵႂႃႇတႄႇ Module 13 တေႃႇ (Generics Power)။
2. ႁဵတ်း Quiz ၸႅတ်ႈထတ်း Module 11 & 12 (OOP Mastery)။
3. ယွၼ်းတူၺ်း Summary Code ၶွင် Advanced OOP။

ၸဝ်ႈၵဝ်ႇ ၶႂ်ႈႁဵတ်းသင်တေႃႇလႃႆႉၶႃႈ?