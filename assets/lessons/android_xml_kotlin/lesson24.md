## **Lesson 24: Event Handling & Form Validation**

### **1. Complex Button Logic (ၵၢၼ်တဵၵ်းပုမ်ႇ လၢႆလၢႆပိူင်)**
တႅၼ်းတၢင် ၵၢၼ်တဵၵ်းလၢႆလၢႆ (Click) ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉလၢႆးတဵၵ်းတၢင်ႇပိူင် တႃႇႁဵတ်းႁႂ်ႈ App ႁဝ်းမီးၼမ်ႉၵတ်ႉလိူဝ်ၵဝ်ႇၶႃႈ:
* **Long Click:** မိူဝ်ႈၵူၼ်းၸႂ်ႉ "တဵၵ်းၵိုတ်းဝႆႉ" (မိူၼ်ၼင်ႇ: တဵၵ်းၵိုတ်း တႃႇထွၼ်ဢွၵ်ႇ ၶေႃႈမူၼ်း)။
* **Double Tap:** မိူဝ်ႈၵူၼ်းၸႂ်ႉ "တဵၵ်း 2 ပွၵ်ႈဝႆးဝႆး" (မိူၼ်ၼင်ႇ: လၢႆးတဵၵ်း Like ၼႂ်း Instagram)။

#### **တူဝ်ယၢင်ႇ Code (Long Click):**
```kotlin
binding.btnDelete.setOnLongClickListener {
    // ႁဵတ်းၵၢၼ် မိူဝ်ႈတဵၵ်းၵိုတ်းဝႆႉ
    Toast.makeText(requireContext(), "တဵၵ်းၵိုတ်းယဝ်ႉယဝ်ႉ!", Toast.LENGTH_SHORT).show()
    true // ပွင်ႇဝႃႈ ႁဝ်းၵုမ်းထိင်းၵၢၼ်တဵၵ်းၼႆႉယဝ်ႉယဝ်ႉ (Consumed)
}
```

---

### **2. Input Validation (ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈမူၼ်း)**
ပၼ်ႁႃဢၼ်ၵႆႉထူပ်းၵေႃႈပဵၼ် ၵူၼ်းၸႂ်ႉဢမ်ႇသႂ်ႇလိၵ်ႈသင် သေတဵၵ်းသူင်ႇ (Submit) ၶႃႈ။ 
ႁဝ်းလူဝ်ႇလႆႈၵူတ်ႇထတ်းဝႃႈ `EditText` ၼၼ်ႉ ပဝ်ႇ (Empty) ဝႆႉႁိုဝ် ၼႆၶႃႈ။

#### **လွၵ်းလၢႆးၵူတ်ႇထတ်း:**
```kotlin
val username = binding.editUsername.text.toString()

if (username.isEmpty()) {
    // ပၼ်ၾၢင်ႉဝႃႈ ဢမ်ႇပႆႇလႆႈသႂ်ႇလိၵ်ႈ
    binding.inputLayoutUsername.error = "ၶႅၼ်းတေႃႈ သႂ်ႇၸိုဝ်ႈၸဝ်ႈၵဝ်ႇၵွၼ်ႇၶႃႈ!"
} else {
    // သင်မီးလိၵ်ႈယဝ်ႉ ၸင်ႇပၼ်သူင်ႇၶေႃႈမူၼ်းၵႂႃႇ
    binding.inputLayoutUsername.error = null // လၢင်ႉသီလႅင်ပႅတ်ႉ
    findNavController().navigate(R.id.action_to_next)
}
```

---

### **3. Error Styling (ၵၢၼ်ၼႄသီလႅင် ပၼ်ၾၢင်ႉ)**
မိူဝ်ႈႁဝ်းၸႂ်ႉ `TextInputLayout` (Material Design) ႁဝ်းၸၢင်ႈၸႂ်ႉ **`.setError()`** တႃႇၼႄလိၵ်ႈပၼ်ၾၢင်ႉ လႄႈ သီလႅင် ႁိမ်းၶွပ်ႇလွၵ်းလိၵ်ႈ ႁႂ်ႈတူၺ်းငၢႆႈၶႃႈ။
* **Error States:** မၼ်းတေၸွႆးႁႂ်ႈၵူၼ်းၸႂ်ႉ ႁူႉလႆႈၵမ်းလဵဝ်ဝႃႈ ၶဝ်လူဝ်ႇမႄးတီႈလႂ်။
* **Real-time Validation:** ႁဝ်းၸၢင်ႈၸႂ်ႉ `addTextChangedListener` တႃႇၵူတ်ႇထတ်းလိၵ်ႈ မိူဝ်ႈၵူၼ်းၸႂ်ႉတိုၵ်ႉတႅမ်ႈယူႇၵမ်းလဵဝ်ၵေႃႈလႆႈၶႃႈ။



---

### **4. Example: Validation Logic (တူဝ်ယၢင်ႇ ၵၢၼ်ၵူတ်ႇထတ်း Email)**
```kotlin
binding.btnRegister.setOnClickListener {
    val email = binding.editEmail.text.toString()

    if (!email.contains("@")) {
        binding.inputLayoutEmail.error = "Email ၸဝ်ႈၵဝ်ႇ ဢမ်ႇၸိုင်ႈၸႂ်ႈၶႃႈ!"
    } else {
        binding.inputLayoutEmail.isErrorEnabled = false // ပိတ်း Error ပႅတ်ႉ
        // သူင်ႇၶေႃႈမူၼ်း
    }
}
```

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
'ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈမူၼ်း (Validation) ၼႆႉ လမ်ႇလွင်ႈၼႃႇ တႃႇႁဵတ်းႁႂ်ႈ App ႁဝ်း မၼ်ႈၵိုမ်း လႄႈ ဢမ်ႇလူႉ (Crash) ၶႃႈ။'
ၾၢင်ႉသတိဝႃႈ တႅၼ်းတၢင် ၵၢၼ်ၼဵၵ်းတုမ်ႇ (Disable Button) ၼၼ်ႉ ၵၢၼ်ၼႄ Error Message ပဵၼ်လၢႆးဢၼ်လီလိူဝ် ယွၼ်ႉမၼ်း လၢတ်ႈၼႄၵူၼ်းၸႂ်ႉဝႃႈ ၶဝ်လူဝ်ႇမႄးသင် ၼႆၶႃႈ။