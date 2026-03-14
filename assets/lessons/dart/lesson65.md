## 65) Extension Methods on Existing Types

**Extension Methods** ပဵၼ် Feature ဢၼ်ႁဵတ်းႁႂ်ႈႁဝ်းၸၢင်ႈ "ထႅမ်" (Add) Functionality မႂ်ႇမႂ်ႇ သႂ်ႇၼႂ်း Class ဢၼ်မီးဝႆႉယူႇယဝ်ႉ (Existing Classes) လူၺ်ႈဢမ်ႇလူဝ်ႇၵႂႃႇမႄး Code တူဝ်တႄႇမၼ်း လႄႈ ဢမ်ႇလူဝ်ႇၸႂ်ႉ Inheritance ယဝ်ႉ။

---

### 1. ႁဵတ်းသင်လႄႈလူဝ်ႇ Extension?

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇၶႂ်ႈလႆႈ Method တႃႇပိၼ်ႇတူဝ်လိၵ်ႈဢွၼ်တၢင်းသုတ်း ႁႂ်ႈပဵၼ်တူဝ်လူင် (Capitalize) ၼႂ်း `String`။

* ၸဝ်ႈၵဝ်ႇဢမ်ႇၸၢင်ႈမႄး Class `String` ၶေႃ Dart လႆႈ။
* ၵၢၼ်တႅမ်ႈ Helper function မိူၼ်ၼင်ႇ `StringUtils.capitalize(text)` မၼ်းဢမ်ႇ "သႅၼ်ႈသႂ်" မိူၼ်ၼင်ႇၵၢၼ်ႁွင်ႉ `text.capitalize()`။

**Extension Methods** ၸင်ႇပဵၼ်ၶေႃႈၵႄႈလႅတ်ႈ ဢၼ်ႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူငၢႆႈလိူဝ်ၵဝ်ႇယဝ်ႉ။

---

### 2. Syntax: Creating an Extension

ႁဝ်းၸႂ်ႉ Keyword `extension` သေၸွမ်းလူၺ်ႈ Keyword `on` တႃႇမၵ်းမၼ်ႈဝႃႈ ႁဝ်းတေထႅမ်သႂ်ႇၼႂ်း Type လႂ်။

```dart
extension StringExtensions on String {
  // 'this' မၢႆထိုင် ၵႃႈၶၼ် String တူဝ်ဢၼ်ႁဝ်းႁွင်ႉၸႂ်ႉယူႇၼၼ်ႉ
  String capitalize() {
    if (this.isEmpty) return this;
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

void main() {
  String name = "gemini";
  
  // ယၢမ်းၼႆႉ String ၵူႈတူဝ် မီး Method capitalize() ယဝ်ႉ!
  print(name.capitalize()); // Output: Gemini
}

```

---

### 3. Extension Properties (Getters)

ၸဝ်ႈၵဝ်ႇဢမ်ႇၵူၺ်းထႅမ်လႆႈ Method၊ ၸဝ်ႈၵဝ်ႇတိုၵ်ႉၸၢင်ႈထႅမ် **Getters** လႆႈၸွမ်းၼင်ႇၵဝ်ႇ။

```dart
extension NumberParsing on String {
  int get toInt => int.parse(this);
}

void main() {
  print("42".toInt + 8); // Output: 50
}

```

---

### 4. Important Rules (ပိုင်ၵၢၼ်လမ်ႇလွင်ႈ)

1. **Static Resolution**: Extension methods တေထုၵ်ႇၵူတ်ႇထတ်း (Resolved) မိူဝ်ႈ Compile-time။ သင်ဝႃႈ Variable ႁဝ်းပဵၼ် Type `dynamic`၊ ႁဝ်းတေႁွင်ႉၸႂ်ႉ Extension ဢမ်ႇလႆႈ။
2. **Conflicts**: သင် Extension သွင်ဢၼ်မီး Method ၸိုဝ်ႈမိူၼ်ၵၼ်၊ ၸဝ်ႈၵဝ်ႇတေလႆႈ Import သေမၵ်းမၼ်ႈ `hide` ဢမ်ႇၼၼ် `show` တွၼ်ႈတႃႇၵႄႈပၼ်ႁႃ။
3. **Naming**: Extension တေလႆႈမီး "ၸိုဝ်ႈ" (Name) သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈ Import မၼ်းၵႂႃႇၸႂ်ႉၼႂ်း File တၢင်ႇဢၼ်။

---

### 5. Why use them?

* **Readability**: ႁဵတ်းႁႂ်ႈ Code လူငၢႆႈ (Fluency)။
* **Third-party Libraries**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈထႅမ် Methods မႂ်ႇမႂ်ႇ သႂ်ႇၼႂ်း Classes ဢၼ်မႃးတီႈ Package ၼွၵ်ႈ ဢၼ်ၸဝ်ႈၵဝ်ႇမႄး Code ၶဝ်ဢမ်ႇလႆႈၼၼ်ႉယဝ်ႉ။
* **Encapsulation**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈၵဵပ်း Helper functions ဝႆႉႁင်းၵူၺ်း ႁႂ်ႈမၼ်းပဵၼ်သုၼ်ႇၼိုင်ႈၶေႃ Type ၼၼ်ႉၵမ်းလဵဝ်။

---