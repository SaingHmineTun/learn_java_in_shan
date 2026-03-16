# တွၼ်ႈသွၼ် 30: ၵၢၼ်ႁွင်ႉၸႂ်ႉၸွမ်းၸိုဝ်ႈ (Named Arguments)

မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Function ဢၼ်မီး Parameter တင်းၼမ်၊ မၢင်ပွၵ်ႈႁဝ်းတေယုင်ႈယၢင်ႇဝႃႈ တူဝ်လႂ်ပဵၼ်တူဝ်လႂ်။ **Named Arguments** ၸွႆႈႁႂ်ႈႁဝ်းသူင်ႇ Value ပၼ် Parameter လူၺ်ႈၵၢၼ်တႅမ်ႈ "ၸိုဝ်ႈ" မၼ်းၵႂႃႇၵမ်းလဵဝ်ယဝ်ႉ။

### 1. လၢႆးတႅမ်ႈ (Syntax)

ႁဝ်းတႅမ်ႈ `ၸိုဝ်ႈ Parameter = Value` ၼႂ်းဝူင်းလႅမ် မိူဝ်ႈႁွင်ႉၸႂ်ႉယဝ်ႉ။

```kotlin
fun formatUser(name: String, age: Int, city: String, isAdmin: Boolean) {
    println("$name ($age) ယူႇတီႈ $city. Admin: $isAdmin")
}

// ၵၢၼ်ႁွင်ႉၸႂ်ႉလူၺ်ႈ Named Arguments
formatUser(
    name = "Sai Sai",
    age = 25,
    city = "Taunggyi",
    isAdmin = false
)

```

### 2. လွတ်ႈလႅဝ်းၼိူဝ် "လုၵ်ႉ/တႅမ်င်ႈ" (Flexible Ordering)

မိူဝ်ႈႁဝ်းၸႂ်ႉၸိုဝ်ႈမၼ်းယဝ်ႉ၊ ႁဝ်း **ဢမ်ႇလူဝ်ႇ** သူင်ႇၸွမ်းလုၵ်ႉ (Order) ဢၼ်မၵ်းမၼ်ႈဝႆႉၼႂ်း Function ၵေႃႈလႆႈယဝ်ႉ။

```kotlin
// သူင်ႇ city ဢွၼ်တၢင်း age ၵေႃႈဢမ်ႇပဵၼ်သင်
formatUser(name = "Nang", isAdmin = true, city = "Yangon", age = 30)

```

---

### 3. ၵွပ်ႈသင်ၸင်ႇထုၵ်ႇလီၸႂ်ႉ?

1. **Call Site Clarity:** ႁဵတ်းႁႂ်ႈၵူၼ်းဢၢၼ်ႇၶူတ်ႉ ပွင်ႇၸႂ်ၵမ်းလဵဝ်ဝႃႈ Value ၼိုင်ႈဢၼ်ၼၼ်ႉ ဝႆႉၸႂ်ႉတႃႇသင် (မိူၼ်ၼင်ႇ `true` ၼႆႉ ပဵၼ် isAdmin ႁႃႉ? ဢမ်ႇၼၼ် ပဵၼ် isActive?)။
2. **Safe from Errors:** ႁႄႉၵင်ႈၵၢၼ်သူင်ႇၶေႃႈမုၼ်းၽိတ်းတႅမ်င်ႈ (တူဝ်ယၢင်ႇ: သူင်ႇ Int သႂ်ႇၼႂ်းတႅမ်င်ႈ Int ထႅင်ႈဢၼ်ၼိုင်ႈ ဢၼ်ၸိုဝ်ႈပႅၵ်ႇၵၼ်)။
3. **Combination with Default Arguments:** ၸွႆႈႁႂ်ႈႁဝ်းလိူၵ်ႈသူင်ႇၶေႃႈမုၼ်း ၵူၺ်းတူဝ်ဢၼ်ႁဝ်းၶႂ်ႈလႅၵ်ႈလၢႆႈ (Override) သေ ပွႆႇႁႂ်ႈတူဝ်တၢင်ႇၸိူဝ်းပဵၼ် Default ၵႂႃႇလႆႈ။

```kotlin
fun reformat(str: String, normalize: Boolean = true, upperCase: Boolean = false) { ... }

// ႁဝ်းၶႂ်ႈလႅၵ်ႈၵူၺ်း upperCase
reformat("Hello", upperCase = true) 
// normalize တေတိုၵ်ႉပဵၼ် true (Default) ယူႇ

```

---

### 4. ၶေႃႈတွၼ်းသတိ

သင်ႁဝ်းသူင်ႇ Argument ၸွမ်းလုၵ်ႉ (Positional) လႄႈ ၸွမ်းၸိုဝ်ႈ (Named) ႁူမ်ႈၵၼ်၊ တွၼ်ႈဢၼ်ပဵၼ် Positional တေလႆႈယူႇ **ၽၢႆႇၼႃႈ** တႃႇသေႇ။ (ၵူၺ်းၵႃႈ ၼႂ်း Kotlin ၸၼ်ႉသုင်၊ ႁဝ်းၸၢင်ႈၸႂ်ႉၶူပ်းၵၼ်လႆႈ ၵူၺ်းၵႃႈ လူဝ်ႇဝႆႉသတိလွင်ႈလုၵ်ႉမၼ်းၶႃႈ)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Call Site:** တႅမ်င်ႈတီႈဢၼ်ႁဝ်း "ႁွင်ႉၸႂ်ႉ" Function ၼၼ်ႉ။
* **Positional Argument:** ၵၢၼ်သူင်ႇ Value ၸွမ်းၼင်ႇလုၵ်ႉ (တႅမ်င်ႈ 1, 2, 3) ဢၼ်မၵ်းမၼ်ႈဝႆႉ။
* **Clarity:** လွင်ႈၸႅင်ႈလႅင်း ပွင်ႇၸႂ်ငၢႆႈ။
* **Parameter List:** ၸုမ်း Variable ဢၼ်မၵ်းမၼ်ႈဝႆႉ ၼႂ်းႁူဝ် Function။

---