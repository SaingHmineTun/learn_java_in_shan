## **Lesson 27: Dictionary Integration: Loading Assets for Suggestions**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
Keyboard ဢၼ် Professional တႄႉတႄႉၼၼ်ႉ လူဝ်ႇမီးလွင်ႈၸွႆႈထႅမ်ၵူၼ်းၸႂ်ႉႁႂ်ႈ "တႅမ်ႈလႆႈဝႆး" (Typing Speed) ၶႃႈ။
လၢႆးဢၼ်လီသေပိူၼ်ႈ ပဵၼ်ၵၢၼ်မီး **Predictive Text** ဢမ်ႇၼၼ် **Suggestions** ၶႃႈ။ 
မိူဝ်ႈၵူၼ်းၸႂ်ႉၼဵၵ်း "ၵ" ၼၼ်ႉ Keyboard လူဝ်ႇပၼ်တၢင်းႁၼ်ထိုင် (Suggest) မိူၼ်ၼင်ႇ "ၵိၼ်", "ၵႂႃႇ", "ၵူၼ်း" ၸိူဝ်းၼႆႉၶႃႈ။

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးႁဵတ်းလၢႆးလူတ်ႇ (Load) သဵၼ်ႈမၢႆၶေႃႈၵႂၢမ်း (Word List) လုၵ်ႉတီႈ **Assets** သေ ဢဝ်မႃးၼႄဝႆႉၼိူဝ် **Suggestion Bar** ဢၼ်မီးၼႂ်း `keyboard_root.xml` ၶႃႈယဝ်ႉ။

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@+id/keyboard_root" android:layout_width="match_parent"
    android:layout_height="wrap_content" android:background="#1A1A1A"
    android:orientation="vertical" android:paddingLeft="@dimen/keyboard_padding"
    android:paddingRight="@dimen/keyboard_padding" android:paddingBottom="5dp">

    <FrameLayout android:id="@+id/suggestion_bar_container" android:layout_width="match_parent"
        android:layout_height="45dp" android:background="#2C2C2C" android:paddingBottom="10dp" />

    <FrameLayout android:id="@+id/keys_container" android:layout_width="match_parent"
        android:layout_height="wrap_content" />

</LinearLayout>
```

---

### **1. Preparing the Dictionary File**

ဢွၼ်တၢင်းသုတ်း၊ ႁဝ်းလူဝ်ႇမီး File `.txt` ဢၼ်ၵဵပ်းၶေႃႈၵႂၢမ်းဝႆႉ (Shan, English, Myanmar)။
* **Location:** `src/main/assets/shn_words.txt`
* **Format:** ၼိုင်ႈထႅဝ် ၼိုင်ႈၶေႃႈ (ႁႂ်ႈမၼ်း Load လႆႈငၢႆႈ)။
* **Encoding:** လူဝ်ႇလႆႈပဵၼ် **UTF-8** ၼင်ႇႁိုဝ်တူဝ်လိၵ်ႈတႆးတေဢမ်ႇလူႉၶႃႈ။

---

### **2. Loading Assets (DictionaryManager)**

ႁဝ်းတေၸႂ်ႉ `BufferedReader` တႃႇဢၢၼ်ႇ File လုၵ်ႉၼႂ်း Assets သေ ၵဵပ်းဝႆႉၼႂ်း `MutableList` ၶႃႈ။

```kotlin
open class DictionaryManager(context: Context, fileName: String) {
    private val words = mutableListOf<String>()

    init {
        loadDictionary(context, fileName)
    }

    private fun loadDictionary(context: Context, fileName: String) {
        try {
            context.assets.open(fileName).bufferedReader(Charsets.UTF_8).use { reader ->
                reader.forEachLine { line ->
                    if (line.isNotBlank()) {
                        words.add(line.trim())
                    }
                }
            }
            Log.d("TAGY", "Successfully loaded ${words.size} words from $fileName")
        } catch (e: Exception) {
            Log.e("TAGY", "Error loading $fileName: ${e.message}")
        }
    }

    // Function တႃႇႁႃၶေႃႈၵႂၢမ်း ဢၼ်တႄႇလူၺ်း တူဝ်လိၵ်ႈဢၼ်တႅမ်ႈဝႆႉ
    fun getSuggestions(query: String): List<String> {
        Log.d("TAGY", "Query - $query")
        Log.d("TAGY", "Shan Words - $words")
        if (query.isEmpty()) return emptyList()
        return words.filter { it.startsWith(query) }.take(5) // ဢဝ် 5 ၶေႃႈၵွၺ်း
    }
}

