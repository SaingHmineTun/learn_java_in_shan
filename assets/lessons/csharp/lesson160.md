# Lesson 160: "The 'I' Prefix Convention"

ၼႂ်းၵၢၼ်တႅမ်ႈ Code ၼၼ်ႉ "ၸိုဝ်ႈ" (Name) ပဵၼ်တွၼ်ႈဢၼ်ၸွႆးႁႂ်ႈႁဝ်းလူလိၵ်ႈငၢႆႈၶႃႈ။ Microsoft လႄႈ Programmer တင်းလူၵ်ႈ မၵ်းမၼ်ႈဝႆႉဝႃႈ Interface တေလႆႈတႄႇလူၺ်ႈတူဝ် **`I`** (Capital I) တႃႇသေႇၶႃႈ။

### 1. ႁဵတ်းသင်ၸင်ႇလမ်ႇလွင်ႈ?
1.  **Instant Identification:** မိူဝ်ႈၶူးသၢႆမၢဝ်းႁၼ်ၸိုဝ်ႈဝႃႈ `IDrawable`... ၶူးတေႁူႉၵမ်းလဵဝ်ဝႃႈ "ၼႆႉပဵၼ် Interface (ၵတိ)"၊ ဢမ်ႇၸႂ်ႈ Class (တူဝ်တႄႉ)။
2.  **Avoid Conflicts:** မၢင်ပွၵ်ႈႁဝ်းၶႂ်ႈမီး Class ၸိုဝ်ႈဝႃႈ `File`။ သင်ႁဝ်းမီး Interface တႃႇ File ၼၼ်ႉၸွမ်... ႁဝ်းၸၢင်ႈပၼ်ၸိုဝ်ႈဝႃႈ `IFile` ၼႆသေ ဢမ်ႇယုင်ႈယၢင်ႈၵၼ်တင်း `File` (Class) ၶႃႈ။
3.  **IntelliSense Support:** မိူဝ်ႈႁဝ်းတႅမ်ႈ Code ၼႂ်း Visual Studio သေတႅမ်ႈတူဝ် `I`... မၼ်းတေၼႄ List Interface တင်းမူတ်းမႃးႁင်းၵူၺ်းမၼ်း၊ ႁဵတ်းႁႂ်ႈႁဝ်းလိူၵ်ႈၸႂ်ႉငၢႆႈၶႃႈ။



### 2. လၢႆးပၼ်ၸိုဝ်ႈ ဢၼ်လီ (Best Practices)
* **Start with 'I':** တူဝ်ယင်ႇ `IPlayable`, `ISavable`, `IShanMember`။
* **Use Adjectives (ၵႆႉလေႇ):** Interface ၵႆႉပဵၼ် "လွင်ႈႁဵတ်းလႆႈ" (Capability)။ ႁဝ်းၸင်ႇၵႆႉသႂ်ႇ **"-able"** ဝႆႉၽၢႆႇလင် ၼင်ႇၼႆၶႃႈ:
    * `ICloneable` (ထုတ်ႇဢဝ်လႆႈ)
    * `IDisposable` (လူတ်ႇပႅတ်ႈလႆႈ)
* **Use Nouns (မၢင်ပွၵ်ႈ):** သင်မၼ်းပဵၼ် "ၼႃႈတီႈ" (Role) ဢၼ်တႅတ်ႉတေႃး:
    * `IRepository`
    * `IService`

### 3. တူဝ်ယင်ႇ ၵၢၼ်ၸႅၵ်ႇလႅၼ်း
ဝူၼ်ႉတူၺ်း Code ထႅဝ်ၼႆႉၶႃႈ:
```csharp
// ႁၼ် 'I' ပွင်ႇဝႃႈ Interface (Contract)
public interface IShannable { ... }

// ဢမ်ႇမီး 'I' ပွင်ႇဝႃႈ Class (Implementation)
public class ShanMember : IShannable { ... }
```

### 4. တေပဵၼ်သင် သင်ဢမ်ႇသႂ်ႇ 'I'?
Compiler တေဢမ်ႇလၢတ်ႈ Error သင်ၶႃႈ (မၼ်းတိုၵ်ႉလႅၼ်ႈလႆႈယူႇ)။ ၵူၺ်းၵႃႈ...
* Programmer တၢင်ႇၵေႃႉတေလူ Code ၶူးယုင်ႈယၢင်ႈ။
* မၼ်းတေၽိတ်းပိူင် (Standard) ၶွင် C# Ecosystem။
* ၶူးတေၸႅၵ်ႇဢမ်ႇလႆႈဝႃႈ တူဝ်လႂ်ပဵၼ် Class၊ တူဝ်လႂ်ပဵၼ် Interface မိူဝ်ႈတႅမ်ႈ Code ၼမ်ๆ ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Naming Convention:** ပၵ်းၵၢၼ်ပၼ်ၸိုဝ်ႈ ဢၼ်ပဵၼ် Standard။
* **Prefix:** တူဝ်လိၵ်ႈဢၼ်ယူႇၼႃႈ (တူဝ်ယင်ႇ 'I')။
* **Readability:** လွင်ႈလူလိၵ်ႈသႅၼ်ႈသႂ် လႄႈ ႁူႉပွင်ႇငၢႆႈ။
* **IntelliSense:** ပိူင်ၸွႆးထႅမ် (Suggestions) ၼႂ်း Code Editor။

---