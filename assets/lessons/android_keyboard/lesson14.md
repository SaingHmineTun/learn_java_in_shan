## **Lesson 14: InputConnection Mastery: Committing Strings and Deleting Text**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ယၢမ်းလဵဝ်ႁဝ်းမီး Layout ဢၼ်ႁၢင်ႈလီယဝ်ႉ၊ ၵွၺ်းၵႃႈ မိူဝ်ႈႁဝ်းၼိပ်ႉ Button ၼၼ်ႉ မၼ်းတိုၵ်ႉယဵၼ်ဝႆႉယူႇ။ 
တွၼ်ႈတႃႇတေသူင်ႇလိၵ်ႈၶဝ်ႈၵႂႃႇၼႂ်း App (မိူၼ်ၼင်ႇ Facebook, Messenger) ၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ **`InputConnection`** ၶႃႈ။

**InputConnection** ပဵၼ် "ၶူဝ်" (Bridge) ဢၼ်ၵွင်ႉဝႆႉၼႂ်းၵႄႈ Keyboard ႁဝ်း လႄႈ App ဢၼ်ႁဝ်းတိုၵ်ႉတႅမ်ႈလိၵ်ႈသႂ်ႇၼၼ်ႉၶႃႈယဝ်ႉ။

---

### **1. Getting the InputConnection**

ၵူႈပွၵ်ႈဢၼ်ႁဝ်းတေသူင်ႇလိၵ်ႈၼၼ်ႉ ႁဝ်းတေလႆႈႁွင်ႉၸႂ်ႉ `getCurrentInputConnection()` ၶႃႈ။

```kotlin
val ic = currentInputConnection ?: return
```

---

### **2. Committing Text (ၵၢၼ်သူင်ႇလိၵ်ႈ)**

မိူဝ်ႈႁဝ်းၼဵၵ်းတုမ်ႇ **"ၵ"** ဢမ်ႇၼၼ် **"A"** ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ Function `commitText()` ၶႃႈ။

* **`commitText(text, cursorPosition)`**:
    * `text`: တူဝ်လိၵ်ႈဢၼ်ႁဝ်းလူဝ်ႇသူင်ႇ။
    * `cursorPosition`: တမ်းဝႆႉ `1` တႃႇႁႂ်ႈ Cursor လႅၼ်ႈၵႂႃႇၽၢႆႇၼႃႈလိၵ်ႈဢၼ်တႅမ်ႈယဝ်ႉ။

```kotlin
fun handleText(text: String) {
    val ic = currentInputConnection
    ic?.commitText(text, 1)
}
```

---

### **3. Deleting Text (ၵၢၼ်လူတ်းလိၵ်ႈ)**

တွၼ်ႈတႃႇတုမ်ႇ **Backspace (⌫)**၊ ႁဝ်းၸႂ်ႉ `deleteSurroundingText(beforeLength, afterLength)` ၶႃႈ။

* **`beforeLength`**: လူတ်းတူဝ်လိၵ်ႈၽၢႆႇသၢႆႉ (ၽၢႆႇလင် Cursor)။
* **`afterLength`**: လူတ်းတူဝ်လိၵ်ႈၽၢႆႇၶႂႃ (ၽၢႆႇၼႃႈ Cursor)။ တေမိူၼ်ၵၼ်တင်း Delete key တီႈၶွမ်းၶႃႈ။ ၶႃႈလႆႈတမ်းဝႆႉ `0` တႃႇႁႂ်ႈမၼ်း ဢမ်ႇႁဵတ်းၵၢၼ်ၶႃႈ။

```kotlin
fun handleDelete() {
    val ic = currentInputConnection
    // လူတ်းလိၵ်ႈ 1 တူဝ် ၽၢႆႇလင် Cursor
    ic?.deleteSurroundingText(1, 0)
}
```



---

### **4. Handling "Enter" and "Space"**

တုမ်ႇ **Space** လႄႈ **Enter** ၵေႃႈ ၸႂ်ႉ `commitText` လႆႈမိူၼ်ၵၼ်ၶႃႈ:

* **Space**: `ic.commitText(" ", 1)`
* **Enter (New Line)**: `ic.commitText("\n", 1)`

---

### **5. Practice in ShanKeyboardService.kt**

ႁဝ်းမႃးသၢင်ႈ Function ပိုၼ်ႉထၢၼ်ဝႆႉ ၼင်ႇႁိုဝ် Lesson 15 တေႁွင်ႉၸႂ်ႉလႆႈငၢႆႈၶႃႈ:

```kotlin
class ShanKeyboardService : InputMethodService() {

    // သူင်ႇလိၵ်ႈယူႇယူႇ
    fun sendText(text: String) {
        currentInputConnection?.commitText(text, 1)
    }

    // ၵၢၼ်လူတ်းလိၵ်ႈ (Backspace)
    fun sendDelete() {
        currentInputConnection?.deleteSurroundingText(1, 0)
    }

    // သူင်ႇ Key Event (တႃႇ Enter, Tab)
    fun sendKeyAction(keyCode: Int) {
        currentInputConnection?.sendKeyEvent(KeyEvent(KeyEvent.ACTION_DOWN, keyCode))
        currentInputConnection?.sendKeyEvent(KeyEvent(KeyEvent.ACTION_UP, keyCode))
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **InputConnection:** ပဵၼ်လွင်ႈၵွင်ႉ Keyboard ၸူး App။
* **commitText:** ၸႂ်ႉသူင်ႇ Strings (ၵ, A, ၼႂ်းမိူင်းတႆး, etc.)။
* **deleteSurroundingText:** ၸႂ်ႉတွၼ်ႈတႃႇ Backspace။
* **Safety:** တေလႆႈၸႅတ်ႈ `currentInputConnection != null` တႃႇသေႇ ၼင်ႇႁိုဝ် App တေဢမ်ႇ Crash ၶႃႈ။

---