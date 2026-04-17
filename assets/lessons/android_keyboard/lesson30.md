## **Lesson 30: Voice Input Bridge: Integrating Android Speech-to-Text**

### **1. Requesting Permissions (AndroidManifest.xml)**

ဢွၼ်တၢင်းသုတ်း၊ ႁဝ်းလူဝ်ႇၶေႃႈၶႂၢင်ႉ (Permission) တွၼ်ႈတႃႇထွမ်ႇသဵင်လုၵ်ႉတီႈ Microphone ၶႃႈ။

```xml
<uses-permission android:name="android.permission.RECORD_AUDIO" />
```

*သင်ပဵၼ် Android 6.0 ၶိုၼ်းၼိူဝ်၊ ၸဝ်ႈၵဝ်ႇလူဝ်ႇလႆႈ Check Permission ၼႂ်း Runtime ပႃးၶႃႈ။*

---

### **2. Initializing SpeechRecognizer**

ႁဝ်းတေသၢင်ႈ Object တွၼ်ႈတႃႇႁဵတ်းၵၢၼ် Voice Recognition ၼႂ်း `ShanKeyboardService` ၶႃႈ။

```kotlin
// ၼႂ်း ShanKeyboardService.kt

private lateinit var speechRecognizer: SpeechRecognizer
private fun setupVoiceInput() {
    if (!SpeechRecognizer.isRecognitionAvailable(this)) {
        Log.e("VoiceInput", "Speech recognition is not available on this device")
        return
    }

    speechRecognizer = SpeechRecognizer.createSpeechRecognizer(this)

    speechRecognizer.setRecognitionListener(object : RecognitionListener {

        override fun onReadyForSpeech(params: Bundle?) {
            // တီႈၼႆႈ ၸဝ်ႈၵဝ်ႇၸၢင်ႈလႅၵ်ႈသီ Mic Button ပဵၼ်သီလႅင် တွၼ်ႈတႃႇၼႄဝႃႈ "တိုၵ်ႉထွမ်ႇယူႇ"
            Log.d("VoiceInput", "Ready for speech")
        }

        override fun onBeginningOfSpeech() {
            Log.d("VoiceInput", "Speech started")
        }

        override fun onRmsChanged(rmsdB: Float) {
            // တီႈၼႆႈ ၸဝ်ႈၵဝ်ႇၸၢင်ႈႁဵတ်း Animation ႁႂ်ႈ Mic တူင်ႉၸွမ်း သဵင်ၼၵ်း/မဝ်
        }

        override fun onBufferReceived(buffer: ByteArray?) {}

        override fun onEndOfSpeech() {
            // မိူဝ်ႈၵူၼ်းၸႂ်ႉၵတ်းၵႂႃႇ ႁႂ်ႈလႅၵ်ႈသီ Mic ပွၵ်ႈပဵၼ်သီၵဝ်ႇ
            Log.d("VoiceInput", "End of speech")
        }

        override fun onError(error: Int) {
            val errorMessage = when (error) {
                SpeechRecognizer.ERROR_AUDIO -> "Audio recording error"
                SpeechRecognizer.ERROR_INSUFFICIENT_PERMISSIONS -> "Insufficient permissions"
                SpeechRecognizer.ERROR_NETWORK -> "Network error"
                SpeechRecognizer.ERROR_NO_MATCH -> "No match found"
                SpeechRecognizer.ERROR_RECOGNIZER_BUSY -> "Recognition service busy"
                else -> "Unknown error"
            }
            Log.e("VoiceInput", errorMessage)
        }

        override fun onResults(results: Bundle?) {
            val matches = results?.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
            if (!matches.isNullOrEmpty()) {
                // တွၼ်ႈတႃႇ Final Result: သႂ်ႇ Space ၽၢႆႇလင်ဢိတ်းၼိုင်ႈ
                currentInputConnection?.commitText(matches[0] + " ", 1)
            }
        }

        override fun onPartialResults(partialResults: Bundle?) {
            val matches = partialResults?.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
            if (!matches.isNullOrEmpty()) {
                // ၼႄလိၵ်ႈလႅတ်း (Suggestion Bar) ၸွမ်းၼင်ႇသဵင်ဢၼ်ထွမ်ႇလႆႈၵမ်းလဵဝ်
                val partialText = matches[0]
                setSuggestions(listOf(partialText))
            }
        }

        override fun onEvent(eventType: Int, params: Bundle?) {}
    })
}

// ႁွင်ႉမၼ်းဝႆႉတီႈ onCreate()
override fun onCreate() {
    super.onCreate()
    shanDictionary = ShanDictionaryManager(this)
    myanmarDictionary = MyanmarDictionaryManager(this)
    englishDictionary = EnglishDictionaryManager(this)
    setupVoiceInput()
}

// ၵၢၼ်ပိၵ်ႉ SpeechRecognizer မိူဝ်ႈဢမ်ႇၸႂ်ႉ (Memory Management)
override fun onDestroy() {
    if (::speechRecognizer.isInitialized) {
        speechRecognizer.destroy()
    }
    super.onDestroy()
}
```

