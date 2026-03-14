## 31) Default Parameter Values

မိူဝ်ႈႁဝ်းၸႂ်ႉ **Optional Parameters** (သေဢမ်ႇဝႃႈတေပဵၼ် Positional `[]` ဢမ်ႇၼၼ် Named `{}`), သင် User ဢမ်ႇသူင်ႇၵႃႈၶၼ်သင်မႃးပၼ်၊ Dart တေဢဝ်ၵႃႈၶၼ်ၼၼ်ႉပဵၼ် `null`။ တႃႇတေႁႄႉၵင်ႈလွင်ႈၼႆႉ လႄႈ ႁႂ်ႈ Code ႁဝ်းႁဵတ်းၵၢၼ်လႆႈငၢႆႈလိူဝ်၊ ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ **Default Value** (ၵႃႈၶၼ်ပိုၼ်ႉထၢၼ်) ဝႆႉဢွၼ်တၢင်းလႆႈယဝ်ႉ။

---

### Syntax Overview

ႁဝ်းၸႂ်ႉမၢႆ **`=`** တႃႇမၵ်းမၼ်ႈၵႃႈၶၼ်ဝႆႉၼႂ်း Parameter list ယဝ်ႉ။

| Parameter Type | Example Syntax |
| --- | --- |
| **Named** | `{int age = 18}` |
| **Positional** | `[String city = "Yangon"]` |

---

### 1. Default Values with Named Parameters

ၼႆႉပဵၼ်လၢႆးဢၼ်ၸႂ်ႉၼမ်သုတ်း။ သင် User ဢမ်ႇသူင်ႇ Key ၼၼ်ႉမႃး၊ Function တေဢဝ် Default value ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉၵႂႃႇၸႂ်ႉၵမ်းလဵဝ်။

**Example:**

```dart
void settings({bool darkMode = false, double fontSize = 14.0}) {
  print("Dark Mode: $darkMode, Font Size: $fontSize");
}

void main() {
  settings(); // တေၸႂ်ႉ Default တင်းသွင်ဢၼ် -> false, 14.0
  settings(darkMode: true); // fontSize တေတိုၵ်ႉပဵၼ် 14.0 ယူႇ
  settings(fontSize: 20.0); // darkMode တေတိုၵ်ႉပဵၼ် false ယူႇ
}

```

---

### 2. Default Values with Positional Parameters

ႁဝ်းၸၢင်ႈၸႂ်ႉလႆႈၼႂ်း `[]` ၼင်ႇၵဝ်ႇ။

**Example:**

```dart
void volume(int length, [int width = 1, int height = 1]) {
  print("Volume: ${length * width * height}");
}

void main() {
  volume(10);        // 10 * 1 * 1 = 10
  volume(10, 5);     // 10 * 5 * 1 = 50
  volume(10, 5, 2);  // 10 * 5 * 2 = 100
}

```

---

### 3. Required vs Default

* **`required`**: ၸီႉသင်ႇဝႃႈ User **တေလႆႈသူင်ႇ** ၵႃႈၶၼ်မႃးၼႄႉၼႄႉ (ဢမ်ႇမီး Default)။
* **`default`**: ဝႃႈဝႃႈ User **တေသူင်ႇၵေႃႈလႆႈ ဢမ်ႇသူင်ႇၵေႃႈလႆႈ** (သင်ဢမ်ႇသူင်ႇ၊ တေၸႂ်ႉဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉပၼ်)။

> **Note:** ႁဝ်းဢမ်ႇၸၢင်ႈၸႂ်ႉ `required` လႄႈ Default value ၸွမ်းၵၼ်ၼႂ်း Parameter ဢၼ်လဵဝ်ၵၼ်လႆႈ။ (ယွၼ်ႉသင် User တေလႆႈသူင်ႇမႃး သင်မၼ်းမီး Default ဝႆႉယူႇယဝ်ႉ?)

---

### 4. Why use Default Values?

1. **Safety**: ႁႄႉၵင်ႈလွင်ႈ `null` errors ၼႂ်း Code ႁဝ်း။
2. **Convenience**: User ဢမ်ႇလူဝ်ႇသူင်ႇၶေႃႈမုၼ်းၵူႈဢၼ်၊ သူင်ႇၵူၺ်းဢၼ်ၶႂ်ႈလႅၵ်ႈလၢႆႈ။
3. **Readability**: ႁဵတ်းႁႂ်ႈႁဝ်းႁူႉဝႃႈ Function ၼႆႉ ၵၢၼ်ႁဵတ်းပိုၼ်ႉထၢၼ်မၼ်းပဵၼ်ၸိူင်ႉႁိုဝ်။

---
