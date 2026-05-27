

## Lesson 29: Suggestion Bar & Predictive Word Candidate Row Component

တႃႇႁႂ်ႈ Engine ႁဝ်း ဢၢၼ်ႇၾၢႆႇ Text လုၵ်ႉတီႈ Assets လႆႈၽတ်ႉၽႅဝ်း သေ ဢမ်ႇပိတ်း Block Layout Thread (UI Lag)၊ ႁဝ်းတေၸႂ်ႉ **`Coroutine Background Dispatchers.IO`** တႃႇလူတ်ႇ Dictionary ၶဝ်ႈၵႂႃႇ Memory (RAM Cache) ဝႆႉပွၵ်ႈလဵဝ် မိူဝ်ႈ Service စတင်လႅၼ်ႈၶႃႈ။

### 1. တႅမ်ႈ Class Dictionary Reader (`WordPredictor.kt`)

ၵႂႃႇသၢင်ႈၾၢႆႇ Kotlin ဢၼ်မႂ်ႇဝႆႉၼႂ်း package `utils` ဢမ်ႇၼၼ် `logic` တွၼ်ႈတႃႇ Handle Logic Filter ၶေႃႈၵႂၢမ်း:

```kotlin
package it.saimao.tmkkeyboardpro.logic

import android.content.Context
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.BufferedReader
import java.io.InputStreamReader

object WordPredictor {

    // Cache Maps ဝႆႉၼႂ်း RAM တွၼ်ႈတႃႇ O(1) Lookup Speed Fast 60 FPS
    private val dictionaryCache = HashMap<String, List<String>>()

    /**
     * လူတ်ႇၾၢႆႇ Text လုၵ်ႉတီႈ Assets Folder ၶဝ်ႈ Memory Cache (Run on Background Thread)
     */
    suspend fun loadDictionaries(context: Context) = withContext(Dispatchers.IO) {
        if (dictionaryCache.isNotEmpty()) return@withContext // Load only once
        
        dictionaryCache["shn"] = readWordsFromAsset(context, "shn_words.txt")
        dictionaryCache["mm"] = readWordsFromAsset(context, "mm_words.txt")
        dictionaryCache["eng"] = readWordsFromAsset(context, "eng_words.txt")
    }

    private fun readWordsFromAsset(context: Context, fileName: String): List<String> {
        val wordList = mutableListOf<String>()
        try {
            val inputStream = context.assets.open(fileName)
            val reader = BufferedReader(InputStreamReader(inputStream, "UTF-8"))
            var line: String?
            while (reader.readLine().also { line = it } != null) {
                val cleanWord = line?.trim() ?: ""
                if (cleanWord.isNotEmpty()) {
                    wordList.add(cleanWord)
                }
            }
            reader.close()
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return wordList
    }

    /**
     * 🌟 Core Prediction Algorithm: Filter ဢဝ် 3 ၶေႃႈၵႂၢမ်း ဢၼ်မီး Prefix မႅၼ်ႈၵၼ်တင်း လိၵ်ႈဢၼ် User တိုၵ်ႉတႅမ်ႈ
     */
    fun getPredictions(langCode: String, currentInput: String): List<String> {
        if (currentInput.isEmpty()) return emptyList()
        
        val fullList = dictionaryCache[langCode] ?: return emptyList()
        
        // Filter ဢဝ် 3 တူဝ်လိၵ်ႈဢွၼ်တၢင်းသုတ်း ဢၼ်စတင်လူၺ်ႈ currentInput
        return fullList.asSequence()
            .filter { it.startsWith(currentInput, ignoreCase = true) }
            .take(3)
            .toList()
    }
}

```

---

### 2. သၢင်ႈ Component UI Layout (`SuggestionBar.kt`)

ၵႂႃႇသၢင်ႈၾၢႆႇ Composable UI component ဝႆႉၼႂ်း package `widgets` သေ တႅမ်ႈ Code Adaptive UI ၸွမ်း 10 Themes ၶွင်ႁဝ်းၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.widgets

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.IconButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.saimao.tmkkeyboardpro.R
import it.saimao.tmkkeyboardpro.themes.KeyboardThemeData

