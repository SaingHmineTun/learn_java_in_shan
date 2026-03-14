## 64) Mixins: Code Reuse with 'with'

**Mixin** ပဵၼ်လၢႆးၵၢၼ်ဢၼ် "ၶိုၵ်ႉ" ဝႆႉၼႂ်း Dart ယွၼ်ႉမၼ်းပၼ်ႁႂ်ႈႁဝ်းၸၢင်ႈဢဝ် Code ဢွၵ်ႇမႃးတီႈ Class ၼိုင်ႈသေ "သႂ်ႇ" (Mix in) ၵႂႃႇၸူးလၢႆလၢႆ Class လႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇမီးလွင်ႈၵပ်းသိုပ်ႇပဵၼ် ပေႃႈမႄႇလုၵ်ႈလၢင်း (Parent-Child) ၵၼ်။

---

### 1. ႁဵတ်းသင်လႄႈလူဝ်ႇ Mixin?

ၼႂ်း Inheritance (`extends`), Subclass ၼိုင်ႈဢၼ်သိုပ်ႇဢဝ်လႆႈၵူၺ်း **ၼိုင်ႈ Parent**။
ဝူၼ်ႉတူၺ်းဝႃႈ:

* ႁဝ်းမီး `Bird` (ၼၵ်း) ဢၼ်ပဵၼ် `Animal`။
* ႁဝ်းမီး `Airplane` (ၵႃးမိၼ်) ဢၼ်ပဵၼ် `Vehicle`။
* တင်းသွင်ယၢင်ႇၼႆႉ **"မိၼ်လႆႈ"** မိူၼ်ၵၼ်။

သင်ႁဝ်းတႅမ်ႈ Logic ၵၢၼ်မိၼ် `fly()` ဝႆႉၼႂ်း `Animal`, ၵႃးမိၼ်ၵေႃႈတေလႆႈပဵၼ် Animal ၸွမ်း (ဢၼ်ၼႆႉၽိတ်း)။ သင်ႁဝ်းတႅမ်ႈယမ်ႉၵၼ်တင်းသွင်တီႈ, Code ႁဝ်းၵေႃႈတေၼမ် (ဢၼ်ၼႆႉၵေႃႈဢမ်ႇလီ)။ **Mixin** ၸင်ႇပဵၼ်ၶေႃႈၵႄႈလႅတ်ႈယဝ်ႉ။

---

### 2. Syntax: Creating and Using Mixins

1. **ပိုၼ်ၽၢဝ်ႇ**: ၸႂ်ႉ Keyword `mixin` (တႅမ်ႈမိူၼ် Class ၵူၺ်း ၵူၺ်းၵႃႈဢမ်ႇမီး Constructor)။
2. **ၸႂ်ႉတိုဝ်း**: ၸႂ်ႉ Keyword `with` ဝႆႉၽၢႆႇလင် `extends` (သင်မီး)။

```dart
// 1. သၢင်ႈ Mixin
mixin Flyable {
  void fly() {
    print("I am taking off into the sky!");
  }
}

mixin Swimmable {
  void swim() {
    print("I am swimming in the water.");
  }
}

// 2. ၸႂ်ႉ Mixin လူၺ်ႈ Keyword 'with'
class Duck extends Animal with Flyable, Swimmable {
  // Duck လႆႈတင်း Logic fly() လႄႈ swim() မႃးၸႂ်ႉၵမ်းလဵဝ်
}

class Airplane with Flyable {
  // Airplane ဢမ်ႇၸႂ်ႈ Animal ၵူၺ်းၵႃႈ 'fly' လႆႈ
}

```

---

### 3. Mixin Rules (ပိုင်ၵၢၼ်)

* **No Constructors**: Mixin ဢမ်ႇၸၢင်ႈမီး Constructor (မၼ်းဢမ်ႇၸၢင်ႈသၢင်ႈပဵၼ် Object ႁင်းၵူၺ်းမၼ်းလႆႈ)။
* **Multiple Mixins**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ `with` သေထႅမ် Mixins လႆႈၼမ်ၼမ် (Comma separated)။
* **Order Matters**: သင် Mixins သွင်ဢၼ်မီး Method ၸိုဝ်ႈမိူၼ်ၵၼ်, တူဝ်ဢၼ်ယူႇ **ၽၢႆႇလင်သုတ်း** တေပဵၼ်တူဝ်ဢၼ်ထုၵ်ႇၸႂ်ႉ (Override) ယဝ်ႉ။

---

### 4. Restricted Mixins (Keyword `on`)

မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈႁႂ်ႈ Mixin ၼၼ်ႉ ၸႂ်ႉလႆႈၵူၺ်းၸွမ်း Class ဢၼ်မၵ်းမၼ်ႈဝႆႉ (တူဝ်ယၢင်ႇ: Mixin ဢၼ်ၵပ်းၵၢႆႇတင်း "တိၼ်" တေလႆႈၸႂ်ႉၸွမ်း `Animal` ၵူၺ်း)။ ႁဝ်းၸႂ်ႉ Keyword **`on`** ယဝ်ႉ။

```dart
mixin Walker on Animal {
  void walk() {
    print("Walking on ${legs} legs..."); // ၸႂ်ႉ 'legs' ဢၼ်မီးၼႂ်း Animal လႆႈ
  }
}

```

---

### Summary: When to use which?

| Feature | `extends` | `implements` | `with` (Mixin) |
| --- | --- | --- | --- |
| **Relationship** | Is-A (ပဵၼ်...) | Acts-Like (ႁဵတ်းမိူၼ်...) | Has-Ability (မီးဢူၼ်...) |
| **Code Reuse** | ✅ | ❌ (Must override) | ✅ |
| **Multiple** | ❌ (Only 1) | ✅ (Many) | ✅ (Many) |

---