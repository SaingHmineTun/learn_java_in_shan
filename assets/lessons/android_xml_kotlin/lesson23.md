## **Lesson 23: Dialogs and BottomSheets**

### **1. AlertDialog (ၵၢၼ်သၢင်ႈၼႃႈတၢင်ႇပၼ်ၾၢင်ႉ)**
`AlertDialog` ၸႂ်ႉတႃႇပိုတ်ႇၼႃႈတၢင်ႇဢွၼ်ႇ တီႈၵၢင်ၼႃႈၸေႃး တႃႇထၢမ် ဢမ်ႇၼၼ် ပၼ်ၾၢင်ႉၵူၼ်းၸႂ်ႉၶႃႈ။
* **Components:** မီး ၸိုဝ်ႈ (Title), ၶေႃႈၵႂၢမ်း (Message), လႄႈ တုမ်ႇတွပ်ႇ (Positive/Negative Buttons) ၶႃႈ။
* **ၵႆႉၸႂ်ႉမိူဝ်ႈ:** ၵူၼ်းၸႂ်ႉတေ "ပိၵ်ႉ App" ဢမ်ႇၼၼ် "ထွၼ်ဢွၵ်ႇၶေႃႈမူၼ်း (Delete)" ၶႃႈ။

#### **တူဝ်ယၢင်ႇ Code ၼႂ်း Kotlin:**
```kotlin
MaterialAlertDialogBuilder(requireContext())
    .setTitle("မႂ်ႇသုင်ၶႃး")
    .setMessage("ၸဝ်ႈၵဝ်ႇ ၶႂ်ႈဢွၵ်ႇယဝ်ႉႁိုဝ်ၶႃႈ?")
    .setNegativeButton("ဢမ်ႇဢွၵ်ႇ") { dialog, which ->
        // ပိၵ်ႉ Dialog ပႅတ်ႉလၢႆလၢႆ
    }
    .setPositiveButton("ဢွၵ်ႇ") { dialog, which ->
        // ႁဵတ်းၵၢၼ်ဢွၵ်ႇ App
    }
    .show()
```

---

### **2. BottomSheetDialogFragment (ၼႃႈတၢင်ႇလၢၵ်ႈၶိုၼ်ႈ ၽၢႆႇတႂ်ႈ)**
`BottomSheet` ပဵၼ်ႁၢင်ႈၾၢင်ဢၼ်တူၺ်း "ၵတ်ႉၶႅၼ်ႇ" (Modern) လိူဝ် Dialog ၶႃႈ။ မၼ်းတေလၢၵ်ႈၶိုၼ်ႈမႃးတီႈၽၢႆႇတႂ်ႈၼႃႈၸေႃး ၸိူင်ႉၼင်ႇ App Spotify ဢမ်ႇၼၼ် Google Maps ၶႃႈ။
* **လွင်ႈလီ:** မၼ်းၸႂ်ႉငၢႆႈ လႄႈ မၼ်းသိမ်း Views လႆႈၼမ်လိူဝ် AlertDialog ၶႃႈ။



---

### **3. User Input in Dialogs (ၵၢၼ်ႁပ်ႉၶေႃႈမူၼ်း ၼႂ်း Pop-up)**
ႁဝ်းၸၢင်ႈဢဝ် XML Layout ဢၼ်ႁဝ်းဢွၵ်ႇပိူင်ဝႆႉ (မိူၼ်ၼင်ႇ မီး EditText) မႃးသႂ်ႇၼႂ်း Dialog လႆႈၶႃႈ။
* **လၢႆးႁဵတ်း:** ၸႂ်ႉ `setView(R.layout.my_custom_dialog)` တႃႇဢဝ် Layout ႁဝ်းၵႂႃႇၼႄၼႂ်း Dialog ၶႃႈ။

---

### **4. Example: Custom BottomSheet (တူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈ BottomSheet)**
ႁဝ်းလူဝ်ႇသၢင်ႈ Class ဢၼ်သိုပ်ႇ (Inherit) မႃးတီႈ `BottomSheetDialogFragment` ၶႃႈ။

```kotlin
class TaskOptionsSheet : BottomSheetDialogFragment() {
    
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        // ဢွၵ်ႇပိူင် XML ဢၼ်မီးပုမ်ႇ Edit/Delete ၼႂ်းၼႆႉ
        return inflater.inflate(R.layout.fragment_task_options, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState: Bundle?)
        // တႅမ်ႈ Logic ၵၢၼ်တဵၵ်းပုမ်ႇ တီႈၼႆႈၶႃႈ
    }
}
```

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
'ၸႂ်ႉ AlertDialog တွၼ်ႈတႃႇၶေႃႈၵႂၢမ်းပၼ်ၾၢင်ႉဢွၼ်ႇ၊ လႄႈ ၸႂ်ႉ BottomSheet တွၼ်ႈတႃႇၶေႃႈလိူၵ်ႈဢၼ်မီးႁၢင်ႈ (Icons) ဢမ်ႇၼၼ် လွၵ်းသႂ်ႇၶေႃႈမူၼ်းၶႃႈ။' 
ႁႂ်ႈၶဝ်သတိလွင်ႈ **'UX'** (User Experience) - ယႃႇပိုတ်ႇ Dialog ၼမ်ပူၼ်ႉတီႈ ယွၼ်ႉမၼ်းတေႁဵတ်းႁႂ်ႈၵူၼ်းၸႂ်ႉ "ႁူၺ်ႈ" (Annoyed) ၶႃႈ။"

---