---

### **3. Triggering Voice Input from Keyboard**

ႁဝ်းတေမႃးသႂ်ႇတုမ်ႇ **Microphone (🎤)** ဝႆႉၼႂ်း Keyboard Layout သေ ၵွင်ႉၸူး `startListening()` ၶႃႈ။

```kotlin
// ၼႂ်း handleKeyPress()
R.id.key_speech -> {
    handleVoiceKey()
}

// ၼႂ်း ShanKeyboardService.kt


private fun handleVoiceKey() {
    // 1. ၸႅတ်ႈတူၺ်း Permission
    if (ContextCompat.checkSelfPermission(
            this,
            Manifest.permission.RECORD_AUDIO
        ) == PackageManager.PERMISSION_GRANTED
    ) {

        // တမ်း Locale ၸွမ်းၼင်ႇ Language ဢၼ်ၸႂ်ႉယူႇယၢမ်းလဵဝ်
        val langTag = when (currentLanguage) {
            "MY" -> "my-MM"
            "EN" -> "en-US"
            else -> "en-US" // Shan ပႆႇမီး Speech Engine ႁင်းၵူၺ်း
        }

        val voiceIntent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH).apply {
            putExtra(
                RecognizerIntent.EXTRA_LANGUAGE_MODEL,
                RecognizerIntent.LANGUAGE_MODEL_FREE_FORM
            )
            putExtra(RecognizerIntent.EXTRA_LANGUAGE, langTag)
            putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, true)
        }

        startVoiceRecognition(voiceIntent)
    } else {
        // ပႆႇပၼ် Permission -> လၢတ်ႈၼႄၵူၼ်းၸႂ်ႉ သေပိုတ်ႇ Settings
        showPermissionToast()
        openAppSettings()
    }
}

private fun startVoiceRecognition(voiceIntent: Intent) {
    try {
        speechRecognizer.startListening(voiceIntent)
        triggerVibration(currentInputView) // Feedback ႁႂ်ႈႁူႉဝႃႈတႄႇယဝ်ႉ
    } catch (e: Exception) {
        Log.e("VoiceInput", "Failed to start: ${e.message}")
    }
}

private fun showPermissionToast() {
    Toast.makeText(this, "ၶႅၼ်းတေႃႈ ပၼ်ၶေႃႈၶႂၢင်ႉ Microphone တွၼ်ႈတႃႇၸႂ်ႉ Voice Typing ၶႃႈ", Toast.LENGTH_LONG).show()
}

private fun openAppSettings() {
    val intent = Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS).apply {
        data = Uri.fromParts("package", packageName, null)
        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
    }
    startActivity(intent)
}
```

---

### **4. Technical Architecture: How it works**

မိူဝ်ႈၸဝ်ႈၵဝ်ႇၼဵၵ်းတုမ်ႇ Mic ၼၼ်ႉ Keyboard တေသူင်ႇ Signal ၸူး Android System ႁႂ်ႈပိုတ်ႇ Microphone ၶႃႈ။ 
သင်ယဝ်ႉၼႆ သဵင်ဢၼ်ၵူၼ်းၸႂ်ႉလၢတ်ႈမႃးၼၼ်ႉ တေလုၵ်ႉတီႈ Analog Wave လႅၵ်ႈပဵၼ် Digital Data သေသူင်ႇၸူး Google Server (ဢမ်ႇၼၼ် Local Engine) တွၼ်ႈတႃႇလႅၵ်ႈပဵၼ် Text ၶိုၼ်းၶႃႈ။



---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **SpeechRecognizer:** ပဵၼ် Tool တွၼ်ႈတႃႇလႅၵ်ႈသဵင်ပဵၼ်လိၵ်ႈ လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈ။
* **Permissions:** လွင်ႈယႂ်ႇသုတ်းပဵၼ် `RECORD_AUDIO`။
* **Locale:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸတ်းၵၢၼ် Language ႁႂ်ႈမၼ်းထွမ်ႇလိၵ်ႈမၢၼ်ႈ ဢမ်ႇၼၼ် လိၵ်ႈဢင်းၵိတ်ႉလႆႈ ၸွမ်းၼင်ႇၵူၼ်းၸႂ်ႉလိူၵ်ႈၶႃႈ။ လိၵ်ႈတႆးတေႉ ပႆႇလႆႈၶႃႈ။ 

---