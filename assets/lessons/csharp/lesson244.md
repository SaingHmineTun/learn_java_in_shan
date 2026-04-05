# Lesson 244: "Return Types for Async Methods"

ၼႂ်း C# ၼႆႉ Async Programming မီး Return Type ပိူင်လူင်ယူႇ 3-4 ပိူင် ဢၼ်ႁဝ်းတေလႆႈလိူၵ်ႈၸႂ်ႉ ႁႂ်ႈမႅၼ်ႈၸွမ်းၼႃႈၵၢၼ်ၶႃႈ။

### 1. Task (တႅၼ်း void)

ၸႂ်ႉတွၼ်ႈတႃႇ Method ဢၼ်ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်း "ႁဵတ်းၵၢၼ်လၢႆလၢႆ" ၵူၺ်း၊ သေဢမ်ႇလူဝ်ႇလႆႈၽွၼ်းလႆႈ (Result) သင်ၶိုၼ်းမႃးၶႃႈ။

* **ၸႂ်ႉမိူဝ်ႈ:** သိမ်း File၊ ပိုတ်ႇသဵင်၊ သူင်ႇ Data။
* **လၢႆးတႅမ်ႈ:** `public async Task SaveDataAsync() { ... }`

### 2. Task<T> (တႅၼ်း Type T)

ၸႂ်ႉတွၼ်ႈတႃႇ Method ဢၼ်ႁဝ်း "လူဝ်ႇလႆႈၵႃႈၶၼ်" ၶိုၼ်းမႃး ဝၢႆးလင်ၵၢၼ်ၼၼ်ႉယဝ်ႉတူဝ်ႈၶႃႈ။

* **ၸႂ်ႉမိူဝ်ႈ:** Download လိၵ်ႈ (`Task<string>`)၊ ၼပ်ႉသွၼ်ႇမၢႆတူဝ်ၼပ်ႉ (`Task<int>`)။
* **လၢႆးတႅမ်ႈ:** `public async Task<int> GetScoreAsync() { return 100; }`

### 3. ValueTask<T> (တႃႇႁႂ်ႈ App ဝႆးလိူဝ်ၵဝ်ႇ)

ၼႆႉပဵၼ် Type ဢၼ်မႃးမႂ်ႇၶႃႈ။ မၼ်းမိူၼ်တင်း `Task<T>` ၵူၺ်းၵႃႈ မၼ်းလူတ်းၵၢၼ်ၸႂ်ႉ Memory (Allocation) ၼႂ်း Heap ၶႃႈ။

* **ၸႂ်ႉမိူဝ်ႈ:** မိူဝ်ႈ Method ၼၼ်ႉ "ၵႆႉသူင်ႇၵႃႈၶၼ်ၶိုၼ်းၵမ်းလဵဝ်" (မိူၼ်ၼင်ႇလူ Data လုၵ်ႉတီႈ Memory Cache) လူၺ်ႈဢမ်ႇလူဝ်ႇပႂ်ႉ Background Thread တႃႇသေႇၶႃႈ။
* **လၢႆးတႅမ်ႈ:** `public async ValueTask<int> GetCachedDataAsync() { ... }`

### 4. async void (သတိ: ဢမ်ႇထုၵ်ႇလီၸႂ်ႉ!)

ႁဝ်းၸႂ်ႉ `async void` လႆႈၼႂ်း **Event Handlers** (မိူၼ်ၼင်ႇ Button Click) ၵူၺ်းၶႃႈ။

* **ပၼ်ႁႃ:** ႁဝ်းဢမ်ႇၸၢင်ႈ `await` မၼ်းလႆႈသေ သင်မၼ်းမီး Error (Exception) ၼႆၸိုင် App ႁဝ်းတေ Crash ၵမ်းလဵဝ်ၶႃႈ။

-----

### ၶႅပ်းႁၢင်ႈတူၺ်းငၢႆႈ (Comparison Table)

| Return Type      | ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇ (Typical Use) | ၸွင်ႇ await လႆႈ? |
|:-----------------| :--- | :--- |
| **Task**         | ၵၢၼ်ဢၼ်ဢမ်ႇသူင်ႇၵႃႈၶၼ် (Fire and Forget) | လႆႈ |
| **Task<T>**      | ၵၢၼ်ဢၼ်သူင်ႇၵႃႈၶၼ် (Result needed) | လႆႈ |
| **ValueTask<T>** | ၵၢၼ်ဢၼ်လူဝ်ႇ Performance သုင် (Caching) | လႆႈ |
| **void**         | **Event Handlers ၵူၺ်း** | **ဢမ်ႇလႆႈ** |

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Allocation:** ၵၢၼ်ၸွၵ်းတီႈယူႇၼႂ်း Memory (RAM)။
* **Heap:** တီႈၵဵပ်း Object ၼႂ်း Memory ဢၼ် Task ၵႆႉၸႂ်ႉ။
* **Fire and Forget:** ၵၢၼ်ပိုတ်ႇႁႂ်ႈၵၢၼ်ၼၼ်ႉလႅၼ်ႈၵႂႃႇ သေဢမ်ႇပႂ်ႉတူၺ်းၽွၼ်းလႆႈ (ၵႆႉၸႂ်ႉတင်း Task)။
* **Event Handler:** Method ဢၼ်လႅၼ်ႈမိူဝ်ႈ User ႁဵတ်းသင်သေယိူင်ႈ (မိူၼ်ၼင်ႇ Click)။

-----

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁဝ်းၸၢမ်းလိူၵ်ႈ Return Type ဢၼ်မႅၼ်ႈၸွမ်း Scenario ၸိူဝ်းၼႆႉၶႃႈ:

1.  Method ဢၼ် Download ၶႅပ်းႁၢင်ႈသေ သူင်ႇ `byte[]` မႃးပၼ်ၶိုၼ်း။ 
2.  Method ဢၼ်သူင်ႇ Notification ၵႂႃႇၸူးၾူၼ်း User သေဢမ်ႇလူဝ်ႇၽွၼ်းလႆႈၶိုၼ်း။
3.  Method ဢၼ်လူမၢႆတွၼ်ႈလုၵ်ႈႁဵၼ်း လုၵ်ႉတီႈ List ၼႂ်း RAM (ဝႆးၼႃႇ)။
