# Lesson 231: "Reading and Writing Plain Text Files"

Class **`File`** ၼႂ်း `System.IO` မီး Method ဢၼ်ႁွင်ႉဝႃႈ "Helper Methods" ဢၼ်ႁဵတ်းပၼ်ၵၢၼ်ငၢႆႈငၢႆႈ ၼႂ်းထႅဝ်လိၵ်ႈလဵဝ်ၶႃႈ။

### 1. File.WriteAllText (ၵၢၼ်တႅမ်ႈ)
Method ၼႆႉ တေပိုတ်ႇ File -> တႅမ်ႈလိၵ်ႈသႂ်ႇ -> သေပိၵ်ႉ File ပၼ်ႁင်းၵူၺ်းၵမ်းလဵဝ်ၶႃႈ။
* **သတိ:** သင်မီး File ၸိုဝ်ႈၼၼ်ႉဝႆႉယူႇယဝ်ႉၸိုင် မၼ်းတေ **Overwrite** (တႅမ်ႈတႅၼ်း) ၶေႃႈမုၼ်းၵဝ်ႇတင်းမူတ်းၶႃႈ။

```csharp
string path = "note.txt";
string content = "မႂ်ႇသုင်ၶႃႈ! ၼႆႉပဵၼ်လိၵ်ႈတႆး ၼႂ်း File ၶႃႈဢေႃႈ။";

// တႅမ်ႈလိၵ်ႈၶဝ်ႈ File
File.WriteAllText(path, content);
Console.WriteLine("တႅမ်ႈ File ယဝ်ႉတူဝ်ႈယဝ်ႉ။");
```

### 2. File.ReadAllText (ၵၢၼ်လူ)
Method ၼႆႉ တေလူဢဝ်လိၵ်ႈတင်းမူတ်းၼႂ်း File မႃးဝႆႉၼႂ်း Variable `string` တူဝ်လဵဝ်ၶႃႈ။

```csharp
if (File.Exists(path)) {
    string readText = File.ReadAllText(path);
    Console.WriteLine("ၶေႃႈမုၼ်းၼႂ်း File: " + readText);
}
```

### 3. File.AppendAllText (ၵၢၼ်တႅမ်ႈသိုပ်ႇ)
သင်ႁဝ်းဢမ်ႇၶႂ်ႈတႅမ်ႈတႅၼ်း (Overwrite)၊ ႁဝ်းၶႂ်ႈ "ထႅမ်" လိၵ်ႈသိုပ်ႇဝႆႉၽၢႆႇတႂ်ႈၼႆ ႁဝ်းတေလႆႈၸႂ်ႉ **`AppendAllText`** ၶႃႈ။

```csharp
string newData = "\nၼႆႉပဵၼ်ထႅဝ်လိၵ်ႈဢၼ်ထႅမ်မႂ်ႇၶႃႈ။";
File.AppendAllText(path, newData);
```

### 4. File.WriteAllLines & ReadAllLines
မၢင်ပွၵ်ႈ ႁဝ်းမီးၶေႃႈမုၼ်းပဵၼ် **`string[]`** (Array) သေၶႂ်ႈတႅမ်ႈႁႂ်ႈမၼ်းပဵၼ် ထႅဝ်ၽႂ်ထႅဝ်မၼ်းၶႃႈ။

* **`WriteAllLines(path, stringArray)`**: တႅမ်ႈ Array ၶဝ်ႈ File (ၼိုင်ႈတူဝ် ၼိုင်ႈထႅဝ်)။
* **`ReadAllLines(path)`**: လူ File မႃးပဵၼ် `string[]` (ၼိုင်ႈထႅဝ် ၼိုင်ႈတူဝ်)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Plain Text:** File လိၵ်ႈလၢႆလၢႆ ဢၼ်ဢမ်ႇမီး Format (မိူၼ်ၼင်ႇ .txt)။
* **Overwrite:** ၵၢၼ်တႅမ်ႈတႅၼ်းၶေႃႈမုၼ်းၵဝ်ႇ ပႅတ်ႈတင်းမူတ်း။
* **Append:** ၵၢၼ်ထႅမ်ၶေႃႈမုၼ်းသိုပ်ႇဝႆႉ တီႈပၢႆသုတ်းၶွင် File။
* **Helper Method:** Method ဢၼ်သၢင်ႈမႃးတႃႇႁဵတ်းၵၢၼ်ယုင်ႈယၢင်ႈ ႁႂ်ႈငၢႆႈလိူဝ်ၵဝ်ႇ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁႂ်ႈႁဝ်းၸၢမ်းတႅမ်ႈ Code **`ShanQuickNote`**။
1.  သၢင်ႈ Path တႃႇ File ၸိုဝ်ႈဝႃႈ **`todo.txt`**။
2.  ၸႂ်ႉ **`WriteAllText`** တႃႇသိမ်းဝႃႈ `"Learn LINQ Today"`။
3.  ၸႂ်ႉ **`AppendAllText`** တႃႇထႅမ်ဝႃႈ `"\nLearn System.IO Tomorrow"`။
4.  ၸႂ်ႉ **`ReadAllText`** တႃႇပိုၼ်ႈၶၢဝ်ႇ (Notify) ၶေႃႈမုၼ်းတင်းမူတ်း ဢွၵ်ႇၼိူဝ် Console ၶႃႈ။