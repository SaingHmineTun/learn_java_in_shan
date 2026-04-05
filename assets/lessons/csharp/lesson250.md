# Lesson 250: "Deadlocks and Async All the Way"

**Deadlock** ပွင်ႇဝႃႈ "ၵၢၼ်ပႂ်ႉၵၼ်ၵႂႃႇမႃး (မႂ်းပႂ်ႉၵဝ်၊ ၵဝ်ၵေႃႈပႂ်ႉမႂ်း)" ၶႃႈ။ 
ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးလႄႈလုၵ်ႈႁဵၼ်း မီးပပ်ႉလိၵ်ႈ 1 ပပ်ႉ လႄႈ ၵမ်တႅမ် 1 လူၼ်ႈ ၵူၺ်းၼႆၶႃႈ။ 
ၶူးၵိုတ်းပႂ်ႉၵမ်တႅမ်ႈ လုၵ်ႉတီႈလုၵ်ႈႁဵၼ်းသေ လုၵ်ႈႁဵၼ်းသမ်ႉၵိုတ်းပႂ်ႉပပ်ႉလိၵ်ႈ တီႈၶူး။ 
ၽႂ်ၵေႃႈဢမ်ႇပွႆႇၶွင်ၽႂ်ဢွၼ်တင်းသေ တင်းသွင်ၵေႃႉၵေႃႈ ၵိုတ်းပႂ်ႉၵၼ်ၵႂႃႇတႃႇသေႇၶႃႈ။

### 1. ႁဵတ်းသင် Deadlock ၸင်ႇပဵၼ်ၼႂ်း Code?
ၼႂ်း UI App (မိူၼ်ၼင်ႇ Flutter ဢမ်ႇၼၼ် Windows Forms)၊ UI Thread မီး **SynchronizationContext** ဢၼ်ပွင်ႇဝႃႈ "ၵဝ်ႁဵတ်းၵၢၼ်လႆႈၵမ်းဢၼ်ၵူၺ်း" ၶႃႈ။

သင်ႁဝ်းတႅမ်ႈ Code ၸိူင်ႉၼႆ:
```csharp
// ၽိတ်းႁႅင်း! (Bad Practice)
public void Button_Click(object s, EventArgs e)
{
    // ႁဝ်းႁွင်ႉ Async Method သေၸႂ်ႉ .Result ဢမ်ႇၼၼ် .Wait()
    // ၼႆႉႁွင်ႉဝႃႈ Sync-over-Async
    var data = GetDataAsync().Result; 
}
```
* **လွင်ႈတၢင်း:** UI Thread ၵိုတ်းပႂ်ႉ (Wait) ႁႂ်ႈ `GetDataAsync` ယဝ်ႉ။ ၵူၺ်းၵႃႈ `GetDataAsync` သမ်ႉပႂ်ႉ UI Thread ႁႂ်ႈ "ပွႆႇ" (Free) ၸင်ႇတေသိုပ်ႇလႅၼ်ႈ Code ထႅဝ်တႂ်ႈမၼ်းလႆႈ။ တင်းသွင်ၽၢႆႇပႂ်ႉၵၼ်လႄႈ App ၵိုတ်းၶႅင် (Deadlock) ၵမ်းလဵဝ်ၶႃႈ!



### 2. Best Practice: "Async All the Way"
လၢႆးၵႄႈပၼ်ႁႃၼႆႉ ငၢႆႈၼႃႇၶႃႈ။ ႁဝ်းတေလႆႈၸႂ်ႉ **"Async တေႃႇပေႃးသုတ်း"** ၶႃႈ။
* သင် Method တူဝ်လႂ်ပဵၼ် Async၊ တူဝ်ဢၼ်ႁွင်ႉၸႂ်ႉမၼ်းၵေႃႈ တေလႆႈပဵၼ် Async လႄႈ ၸႂ်ႉ **`await`** တႃႇသေႇ။
* **ယႃႇၸႂ်ႉ** `.Result` ဢမ်ႇၼၼ် `.Wait()` တႅၼ်း `await` ၶႃႈ။

