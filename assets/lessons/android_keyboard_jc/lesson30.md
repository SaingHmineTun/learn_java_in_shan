

## Lesson 30: Speech-to-Text Speech Recognition Integration (Voice Input)

ၼႂ်း Android Context Framework, ႁဝ်းတေၸႂ်ႉ **`SpeechRecognizer`** Base API standard ႁူမ်ႈတင်း `Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH)` တွၼ်ႈတႃႇ Capture ဢဝ်သဵင်လၢတ်ႈ ၶၼ်ၽတ်ႉၽႅဝ်းၶႃႈ။

### 1. တႅမ်ႈ Layout Pulse Wave UI Feature ၼႂ်း `SuggestionBar.kt`

ႁဝ်းတေမႃးထႅမ် Parameter `isListening: Boolean` ဝႆႉၼႂ်း `SuggestionBar` သေ တႅမ်ႈ Animation Box ၼႄၽၢႆႇၼႂ်း ၼင်ႇၼႆၶႃႈ:

```kotlin
// 🌟 Inside SuggestionBar.kt -> Update Parameters

@Composable
fun SuggestionBar(
    theme: KeyboardThemeData,
    suggestions: List<String>,
    isListening: Boolean,                 // 🌟 State System Framework Track Listening Status
    onSuggestionClick: (String) -> Unit,
    onVoiceInputClick: () -> Unit
) {
    // Basic setup rows standard...
    Row(modifier = Modifier.fillMaxSize(), verticalAlignment = Alignment.CenterVertically) {
        
        // A. Leftmost: TMK Logo (Standard Code)
        
        // 🌟 🌟 B. CENTER: DISPLAY TEXTS OR PULSE ANIMATION
        Row(modifier = Modifier.weight(1f).fillMaxHeight(), verticalAlignment = Alignment.CenterVertically) {
            
            if (isListening) {
                // 🚀 VISUAL FEEDBACK: Pulse Wave Loader View (iOS/Gboard Wave Style)
                Row(
                    modifier = Modifier.fillMaxSize(),
                    horizontalArrangement = Arrangement.Center,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = "🎙️ Listening... Speak Now", 
                        color = theme.accentKeyBackgroundColor, // Highlight Green Accent Color
                        fontSize = 14.sp,
                        fontWeight = FontWeight.SemiBold
                    )
                }
            } else {
                // Render 3 Word Candidates Matrix (Standard Code Lesson 29)
                for (i in 0 until 3) {
                    val word = suggestions.getOrNull(i) ?: ""
                    Box(modifier = Modifier.weight(1f).fillMaxHeight().clickable { onSuggestionClick(word) }, contentAlignment = Alignment.Center) {
                        Text(text = word, color = theme.keyForegroundColor, fontSize = 15.sp)
                    }
                }
            }
        }
        
        // C. Rightmost: Mic Button (Standard Code)
    }
}

```

---

### 2. Implementing Speech Recognition Core Controller in `MaoKeyboardService.kt`

ႁဝ်းတေမႃးထႅမ် `SpeechRecognizer` Setup လႄႈ `RecognitionListener` Callbacks ဝႆႉၼႂ်း Service Layer ၵမ်းသိုဝ်ႈ ၼင်ႇၼႆၶႃႈၸဝ်ႈ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.content.Intent
import android.os.Bundle
import android.speech.RecognitionListener
import android.speech.RecognizerIntent
import android.speech.SpeechRecognizer
import androidx.compose.runtime.mutableStateOf
import java.util.Locale

class MaoKeyboardService : InputMethodService() {

    // 🌟 Voice Input Core Local States Tracker
    private var speechRecognizer: SpeechRecognizer? = null
    private val isListeningState = mutableStateOf(false)

    override fun onCreate() {
        super.onCreate()
        // Initialize Native Speech Engine Framework 
        if (SpeechRecognizer.isRecognitionAvailable(this)) {
            speechRecognizer = SpeechRecognizer.createSpeechRecognizer(this)
            setupSpeechListener()
        }
    }

