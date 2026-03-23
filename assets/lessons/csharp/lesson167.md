# Lesson 167: "The 'static' Keyword"

ၼႂ်း C#... Keyword **`static`** ၼႆႉ ၸႂ်ႉတႃႇမၵ်းမၼ်ႈဝႃႈ Member ၼၼ်ႉ (Field, Method, Property) ပဵၼ်ၶွင် **"Class တင်းမူတ်း"** (Class-Level)၊ ဢမ်ႇၸႂ်ႈၶွင် "Object တူဝ်လႂ်တူဝ်ၼၼ်ႉ" (Instance-Level) ၶႃႈ။



### 1. Instance-Level (ပိူင်ဢၼ်ႁဝ်းႁဵၼ်းမႃးယဝ်ႉ)
* မိူဝ်ႈႁဝ်းဢမ်ႇၸႂ်ႉ `static`... ၵူႈ Object ဢၼ်ႁဝ်း `new` မႃးၼၼ်ႉ တေမီးၶေႃႈမုၼ်း "ႁင်းၵူၺ်းမၼ်း" (Separate copy)။
* **တူဝ်ယင်ႇ:** Class `ShanStudent` မီး Property `Name`။
    * `Student A` ၸိုဝ်ႈဝႃႈ "ၸၢႆးလႃႉ"။
    * `Student B` ၸိုဝ်ႈဝႃႈ "ၸၢႆးသႅင်"။
    * ၸိုဝ်ႈၽႂ်ၸိုဝ်ႈမၼ်း၊ ဢမ်ႇၵွင်ႉၵၢႆႇၵၼ်ၶႃႈ။

### 2. Class-Level (Static)
* မိူဝ်ႈႁဝ်းသႂ်ႇ `static`... ၶေႃႈမုၼ်းၼၼ်ႉ တေမီး **"Copy တူဝ်လဵဝ်ၵူၺ်း"** တႃႇ Class တင်းမူတ်း။
* ၵူႈ Object တင်းမူတ်း တေၸႂ်ႉၶေႃႈမုၼ်းတူဝ်ၼၼ်ႉ "ႁူမ်ႈၵၼ်" (Shared) ၶႃႈ။
* **တူဝ်ယင်ႇ:** Class `ShanStudent` မီး `static string SchoolName = "TMK School"`။
    * ဢမ်ႇဝႃႈတေမီးလုၵ်ႈႁဵၼ်း 1,000 ၵေႃႉ... တင်းမူတ်းတေႁၼ်ၸိုဝ်ႈႁူင်းႁဵၼ်းပဵၼ် "TMK School" တူဝ်လဵဝ်ၵၼ်ၼၼ်ႉယဝ်ႉၶႃႈ။

### 3. ပႅၵ်ႇပိူင်ၵၼ်ၼင်ႇႁိုဝ်?

| Feature | Instance (Non-Static) | Static (Class-Level) |
| :--- | :--- | :--- |
| **Memory** | မီး Copy ႁင်းၵူၺ်း ၸွမ်းၼင်ႇ Object | မီး Copy **တူဝ်လဵဝ်ၵူၺ်း** တႃႇၵူႈ Object |
| **Access** | ႁွင်ႉၸႂ်ႉၽၢၼ်ႇ **Object** (`s1.Name`) | ႁွင်ႉၸႂ်ႉၽၢၼ်ႇ **Class** (`Student.School`) |
| **Purpose** | သိမ်းၶေႃႈမုၼ်း တူဝ်ၽႂ်တူဝ်မၼ်း | သိမ်းၶေႃႈမုၼ်း ဢၼ်ႁူမ်ႈၵၼ်/ၵူႈတီႈ |
| **Lifetime** | တၢႆၵႂႃႇ မိူဝ်ႈ Object ထုၵ်ႇလူတ်ႇပႅတ်ႈ | တိုၵ်ႉယူႇ တေႃႇ App တေပိတ်း |

### 4. တူဝ်ယင်ႇ Code (The Syntax)

```csharp
public class ShanStudent {
    // Instance Member: ၽႂ်မၼ်း
    public string Name { get; set; }

    // Static Member: ႁူမ်ႈၵၼ်
    public static string SchoolName = "Thung Mao Kham";
}

// --- ၵၢၼ်ၸႂ်ႉတႄႉ ---
ShanStudent s1 = new ShanStudent { Name = "Sai Hla" };
ShanStudent s2 = new ShanStudent { Name = "Sai Hseng" };

Console.WriteLine(s1.Name); // "Sai Hla"
Console.WriteLine(ShanStudent.SchoolName); // "Thung Mao Kham" (ႁွင်ႉၸူး Class ၵမ်းလဵဝ်)
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Static:** Member ဢၼ်ပဵၼ်ၶွင် Class၊ ဢမ်ႇၸႂ်ႈၶွင် Object။
* **Instance:** Object ဢၼ်သၢင်ႈမႃးလုၵ်ႉတီႈ Class။
* **Shared State:** ၶေႃႈမုၼ်း ဢၼ်ၸႂ်ႉႁူမ်ႈၵၼ်။
* **Class-Level Access:** ၵၢၼ်ႁွင်ႉၸႂ်ႉ လူၺ်ႈၸႂ်ႉၸိုဝ်ႈ Class ၼႃႈမၢႆ Point (`.`)။

---