## 12) Constants: final vs const

မိူဝ်ႈႁဝ်းၶႂ်ႈသၢင်ႈ Variable ဢၼ် "ဢမ်ႇလႆႈလႅၵ်ႈလၢႆႈၵႃႈၶၼ်" (Immutable) ဝႆႉတႃႇသေႇၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ Keyword **`final`** လႄႈ **`const`** ယဝ်ႉ။ တင်းသွင်ဢၼ်ၼႆႉ ႁဵတ်းႁႂ်ႈ Variable ၼၼ်ႉပဵၼ် Read-only (ဢၢၼ်ႇလႆႈၵူၺ်း၊ မႄးဢမ်ႇလႆႈ) ၼင်ႇၵဝ်ႇ၊ ၵူၺ်းၵႃႈ မၼ်းမီးလွင်ႈပႅၵ်ႇပိူင်ႈၵၼ် တီႈ "ၶိင်ႇမိူဝ်ႈမၼ်းမၵ်းမၼ်ႈၵႃႈၶၼ်" ၼၼ်ႉယဝ်ႉ။

### 1. final

* ပဵၼ်ၵႃႈၶၼ်ဢၼ်မၵ်းမၼ်ႈလႆႈ **"ပွၵ်ႈလဵဝ်ၵူၺ်း"** (Set once)။
* မၼ်းပဵၼ် **Runtime constant**။ မၼ်းၸၢင်ႈမၵ်းမၼ်ႈၵႃႈၶၼ် မိူဝ်ႈ App လႅၼ်ႈယူႇ (Runtime)။
* ႁဝ်းၸၢင်ႈဢဝ်ၵႃႈၶၼ် ဢၼ်လုၵ်ႉတီႈ Function ဢမ်ႇၼၼ် တီႈ User သႂ်ႇမႃးၼၼ်ႉ ဝႆႉပဵၼ် `final` လႆႈ။

```dart
final name = "Sai Sai";
final currentTime = DateTime.now(); // လႆႈယူႇ၊ ယွၼ်ႉမၼ်းႁူႉၵႃႈၶၼ်မိူဝ်ႈ App လႅၼ်ႈ
// name = "Kyaw Kyaw"; // Error! ယွၼ်ႉမၼ်းပဵၼ် final

```

### 2. const

* ပဵၼ်ၵႃႈၶၼ်ဢၼ်မၵ်းမၼ်ႈလႆႈ **"ပွၵ်ႈလဵဝ်ၵူၺ်း"** ၼင်ႇၵဝ်ႇ။
* မၼ်းပဵၼ် **Compile-time constant**။ ၵႃႈၶၼ်မၼ်းတေလႆႈႁူႉတႅတ်ႈတေႃး ၸႅင်ႈလႅင်း တႄႇမိူဝ်ႈႁဝ်းတိုၵ်ႉ Compile Code (မိူဝ်ႈပႆႇပိုတ်ႇ App) ၼၼ်ႉယဝ်ႉ။
* `const` တေၸွႆႈႁႂ်ႈ App ႁဝ်းၸႂ်ႉ Memory လဵၵ်ႉလူင်း လႄႈ Performance လီလိူဝ် `final`။

```dart
const pi = 3.14;
const gravity = 9.8;
// const currentTime = DateTime.now(); // Error! ယွၼ်ႉ DateTime.now() မၼ်းတေႁူႉၵႃႈၶၼ်မိူဝ်ႈ App လႅၼ်ႈၵူၺ်း

```

---

### Comparison Table:

| Feature | final | const |
| --- | --- | --- |
| **Modification** | ဢမ်ႇလႆႈလႅၵ်ႈလၢႆႈ (Immutable) | ဢမ်ႇလႆႈလႅၵ်ႈလၢႆႈ (Immutable) |
| **When to set value** | Runtime (မိူဝ်ႈ App လႅၼ်ႈ) | Compile-time (မိူဝ်ႈ Compile) |
| **Memory** | သၢင်ႈဝႆႉမိူဝ်ႈလူဝ်ႇၸႂ်ႉ | သၢင်ႈဝႆႉတႃႇသေႇ ၼႂ်း Memory |
| **Example** | `DateTime.now()` | `3.14` |