class ShanDictionaryManager(context: Context) : DictionaryManager(context, "shn_words.txt")
class EnglishDictionaryManager(context: Context) : DictionaryManager(context, "eng_words.txt")
class MyanmarDictionaryManager(context: Context) : DictionaryManager(context, "mm_words.txt")
```

---

### **3. Integrating with Keyboard Root**

ႁဝ်းတေ ဢမ်ႇၸႂ်ႉတိုဝ်း `CandidateView` ၶွင် Android System ၶႃႈ၊
ၵွပ်ႈၼႆ သင်ဝႃး မီးဝႆႉ `onCreateCandidateView` ၼႆႉၸိုင် လူတ်းပႅတ်ႈမၼ်းဢွၼ်တၢင်းၶႃႈ။ 
သင်ၼၼ် ႁဝ်းတေလႆႈ **Inflate** Suggestion Bar ၶဝ်ႈၵႂႃႇၼႂ်း `keyboard_root.xml` ႁင်းၵူၺ်းႁဝ်းၶႃႈ။

#### **In `ShanKeyboardService.kt`:**

```kotlin
private lateinit var suggestionBarContainer: FrameLayout
private lateinit var candidateContainer: LinearLayout

override fun onCreateInputView(): View {
    currentInputView = layoutInflater.inflate(R.layout.keyboard_root, null)

    // 1. ၵွင်ႉၸူး Container ၼႂ်း Keyboard Root
    suggestionBarContainer = currentInputView.findViewById(R.id.suggestion_bar_container)
    keysContainer = currentInputView.findViewById(R.id.keys_container)

    // 2. Inflate candidate_view ၶဝ်ႈၵႂႃႇၼႂ်း Bar
    val candidateView = layoutInflater.inflate(R.layout.candidate_view, suggestionBarContainer, false)
    suggestionBarContainer.addView(candidateView)
    
    // 3. ၵွင်ႉၸူး LinearLayout တႃႇထႅမ် TextViews
    candidateContainer = candidateView.findViewById(R.id.candidate_container)

    updateKeyboardLayout()
    return currentInputView
}
```

---

### **4. Logic for Updating Suggestions**

မိူဝ်ႈၵူၼ်းၸႂ်ႉၼိပ်ႉတူဝ်လိၵ်ႈ၊ ႁဝ်းလူဝ်ႇထတ်းတူၺ်း Word သုတ်းထၢႆး သေ Update Suggestion Bar ၶႃႈ။

```kotlin
fun updateSuggestions() {

        if (!::candidateContainer.isInitialized) return
        // 1. ဢဝ်ၶေႃႈၵႂၢမ်းဢၼ်တိုၵ်ႉတႅမ်ႈဝႆႉ (Current Word)
        val currentWord = getCurrentWordBeforeCursor()


        // 2. ႁႃၶေႃႈၵႂၢမ်းလႅတ်း လုၵ်ႉၼႂ်း Dictionary
        val suggestions = when (currentLanguage) {
            "SHN" -> shanDictionary.getSuggestions(currentWord)
            "MY" -> myanmarDictionary.getSuggestions(currentWord)
            "EN" -> englishDictionary.getSuggestions(currentWord)
            else -> englishDictionary.getSuggestions(currentWord)
        }


        // 3. ၼႄဢွၵ်ႇၼိူဝ် Candidate Bar
        candidateContainer.removeAllViews()

        if (suggestions.isNotEmpty()) {
            for (word in suggestions) {
                val tv = TextView(this).apply {
                    text = word
                    textSize = 18f
                    setTextColor(Color.WHITE)
                    setPadding(30, 0, 30, 0)
                    gravity = android.view.Gravity.CENTER
                    // *** တူဝ်ယႂ်ႇ: လူဝ်ႇသႂ်ႇ LayoutParams တႅတ်ႈတေႃး ***
                    layoutParams = LinearLayout.LayoutParams(
                        ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.MATCH_PARENT
                    )

                    setOnClickListener {
                        // မိူဝ်ႈၼိပ်ႉလိၵ်ႈလႅတ်း ႁႂ်ႈတႅၼ်းတီႈၶေႃႈၵဝ်ႇ
                        replaceCurrentWordWith(word)
                        candidateContainer.removeAllViews()
                    }
                }
                candidateContainer.addView(tv)
            }
        }
    }

