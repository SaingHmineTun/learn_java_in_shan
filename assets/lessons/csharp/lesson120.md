# Lesson 120: "The 'private' Modifier"

မိူဝ်ႈႁဝ်းသႂ်ႇ Keyword **`private`** ဝႆႉၽၢႆႇၼႃႈ Member (Field/Method) ၸိုင်... 
မၼ်းပွင်ႇဝႃႈ **"လပ်ႉဝႆႉၼႂ်းႁိူၼ်း"** ၶႃႈ။ မၼ်းတေၸႂ်ႉလႆႈ ၼႂ်းၵႄႈ `{ }` ၶွင် Class ဢၼ်မၼ်းယူႇဝႆႉၼၼ်ႉၵူၺ်း။

### 1. ၼႃႈတီႈ ဢၼ်ႁၼ်မၼ်းလႆႈ (Visibility Scope)
* **ၼႂ်း Class လဵဝ်ၵၼ်:** ႁၼ်လႆႈ လႄႈ ၸႂ်ႉလႆႈ။
* **ၼွၵ်ႈ Class (Other classes):** ဢမ်ႇႁၼ် လႄႈ ႁွင်ႉၸႂ်ႉဢမ်ႇလႆႈ (Compile Error)။
* **လုၵ်ႉတီႈ Class လုၵ်ႈ (Inheritance):** ၵေႃႈဢမ်ႇႁၼ်ၶႃႈ။



### 2. ပိူင်သၢင်ႈ (Syntax)
```csharp
public class ShanBank {
    // Field ဢၼ်ပဵၼ် private (လပ်ႉဝႆႉ)
    private double _balance; 

    public void Deposit(double amount) {
        if (amount > 0) {
            _balance += amount; // ၼႂ်း Class လဵဝ်ၵၼ် ၸႂ်ႉ _balance လႆႈ
        }
    }
}

// ၼႂ်း Class တၢင်ႇဢၼ်
// ShanBank myBank = new ShanBank();
// myBank._balance = 5000; // Error! ဢဝ်ၸႂ်ႉဢမ်ႇလႆႈ
```

### 3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ `private`?
* **Security:** ႁႄႉၵၢင်ႈဢမ်ႇပၼ်ၵေႃႉၼွၵ်ႈ မႃးလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း ဢၼ်လမ်ႇလွင်ႈ။
* **Helper Methods:** မၢင်ပွၵ်ႈႁဝ်းမီး Method ဢၼ်ၸွႆးၵၢၼ်ၼႂ်း Class ၵူၺ်း၊ ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈပိူၼ်ႈမႃးႁၼ် ႁႂ်ႈယုင်ႈယၢင်ႈ (Hide complexity)။
* **Consistency:** ႁဵတ်းႁႂ်ႈၶေႃႈမုၼ်းၼႂ်း Object ႁဝ်း မီးပိူင်မီႈ (Rules) တႅတ်ႉတေႃးတႃႇသေႇ။

### 4. Default Modifier
ၼႂ်း C#... သင်ႁဝ်း **ဢမ်ႇတႅမ်ႈ** Access Modifier ဝႆႉၽၢႆႇၼႃႈ Variable ၼႂ်း Class ၼႆ... System တေမၵ်းမၼ်ႈပဵၼ် **`private`** ႁင်းၵူၺ်းမၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Private Modifier:** Keyword ဢၼ်ႁၢမ်ႈ သုၼ်ႇၶဝ်ႈၸႂ်ႉ လုၵ်ႉတီႈၼွၵ်ႈ Class။
* **Encapsulation:** ၵၢၼ်ႁေႃႇႁႄႉၶေႃႈမုၼ်း လူၺ်းၵၢၼ်ၸႂ်ႉ private fields။
* **Member Access:** ၵၢၼ်ၶဝ်ႈၸူး Fields/Methods (Private တေပၼ် ၼႂ်းတူဝ်မၼ်း ႁွင်ႉၸႂ်ႉၶိုၼ်းၵူၺ်း)။
* **Implementation Hiding:** ၵၢၼ်သိူင်ႇဝႆႉ လၢႆးႁဵတ်းသၢင်ႈၼႂ်းမၼ်း။

---