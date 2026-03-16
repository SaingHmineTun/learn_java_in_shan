# တွၼ်ႈသွၼ် 90: Coroutine Dispatchers

ၼႂ်း Kotlin, ႁဝ်းမီး Dispatchers ပိုၼ်ႉထၢၼ် 3-4 တူဝ် ဢၼ်ၸတ်းၸႅၵ်ႇဝႆႉတႃႇၵၢၼ်ပႅၵ်ႇပၢင်ႇၵၼ်:

### 1. `Dispatchers.Main` (တႃႇၼႃႈၸေႃ UI)

ၼႆႉပဵၼ်တူဝ်ဢၼ်ၸႂ်ႉတႃႇ Update UI (မိူၼ်ၼင်ႇ ၼႄၶႅပ်းႁၢင်ႈ၊ လႅၵ်ႈလိၵ်ႈၼႃႈၸေႃ)။

* **သတိ:** ယႃႇဢဝ်ၵၢၼ်ဢၼ်ၼၵ်း (မိူၼ်ၼင်ႇ လူတ်ႇ Internet ဢမ်ႇၼၼ် ဢၢၼ်ႇ File ယႂ်ႇယႂ်ႇ) မႃးႁဵတ်းတီႈၼႆႈ၊ ၵွပ်ႈမၼ်းတေႁဵတ်းႁႂ်ႈ App ၶၢင်ႉ (Freeze)။

### 2. `Dispatchers.IO` (တႃႇၵၢၼ်သူင်ႇ/ႁပ်ႉၶေႃႈမုၼ်း)

**IO** ယေႃႈမႃးတီႈ **Input/Output**။ ၸႂ်ႉတႃႇၵၢၼ်ဢၼ်လူဝ်ႇ "ပႂ်ႉ" (Waiting)။

* **လၢႆးၸႂ်ႉ:** လူတ်ႇ Internet (API Call), ၸတ်းၵၢၼ် Database, ဢၢၼ်ႇ/တႅမ်ႈ File။
* **တၢင်းၵတ်ႉ:** မၼ်းၸၢင်ႈပိုတ်ႇ Thread လၢႆလၢႆတူဝ်ႁူမ်ႈၵၼ်လႆႈၼမ် (Optimized for networking)။

### 3. `Dispatchers.Default` (တႃႇၵၢၼ်ၼပ်ႉထႅဝ်ၼၵ်းၼၵ်း)

ၸႂ်ႉတႃႇၵၢၼ်ဢၼ်လူဝ်ႇၸႂ်ႉ **CPU** ၼပ်ႉထႅဝ်ၼၵ်းၼၵ်း။

* **လၢႆးၸႂ်ႉ:** ၸႅၵ်ႇ (Sort) သဵၼ်ႈသၢႆ List ယႂ်ႇယႂ်ႇ, ပိၼ်ႇပႅင်ႇၶႅပ်းႁၢင်ႈ (Image Processing), ၼပ်ႉ Mathematical algorithms။

### 4. `Dispatchers.Unconfined`

မၼ်းတေတႄႇႁဵတ်းၵၢၼ်တီႈ Thread ဢၼ်ႁွင်ႉၸႂ်ႉမၼ်းၼၼ်ႉၵမ်းလဵဝ် (ၵႆႉၸႂ်ႉၼႂ်းၵၢၼ် Test ၵူၺ်း၊ ဢမ်ႇၵႆႉၸႂ်ႉၼႂ်း App တႄႉ)။

---

### ၵၢၼ်လႅၵ်ႈလၢႆႈ Dispatcher (withContext)

မၢင်ပွၵ်ႈႁဝ်းလူဝ်ႇလႅၵ်ႈ Thread ၼႂ်းၵႄႈၵၢၼ်ႁဵတ်း Coroutine တူဝ်လဵဝ်ၵၼ်။ ႁဝ်းတေၸႂ်ႉ **`withContext`** ၶႃႈ။

```kotlin
scope.launch(Dispatchers.Main) {
    // 1. ၼႄ Loading တီႈ UI
    progressBar.visibility = View.VISIBLE
    
    // 2. လႅၵ်ႈၵႂႃႇႁဵတ်းၵၢၼ်ၼၵ်းၼၵ်းတီႈ IO
    val data = withContext(Dispatchers.IO) {
        fetchFromApi() // ၵႂႃႇလူတ်ႇ Internet
    }
    
    // 3. ပေႃးယဝ်ႉယဝ်ႉ မၼ်းတေပိၼ်ႇမႃး Main ႁင်းၵူၺ်း
    textView.text = data
    progressBar.visibility = View.GONE
}

```

---

### Comparison Summary

| Dispatcher | Thread Pool | Best for... |
| --- | --- | --- |
| **Main** | UI Thread | UI Updates, Simple Logic |
| **IO** | Shared Pool (Many threads) | Networking, Disk Access, Databases |
| **Default** | Shared Pool (CPU cores) | Calculations, Sorting, JSON Parsing |

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Dispatcher:** တူဝ်ၸတ်းၵၢၼ်သူင်ႇ Coroutine ၵႂႃႇႁဵတ်းၵၢၼ်တီႈ Thread ဢၼ်မႅၼ်ႈၸွမ်း။
* **Thread Pool:** ၸုမ်း Thread ဢၼ်သၢင်ႈဝႆႉပႂ်ႉတႃႇႁပ်ႉၵၢၼ်ၵႂႃႇႁဵတ်း။
* **CPU Bound:** ၵၢၼ်ဢၼ်လူဝ်ႇၸႂ်ႉဢၢမ်းၼၢတ််ႈလွင်ႈၼပ်ႉထႅဝ်ၶွင် Processor။
* **IO Bound:** ၵၢၼ်ဢၼ်လူဝ်ႇ "ပႂ်ႉ" ၵၢၼ်သူင်ႇႁပ်ႉၶေႃႈမုၼ်း (External resources)။
* **Context Switching:** ၵၢၼ်လႅၵ်ႈလၢႆႈပတ်ႉလွမ်ႉ (Thread) ၼႂ်းၵၢၼ်ႁဵတ်းၵၢၼ်။

---