@Composable
fun SuggestionBar(
    theme: KeyboardThemeData,
    suggestions: List<String>,            // List ၶွင် 3 ၶေႃႈၵႂၢမ်း ဢၼ်ပဵၼ် Candidates
    onSuggestionClick: (String) -> Unit,
    onVoiceInputClick: () -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .height(46.dp)
            .background(theme.specialKeyBackgroundColor) // ၸႂ်ႉသီ Special Key Bar Background
    ) {
        Row(
            modifier = Modifier.fillMaxSize(),
            verticalAlignment = Alignment.CenterVertically
        ) {
            
            // 🌟 🌟 A. LEFTMOST: DISPLAY TMK LOGO
            Box(
                modifier = Modifier
                    .padding(start = 8.dp, end = 4.dp)
                    .size(32.dp)
                    .clip(RoundedCornerShape(6.dp)),
                contentAlignment = Alignment.Center
            ) {
                Image(
                    painter = painterResource(id = R.drawable.tmklogo), // drawable/tmklogo.png
                    contentDescription = "TMK Logo Panel",
                    modifier = Modifier.fillMaxSize()
                )
            }

            // Divider Line Line
            Box(modifier = Modifier.width(1.dp).height(24.dp).background(theme.borderColor.copy(alpha = 0.3f)))

            // 🌟 🌟 B. CENTER: DISPLAY 3 CANDIDATE TEXTS (Equal Layout Weights)
            Row(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxHeight(),
                verticalAlignment = Alignment.CenterVertically
            ) {
                // Loop ၼႄ 3 Candidates Display Panel 
                for (i in 0 until 3) {
                    val word = suggestions.getOrNull(i) ?: ""
                    
                    Box(
                        modifier = Modifier
                            .weight(1f)
                            .fillMaxHeight()
                            .clickable(enabled = word.isNotEmpty()) { onSuggestionClick(word) },
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = word,
                            color = theme.keyForegroundColor, // Matching Text Theme Font Color
                            fontSize = 15.sp,
                            fontWeight = FontWeight.Medium,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                    }

                    // သႂ်ႇသဵၼ်ႈၸႅၵ်ႇ ၵႄႈၵၢင် Candidates 
                    if (i < 2) {
                        Box(modifier = Modifier.width(0.5.dp).height(16.dp).background(theme.borderColor.copy(alpha = 0.15f)))
                    }
                }
            }

            // Divider Line Line
            Box(modifier = Modifier.width(1.dp).height(24.dp).background(theme.borderColor.copy(alpha = 0.3f)))

            // 🌟 🌟 C. RIGHTMOST: SPEAKER/MIC ICON FOR VOICE INPUT
            Box(
                modifier = Modifier
                    .padding(horizontal = 4.dp)
                    .size(40.dp),
                contentAlignment = Alignment.Center
            ) {
                IconButton(onClick = onVoiceInputClick) {
                    Text(
                        text = "🎙️", // ၸႂ်ႉ Speaker/Mic Emoji Symbol ဢဝ်လႆႈငၢႆႈငၢႆႈ လႄႈ ႁၢင်ႈလီၶႃႈ
                        fontSize = 20.sp,
                        color = theme.specialForeground
                    )
                }
            }
        }
        
        // Bottom border line separation
        HorizontalDivider(thickness = 0.5.dp, color = theme.borderColor.copy(alpha = 0.4f))
    }
}

