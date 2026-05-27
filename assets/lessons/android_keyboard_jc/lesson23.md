

## Lesson 23: Implementing the Keyboard Onboarding Wizard Flow (Enable & Select Validation)

ၼႂ်း Android, တႃႇႁဝ်းတေႁူႉလႆႈဝႃႈ Keyboard ႁဝ်း ထုၵ်ႇပိုတ်ႇ (Enabled) ဝႆႉၼႂ်း System ႁႃႉ လႄႈ ထုၵ်ႇလိူၵ်ႈၸႂ်ႉ (Selected) ဝႆႉပဵၼ် Active IME ယူႇႁႃႉၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ **`InputMethodManager`** တႃႇၵႂႃႇထတ်းသၢင်ႈ (Query) Context System ၶႃႈ။

---

### 1. Helper Functions တွၼ်ႈတႃႇထတ်း State ၼႂ်း `MainActivity.kt`

ႁဝ်းတေမႃးထႅမ် Functions 2 ဢၼ်ဝႆႉၼႂ်း `MainActivity` တွၼ်ႈတႃႇ Check ပိူင်သၢင်ႈ System ၶႃႈ:

```kotlin
import android.view.inputmethod.InputMethodManager
import android.provider.Settings

// 🌟 1. ထတ်းသၢင်ႈဝႃႈ Keyboard ႁဝ်း ထုၵ်ႇပိုတ်ႇဝႆႉၼႂ်း Settings ႁႃႉ
private fun isKeyboardEnabled(): Boolean {
    val imm = getSystemService(INPUT_METHOD_SERVICE) as InputMethodManager
    val enabledPackages = imm.enabledInputMethodList
    return enabledPackages.any { it.packageName == packageName }
}

// 🌟 2. ထတ်းသၢင်ႈဝႃႈ Keyboard ႁဝ်း ပဵၼ်တူဝ် Active ဢၼ်ထုၵ်ႇလိူၵ်ႈၸႂ်ႉယူႇယၢမ်းလဵဝ်ႁႃႉ
private fun isKeyboardSelected(): Boolean {
    val currentIME = Settings.Secure.getString(contentResolver, Settings.Secure.DEFAULT_INPUT_METHOD)
    return currentIME != null && currentIME.contains(packageName)
}

```

---

### 2. Complete Code `MainActivity.kt` ႁူမ်ႈတင်း Onboarding Wizard Flow

ႁဝ်းတေၸႂ်ႉ Compose Local States တႃႇၵုမ်းထိန်း Step Flow၊ သေ ၸႂ်ႉ `onResume()` Lifecycle တႃႇ Auto-Refresh State မိူဝ်ႈ User လုၵ်ႉတီႈ Settings System ၶိုၼ်းဝိၼ်ၼ်မႃးၼႂ်း App ႁဝ်းၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.content.Intent
import android.os.Bundle
import android.provider.Settings
import android.view.inputmethod.InputMethodManager
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.saimao.tmkkeyboardpro.data.theme.KeyboardThemesRepository
import it.saimao.tmkkeyboardpro.utils.SharedPreferenceManager

class MainActivity : ComponentActivity() {

    // 🌟 States တွၼ်ႈတႃႇၵုမ်းထိန်း Wizard Flow
    private var isEnabledState = mutableStateOf(false)
    private var isSelectedState = mutableStateOf(false)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        updateKeyboardStates()

