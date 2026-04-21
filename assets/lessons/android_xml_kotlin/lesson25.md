## **Lesson 25: Main Project Lab – Multi-Level Trivia**

### **1. The Requirement (ၶေႃႈလူဝ်ႇမီး)**
ႁဝ်းတေတႅမ်ႈ ၵဵမ်းထၢမ်တွပ်ႇ ဢၼ်မီး 3 ၼႃႈၸေႃး:
* **StartFragment:** ၼႄၸိုဝ်ႈၵဵမ်း လႄႈ တုမ်ႇ "Start Game"။
* **GameFragment:** ၼႄၶေႃႈထၢမ် (Random Questions) လႄႈ တုမ်ႇတွပ်ႇ။
* **ResultFragment:** ၼႄတူဝ်ၼပ်ႉၶႅၼ်း (Final Score) ဢၼ်ႁပ်ႉမႃးတီႈၼႃႈၵဵမ်း။

---

### **2. The Implementation (လွၵ်းလၢႆးႁဵတ်း)**

#### **Step 1: NavGraph Setup**
သၢင်ႈ **Navigation Graph** သေ သႂ်ႇ Fragment တင်း 3 ဢၼ်။ လၢၵ်ႈသၢႆလႅၼ်ႈ (Actions) တေႃႇၵၼ်:
1.  `StartFragment` -> `GameFragment`
2.  `GameFragment` -> `ResultFragment` (သႂ်ႇ Argument ၸိုဝ်ႈဝႃႈ `score` ပဵၼ် `Integer`)
3.  `ResultFragment` -> `StartFragment` (ၸႂ်ႉ `popUpTo` တႃႇလၢင်ႉ Backstack)



#### **Step 2: Logic & SafeArgs (Game -> Result)**
မိူဝ်ႈလဵၼ်ႈၵိမ်းယဝ်ႉ၊ သူင်ႇၶႅၼ်းၵႂႃႇၼႃႈၽူၼ်လႅတ်း:

```kotlin
// ၼႂ်း GameFragment
val finalScore = 80 
val action = GameFragmentDirections.actionGameToResult(finalScore)
findNavController().navigate(action)
```

#### **Step 3: Clear Backstack (Play Again)**
မိူဝ်ႈၵူၼ်းၸႂ်ႉတဵၵ်း "Play Again"၊ ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းပွၵ်ႈၵႂႃႇၼႃႈႁူဝ်ပၼ်သေ လၢင်ႉၼႃႈၸေႃးၵဝ်ႇတင်းမူတ်းပႅတ်ႉ:

```kotlin
// ၼႂ်း ResultFragment
binding.btnPlayAgain.setOnClickListener {
    val navOptions = NavOptions.Builder()
        .setPopUpTo(R.id.startFragment, true) // လၢင်ႉၼႃႈ Start လႄႈ ၼႃႈၸိူဝ်းယူႇၼိူဝ်မၼ်းပႅတ်ႉ
        .build()
    findNavController().navigate(R.id.action_result_to_start, null, navOptions)
}
```

---

### **3. Try it Yourself! (ၸၢမ်းႁဵတ်းႁင်းၵွႆး)**

တႃႇႁႂ်ႈ လူင်ႉလႅၼ်ႇၼိူဝ်ၵဝ်ၼႆ ၸၢမ်းႁဵတ်းတူၺ်း Project ဢွၼ်ႇၸိူဝ်းၼႆႉၶႃႈ:

#### **1. Animal Sounds App**
* **ႁၢင်ႈၾၢင်:** ၼႃႈ Home မီးတုမ်ႇသတ်း 3 တူဝ် (မႃ၊ မႅဝ်း backgrounds)။
* **ၵၢၼ်ႁဵတ်းၵၢၼ်:** ပေႃးတဵၵ်းပုမ်ႇ "မႅဝ်း" ၼႆ ႁႂ်ႈသူင်ႇ String `"Cat"` ၵႂႃႇၸူး Detail Fragment သေ ၼႄႁၢင်ႈမႅဝ်း လႄႈ ၶေႃႈမူၼ်းမၼ်းၶႃႈ။

#### **2. Onboarding Slider**
* **ႁၢင်ႈၾၢင်:** ၼႃႈၸေႃး 3 ဢၼ် (Welcome -> Features -> Finish)။
* **ၵၢၼ်ႁဵတ်းၵၢၼ်:** ၸႂ်ႉ Animations `slide_in_right` လႄႈ `slide_out_left` တႃႇႁႂ်ႈတူၺ်းမိူၼ် ႁဝ်းလၢၵ်ႈၼႃႈၸေႃးၶၢႆႉၵႂႃႇမႃးၶႃႈ။

#### **3. Profile Switcher**
* **ႁၢင်ႈၾၢင်:** ၼႃႈ Register မီး `EditText` 2 ဢၼ် (Name, Email)။
* **ၵၢၼ်ႁဵတ်းၵၢၼ်:** ၸႂ်ႉ **SafeArgs** သူင်ႇၶေႃႈမူၼ်းတင်း 2 ဢၼ်ၼၼ်ႉ ၵႂႃႇၼႄၼႂ်းၼႃႈ Profile Fragment ႁႂ်ႈတူင်ႇၵၼ်ၶႃႈ။

---