

## **Lesson 40: Shared Preferences (Simple Persistence)**

### **1. Key-Value Pairs**

`SharedPreferences` ပဵၼ်လၢႆးသိမ်းၶေႃႈမုၼ်းဢွၼ်ႇဢွၼ်ႇ ဢၼ်ငၢႆႈသုတ်းၼႂ်း Android ယဝ်ႉ။ မၼ်းႁဵတ်းၵၢၼ်လူၺ်ႈလၢႆး **Key-Value** ယဝ်ႉ:

* **Key:** ပဵၼ် "ၸိုဝ်ႈ" (မိူၼ်ၼင်ႇ `"user_name"`)။
* **Value:** ပဵၼ် "ၶေႃႈမုၼ်း" (မိူၼ်ၼင်ႇ `"Sai Mao"`)။

#### **တူဝ်ယၢင်ႇ Code (ၵၢၼ်သိမ်း လႄႈ ၵၢၼ်ဢၢၼ်ႇ):**

```kotlin
val sharedPref = activity?.getPreferences(Context.MODE_PRIVATE) ?: return

// 1. ၵၢၼ်သိမ်း (Save)
with (sharedPref.edit()) {
    putString("username", "Sai Mao")
    putInt("high_score", 100)
    apply() // သိမ်းဝႆႉၼႂ်း Background
}

// 2. ၵၢၼ်ဢၢၼ်ႇ (Read)
val name = sharedPref.getString("username", "Guest") // "Guest" ပဵၼ် Default မိူဝ်ႈႁႃဢမ်ႇထူပ်း

```

---

### **2. The Limitation (ၶေႃႈၶိတ်းၵၼ်း)**

ႁဝ်းလူဝ်ႇလႆႈတွပ်ႇလႆႈဝႃႈ မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ `SharedPreferences` လႄႈ မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ Database တႄႉတႄႉ (မိူၼ်ၼင်ႇ Room) ၶႃႈ:

| **Shared Preferences**                        | **Database (Room)** |
|-----------------------------------------------| --- |
| သိမ်းၶေႃႈမုၼ်းဢွၼ်ႇ (Settings, Scores, Flags) | သိမ်းၶေႃႈမူၼ်းၼမ် (Movie list, Chat History) |
| ၸႂ်ႉ Key-Value                                | ၸႂ်ႉ Tables လႄႈ Rows |
| ႁႃၶေႃႈမုၼ်းဝႆး (တွၼ်ႈတႃႇဢွၼ်ႇ)                | ႁႃၶေႃႈမူၼ်း (Search/Filter) လႆႈလီလိူဝ် |

---

### **3. Context Handling (ၵၢၼ်ၸႂ်ႉ Context ၼႂ်း ViewModel)**

ပၼ်ႁႃၼိုင်ႈဢၼ်ၵေႃႈပဵၼ် `SharedPreferences` လူဝ်ႇၸႂ်ႉ **Context** တႃႇပိုတ်ႇၾၢႆႇ၊ 
ၵူၺ်းၵႃႈ ႁဝ်းသမ်ႉႁဵၼ်းမႃးဝႃႈ "ယႃႇဢဝ် Activity Context ၵႂႃႇသိမ်းၼႂ်း ViewModel" (Lesson 35) ၼႆယဝ်ႉ။

**လၢႆးၵႄႈ:** ႁဝ်းတေၸႂ်ႉ **`AndroidViewModel`** ဢၼ်ပၼ် **Application Context** ယဝ်ႉ။

* **Application Context:** မၼ်းမီးသၢႆၸႂ်ယၢဝ်းပဵင်း App တင်းမူတ်း၊ မၼ်းဢမ်ႇတၢႆမိူဝ်ႈပိၼ်ႇၼႃႈၸေႃး၊ ၵွပ်ႈၼၼ် မၼ်းလွတ်ႈၽေး (Safe) တႃႇၸႂ်ႉၼႂ်း ViewModel ယဝ်ႉ။

#### **တူဝ်ယၢင်ႇ Code:**

```kotlin
class SettingsViewModel(application: Application) : AndroidViewModel(application) {
    private val sharedPref = application.getSharedPreferences("app_settings", Context.MODE_PRIVATE)

    fun saveTheme(isDarkMode: Boolean) {
        sharedPref.edit().putBoolean("dark_mode", isDarkMode).apply()
    }
}

```

---

### **Advice for Students**

'ၸႂ်ႉ `SharedPreferences` တွၼ်ႈတႃႇၶေႃႈမုၼ်း ဢၼ်ဢမ်ႇသုၵ်ႉယုင်ႈၵူၺ်းလႄႈ။' 
သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈသိမ်း သဵၼ်ႈၸိုဝ်ႈၼမ်လၢႆ မိူၼ်ၼင် 50 ႁူဝ်ၸိုင် ၵႂႃႇၸႂ်ႉ Database တႅၼ်းလႄႈ။ 
တႃႇသေႇ ႁႂ်ႈၸႂ်ႉ **`apply()`** တႅၼ်း **`commit()`** လႄႈ ယွၼ်ႉ `apply()` မၼ်းတေသိမ်းပၼ်ၼႂ်း Background သေ ဢမ်ႇႁဵတ်းႁႂ်ႈ App ႁဝ်းၵိုတ်း (Lag) ယဝ်ႉ!"