        setContent {
            MaterialTheme {
                Surface(modifier = Modifier.fillMaxSize(), color = Color(0xFF121212)) {
                    
                    // 🌟 🌟 Flow Control Machine ၸွမ်းၼင်ႇ Conditions ၶွင်ၸဝ်ႈၵဝ်ႇ
                    when {
                        !isEnabledState.value -> {
                            OnboardingStepPage(
                                title = "Step 1: Enable TMK Keyboard",
                                description = "Please enable TMK Keyboard Pro in your system settings to start using Shan & Myanmar layouts.",
                                buttonText = "⚙️ Open Settings to Enable",
                                onClick = {
                                    // ႁွင်ႉပိုတ်ႇ ၼႃႈ Settings IME ၶွင် Android System
                                    context.startActivity(Intent(Settings.ACTION_INPUT_METHOD_SETTINGS))
                                }
                            )
                        }
                        !isSelectedState.value -> {
                            OnboardingStepPage(
                                title = "Step 2: Select TMK Keyboard",
                                description = "Almost done! Switch your current active keyboard method to TMK Keyboard Pro.",
                                buttonText = "⌨️ Switch Keyboard Method",
                                onClick = {
                                    // ႁွင်ႉပိုတ်ႇ System Keyboard Picker Dialog ၵမ်းသိုဝ်ႈ
                                    val imm = getSystemService(INPUT_METHOD_SERVICE) as InputMethodManager
                                    imm.showInputMethodPicker()
                                }
                            )
                        }
                        else -> {
                            // Only after these two conditions are met, show the Setting Screen
                            SettingsScreen()
                        }
                    }
                }
            }
        }
    }

    // 🌟 Auto-check system states မိူဝ်ႈ User ၶိုၼ်းပိၼ်ႇမႃးၼႂ်း App
    override fun onResume() {
        super.onResume()
        updateKeyboardStates()
    }

    private fun updateKeyboardStates() {
        val imm = getSystemService(INPUT_METHOD_SERVICE) as InputMethodManager
        isEnabledState.value = imm.enabledInputMethodList.any { it.packageName == packageName }
        
        val currentIME = Settings.Secure.getString(contentResolver, Settings.Secure.DEFAULT_INPUT_METHOD)
        isSelectedState.value = currentIME != null && currentIME.contains(packageName)
    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
        if (hasFocus) {
            updateKeyboardStates()

            // 🌟 Extra Safe: ပၼ်မၼ်း Polling Check ထႅင်ႈပွၵ်ႈၼိုင်ႈ ၽၢႆႇလင် 200ms
            // တွၼ်ႈတႃႇႁပ်ႉႁူႉ သင်ဝႃႈ System Android တႅမ်ႈ String သုၼ်ႉထိူင်း (Delay Storage)
            window.decorView.postDelayed({
                updateKeyboardStates()
            }, 200)
        }
    }

    // ------------------ 🌟 REUSABLE WIZARD PAGE LAYOUT ------------------
    @Composable
    fun OnboardingStepPage(
        title: String,
        description: String,
        buttonText: String,
        onClick: () -> Unit
    ) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(30.dp),
            verticalArrangement = Arrangement.Center,
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Image(
                painter = painterResource(id = R.drawable.applogo), // 🌟 Show App Logo
                contentDescription = "App Logo",
                modifier = Modifier
                    .size(120.dp)
                    .clip(RoundedCornerShape(24.dp))
            )
            
            Spacer(modifier = Modifier.height(25.dp))
            Text(text = title, color = Color.White, fontSize = 22.sp, fontWeight = FontWeight.Bold)
            
            Spacer(modifier = Modifier.height(12.dp))
            Text(
                text = description, 
                color = Color.Gray, 
                fontSize = 14.sp, 
                textAlign = TextAlign.Center,
                modifier = Modifier.padding(horizontal = 10.dp)
            )
            
            Spacer(modifier = Modifier.height(40.dp))
            
            Button(
                onClick = onClick,
                modifier = Modifier.fillMaxWidth().height(54.dp),
                shape = RoundedCornerShape(12.dp),
                colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF00E676), contentColor = Color(0xFF121212))
            ) {
                Text(text = buttonText, fontSize = 16.sp, fontWeight = FontWeight.Bold)
            }
        }
    }

    // ... Code SettingsScreen() & Test Dialog (လုၵ်ႉတွၼ်ႈ Lesson 22/22.1) ...
}

```

---

### 3. မၢႆတွင်း (Core Takeaways for Wizard Flow)

* **`imm.showInputMethodPicker()`**: တူဝ်ၼႆႉ မၼ်းပဵၼ် Native Android API ဢၼ်တေ Auto-Pop Up တႅမ်ႈ Dialog လိူၵ်ႈ Keyboard (IME Switcher Selector) ၶဝ်ႈမႃးၼႄၼိူဝ် ၼႃႈၸေႃးၵမ်းသိုဝ်ႈ ၶၼ်ၽတ်ႉၽႅဝ်း သုတ်းသုတ်းၶႃႈ။
* **`onResume()` Native Bridge Sync**: ၵၢၼ်ၸႂ်ႉ `onResume()` မၼ်းပဵၼ် တွၼ်ႈလၵ်းလၵ်းၶႃႈ။ မိူဝ်ႈ User ၵႂႃႇၼဵၵ်းပိုတ်ႇ Keyboard ၼႂ်း System Settings ယဝ်ႉ၊ သေ ပိၼ်ႇၶိုၼ်းမႃး (Back) ၼႂ်း App, `onResume()` တေ Auto-Trigger `updateKeyboardStates()` သေ လႅၵ်ႈ Step UI ၵႂႃႇ Step 2 ဢမ်ႇၼၼ် Settings Screen ၵမ်းသိုဝ်ႈ ႁင်းမၼ်း တႅတ်ႈတေႃး 100% ၶႃႈ။

---