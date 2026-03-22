# Lesson 35: "Advanced Input" (ၵၢၼ်ဢၢၼ်း Keyboard လႄႈ ၵၢၼ်သိပ်း Password)

`Console.ReadKey()` ၼႆႉမၼ်း ပိူင်ႈၵၼ်တင်း `ReadLine()` ယွၼ်ႉမၼ်းတေဢမ်ႇပႂ်ႉ Enter။ 
မၼ်းတေႁပ်ႉဢဝ် **DayKeyInfo** ဢွၵ်ႇမႃး ၵမ်းလဵဝ် မိူဝ်ႈၼဵၵ်း Key သေဢၼ်ဢၼ် တီႈ Keyboard ၶႃႈ။

### 1. ၵၢၼ်ၸႂ်ႉတူဝ်ယင်ႇ (Basic Key Press)
ႁဝ်းၸၢင်ႈၸႂ်ႉမၼ်း တႃႇၵိုတ်း Program ဢမ်ႇၼၼ် တႃႇႁဵတ်း Menu ဢွၼ်ႇၶႃႈ။

```csharp
Console.WriteLine("Press any key to continue...");
Console.ReadKey(); // ပႂ်ႉၼဵၵ်း Keyboard ၼိုင်ႈတူဝ်
```

### 2. Reading Specific Keys (ၵၢၼ်ၵူတ်ႇထတ်း Keyboard)
ႁဝ်းၸၢင်ႈႁူႉလႆႈဝႃႈ ၵူၼ်းၸႂ်ႉၼဵၵ်းတူဝ်လိၵ်ႈသင် ဢမ်ႇၼၼ် ၼဵၵ်းမၢႆသင် ၸႂ်ႉ `.Key` ဢေႃႈ။

```csharp
Console.WriteLine("Press [Esc] to Exit or [Enter] to Start:");
ConsoleKeyInfo keyInfo = Console.ReadKey();

if (keyInfo.Key == ConsoleKey.Escape) {
    Console.WriteLine("\nExiting program...");
}
```

### 3. Hidden Input (ၵၢၼ်သိပ်းလိၵ်ႈ/Password)
မၢင်ပွၵ်ႈႁဝ်းၶႂ်ႈႁႂ်ႈၵူၼ်းၸႂ်ႉၼဵၵ်း Keyboard ၵူၺ်းၵႃႈ **ဢမ်ႇၶႂ်ႈႁႂ်ႈတူဝ်လိၵ်ႈၼၼ်ႉ ၼႄဢွၵ်ႇၼိူဝ် Screen** (မိူၼ်ၼင်ႇ တႅမ်ႈ Password)။ ႁဝ်းၸႂ်ႉ `intercept: true` ၼႂ်းဝူတ်ႇမၼ်းၶႃႈ။

```csharp
// Console.ReadKey(true) -> တေဢမ်ႇၼႄတူဝ်လိၵ်ႈၼိူဝ် Screen
ConsoleKeyInfo passwordKey = Console.ReadKey(true); 
```


---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **ConsoleKeyInfo:** ပိူင်ၶေႃႈမုၼ်း (Struct) ဢၼ်သိမ်းဝႆႉ တူဝ်လိၵ်ႈဢၼ်ၼဵၵ်း။ (မၢႆ Keyboard ၵူႈလွင်ႈ ပႃးတင်း Shift/Ctrl/Alt ယဝ်ႉ)
* **Intercept:** ၼမ်ႉၵတ်ႉဢၼ်ၸႂ်ႉတႃႇ "ႁၢမ်ႈ" ဢမ်ႇႁႂ်ႈတူဝ်လိၵ်ႈဢၼ်ၼဵၵ်းၼၼ်ႉ ၼႄဢွၵ်ႇၼိူဝ် Console Screen။
* **ConsoleKey:** ပဵၼ် Enum (ၸုမ်းၶေႃႈၵႂၢမ်း) ဢၼ်မီးၸိုဝ်ႈ Keyboard ၵူႈတူဝ် (မိူၼ်ၼင်ႇ Escape, Enter, Spacebar)။
* **Modifier Keys:** ၶေႃႈၵႂၢမ်းႁွင်ႉ Keyboard ပိူင်ၶူး မိူၼ်ၼင်ႇ Shift, Alt, လႄႈ Control။

---