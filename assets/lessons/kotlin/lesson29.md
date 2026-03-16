# တွၼ်ႈသွၼ် 29: ၵၢၼ်သႂ်ႇၶေႃႈမုၼ်းတႅၼ်းတၢင်း (Default Arguments)

**Default Argument** ၼႆႉ ပဵၼ်ၵၢၼ်မၵ်းမၼ်ႈ Value ဝႆႉပၼ် Parameter တႄႇငဝ်ႈမၼ်းယဝ်ႉ။ သင်ဝႃႈၵူၼ်းၸႂ်ႉ (Caller) ဢမ်ႇသူင်ႇ Argument သင်မႃးပၼ်၊ Function တေဢဝ် Value ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၼၼ်ႉ ၵႂႃႇၸႂ်ႉၵမ်းလဵဝ်ယဝ်ႉ။

### 1. လၢႆးတႅမ်ႈ (Syntax)

ႁဝ်းၸႂ်ႉၶိူင်ႈမၢႆ **`=`** ဝႆႉၽၢႆႇလင် Type ၼႂ်း Parameter ယဝ်ႉ။

```kotlin
fun displayMessage(message: String, prefix: String = "Info", suffix: String = "!") {
    println("[$prefix] $message $suffix")
}

```

### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Usage)

ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉ Function ၼႆႉလႆႈလၢႆလၢႆလၢႆးယဝ်ႉ:

* **သူင်ႇၵူႈယၢင်ႇ:**
  `displayMessage("Hello", "Greeting", ".")`
  // ၽူၼ်မၼ်း: [Greeting] Hello .
* **ဢမ်ႇသူင်ႇ Prefix လႄႈ Suffix (ၸႂ်ႉ Default):**
  `displayMessage("System start")`
  // ၽူၼ်မၼ်း: [Info] System start !
* **သူင်ႇၵူၺ်း Prefix:**
  `displayMessage("Error found", "Warning")`
  // ၽူၼ်မၼ်း: [Warning] Error found !

---

### 3. ၵွပ်ႈသင်ၸင်ႇလီ? (Flexible API Design)

1. **Reduce Boilerplate:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ Function သွၼ်ႉၵၼ်လၢႆလၢႆဢၼ် (Avoid Overloading)။
2. **Readability:** ၶူတ်ႉတူၺ်းငၢႆႈ လႄႈ ၵုမ်းထိင်း (Maintain) လႆႈငၢႆႈ။
3. **Flexibility:** ၸွႆႈႁႂ်ႈၵူၼ်းၸႂ်ႉ Code ႁဝ်းလိူၵ်ႈသူင်ႇၶေႃႈမုၼ်းလႆႈ ၸွမ်းၼင်ႇၶဝ်လူဝ်ႇ။

---

### 4. ၶေႃႈတွၼ်းသတိ

သင်ဝႃႈ Parameter ဢၼ်မီး Default Value ၼၼ်ႉ ယူႇၽၢႆႇၼႃႈ Parameter ဢၼ်ဢမ်ႇမီး Default၊ ႁဝ်းတေလူဝ်ႇၸႂ်ႉ **Named Arguments** (ဢၼ်ႁဝ်းတေႁဵၼ်းၼႂ်းတွၼ်ႈ 30) တႃႇသူင်ႇၶေႃႈမုၼ်းႁႂ်ႈမၼ်းတႅတ်ႈတေႃးယဝ်ႉ။

```kotlin
fun log(level: String = "INFO", message: String) {
    println("$level: $message")
}

// log("Hello") // ၼႆႉတေ Error ၵွပ်ႈ Kotlin ၼึกဝႃႈ "Hello" ပဵၼ် level
log(message = "Hello") // ၸႂ်ႉ Named Argument ၸွႆႈလႆႈ

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Default Value:** ၶေႃႈမုၼ်းတႅၼ်းတၢင်း ဢၼ်မၵ်းမၼ်ႈဝႆႉတႄႇငဝ်ႈ။
* **Method Overloading:** ၵၢၼ်တႅမ်ႈ Function ၸိုဝ်ႈလဵဝ်ၵၼ် ၵူၺ်းၵႃႈ Parameters ပႅၵ်ႇၵၼ် (လၢႆး Java)။
* **API Design:** ၵၢၼ်ဢွၵ်ႇပႅၼ်း (Design) ႁႂ်ႈ Function ဢမ်ႇၼၼ် Library ႁဝ်းၸႂ်ႉငၢႆႈ။
* **Boilerplate:** ၶူတ်ႉဢၼ်လူဝ်ႇတႅမ်ႈသမ်ႉသမ်ႉဝႃႈဝႃႈ ဢၼ်ဢမ်ႇပေႃးလမ်ႇလွင်ႈ။

---