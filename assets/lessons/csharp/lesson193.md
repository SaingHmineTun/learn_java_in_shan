# Lesson 193: "The Exception Object: Message and StackTrace"

မိူဝ်ႈႁဝ်းတႅမ်ႈ `catch (Exception ex)` ၼၼ်ႉ တူဝ် **`ex`** ၼႆႉပဵၼ် Object ဢၼ်သိမ်းၶေႃႈမုၼ်း လွင်ႈတၢင်းဢၼ်ၽိတ်းဝႆႉ တင်းမူတ်းၶႃႈ။ 
မၼ်းမီး Property ဢၼ်လမ်ႇလွင်ႈယူႇ 2 ဢၼ် ဢၼ်ႁဝ်းတေလႆႈၸႂ်ႉတႃႇသေႇၶႃႈ။

### 1. Property `Message`
Property ၼႆႉ တေလၢတ်ႈၼႄႁဝ်းဝႃႈ "ပၼ်ႁႃၼၼ်ႉပဵၼ်သင်?" လူၺ်ႈၸႂ်ႉလိၵ်ႈဢၼ်လူငၢႆႈၶႃႈ။
* **တူဝ်ယင်ႇ:** "Attempted to divide by zero." ဢမ်ႇၼၼ် "Input string was not in a correct format."

### 2. Property `StackTrace`
Property ၼႆႉသမ်ႉ တေလၢတ်ႈၼႄႁဝ်းဝႃႈ "ပၼ်ႁႃၼၼ်ႉပဵၼ်ဝႆႉတီႈလႂ်?"။ 
မၼ်းတေၼႄၸိုဝ်ႈ Method၊ ၸိုဝ်ႈ File လႄႈ **မၢႆထႅဝ် (Line Number)** ဢၼ်မီးပၼ်ႁႃၼၼ်ႉၶႃႈ။ 
ၼႆႉပဵၼ် ၶိူင်ႈမိုဝ်းဢၼ်လီသုတ်း တႃႇႁႂ်ႈႁဝ်းႁႃတီႈၽိတ်း (Debug) လႆႈဝႆးၶႃႈ။



### 3. တူဝ်ယင်ႇ Code ၵၢၼ်ၸႂ်ႉတႄႉ

```csharp
try {
    string text = null;
    Console.WriteLine(text.Length); // ❌ ၼႆႉတေပဵၼ် NullReferenceException
} 
catch (Exception ex) {
    Console.WriteLine("--- ႁူဝ်ၶေႃႈပၼ်ႁႃ ---");
    Console.WriteLine($"Message: {ex.Message}");
    
    Console.WriteLine("\n--- တီႈပဵၼ်ပၼ်ႁႃ (StackTrace) ---");
    Console.WriteLine(ex.StackTrace);
}
```

### 4. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ?
1.  **Debugging:** မိူဝ်ႈႁဝ်းတိုၵ်ႉတႅမ်ႈ Code ယူႇၼၼ်ႉ `StackTrace` တေၸွႆးၸိၼႄႁဝ်းၵမ်းလဵဝ်ဝႃႈ ထႅဝ်လိၵ်ႈမၢႆလႂ် မီးပၼ်ႁႃ။
2.  **Logging:** ၼႂ်း App တႄႉတႄႉၼၼ်ႉ ႁဝ်းၵႆႉသိမ်း (Save) ၶေႃႈမုၼ်းၸိူဝ်းၼႆႉဝႆႉၼႂ်း File (Log File) တႃႇတေမႃးၵူတ်ႇထတ်းလႄႈ မႄးပၼ်ႁႃၼႂ်းဝၼ်းၼႃႈၶႃႈ။
3.  **User Interface:** ႁဝ်းဢမ်ႇထုၵ်ႇလီဢဝ် `StackTrace` ၵႂႃႇၼႄပၼ် ၵူၼ်းၸႂ်ႉ (User) တူၺ်းၶႃႈ (ယွၼ်ႉမၼ်းတေႁဵတ်းႁႂ်ႈၵူၼ်းၸႂ်ႉယုင်ႈယၢင်ႈ)၊ ႁဝ်းထုၵ်ႇလီၼႄ `Message` ဢၼ်ပွတ်းပွတ်း လႄႈ ဢၼ်လူငၢႆႈ ၵူၺ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Exception Instance:** တူဝ် Object ပၼ်ႁႃဢၼ်ပဵတ်ယူႇဝႆႉ။
* **Call Stack:** သဵၼ်ႈတၢင်း ၵၢၼ်ႁွင်ႉၸႂ်ႉ Method သိုပ်ႇၵၼ် တေႃႇပေႃးထိုင်တီႈ ဢွင်ႈပဵၼ်ပၼ်ႁႃ။
* **Debugging:** ၵၢၼ်ႁႃ လႄႈ ၵၢၼ်ၵႄႈပၼ်ႁႃၼႂ်း Code။
* **Null Reference:** ၵၢၼ်ၸႂ်ႉ Variable ဢၼ်ပႆႇမီးၶေႃႈမုၼ်း (Null)။

---