# Lesson 151: "The Base 'Object' Class"

ၼႂ်း .NET Framework ၼၼ်ႉ Class **`System.Object`** ပဵၼ် "ငဝ်ႈမေႃႇ" (Root) ၶွင်ၵူႈ Class တင်းမူတ်းၶႃႈ။ သင်ၶူးသၢႆမၢဝ်းသၢင်ႈ Class မႃးသေ ဢမ်ႇလႆႈၸႂ်ႉမၢႆ `:` တႃႇသိုပ်ႇၸိူဝ်ႉၶိူဝ်းလုၵ်ႉတီႈၽႂ်... C# တေသူင်ႇမၼ်းၵႂႃႇသိုပ်ႇၸိူဝ်ႉၶိူဝ်းလုၵ်ႉတီႈ **`Object`** ႁင်းၵူၺ်းမၼ်း (Implicitly) ၵမ်းလဵဝ်ၶႃႈ။



### 1. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇမီး `Object` Class?
1.  **Uniformity:** တႃႇႁႂ်ႈၵူႈ Object တင်းမူတ်း ၼႂ်း C# မီး "ပိူင်ၵၢၼ်ပိုၼ်ႉထၢၼ်" ဢၼ်မိူၼ်ၵၼ်။
2.  **Universal Storage:** ႁဝ်းၸၢင်ႈၸႂ်ႉ variable ၶွင် `object` တႃႇသိမ်း Data ၸိူဝ်ႉၶိူဝ်းသင်ၵေႃႈလႆႈ (မိူၼ်ၼင်ႇ `int`, `string`, `Teacher`, `Car`)။
3.  **Shared Methods:** မၼ်းပၼ် Methods လမ်ႇလွင်ႈ 4-5 တူဝ် တႃႇႁႂ်ႈႁဝ်းၸႂ်ႉလႆႈၵူႈတီႈၶႃႈ။

### 2. Methods ဢၼ်လႆႈမွေႇမႃးလုၵ်ႉတီႈ `Object`
မိူဝ်ႈၶူးသၢင်ႈ Object မႃးတူဝ်ၼိုင်ႈ သေတႅမ်ႈမၢႆ **`.`** (Dot) ဝၢႆးၸိုဝ်ႈမၼ်း... ၶူးတေႁၼ် Methods ၸိူဝ်းၼႆႉတႃႇသေႇ:

* **`ToString()`:** ပိူၼ်ႈ Object ႁႂ်ႈပဵၼ် လိၵ်ႈ (String)။ (Default မၼ်းတေဢွၵ်ႇၸိုဝ်ႈ Class)။
* **`Equals(obj)`:** ၸႂ်ႉတႃႇၵူတ်ႇထတ်းဝႃႈ Object သွင်တူဝ် မိူၼ်ၵၼ်ႁႃႉ?
* **`GetHashCode()`:** သူင်ႇမၢႆလပ်ႉ (ID Number) ၶွင် Object ၼၼ်ႉဢွၵ်ႇမႃး တႃႇၸႂ်ႉၼႂ်း Hashtables။
* **`GetType()`:** တႃႇႁူႉဝႃႈ Object တူဝ်ၼႆႉ ပဵၼ်ၸိူဝ်ႉၶိူဝ်း (Type) သင်တႄႉတႄႉ။

### 3. တူဝ်ယင်ႇ ၵၢၼ် `override` ToString()
ယွၼ်ႉ Methods ၸိူဝ်းၼႆႉပဵၼ် **`virtual`**... ႁဝ်းၸၢင်ႈမႄး (Override) မၼ်း ႁႂ်ႈဢွၵ်ႇလိၵ်ႈဢၼ်ႁဝ်းၶႂ်ႈလႆႈၶႃႈ။

```csharp
public class ShanBook {
    public string Title { get; set; }

    // Override Method ၶွင် Object Class
    public override string ToString() {
        return $"Book Title: {Title}";
    }
}

// ၵၢၼ်ၸႂ်ႉ:
ShanBook myBook = new ShanBook { Title = "Lik Tai" };
Console.WriteLine(myBook.ToString()); // ဢွၵ်ႇ: "Book Title: Lik Tai"
```

### 4. `object` Variable (The Ultimate Upcasting)
ႁဝ်းၸၢင်ႈဢဝ် `object` မႃးႁပ်ႉလႆႈၵူႈလွင်ႈ ယွၼ်ႉ "Everything IS-A Object" ၶႃႈ။

```csharp
object o1 = 100;           // int is a object
object o2 = "Hello Muse";  // string is a object
object o3 = new Teacher(); // Teacher is a object
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **System.Object:** Class ပေႃးလူင် ပိုၼ်ႉထၢၼ်သုတ်း ၼႂ်း .NET။
* **Root Class:** Class ဢၼ်ယူႇတီႈငဝ်ႈမေႃႇ ၶွင်သၢႆၸိူဝ်ႉၶိူဝ်း။
* **Implicit Inheritance:** ၵၢၼ်သိုပ်ႇၸိူဝ်ႉၶိူဝ်း ဢၼ်ႁဵတ်းပၼ်ႁင်းၵူၺ်း (လူၺ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ :)။
* **Boxing:** ၵၢၼ်ဢဝ် Value Type (မိူၼ် int) သႂ်ႇဝႆႉၼႂ်း `object` variable (တေႁဵၼ်းလိုၵ်ႉဝၢႆးၼႃႈ)။

---