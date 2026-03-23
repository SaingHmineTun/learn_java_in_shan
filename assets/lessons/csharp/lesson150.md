# Lesson 150: "Upcasting and Downcasting"

ဝူၼ်ႉတူၺ်းဝႃႈ ၸိူဝ်ႉၶိူဝ်းၶွင်ႁဝ်း မိူၼ်ၼင်ႇ "ၶၼ်ၵတ်း" (Ladder)။ ၵၢၼ်ပိၼ်ႇၸိူဝ်ႉၶိူဝ်း ၸၢင်ႈႁဵတ်းလႆႈ 2 လၢႆးၶႃႈ:

### 1\. Upcasting (ၵၢၼ်ၶိုၼ်ႈၸူးတူဝ်ပေႃး)

**Upcasting** ပဵၼ်ၵၢၼ်ပိၼ်ႇ Object ၶွင် Class လုၵ်ႈ (Derived Class) ႁႂ်ႈပဵၼ် Class ပေႃး (Base Class)။

* **လွတ်ႈၽေး (Safe):** ႁဵတ်းလႆႈၵမ်းလဵဝ် (Implicitly) လူၺ်းဢမ်ႇလူဝ်ႇတႅမ်ႈသင်ထႅမ်။
* **လွင်ႈၵၼ်ႉၵတ်း:** မိူဝ်ႈၶိုၼ်ႈပဵၼ်တူဝ်ပေႃးယဝ်ႉ... ႁဝ်းတေႁၼ် လႄႈ ၸႂ်ႉလႆႈၵူၺ်း Member ၸိူဝ်းဢၼ်မီးၼႂ်း Class ပေႃးၼၼ်ႉၶႃႈ။

<!-- end list -->

```csharp
Teacher t = new Teacher();
Staff s = t; // Upcasting (Teacher Is-A Staff) - ႁဵတ်းလႆႈၵမ်းလဵဝ်
```

### 2\. Downcasting (ၵၢၼ်လူင်းၸူးတူဝ်လုၵ်ႈ)

**Downcasting** ပဵၼ်ၵၢၼ်ပိၼ်ႇ Object ဢၼ်ယူႇၼႂ်း Class ပေႃး ႁႂ်ႈၶိုၼ်းပဵၼ် Class လုၵ်ႈ။

* **မီးၽေး (Unsafe):** ႁဝ်းတေလႆႈတႅမ်ႈမၵ်းမၼ်ႈ (Explicitly) ႁင်းၵူၺ်း။
* **လွင်ႈလူဝ်ႇၾၢင်ႉ:** သင် Object တူဝ်ၼၼ်ႉ ဢမ်ႇၸႂ်ႈၸိူဝ်ႉၶိူဝ်းလုၵ်ႈတႄႉတႄႉ... App တေ **Crash** (InvalidCastException) ၶႃႈ။ ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ `is` ဢမ်ႇၼၼ် `as` (Lesson 149) တႃႇၸွႆးၵူတ်ႇထတ်းၶႃႈ။

<!-- end list -->

```csharp
Staff s = new Teacher(); // သိမ်းဝႆႉၼႂ်း Staff
Teacher t = (Teacher)s;  // Downcasting - တေလႆႈသႂ်ႇ (Teacher) ဝႆႉၼႃႈမၼ်း
t.Teach(); // ယၢမ်းလဵဝ် ၸႂ်ႉ Method ၶွင် Teacher လႆႈယဝ်ႉ
```

### 3\. ပႅၵ်ႇပိူင်ၵၼ်ၼင်ႇႁိုဝ်?

| Feature | Upcasting | Downcasting |
| :--- | :--- | :--- |
| **Direction** | Child -\> Parent | Parent -\> Child |
| **Safety** | Always Safe | Dangerous (Needs check) |
| **Casting Type** | Implicit (Automatic) | Explicit (Manual) |
| **Why use?** | Polymorphism (Grouping) | Accessing specific child methods |

### 4\. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ?

* **Upcasting:** ၸွႆးႁႂ်ႈႁဝ်းသိမ်း Object လၢႆလၢႆပိူင် (Teacher, Student) ဝႆႉၼႂ်း List လဵဝ်ၵၼ် (List\<Staff\>) လႆႈငၢႆႈၶႃႈ။
* **Downcasting:** ၸွႆးႁႂ်ႈႁဝ်း "ၶိုၼ်းၵႂႃႇဢဝ်" (Recover) ၼႃႈတီႈဝိသဵတ်ႇ ၶွင် Class လုၵ်ႈ မႃးၸႂ်ႉၶိုၼ်း မိူဝ်ႈႁဝ်းလူဝ်ႇတႄႉတႄႉၶႃႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Upcasting:** ၵၢၼ်ပိၼ်ႇၸိူဝ်ႉၶိူဝ်းၶိုၼ်ႈၸူး Base Class။
* **Downcasting:** ၵၢၼ်ပိၼ်ႇၸိူဝ်ႉၶိူဝ်းလူင်းၸူး Derived Class။
* **Implicit Casting:** ၵၢၼ်ပိၼ်ႇၸိူဝ်ႉၶိူဝ်း ဢၼ် Compiler ႁဵတ်းပၼ်ႁင်းၵူၺ်း။
* **Explicit Casting:** ၵၢၼ်ပိၼ်ႇၸိူဝ်ႉၶိူဝ်း ဢၼ် Programmer တေလႆႈတႅမ်ႈမၵ်းမၼ်ႈႁင်းၵူၺ်း။

-----