// Function တႃႇဢဝ် Word တူဝ်သုတ်းၽၢႆႇၼႃႈ Cursor
private fun getCurrentWordBeforeCursor(): String {
    val ic = currentInputConnection ?: return ""
    // ဢဝ် Text မႃး 15 တူဝ် (ဢမ်ႇၼၼ် ၸွမ်းၼင်ႇၶေႃႈၵႂၢမ်းယၢဝ်းသုတ်း)
    val extractedText = ic.getTextBeforeCursor(15, 0) ?: return ""

    // တႅၵ်ႇဢဝ် Word သုတ်းထၢႆး (Split by Space or New Line)
    val words = extractedText.split(Regex("\\s+"))
    return if (words.isNotEmpty()) words.last() else ""
}

// Function တႃႇတႅၼ်း Word ဢၼ်တႅမ်ႈၽိတ်း/တႅမ်ႈပႆႇယဝ်ႉ လူၺ်ႈ Suggestion
private fun replaceCurrentWordWith(word: String) {
    val ic = currentInputConnection ?: return
    val currentWord = getCurrentWordBeforeCursor()

    if (currentWord.isNotEmpty()) {
        // 1. လူတ်း Word ဢၼ်တိုၵ်ႉတႅမ်ႈဝႆႉၼၼ်ႉပႅတ်ႈ
        ic.deleteSurroundingText(currentWord.length, 0)

        // 2. သႂ်ႇ Word မႂ်ႇ ဢၼ်လိူၵ်ႈဝႆႉၶဝ်ႈၵႂႃႇ
        ic.commitText(word + " ", 1)
    }
}
```

### **5. Update the handleKeyPress**
တႃႇတေၼႄပၼ် suggestions လႆႈလီၼၼ်ႉ 
- ႁဝ်းလူဝ်ႇႁွင်ႉမၼ်း မိူဝ်ႈၽွင်းႁဵတ်း Delete
- သင်ၼဵၵ်း Space ၼႆၸိုင် လၢင်ႉပႅတ်ႈ suggestions တင်းမူတ်း ဢၼ်ၼႄဝႆႉ
- တႃႇတူဝ်လိၵ်ႈ ၵူႈတူဝ် မိူဝ်ႈႁဝ်းတႅမ်ႈၼၼ်ႉ ၵႂႃႇႁွင်ႉၸႂ်ႉပၼ်မၼ်း
ၼင်ႇတီႈတႂ်ႈၶႃႈ

```kotlin
private fun handleKeyPress(view: Button, text: String) {
    triggerVibration(view)
    playClickSound()

    when (val viewId = view.id) {
        R.id.key_del -> {
            sendDelete()
            updateSuggestions() // ႁွင်ႉၵူႈပွၵ်ႈမိူဝ်ႈ Delete
        }
        R.id.key_space -> {
            sendText(" ")
            candidateContainer.removeAllViews() // လၢင်ႉ Bar မိူဝ်ႈၼိပ်ႉ Space
        }
        // ... (Logic တၢင်ႇဢၼ်) ...
        else -> {
            // ... (Logic တွၼ်ႈတႃႇ ShanEngine/Normal Text) ...

            // သႂ်ႇဝႆႉၽၢႆႇတႂ်ႈသုတ်း မိူဝ်ႈတႅမ်ႈတူဝ်လိၵ်ႈ
            updateSuggestions()
        }
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Keyboard Root Integration:** ၵၢၼ်သႂ်ႇ Suggestion Bar ဝႆႉၼႂ်း `keyboard_root.xml` ႁဵတ်းႁႂ်ႈ Keyboard တူၺ်းႁၼ် Professional လႄႈ Stable လိူဝ်။
* **Predictive Typing:** ၸွႆႈႁႂ်ႈၵူၼ်းၸႂ်ႉတႅမ်ႈလိၵ်ႈတႆးလႆႈဝႆးသေၵဝ်ႇ 2-3 တဝ်ႇ (ယွၼ်ႉဢမ်ႇလူဝ်ႇတႅမ်ႈတဵမ်ၶေႃႈ)။
* **Dynamic Loading:** ၵၢၼ်ၸႂ်ႉ Assets ႁဵတ်းႁႂ်ႈႁဝ်းထႅမ်သႂ်ႇၶေႃႈၵႂၢမ်းမႂ်ႇမႂ်ႇလႆႈငၢႆႈၶႃႈ။

---