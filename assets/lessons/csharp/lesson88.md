# Lesson 88: "Local Functions: Nesting Logic"

**Local Function** ၼႆႉ ပဵၼ် Method ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း Body ၶွင် Method တၢင်ႇတူဝ်။ မၼ်းမီးဝႆႉတႃႇၸွႆႈ (Helper) Method လူင်မၼ်းၵူၺ်းလႄႈ
ၽၢႆႇၼွၵ်ႈ Method လူင်မၼ်းၼၼ်ႉ တေဢမ်ႇႁၼ် လႄႈ ႁွင်ႉၸႂ်ႉမၼ်း **ဢမ်ႇလႆႈ** ၶႃႈ။

### 1. မၼ်းႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းတႅမ်ႈ Method လူင်တႃႇ "ၼပ်ႉၵႃႈၶၼ်ၶူဝ်းတင်းမူတ်း"။ ၼႂ်းၼၼ်ႉ မၼ်းလူဝ်ႇမီးၵၢၼ် "ၼပ်ႉဢဝ် Tax (ၶွၼ်ႇ)" ဢၼ်လၢႆးၼပ်ႉမၼ်းသုၵ်ႉယုင်ႈ။ ၽိူဝ်ႇတႃႉတေတႅမ်ႈ Code ၼၼ်ႉပဵၼ်ထႅဝ်ယၢဝ်းလူင်၊ ႁဝ်းၸၢင်ႈသၢင်ႈ Local Function ဝႆႉၼႂ်းမၼ်းလႆႈၶႃႈ။



### 2. တူဝ်ယင်ႇ Code (Internal Helper)
```csharp
public void ProcessOrder(double price, int count) {
    // ၼႆႉပဵၼ် Local Function (ယူႇၼႂ်း Method)
    double CalculateTax(double p) {
        return p * 0.05; // ၶွၼ်ႇ 5%
    }

    double total = (price * count) + CalculateTax(price * count);
    Console.WriteLine($"Total Price with Tax: {total}");
}
```

### 3. တၢင်းလီၶွင် Local Functions
* **Encapsulation:** Logic ဢၼ်ၸႂ်ႉၼႂ်း Method ၼၼ်ႉ တေဢမ်ႇၵႂႃႇယုင်ႈတင်း Method တၢင်ႇဢၼ်ၼႂ်း Class။
* **Access to Variables:** Local Function ၸၢင်ႈ "ႁၼ်" လႄႈ "ၸႂ်ႉ" Variable ၵူႈတူဝ် ဢၼ်ယူႇၼႂ်း Method လူင်မၼ်း (Outer Method) ၼၼ်ႉလႆႈၵမ်းလဵဝ်ၶႃႈ။
* **Readability:** ၸွႆးႁႂ်ႈ Method လူင်ဢၼ်မီး Code ၼမ်ၼၼ်ႉ ဢၢၼ်ႇလူငၢႆႈ ယွၼ်ႉၸႅၵ်ႇပဵၼ်တွၼ်ႈဢွၼ်ႇဝႆႉယဝ်ႉ။

### 4. လွင်ႈလူဝ်ႇၾၢင်ႉ (Rules)
* **Scope:** ႁွင်ႉၸႂ်ႉလႆႈ ၼႂ်း Method ဢၼ်မၼ်းယူႇဝႆႉၼၼ်ႉၵူၺ်း။
* **No Access Modifiers:** ႁဝ်းဢမ်ႇလူဝ်ႇသႂ်ႇ `public` ဢမ်ႇၼၼ် `private` ၽၢႆႇၼႃႈ Local Function ၶႃႈ (ယွၼ်ႉမၼ်းပဵၼ် Local ယူႇယဝ်ႉ)။
* **Position:** ႁဝ်းၸၢင်ႈတႅမ်ႈဝႆႉ တီႈလႂ်ၵေႃႈလႆႈ ၼႂ်း Method လူင် (တႄႇၼႃႈ ဢမ်ႇၼၼ် ဝၢင်ႈလင် `return` ၵေႃႈလႆႈၶႃႈ)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Local Function:** Method ဢၼ်ပိုၼ်ၽၢဝ်ႇဝႆႉၼႂ်း Body ၶွင် Method တၢင်ႇဢၼ်။
* **Outer Method / Parent Method:** Method လူင် ဢၼ်ပဵၼ်တီႈယူႇၶွင် Local Function။
* **Closure:** ၵၢၼ်ဢၼ် Local Function ၸၢင်ႈၸႂ်ႉ Variable ၶွင် Parent Method လႆႈ။

---