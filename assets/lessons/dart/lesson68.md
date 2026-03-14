## 68) Comparing Mixins vs. Inheritance vs. Interfaces

ယၢမ်းၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်းႁူႉလၢႆး "သိုပ်ႇၶေႃႈမုၼ်း" ၼႂ်း Dart မႃးတင်းၼမ်ယဝ်ႉ။ ၵမ်းၼႆႉ ႁဝ်းတေမႃးထတ်းတူၺ်း လွင်ႈပႅၵ်ႇပိူင်ႈ ဢၼ်တေၸူၺ်းႁႂ်ႈၸဝ်ႈၵဝ်ႇ လိူၵ်ႈၸႂ်ႉလႆႈထုၵ်ႇမႅၼ်ႈၸွမ်းပိူင် (Design Patterns) ယဝ်ႉ။

---

### 1. The Core Differences (လွင်ႈပႅၵ်ႇပိူင်ႈပိုၼ်ႉထၢၼ်)

ႁဝ်းမႃးတူၺ်း Keyword သၢမ်ဢၼ်ၼႆႉ ၸွမ်းၼင်ႇပိူင်ၵၢၼ် "လွင်ႈၵပ်းသိုပ်ႇ" (Relationship):

| Keyword | Relationship | Definition (ၵၢၼ်ၸႂ်ႉတိုဝ်း) |
| --- | --- | --- |
| **`extends`** | **Is-A** | သိုပ်ႇဢဝ်တင်း **Logic** လႄႈ **Structure** တီႈ Parent။ (သိုပ်ႇလႆႈတူဝ်လဵဝ်) |
| **`with`** | **Has-Ability** | "သႂ်ႇ" ဢူၼ် (Behaviors) သႂ်ႇၼႂ်း Class။ (သႂ်ႇလႆႈတင်းၼမ်) |
| **`implements`** | **Acts-Like** | ႁပ်ႉပၢၵ်ႇဝႃႈ တေမီး Method ၸိူဝ်းၼၼ်ႉ (ၵူၺ်းၵႃႈ တေလႆႈတႅမ်ႈမႂ်ႇၵူႈဢၼ်)။ |

---

### 2. When to use what? (လိူၵ်ႈၸႂ်ႉမိူဝ်ႈလႂ်?)

#### A) Use Inheritance (`extends`)

မိူဝ်ႈ Class သွင်ဢၼ် မီးလွင်ႈၵပ်းသိုပ်ႇၵၼ်တႄႇတႄႇ (Strong Relationship)။

* *တူဝ်ယၢင်ႇ:* `Car` extends `Vehicle`။ ၵႃးၵေႃႈပဵၼ် ရူတ်ႉ/ၵႃး ပိူင်ၼိုင်ႈ။ မၼ်းလူဝ်ႇလွင်ႈၵုမ်းၵၢၼ်ပိုၼ်ႉထၢၼ်မိူၼ်ၵၼ်။

#### B) Use Mixins (`with`)

မိူဝ်ႈၸဝ်ႈၵဝ်ႇၶႂ်ႈ "ၸႅၵ်ႇၸၢႆႇ" ၵၢၼ်ႁဵတ်း (Shared Behavior) ၸူး Class လၢႆလၢႆဢၼ် ဢၼ်ဢမ်ႇၸႂ်ႈပီႈၼွင်ႉၵၼ်။

* *တူဝ်ယၢင်ႇ:* `MusicalInstrument` လႄႈ `ProfessionalSpeaker` တင်းသွင် "သဵင်လင်" (`Loud`) လႆႈ။ ႁဝ်းၸႂ်ႉ Mixin `Loud` တႃႇသႂ်ႇပၼ်တင်းသွင်တူဝ်။

#### C) Use Interfaces (`implements`)

မိူဝ်ႈၸဝ်ႈၵဝ်ႇၶႂ်ႈ "မၵ်းမၼ်ႈပိူင်" (Define a Contract) ၵူၺ်း၊ ၵူၺ်းၵႃႈ လၢႆးႁဵတ်းမၼ်းတႄႉ တေပႅၵ်ႇၵၼ်တင်းသဵင်ႈ။

* *တူဝ်ယၢင်ႇ:* `Database` (Interface) တေမီး `save()`။ ၵူၺ်းၵႃႈ `MySQL` လႄႈ `Firebase` တေမီးလၢႆး `save()` ပႅၵ်ႇၵၼ်ၵူၼ်းလၢႆး။

---

### 3. Visual Comparison Matrix

| Feature | `extends` | `implements` | `with` (Mixin) |
| --- | --- | --- | --- |
| **Multiple?** | ❌ (Only 1) | ✅ (Many) | ✅ (Many) |
| **Reuse Code?** | ✅ (Yes) | ❌ (No) | ✅ (Yes) |
| **Override?** | Optional | **Mandatory** | Optional |
| **Constructor?** | ✅ (Has) | ✅ (Has) | ❌ (Cannot have) |

---

### 4. Code Practical Summary

```dart
// 1. Blueprint (Abstract/Interface)
abstract class Worker {
  void work();
}

// 2. Behavior (Mixin)
mixin Coding {
  void writeCode() => print("Writing Dart...");
}

// 3. Parent (Inheritance)
class Human {
  void breathe() => print("Breathing...");
}

// 4. Combining Everything
class Developer extends Human with Coding implements Worker {
  @override
  void work() {
    print("Developer is working:");
    writeCode(); // မႃးတီႈ Mixin
    breathe();  // မႃးတီႈ Parent
  }
}

```

---