    /**
     * 🌟 Dynamic Voice Recorder Entry Point:
     * Logic Dynamic Language Mapping System
     */
    fun triggerVoiceInput() {
        if (speechRecognizer == null) return
        
        if (isListeningState.value) {
            // If already recording, stop listening mode
            speechRecognizer?.stopListening()
            isListeningState.value = false
            return
        }

        // Detect current active language status
        val targetLocale = when (language.value) {
            Language.ENGLISH -> "en-US"      // Dynamic Route English Code
            Language.MYANMAR -> "my-MM"      // Dynamic Route Myanmar Code
            Language.SHAN -> "my-MM"         // Shan Layout shares Myanmar recognition algorithm
        }

        val intent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH).apply {
            putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM)
            putExtra(RecognizerIntent.EXTRA_LANGUAGE, targetLocale)
            putExtra(RecognizerIntent.EXTRA_LANGUAGE_PREFERENCE, targetLocale)
            putExtra(RecognizerIntent.EXTRA_ONLY_RETURN_LANGUAGE_PREFERENCE, targetLocale)
        }

        speechRecognizer?.startListening(intent)
        isListeningState.value = true // Activate Pulse Visual Feedback State
    }

    /**
     * Setup Listener Event Stream Observers Matrix 
     */
    private fun setupSpeechListener() {
        speechRecognizer?.setRecognitionListener(object : RecognitionListener {
            override fun onReadyForSpeech(params: Bundle?) {
                Log.d("TMK_VOICE", "Mic is open, ready to record.")
            }

            override fun onBeginningOfSpeech() {}
            override fun onRmsChanged(rmsdB: Float) {
                // Option Extra: ၸၢင်ႈဢဝ်တူဝ် rmsdB ၼႆႉ ၵႂႃႇတႅမ်ႈပဵၼ်ႁွႆးငဝ်း Wave Amplitude သၼ်ႇၶိုၼ်းၼိူဝ်လႆႈပႃးၶႃႈ
            }
            override fun onBufferReceived(buffer: ByteArray?) {}
            
            override fun onEndOfSpeech() {
                isListeningState.value = false // Reset Visual Feedback
            }

            override fun onError(error: Int) {
                Log.e("TMK_VOICE", "Recognition error code: $error")
                isListeningState.value = false // Clear on Error 
            }

            override fun onResults(results: Bundle?) {
                isListeningState.value = false
                val ic = currentInputConnection ?: return
                
                // Fetch ArrayList containing matched strings 
                val matches = results?.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
                val recognizedText = matches?.getOrNull(0) ?: ""

                if (recognizedText.isNotEmpty()) {
                    // Commit Recognized voice string directly into active app field 
                    ic.commitText(recognizedText, 1)
                }
            }

            override fun onPartialResults(partialResults: Bundle?) {}
            override fun onEvent(eventType: Int, params: Bundle?) {}
        })
    }

    override fun onDestroy() {
        super.onDestroy()
        speechRecognizer?.destroy()
    }
}

```

---

### 3. Connect Component with Compose `setContent`

ၵႂႃႇထႅမ် Parameter `isListening = isListeningState.value` ဝႆႉၼႂ်း `SuggestionBar` Layout Block ၼႂ်း `onCreateInputView()` ၶႃႈ:

```kotlin
// Inside MaoKeyboardService.kt -> onCreateInputView() Context

    SuggestionBar(
        theme = currentTheme.value,
        suggestions = suggestions,
        isListening = isListeningState.value, // 🌟 Real-time Adaptive UI Trigger Sync
        onSuggestionClick = { selectedWord -> handleSuggestionCommit(selectedWord) },
        onVoiceInputClick = { triggerVoiceInput() } // 🎙️ Click Trigger Engine Call
    )

```

---

### မၢႆတွင်း (Core Architecture Wins)

* **Seamless Runtime Localisation:** ၵၢၼ်ၸႂ်ႉ `language.value` Selector Matrix ၸွႆႈမၼ်ႈၸႂ်ဝႃႈ Engine တေသူင်ႇ Locale တႅတ်ႈတေႃး 100% ၶႃႈ။ User တေဢမ်ႇလႆႈမီး Friction လႅၵ်ႈလၢႆႈ Settings ၼွၵ်ႈ, System တေ Auto-Listen ၸွမ်းၼင်ႇ Keyboard Language State ဢၼ်လႅၼ်ႈယူႇၼိူဝ်ၸေႃးၵမ်းလဵဝ်ၶႃႈ။
* **Declarative Stateful Masking:** ၵၢၼ်ၸႂ်ႉ `if (isListening)` တီႈ `SuggestionBar` ၸွႆႈၵုမ်းထိန်း Layout Performance လီသုတ်းၶႃႈ။ မိူဝ်ႈ System ႁွင်ႉ `startListening()`, တူဝ် Words 3 Candidates တေထုၵ်ႇ Mask (Hide) ပႅတ်ႈပွၵ်ႈလဵဝ် သေ ၼႄပဵၼ် "🎙️ Listening..." ဝႆႉ၊ ပၼ် UX Feedback ဢၼ် Professional သုတ်းသုတ်း ၸိူၼ်းမိုဝ်းပၼ်ႇၶႃႈယဝ်ႉ။
