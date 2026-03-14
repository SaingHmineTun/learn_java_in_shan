## 69) The Principle of Null Safety

**Null Safety** ပဵၼ်ၶေႃႈလမ်ႇလွင်ႈလူင်ၼႂ်း Dart ဢၼ်တႄႇပႃးမႃးၼႂ်း Version 2.12။ ယိူင်းဢၢၼ်းမၼ်းၵေႃႈပဵၼ် တႃႇႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈ App ႁဝ်း Crash လူၺ်ႈတၢင်းၽိတ်းဢၼ်ႁွင်ႉဝႃႈ `NoSuchMethodError` (မိူဝ်ႈႁဝ်းၵႂႃႇႁွင်ႉၸႂ်ႉ Method သေဢၼ်ၼိူဝ် Variable ဢၼ်ပဵၼ် `null`)။

---

### 1. Null မၢႆထိုင်သင်?

ၼႂ်းလေႃးၵ Programming, **`null`** မၢႆထိုင် "လွင်ႈဢမ်ႇမီးၵႃႈၶၼ်" (No value/Empty)။

* ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇမီးၵွပ်းလိၵ်ႈဢၼ် "ပဝ်ႇဝႆႉ"။ သင်ၸဝ်ႈၵဝ်ႇၶတ်းၸႂ်တေလူလိၵ်ႈၼႂ်းၵွပ်းပဝ်ႇၼၼ်ႉ၊ ၸဝ်ႈၵဝ်ႇတေထူပ်းပၼ်ႁႃယဝ်ႉ။
* ၼႂ်း Code ၵေႃႈမိူၼ်ၵၼ်၊ သင်ၸဝ်ႈၵဝ်ႇမီး Variable `String? name` ဢၼ်ပဵၼ် Null သေ ၸဝ်ႈၵဝ်ႇၵႂႃႇႁွင်ႉ `name.length` ၸိုင်၊ App ၸဝ်ႈၵဝ်ႇတေ **Crash** ၵမ်းလဵဝ်။

---

### 2. Sound Null Safety

Dart ၸႂ်ႉပိူင်ဢၼ်ႁွင်ႉဝႃႈ **Sound Null Safety**။ မၼ်းမၢႆထိုင်ဝႃႈ Dart Compiler တေ "ႁၢမ်ႈ" ဢမ်ႇႁႂ်ႈၸဝ်ႈၵဝ်ႇတႅမ်ႈ Code ဢၼ်ၸၢင်ႈပဵၼ် Null Error လႆႈ တႄႇမိူဝ်ႈၸဝ်ႈၵဝ်ႇတိုၵ်ႉတႅမ်ႈ Code ယူႇ (Compile-time)။

**ပိုင်ၵၢၼ်ပိုၼ်ႉထၢၼ် 3 ယၢင်ႇ:**

1. **Default Non-nullable**: Variable ၵူႈဢၼ် ဢၼ်ပိုၼ်ၽၢဝ်ႇယူဝ်းယူဝ်း တေပဵၼ် Null ဢမ်ႇလႆႈ။
2. **Explicit Nullability**: သင်ၶႂ်ႈႁႂ်ႈမၼ်းပဵၼ် Null လႆႈ၊ တေလႆႈလၢတ်ႈလႅင်းလႅင်းလူၺ်ႈမၢႆ **`?`**။
3. **Static Checking**: Dart တေၵူတ်ႇထတ်း Code ၸဝ်ႈၵဝ်ႇသေ လၢတ်ႈပၼ်ဝႃႈ "တီႈၼႆႉ ၸဝ်ႈၵဝ်ႇလူဝ်ႇၵူတ်ႇထတ်း Null ဢွၼ်တၢင်းၼႃ"။

---

### 3. Why is it important?

* **Safety**: လူတ်းယွၼ်ႇတၢင်းၽိတ်းဢၼ်တေႁဵတ်းႁႂ်ႈ App ပိတ်း (Crash)။
* **Performance**: Dart တေလႅၼ်ႈလႆႈဝႆလိူဝ်ၵဝ်ႇ ယွၼ်ႉမၼ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ Resource တႃႇၵူတ်ႇ Null ယူႇၵူႈပွၵ်ႈ (Runtime checks)။
* **Confidence**: ၸဝ်ႈၵဝ်ႇတေတႅမ်ႈ Code လူၺ်ႈလွင်ႈတႅတ်ႉတေႃဝႃႈ Variable တူဝ်ၼႆႉ မီးၵႃႈၶၼ်တႄႇတႄႇယူႇ။

---

### 4. တူဝ်ယၢင်ႇ (Before vs After)

**မိူဝ်ႈဢမ်ႇပႆႇမီး Null Safety:**

```dart
String name; // name ပဵၼ် null လူၺ်ႈ Default
print(name.length); // ⚠️ Crash မိူဝ်ႈ App လႅၼ်ႈယူႇ!

```

**မိူဝ်ႈမီး Null Safety:**

```dart
String name; // ❌ Error တီႈ IDE ၵမ်းလဵဝ်! (လူဝ်ႇပၼ်ၵႃႈၶၼ်)
String? name; // ✅ လႆႈယူႇ၊ ၵူၺ်းၵႃႈ...
print(name.length); // ❌ Error တီႈ IDE! (မၼ်းတေၸႂ်ႉၵူတ်ႇ null ဢွၼ်တၢင်း)

```

---
