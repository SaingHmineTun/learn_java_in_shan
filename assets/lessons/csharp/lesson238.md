# Lesson 238: "The 'using' Statement Revisited"

မိူဝ်ႈႁဝ်းၸႂ်ႉ `StreamWriter` ဢမ်ႇၼၼ် `StreamReader` ၼၼ်ႉ
ႁဝ်းတေလႆႈမၵ်းမၼ်ႈဝႃႈ မၼ်းတေလႆႈ **Close()** လႄႈ **Dispose()** (လူတ်ႇဢွၵ်ႇ Memory) တႃႇသေႇၶႃႈ။

### 1. ပၼ်ႁႃ ၵၢၼ်ဢမ်ႇပိၵ်ႉ File
သင်ႁဝ်းတႅမ်ႈ Code ၸိူင်ႉၼႆ:
```csharp
StreamWriter writer = new StreamWriter("test.txt");
writer.WriteLine("Hello");
// လိုမ်းပိၵ်ႉ (Forgot to close)
```
* **ၽွၼ်းၸႃႉ:** File ၼၼ်ႉတေထုၵ်ႇ Lock ဝႆႉတႃႇသေႇ၊ ႁဝ်းတေ Delete ဢမ်ႇၼၼ် Rename မၼ်းဢမ်ႇလႆႈ တေႃႇပေႃးပိၵ်ႉ App တင်းမူတ်းၶႃႈ။

### 2. ၵၢၼ်ၸႂ်ႉ 'using' Statement
Keyword **`using`** ၼႆႉ ၸွႆးႁဵတ်းႁႂ်ႈ App ႁဝ်း "ပိၵ်ႉ File ႁင်းၵူၺ်း" ၵမ်းလဵဝ် မိူဝ်ႈမၼ်းႁဵတ်းၵၢၼ်ၼႂ်းၶွပ်ႇ `{ }` ယဝ်ႉတူဝ်ႈၶႃႈ။ ဢမ်ႇဝႃႈ Code ႁဝ်းတေ Error ဢမ်ႇၼၼ် Crash ၵေႃႈယႃႇ မၼ်းတေပိၵ်ႉ File ပၼ်ႁႂ်ႈလွတ်ႈၽေးတႃႇသေႇၶႃႈ။



**လၢႆးတႅမ်ႈ 1 (Block Scope):**
```csharp
using (StreamWriter writer = new StreamWriter("diary.txt"))
{
    writer.WriteLine("ဝၼ်းမိူဝ်ႈၼႆႉ ႁဵၼ်း C# လီၵျေႃႇၼႃႇ!");
} // ပိၵ်ႉ File တီႈၼႆႈ ႁင်းၵူၺ်း (Automatic Close/Dispose)
```

**လၢႆးတႅမ်ႈ 2 (Declaration Scope - C# 8.0+):**
လၢႆးတႅမ်ႈၼႆႉ လူငၢႆႈလိူဝ် ယွၼ်ႉဢမ်ႇလူဝ်ႇၸႂ်ႉ `{ }` ယႂ်ႇယႂ်ႇ ၶႃႈ။ မၼ်းတေပိၵ်ႉ File ပၼ် မိူဝ်ႈ Method ၼၼ်ႉယဝ်ႉတူဝ်ႈၶႃႈ။
```csharp
void SaveNote()
{
    using var writer = new StreamWriter("note.txt");
    writer.WriteLine("သိမ်းၶေႃႈမုၼ်းလွတ်ႈၽေး...");
} // ပိၵ်ႉ File တီႈၼႆႉ (End of Method)
```

### 3. IDisposable Interface
Class ၸိူဝ်းဢၼ်ႁဝ်းၸႂ်ႉတင်း `using` လႆႈၼၼ်ႉ မၼ်းတေလႆႈသိုပ်ႇၸိူဝ်ႉၶိူဝ်းတီႈ **`IDisposable`** မႃးၶႃႈ။
* Class ၼႂ်း **System.IO** ၵူႈတူဝ် မိူၼ်ၼင်ႇ `FileStream`, `StreamWriter`, `StreamReader` ပဵၼ် IDisposable တင်းမူတ်းၶႃႈ။

### 4. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ?
1.  **Safety:** ႁႄႉၵၢင်ႈပၼ်ႁႃ File locked.
2.  **Clean Code:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ `writer.Close()` ႁင်းၵူၺ်းၵူႈတီႈ။
3.  **Efficiency:** လူတ်ႇၶေႃႈမုၼ်း ဢၼ်ဢမ်ႇလူဝ်ႇၸႂ်ႉ ဢွၵ်ႇ Memory ႁႂ်ႈဝႆးသုတ်း။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Resource Management:** ၵၢၼ်ၸတ်းၵၢၼ်ၶိူင်ႈမိုဝ်း (File, Network, Database)။
* **Dispose:** ၵၢၼ်လူတ်ႇပႅတ်ႈ Resource ဢၼ်ဢမ်ႇၸႂ်ႉယဝ်ႉ ဢွၵ်ႇ Memory။
* **Locking:** ၵၢၼ်ဢၼ် OS ႁႄႉဝႆႉ ဢမ်ႇပၼ် App တၢင်ႇဢၼ်မႄး File ၼႂ်း ယၢမ်းလဵဝ်ၵၼ်။
* **Scope:** ၼႃႈတီႈ ဢၼ်ႁၼ်/ၸႂ်ႉတိုဝ်းလႆႈ Variable။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁဝ်းၸၢမ်းတႅမ်ႈ Code **`ShanSafeWriter`**။
1.  ၸႂ်ႉ **`using`** (လၢႆးတႅမ်ႈဢၼ်မီး `{ }`) တႃႇပိုတ်ႇ **`StreamWriter`**။
2.  တႅမ်ႈၸိုဝ်ႈလုၵ်ႈႁဵၼ်း 3 ၵေႃႉ ၶဝ်ႈၵႂႃႇၼႂ်း `students.txt`။
3.  ဝၢႆးလင်ၶွပ်ႇ `using` ၼၼ်ႉ ၸၢမ်းၸႂ်ႉ **`File.Delete("students.txt")`** တူၺ်းၶႃႈ။
* သင်ႁဝ်းၸႂ်ႉ `using` တႅတ်ႈတေႃးၼႆ မၼ်းတေလူတ်ႇ File ၼၼ်ႉပႅတ်ႈလႆႈၶႃႈ (ယွၼ်ႉမၼ်းပိၵ်ႉယဝ်ႉ)။ သင်ဢမ်ႇၸႂ်ႉ `using` ၼႆၸိုင် မၼ်းတေၼႄ Error ဝႃႈ File is being used by another process ၶႃႈ။