```csharp
// မႅၼ်ႈၸွမ်းပိူင်! (Best Practice)
public async void Button_Click(object s, EventArgs e)
{
    // ၸႂ်ႉ await တႃႇပွႆႇ UI Thread ႁႂ်ႈဝၢင်ႇ ၼႂ်းယၢမ်းပႂ်ႉ
    var data = await GetDataAsync(); 
}
```

### 3. ConfigureAwait(false)
တွၼ်ႈတႃႇ ႁဝ်းတႅမ်ႈ Library ဢၼ်ဢမ်ႇၵွင်ႉၵၢႆႇတင်း UI (မိူၼ်ၼင်ႇၵၢၼ်ၼပ်ႉသွၼ်ႇ) ၼၼ်ႉ
ႁဝ်းၸၢင်ႈၸႂ်ႉ **`.ConfigureAwait(false)`** တႃႇလၢတ်ႈဝႃႈ "ဢမ်ႇလူဝ်ႇလႅၼ်ႈၶိုၼ်းၼိူဝ် UI Thread ၵေႃႈလႆႈ"။ 
ၼႆႉၸွႆးလူတ်းပၼ်ႁႃ Deadlock လႆႈထႅင်ႈလၢႆးၼိုင်ႈၶႃႈ။

### 4. ပၵ်းၵၢၼ်တွင်း 3 ၶေႃႈ
1.  **Async All the Way:** တႅမ်ႈ `await` တေႃႇပေႃးထိုင် Top-level (မိူၼ်ၼင်ႇ Event Handler)။
2.  **Avoid .Result / .Wait():** ၸိူဝ်းၼႆႉပဵၼ်တူဝ်ႁဵတ်းႁႂ်ႈ App ၶမ်။
3.  **Use Task.Run() for CPU-bound:** သင်မီးၵၢၼ်ၼပ်ႉသွၼ်ႇၼၵ်းၼၵ်း ႁႂ်ႈသူင်ႇၵႂႃႇလႅၼ်ႈၼိူဝ် Background Thread ႁင်းၵူၺ်းမၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Deadlock:** ၵၢၼ်ဢၼ် Thread သွင်တူဝ်ပႂ်ႉၵၼ်ၵႂႃႇမႃး တေႃႇ App ပေႃးၶမ်။
* **SynchronizationContext:** ပိူင်ၸတ်းၵၢၼ် ဢၼ်မၵ်းမၼ်ႈဝႃႈ Code တေလႅၼ်ႈၶိုၼ်းၼိူဝ် Thread လႂ်။
* **Sync-over-Async:** ၵၢၼ်ႁွင်ႉၸႂ်ႉ Async Code လၢႆး Synchronous (ပဵၼ်လွင်ႈတၢင်းဢၼ်ဢမ်ႇလီ)။
* **Top-level:** ၸၼ်ႉသုင်သုတ်းၶွင် Code (မိူၼ်ၼင်ႇ Main ဢမ်ႇၼၼ် UI Events)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ႁဝ်းၸႂ်ႉ `.Result` ၼႂ်း Console App ဢၼ်ဢမ်ႇမီး UI ၼၼ်ႉ ၸွင်ႇမၼ်းတေပဵၼ် Deadlock ႁႃႉ? (Hint: Console App ဢမ်ႇမီး SynchronizationContext မိူၼ် UI App ၶႃႈ)။
2.  ႁဵတ်းသင် `await` ၸင်ႇႁႄႉၵၢင်ႈ Deadlock လႆႈ? (ယွၼ်ႉမၼ်း "ပွႆႇ" UI Thread ႁႃႉ ဢမ်ႇၼၼ် ယွၼ်ႉမၼ်း "Lock" UI Thread ဝႆႉ?)
