# Lesson 147: "Method Hiding"

မၢင်ပွၵ်ႈ Class ပေႃး (Base Class) မီး Method ဢၼ် **ဢမ်ႇၸႂ်ႉ `virtual`** (ပွင်ႇဝႃႈ မၼ်းဢမ်ႇပၼ်သုၼ်ႇမႄး)။ ၵူၺ်းၵႃႈ Class လုၵ်ႈ (Derived Class) သမ်ႉၶႂ်ႈတႅမ်ႈ Method ဢၼ်မီးၸိုဝ်ႈမိူၼ်ၵၼ်ပႅတ်ႉတေႃး။ ၼႂ်း C# ႁဝ်းၸႂ်ႉ Keyword **`new`** တႃႇ "လပ်ႉ" (Hide) Method ၶွင် Class ပေႃးဝႆႉၶႃႈ။



### 1. Keyword `new` ပဵၼ်သင်?
မိူဝ်ႈႁဝ်းသႂ်ႇ `new` ဝႆႉၼႃႈ Method ၼႂ်း Class လုၵ်ႈ... မၼ်းပွင်ႇဝႃႈ:
* "ၶႃႈႁူႉယူႇဝႃႈ Class ပေႃးမီး Method ၸိုဝ်ႈၼႆႉ၊ ၵူၺ်းၵႃႈ ၶႃႈၶႂ်ႈသၢင်ႈ Method **တူဝ်မႂ်ႇ** ဢၼ်ဢမ်ႇၵွင်ႉၵၢႆႇသင်တင်းတူဝ်ၵဝ်ႇၼၼ်ႉၶႃႈ။"
* ၼႆႉႁွင်ႉဝႃႈ **Method Hiding** (ဢမ်ႇၸႂ်ႈ Overriding) ၶႃႈ။

### 2. တူဝ်ယင်ႇ Code (Hiding vs Overriding)

```csharp
public class Parent {
    public void SayHi() { Console.WriteLine("Parent says Hi!"); }
}

public class Child : Parent {
    // ၸႂ်ႉ 'new' တႃႇလပ်ႉ SayHi() ၶွင် Parent
    public new void SayHi() { Console.WriteLine("Child says Hello!"); }
}
```

### 3. လွင်ႈပႅၵ်ႇပိူင် ဢၼ်လမ်ႇလွင်ႈသုတ်း (The Difference)
လွင်ႈပႅၵ်ႇပိူင်တႄႉတႄႉ တေႁၼ်လႆႈမိူဝ်ႈႁဝ်းၸႂ်ႉ **Polymorphism** (ဢဝ် variable ၶွင် Class ပေႃး မႃးသိမ်း Object ၶွင် Class လုၵ်ႈ) ၶႃႈ:

* **`override`:** C# တေၵႂႃႇႁွင်ႉၸႂ်ႉ Method ၼႂ်း Class **လုၵ်ႈ** တႃႇသေႇ (ယွၼ်ႉမၼ်းမႄးတႅၼ်းယဝ်ႉ)။
* **`new` (Hiding):** C# တေႁွင်ႉၸႂ်ႉ Method ၸွမ်းၼင်ႇ **"ၸိုဝ်ႈ Variable"** (Type of Reference) ၼၼ်ႉၶႃႈ။ သင် variable ပဵၼ် Parent... မၼ်းတေလႅၼ်ႈ Code ၼႂ်း Parent ၶိုၼ်းၶႃႈ။

| Feature | `override` | `new` (Hiding) |
| :--- | :--- | :--- |
| **Relation** | မႄးတႅၼ်း Method ၵဝ်ႇ | သၢင်ႈ Method မႂ်ႇ (လပ်ႉတူဝ်ၵဝ်ႇ) |
| **Virtual Required?** | တေလႆႈပဵၼ် `virtual` | ဢမ်ႇလူဝ်ႇ `virtual` |
| **Polymorphism** | လႅၼ်ႈ Code ၼႂ်း **Child** | လႅၼ်ႈ Code ၸွမ်း **Variable Type** |

### 4. မိူဝ်ႈလႂ်ၸင်ႇလူဝ်ႇၸႂ်ႉ?
* ႁဝ်းၸႂ်ႉ `new` မိူဝ်ႈ Class ပေႃး (ဢၼ်လုၵ်ႉတီႈ Library တၢင်ႇဢၼ်မႃး) ထႅမ် Method ၸိုဝ်ႈမိူၼ် Class ႁဝ်းမႃးသေ ႁဝ်းဢမ်ႇၶႂ်ႈလႅၵ်ႈလၢႆႈ Code ႁဝ်းၶႃႈ။
* ၵူၺ်းၵႃႈ ၼႂ်းၵၢၼ်တႅမ်ႈ Code ဢၼ်လီ (Best Practice)... **ႁဝ်းလူဝ်ႇဝႄႈ `new`** သေ ၸႂ်ႉ `virtual/override` တႃႇသေႇ တေလီလိူဝ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Method Hiding:** ၵၢၼ်ၸႂ်ႉ Method ၸိုဝ်ႈမိူၼ်ၵၼ် တႃႇလပ်ႉ Method ၶွင် Class ပေႃး။
* **New Keyword:** Modifier ဢၼ်ၸႂ်ႉတႃႇမၵ်းမၼ်ႈ Method Hiding။
* **Static Binding:** ၵၢၼ်လိူၵ်ႈ Method ၸွမ်းၼင်ႇ Variable Type (တူဝ်ယင်ႇ ၶွင် `new`)။
* **Shadowing:** ၸိုဝ်ႈႁွင်ႉထႅင်ႈပိူင်ၼိုင်ႈ ၶွင် Method Hiding။

---