# Lesson 85: "Passing by Reference (The 'ref' Keyword)"

မိူဝ်ႈႁဝ်းၸႂ်ႉ **`ref`** keyword ၼႆႉ... မၼ်းတေဢမ်ႇသူင်ႇ "ၵေႃႇပီႇ" (Copy) ၵႂႃႇမိူၼ် Lesson 84 ယဝ်ႉၶႃႈ။ 
မၼ်းတေသူင်ႇ **"မၢႆၼပ်ႉတီႈယူႇ" (Address)** ၶွင် Variable တူဝ်တႄႉၼၼ်ႉ ၶဝ်ႈၵႂႃႇၼႂ်း Method ၵမ်းလဵဝ်ၶႃႈ။

### 1. မၼ်းႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး "ပပ်ႉလိၵ်ႈ" (Variable) တူဝ်တႄႉ။ မိူဝ်ႈသူင်ႇပၼ်လုၵ်ႈႁဵၼ်း ၸႂ်ႉလၢႆး Pass by Reference ၼႆႉ မိူၼ်ၼင်ႇ ႁဝ်းပၼ် "သေႃး" (Reference/Key) တႃႇပိုတ်ႇတိူၵ်ႈ သိမ်းပပ်ႉတူဝ်တႄႉ ၼၼ်ႉပၼ်ၶဝ်ၶႃႈ။
* သင်လုၵ်ႈႁဵၼ်း တႅမ်ႈလိၵ်ႈသႂ်ႇၼႂ်း ပပ်ႉၼၼ်ႉ...
* မိူဝ်ႈႁဝ်းၵႂႃႇပိုတ်ႇတူၺ်း ပပ်ႉတူဝ်တႄႉ (Original) ၼႆ လိၵ်ႈဢၼ်လုၵ်ႈႁဵၼ်းတႅမ်ႈဝႆႉၼၼ်ႉ တေ **မီးဝႆႉ** ယဝ်ႉၶႃး။



### 2. ပိူင်သၢင်ႈ (Syntax)
ႁဝ်းတေလႆႈသႂ်ႇၶေႃႈၵႂၢမ်း **`ref`** ဝႆႉ ၽၢႆႇၼႃႈ Parameter လႄႈ ၽၢႆႇၼႃႈ Argument မိူဝ်ႈႁွင်ႉၸႂ်ႉၶႃႈ။

```csharp
class Program {
    static void Main() {
        int myNumber = 10;
        
        // လူဝ်ႇသႂ်ႇ 'ref' တီႈ Argument ၸွမ်း
        UpdateValue(ref myNumber);

        // ယၢမ်းလဵဝ် ၵႃႈၶၼ်တူဝ်တႄႉ တေပဵၼ် 500 ယဝ်ႉ!
        Console.WriteLine("Original Value after Method: " + myNumber); 
    }

    // လူဝ်ႇသႂ်ႇ 'ref' တီႈ Parameter ၸွမ်း
    static void UpdateValue(ref int x) {
        x = 500; // လုၵ်ႉၼႂ်း Method မႄးလႅၵ်ႈလၢႆႈတူဝ်တႄႉ 
    }
}
```

### 3. ပိူင်ၵၢၼ် (Rules)
* **Initialization:** Variable ဢၼ်တေသူင်ႇပဵၼ် `ref` ၼၼ်ႉ တေလႆႈ **"ပၼ်ၵႃႈၶၼ်တႄႇ" (Initialize)** ဝႆႉဢွၼ်တၢင်းၵွၼ်ႇ ၸင်ႇသူင်ႇၶဝ်ႈ Method ၶႃႈ။
* **Explicit:** လူဝ်ႇတႅမ်ႈ `ref` တင်းသွင်ၽၢႆႇ (တီႈ Method Definition လႄႈ တီႈ Method Call) တႃႇႁႂ်ႈ Developer ႁူႉဝႃႈ "ၵဝ်တိုၵ်ႉပၼ်သုၼ်ႇ မႄးၶေႃႈမုၼ်းတူဝ်တႄႉယူႇ" ၼႆၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Pass by Reference:** ၵၢၼ်သူင်ႇ "မၢႆၼပ်ႉတီႈယူႇ" (Address) ၶွင်ၶေႃႈမုၼ်း ၶဝ်ႈၵႂႃႇၼႂ်း Method။
* **ref Keyword:** ၶေႃႈၵႂၢမ်းဢၼ်ၸႂ်ႉတႃႇမၵ်းမၼ်ႈၵၢၼ် Pass by Reference။
* **Initialize:** ၵၢၼ်ပၼ်ၵႃႈၶၼ်တႄႇ (Value) ႁႂ်ႈ Variable ဢွၼ်ႇတၢင်းပႆႇၸႂ်ႉ။
* **Address / Pointer:** မၢႆၼပ်ႉဢၼ်လၢတ်ႈဝႃႈ ၶေႃႈမုၼ်းယူႇတီႈလႂ် ၼႂ်း RAM (Memory)။

---