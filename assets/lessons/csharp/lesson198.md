# Lesson 198: "Inner Exceptions"

မၢင်ပွၵ်ႈ ပၼ်ႁႃၼိုင်ႈဢၼ် ၸၢင်ႈႁဵတ်းႁႂ်ႈပဵၼ်ထႅင်ႈ ပၼ်ႁႃၼိုင်ႈဢၼ်ၶႃႈ။ 
တူဝ်ယင်ႇ: သင်ႁဝ်းႁႃ File ဢမ်ႇႁၼ် (FileNotFoundException)၊ မၼ်းတေႁဵတ်းႁႂ်ႈၵၢၼ် "လူၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း" (StudentDataException) ၼၼ်ႉလူႉၵႂႃႇၸွမ်းၶႃႈ။

### 1. Inner Exception ပဵၼ်သင်?
**Inner Exception** ပဵၼ် Property ၼႂ်း Exception Object ဢၼ်သိမ်း "ပၼ်ႁႃတူဝ်ၵဝ်ႇ" ဢၼ်ႁဵတ်းႁႂ်ႈ ပၼ်ႁႃတူဝ်မႂ်ႇ ပဵၼ်မႃးၶႃႈ။ 
မၼ်းမိူၼ်ၼင်ႇ ႁဝ်းဢဝ်ပၼ်ႁႃမႂ်ႇမႃး "ႁေႃႇ" ဝႆႉၼိူဝ်ပၼ်ႁႃၵဝ်ႇၶႃႈ။



### 2. ပိူင်သၢင်ႈ (Syntax)
မိူဝ်ႈႁဝ်း `throw` Exception တူဝ်မႂ်ႇ... ႁဝ်းၸၢင်ႈသူင်ႇ Exception တူဝ်ၵဝ်ႇ (`ex`) ၶဝ်ႈၵႂႃႇၼႂ်း Constructor မၼ်းၶႃႈ။

```csharp
try {
    // Code ဢၼ်မီးပၼ်ႁႃ
} catch (Exception ex) {
    // ႁေႃႇပၼ်ႁႃၵဝ်ႇ (ex) ဝႆႉၼႂ်းပၼ်ႁႃမႂ်ႇ
    throw new Exception("မီးပၼ်ႁႃ ၼႂ်းၵၢၼ်လူၶေႃႈမုၼ်းပပ်ႉသပ်းတႆး", ex);
}
```

### 3. တူဝ်ယင်ႇ Code: ၵၢၼ်ႁေႃႇပၼ်ႁႃ (Wrapping)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းတိုၵ်ႉႁဵတ်းၵၢၼ် "Save ၶေႃႈမုၼ်း"။

```csharp
try {
    // ပၼ်ႁႃ: ဢဝ် 0 မႃးၸႅၵ်ႇ
    int x = 0;
    int y = 10 / x; 
} catch (DivideByZeroException ex) {
    // ႁဝ်းၶႂ်ႈလၢတ်ႈဝႃႈ "Save Data Failed" ယွၼ်ႉ "DivideByZero"
    throw new Exception("ၵၢၼ်သိမ်းၶေႃႈမုၼ်းလူႉယဝ်ႉၶႃႈ", ex);
}

// --- တွၼ်ႈႁပ်ႉ (Catching at higher level) ---
try {
    // ႁွင်ႉ Method ၽၢႆႇၼိူဝ်
} catch (Exception ex) {
    Console.WriteLine($"ပၼ်ႁႃမႂ်ႇ: {ex.Message}");
    
    if (ex.InnerException != null) {
        Console.WriteLine($"ငဝ်ႈႁၢၵ်ႈပၼ်ႁႃ (Inner): {ex.InnerException.Message}");
    }
}
```

### 4. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ?
1.  **Meaningful Errors:** တႃႇပၼ်ၶေႃႈမုၼ်းဢၼ်လူငၢႆႈၸူး Method ၽၢႆႇၼိူဝ် (မိူၼ်ၼင်ႇ "Database Error" တႅၼ်းဢၼ်တေပဵၼ် "Network Timeout")။
2.  **Preserving Context:** ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈပၼ်ႁႃတူဝ်ၵဝ်ႇၼၼ်ႉ "ႁၢႆၵႂႃႇ"၊ ႁဝ်းၶႂ်ႈၵဵပ်းမၼ်းဝႆႉတႃႇတူၺ်း StackTrace ၸၼ်ႉတႂ်ႈမၼ်းၶႃႈ။
3.  **Abstraction:** ႁႄႉၵၢင်ႈဢမ်ႇပၼ် Method ၽၢႆႇၼိူဝ် ႁူႉလွင်ႈတၢင်း Technical ဢၼ်လုၵ်ႉလိူဝ်ပူၼ်ႉတီႈ၊ ၵူၺ်းၵႃႈ တိုၵ်ႉမီးၶေႃႈမုၼ်းဝႆႉတႃႇ Developer ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Wrapping:** ၵၢၼ်ဢဝ် Exception တူဝ်မႂ်ႇ မႃးႁေႃႇသိမ်း Exception တူဝ်ၵဝ်ႇဝႆႉ။
* **Root Cause:** ငဝ်ႈႁၢၵ်ႈတႄႉတႄႉ ဢၼ်ႁဵတ်းႁႂ်ႈမီးပၼ်ႁႃ။
* **Exception Chaining:** ၵၢၼ်သၢင်ႈသဵၼ်ႈမၢႆပၼ်ႁႃ ဢၼ်ၵွင်ႉၵၢႆႇၵၼ်ဝႆႉ။
* **Constructor Overload:** လၢႆးသၢင်ႈ Object ဢၼ်ႁပ်ႉ Parameter လၢႆလၢႆပိူင် (မိူၼ်ၼင်ႇ Message + InnerException)။

---