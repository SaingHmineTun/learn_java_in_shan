# Lesson 141: "The 'base' Keyword"

မိူဝ်ႈႁဝ်းသိုပ်ႇၸိူဝ်ႉၶိူဝ်းမႃးယဝ်ႉ... မၢင်ပွၵ်ႈႁဝ်းၶႂ်ႈႁွင်ႉၸႂ်ႉ Method ဢမ်ႇၼၼ် Constructor ဢၼ်ယူႇၼႂ်း Class ပေႃး (Parent) ၼၼ်ႉ တႅတ်ႉတေႃးၶႃႈ။ ႁဝ်းၸႂ်ႉ Keyword **`base`** တႃႇလၢတ်ႈၼႄ Compiler ဝႃႈ "ၵႂႃႇဢဝ်တွၼ်ႈၼႆႉ လုၵ်ႉတီႈ Class ပေႃးမႃးၸႂ်ႉပၼ်" ၼႆၶႃႈ။

### 1. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ `base`?
1.  **Method Overriding:** မိူဝ်ႈ Class လုၵ်ႈ မီး Method ၸိုဝ်ႈမိူၼ် Class ပေႃး၊ ၵူၺ်းၵႃႈ ႁဝ်းတိုၵ်ႉၶႂ်ႈႁွင်ႉၸႂ်ႉ Logic ၶွင် Class ပေႃးယူႇ (တေႁဵၼ်းလိုၵ်ႉၼႂ်း Lesson 146)။
2.  **Accessing Hidden Members:** တႃႇႁွင်ႉၸႂ်ႉ Fields ဢမ်ႇၼၼ် Methods ဢၼ်ထုၵ်ႇ "လပ်ႉ" ဝႆႉလူၺ်း Class လုၵ်ႈ။
3.  **Constructor Chaining:** တႃႇသူင်ႇၶေႃႈမုၼ်း (Parameters) ၵႂႃႇပၼ် Constructor ၶွင် Class ပေႃး (တေႁဵၼ်းၼႂ်း Lesson 142)။



### 2. တူဝ်ယင်ႇ Code (Method Access)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Class `Staff` (ၵူၼ်းႁဵတ်းၵၢၼ်) လႄႈ `Manager` (ၵူၼ်းၵုမ်းၵၢၼ်)။

```csharp
public class Staff {
    public void Work() {
        Console.WriteLine("Doing general staff work...");
    }
}

public class Manager : Staff {
    public void Manage() {
        // ႁွင်ႉၸႂ်ႉ Work() ၶွင် Class ပေႃး (Staff) ၵမ်းလဵဝ်
        base.Work(); 
        Console.WriteLine("Now managing the team...");
    }
}
```

### 3. ပႅၵ်ႇတင်း `this` ၼင်ႇႁိုဝ်?
* **`this`:** ၵွင်ႉၸူး Member ဢၼ်ယူႇၼႂ်း Class **"တူဝ်ယၢမ်းလဵဝ်"** (Current Class)။
* **`base`:** ၵွင်ႉၸူး Member ဢၼ်ယူႇၼႂ်း Class **"ပေႃး"** (Parent Class)။

### 4. တူဝ်ယင်ႇ ၵၢၼ်ၸႅၵ်ႇလႅၼ်း
သင်ၶူးသၢႆမၢဝ်းမီး Variable ၸိုဝ်ႈမိူၼ်ၵၼ်တင်းသွင် Class:

```csharp
public class Parent {
    public string FamilyName = "Mao";
}

public class Child : Parent {
    public string FamilyName = "Young Mao";

    public void ShowNames() {
        Console.WriteLine(this.FamilyName); // Show: "Young Mao"
        Console.WriteLine(base.FamilyName); // Show: "Mao"
    }
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Base Keyword:** Keyword ဢၼ်ၸႂ်ႉတႃႇၵွင်ႉၸူး Base Class members။
* **Parent Class:** Class ဢၼ်ပဵၼ်တူဝ်သူင်ႇၸိူဝ်ႉမွေႇ။
* **Member Access:** ၵၢၼ်ၶဝ်ႈၸူး Variable ဢမ်ႇၼၼ် Method ၼႂ်း Class။
* **Overriding:** ၵၢၼ်တႅမ်ႈ Code ထႅမ်သႂ်ႇ ဢမ်ႇၼၼ် လႅၵ်ႈလၢႆႈ Logic ၶွင် Class ပေႃး။

---