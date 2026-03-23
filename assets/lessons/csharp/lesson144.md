# Lesson 144: "Introduction to Polymorphism"

ၶေႃႈၵႂၢမ်းဝႃႈ **Polymorphism** ၼႆႉ မႃးလုၵ်ႉတီႈလိၵ်ႈ Greek:
* **Poly** ပွင်ႇဝႃႈ "ၼမ်" (Many)
* **Morph** ပွင်ႇဝႃႈ "ႁၢင်ႈၽၢင်" (Forms)

ၼႂ်းၵၢၼ်တႅမ်ႈ Code... မၼ်းပွင်ႇဝႃႈ **"Object တူဝ်လဵဝ် ၸၢင်ႈႁဵတ်းသၢင်ႈလႆႈ လၢႆလၢႆပိူင် ၸွမ်းၼင်ႇၸိူဝ်ႉၶိူဝ်း (Type) ဢၼ်မၼ်းပဵၼ်တႄႉတႄႉၼၼ်ႉ"** ယဝ်ႉၶႃႈ။



### 1. တူဝ်ယင်ႇ ၼႂ်းၸူဝ်ႈပၢၼ်တႄႉ
ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်း ပဵၼ် **`Person`** (ၵူၼ်း) ၵေႃႉၼိုင်ႈ။ ၵူၺ်းၵႃႈ ၶူးမီးလၢႆႁၢင်ႈ:
* မိူဝ်ႈယူႇတီႈႁူင်းႁဵၼ်း: ၶူးမီးႁၢင်ႈပဵၼ် **`Teacher`** (သွၼ်လိၵ်ႈ)။
* မိူဝ်ႈယူႇတီႈႁိူၼ်း: ၶူးမီးႁၢင်ႈပဵၼ် **`Father`** (လုမ်းလႃးလုၵ်ႈ)။
* မိူဝ်ႈယူႇတီႈၵၢတ်ႇ: ၶူးမီးႁၢင်ႈပဵၼ် **`Customer`** (သိုဝ်ႉၶူဝ်း)။
  **သဵင်ႁွင်ႉ** (Command) ဢၼ်ဝႃႈ "ႁဵတ်းၵၢၼ်လႄႇ" (Do Work) ၼၼ်ႉ... ၶူးတေႁဵတ်းဢမ်ႇမိူၼ်ၵၼ် ၸွမ်းၼင်ႇ "ႁၢင်ႈၽၢင်" ဢၼ်ၶူးပဵၼ်ယူႇၼၼ်ႉၶႃႈ။

### 2. Polymorphism ၼႂ်း C# မီး 2 ပိူင်
1.  **Static (Compile-time) Polymorphism:** ၼႆႉပဵၼ် **Method Overloading** (Lesson 78 ဢၼ်ႁဝ်းႁဵၼ်းမႃးယဝ်ႉ)။ မၼ်းပဵၼ်ၵၢၼ်မီး Method ၸိုဝ်ႈမိူၼ်ၵၼ် ၵူၺ်းၵႃႈ Parameter ဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ။
2.  **Dynamic (Runtime) Polymorphism:** ၼႆႉပဵၼ်လွၼ်ႉမၼ်းတႄႉတႄႉ ဢၼ်ႁဝ်းတေႁဵၼ်းယၢမ်းလဵဝ်။ မၼ်းၸႂ်ႉ **Inheritance** (ၵၢၼ်သိုပ်ႇၸိူဝ်ႉၶိူဝ်း) တႃႇႁႂ်ႈ Class လုၵ်ႈ လႅၵ်ႈလၢႆႈ (Override) လၢႆးႁဵတ်းသၢင်ႈၶွင် Class ပေႃးၶႃႈ။

### 3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
* **Flexibility:** ႁဝ်းၸၢင်ႈတႅမ်ႈ Code ဢၼ်ၸႂ်ႉလႆႈတင်း Object လၢႆလၢႆပိူင် ၼႂ်း "ၸိူဝ်ႉၶိူဝ်း" (Base Type) လဵဝ်ၵၼ်။
* **Extensibility:** ႁဝ်းၸၢင်ႈထႅမ် Class မႂ်ႇๆ ၶဝ်ႈမႃး (မိူၼ်ၼင်ႇ ထႅမ် Class `Monk` ၶဝ်ႈၼႂ်း `Person`) သေ Code ၵဝ်ႇႁဝ်းတိုၵ်ႉႁဵတ်းၵၢၼ်လႆႈယူႇ လူၺ်းဢမ်ႇလူဝ်ႇမႄးသင်ၶႃႈ။

### 4. တူဝ်ယင်ႇ ဝူၼ်ႉတူၺ်း Code (Concept Only)
```csharp
// ႁဝ်းမီး List ၶွင် Person (ၸိူဝ်ႉၶိူဝ်းတူဝ်ပေႃး)
List<Person> community = new List<Person>();

community.Add(new Teacher()); // Teacher Is-A Person
community.Add(new Student()); // Student Is-A Person

foreach (var p in community) {
    p.PerformDuty(); // Teacher တေ 'Teach'၊ Student တေ 'Learn' ႁင်းၵူၺ်းမၼ်း
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Polymorphism:** ၵၢၼ်ဢၼ် Object တူဝ်ၼိုင်ႈ ၸၢင်ႈမီးလၢႆႁၢင်ႈၽၢင်။
* **Many Forms:** တီႈပွင်ႇၶွင် Polymorphism။
* **Runtime Polymorphism:** ၵၢၼ်လႅၵ်ႈလၢႆႈႁၢင်ႈၽၢင် မိူဝ်ႈ App တိုၵ်ႉလႅၼ်ႈယူႇ (ၸႂ်ႉ virtual/override)။
* **Base Type Reference:** ၵၢၼ်ၸႂ်ႉ variable ၶွင် Class ပေႃး တႃႇၵုမ်းထိင်း Object ၶွင် Class လုၵ်ႈ။

---