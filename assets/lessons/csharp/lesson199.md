# Lesson 199: "Creating Custom Exceptions"

ၵၢၼ်သၢင်ႈ Class ပၼ်ႁႃႁင်းၵူၺ်းၼၼ်ႉ ႁဝ်းတေလႆႈၸႂ်ႉလၢႆး "သိုပ်ႇၸိူဝ်ႉၶိူဝ်း" (**Inheritance**) လုၵ်ႉတီႈ Class **`Exception`** ၶႃႈ။

### 1. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇသၢင်ႈ?
1.  **Semantic Clarity:** ႁႂ်ႈၸိုဝ်ႈပၼ်ႁႃၼၼ်ႉ လၢတ်ႈၼႄလွင်ႈတၢင်းမၼ်းလႆႈၸႅင်ႈလႅင်း (မိူၼ်ၼင်ႇ `InsufficientFundsException` ၼႂ်း App ၵဵဝ်ႇလူၺ်ႈ ငိုၼ်းယေး)။
2.  **Custom Data:** ႁဝ်းၸၢင်ႈသႂ်ႇ Property တၢင်ႇပိူင်ၶဝ်ႈၵႂႃႇၼႂ်း Class ၼၼ်ႉလႆႈ (မိူၼ်ၼင်ႇ သႂ်ႇ Error Code ဢမ်ႇၼၼ် ၸိုဝ်ႈၵူၼ်းၸႂ်ႉ)။

### 2. ပိူင်သၢင်ႈ (Syntax)
ပၵ်းပိူင် ဢၼ်ႁဝ်းတေလႆႈၸွမ်း: ႁဝ်းတေလႆႈသိုပ်ႇၸိူဝ်ႉၶိူဝ်းမႃး သေသူင်ႇ Message ၵႂႃႇၸူး **`base`** constructor ၶႃႈ။

```csharp
// 1. သၢင်ႈ Class ဢၼ်သိုပ်ႇၸိူဝ်ႉမႃးတီႈ Exception
public class ShanAppException : Exception {
    public ShanAppException(string message) : base(message) {
        // သႂ်ႇ Code တၢင်ႇၸိူဝ်းလႆႈတီႈၼႆႉ
    }
}
```



### 3. တူဝ်ယင်ႇ Code: ၵၢၼ်ၸႂ်ႉတႄႉ
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းတႅမ်ႈ App တႃႇၵူတ်ႇထတ်း "ၵႃႈၶၼ်" (Price) ၼႂ်းလၢၼ်ႉၶူဝ်းတႆးၼႆၶႃႈ။

```csharp
public class InvalidPriceException : Exception {
    public int Price { get; }
    
    public InvalidPriceException(string message, int price) : base(message) {
        Price = price;
    }
}

// --- ၵၢၼ်ၸႂ်ႉ (Usage) ---
try {
    int myPrice = -500;
    if (myPrice < 0) {
        throw new InvalidPriceException("ၵႃႈၶၼ် တေလႆႈယႂ်ႇလိူဝ် သုၼ် ၶႃႈဢေႃႈ", myPrice);
    }
} 
catch (InvalidPriceException ex) {
    Console.WriteLine($"ၽိတ်းပၵ်းပိူင်: {ex.Message}");
    Console.WriteLine($"ၵႃႈၶၼ်ဢၼ်ၽိတ်း: {ex.Price}");
}
```

### 4. ပၵ်းၵၢၼ်လမ်ႇလွင်ႈ မိူဝ်ႈသၢင်ႈ Custom Exception
* **Naming:** ၸိုဝ်ႈ Class တေလႆႈသုတ်းလူၺ်ႈ ၶေႃႈၵႂၢမ်းဝႃႈ **`Exception`** တႃႇသေႇ (မိူၼ်ၼင်ႇ `ShanDataException`)။
* **Constructors:** တေလႆႈမီး Constructor ဢၼ်ႁပ်ႉ `message` လႄႈ `innerException` တႃႇသူင်ႇၸူး `base` (Class လူင်) မၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Custom Exception:** Class ပၼ်ႁႃ ဢၼ်ႁဝ်းသၢင်ႈဢွၵ်ႇမႃးႁင်းၵူၺ်း။
* **Base Keyword:** ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း ၵႂႃႇၸူး Constructor ၶွင် Class ပူႇမွၼ်ႇ (Exception)။
* **Inheritance:** ၵၢၼ်သိုပ်ႇဢဝ်ပိူင်သၢင်ႈ လုၵ်ႉတီႈ Class တၢင်ႇဢၼ်။
* **Semantic:** တီႈပွင်ႇ ဢမ်ႇၼၼ် လွင်ႈတၢင်းဢၼ်ၵွင်ႉၵၢႆႇတင်းၸိုဝ်ႈ။

---