```

---

### 3. Connection Setup with `MaoKeyboardService.kt` Lifecycle

ၵမ်းၼႆႉ ႁဝ်းတေမႃးထႅမ် Local State `composingText` တွၼ်ႈတႃႇ Track လိၵ်ႈဢၼ် User တိုၵ်ႉတႅမ်ႈ လႄႈ ႁွင်ႉလူတ်ႇ Dictionary ဝႆႉၼႂ်း Service Context ၶႃႈ:

```kotlin
// 🌟 Inside MaoKeyboardService.kt

    import kotlinx.coroutines.CoroutineScope
    import kotlinx.coroutines.MainScope
    import it.saimao.tmkkeyboardpro.logic.WordPredictor
    import it.saimao.tmkkeyboardpro.widgets.SuggestionBar

    class MaoKeyboardService : InputMethodService(), CoroutineScope by MainScope() {

        // State Track ၶေႃႈၵႂၢမ်း ဢၼ်တိုၵ်ႉတႅမ်ႈယူႇယၢမ်းလဵဝ် (Word Composition State)
        private val composingText = mutableStateOf("")

        override fun onCreate() {
            super.onCreate()
            // 🌟 🚀 Pre-load Assets Dictionaries O(1) Memory Caches on Background Thread
            launch {
                WordPredictor.loadDictionaries(applicationContext)
            }
        }

        override fun onStartInputView(editorInfo: EditorInfo?, restarting: Boolean) {
            super.onStartInputView(editorInfo, restarting)
            composingText.value = "" // Reset composition text stream
        }

        // Layout Integration
        override fun onCreateInputView(): View {
            return ComposeView(this).apply {
                setContent {
                    val langCode = when (language.value) {
                        Language.SHAN -> "shn"
                        Language.MYANMAR -> "mm"
                        Language.ENGLISH -> "eng"
                    }
                    
                    // 🌟 ႁွင်ႉ Filter ဢဝ် 3 Predictions Real-time
                    val suggestions = WordPredictor.getPredictions(langCode, composingText.value)

                    Column {
                        // 🌟 Display Component SuggestionBar ไว้ၽၢႆႇၼိူဝ်သုတ်း ၶွင် Keyboard
                        SuggestionBar(
                            theme = currentTheme.value,
                            suggestions = suggestions,
                            onSuggestionClick = { selectedWord ->
                                handleSuggestionCommit(selectedWord)
                            },
                            onVoiceInputClick = {
                                // 🎙️ Trigger Code Voice Input Framework (Lesson 30 entry point)
                                triggerVoiceInput()
                            }
                        )

                        // Base Layout Multi-switch Matrix (Shan, Numeric, etc.)
                        Box(modifier = Modifier.weight(1f)) {
                            // Render Core Keyboard Layouts ...
                        }
                    }
                }
            }
        }

        /**
         * Execute Handling Commit Word Selection 
         */
        private fun handleSuggestionCommit(word: String) {
            val ic = currentInputConnection ?: return
            
            // 🌟 Commit ဢဝ်ၶေႃႈၵႂၢမ်းဢၼ် User လိူၵ်ႈ ၶဝ်ႈ App တႅၼ်းတူဝ်တိုၵ်ႉတႅမ်ႈၵမ်းလဵဝ်
            ic.commitText(word + " ", 1) // သႂ်ႇ Spacebar ပႃးထႃႈ ၸွမ်းၼင်ႇ Predictive UX Standard
            
            composingText.value = "" // Reset Composing Status text line 
        }
        
        // 🌟 မႄးထႅမ် Setup ၼႂ်း handleKeyInput တႃႇ Feed ၶေႃႈမုၼ်းၶဝ်ႈ composingText
        private fun handleKeyInput(key: String) {
            val ic = currentInputConnection ?: return
            // Feedback, deletes standard handles...
            
            when (key) {
                // Actions codes...
                " " -> {
                    ic.commitText(" ", 1)
                    composingText.value = "" // Reset when space is pressed
                }
                Keys.KEY_DELETE -> {
                    ic.deleteSurroundingText(1, 0)
                    if (composingText.value.isNotEmpty()) {
                        composingText.value = composingText.value.dropLast(1) // Remove last character from stream
                    }
                }
                else -> {
                    ic.commitText(key, 1)
                    composingText.value += key // 🌟 Append key character to prediction state stream
                }
            }
        }
    }

```

---

### မၢႆတွင်း (Core Performance Takeaways)

* **RAM Cached Sequence Stream:** ၵၢၼ်ၸႂ်ႉ `BufferedReader` ႁူမ်ႈတင်း `dictionaryCache` (HashMap) ဝႆႉၼႂ်း Coroutines Global Context `loadDictionaries` ၸွႆႈႁႂ်ႈ Keyboard ႁဝ်းလႅၼ်ႈလႆႈ Ultra-Fast ၶႃႈ။ Android System တေဢမ်ႇၵႂႃႇဢၢၼ်ႇ Storage Disk ၵူႈပွၵ်ႈ User ၼဵၵ်းပုမ်ႇ, မၼ်းၵူၺ်း Filter Object ၼႂ်း RAM (Cache), ႁဵတ်းႁႂ်ႈ လွၵ်းလိူၵ်ႈ Candidates တိုင် 3 ၶေႃႈၵႂၢမ်း လႅၼ်ႈဢွၵ်ႇမႃး Real-time Instantaneous ၸိူၼ်းမိုဝ်းပၼ်ႇၶႃႈယဝ်ႉ။
* **Declarative Grid Weights Alignment:** ၵၢၼ်ၸႂ်ႉ `Modifier.weight(1f)` တီႈပုမ်ႇ Texts တင်း 3 ၸွႆႈၵုမ်းထိန်း Geometry Alignment ႁႂ်ႈမီးသႅၼ်းတူဝ်ႈၵၼ် (Balanced View Grid Layout)၊ သေ ႁပ်ႉႁူႉလွင်ႈ Responsive ႁၢင်ႈလီ ဢမ်ႇဝႃႈ User တေပိၼ်ႇၼႃႈၸေႃးသႅၼ်း Landscape ဢမ်ႇၼၼ် Portrait ၶႃႈ။
