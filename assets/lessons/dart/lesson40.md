## 40) Generics `<T>` for Type Safety

**Generics** ၼႆႉပဵၼ်လၢႆးတႅမ်ႈ Code ဢၼ်ႁဵတ်းႁႂ်ႈႁဝ်း "မၵ်းမၼ်ႈ Type" ဝႆႉၼႂ်း Collection ႁဝ်းယဝ်ႉ။ မၼ်းၸႂ်ႉမၢႆ **Angle Brackets `< >**` တႃႇပိုၼ်ၽၢဝ်ႇဝႃႈ "ၼႂ်း List/Set/Map ၼႆႉ ႁဝ်းတေသိမ်းၶေႃႈမုၼ်း Type သင်ၵူၺ်း"။

---

### 1. Why do we need Generics?

သင်ႁဝ်းဢမ်ႇၸႂ်ႉ Generics, Dart တေမၵ်းမၼ်ႈႁႂ်ႈပဵၼ် `List<dynamic>`။ မၢႆထိုင်ဝႃႈ ႁဝ်းတေၸၢင်ႈဢဝ် String, int, bool ပူၼ်ႇၵၼ်သႂ်ႇလႆႈၵူႈယၢင်ႇ၊ ဢၼ်ၼႆႉမၼ်းတေႁဵတ်းႁႂ်ႈ Code ႁဝ်းၵွႆ (Crash) လႆႈငၢႆႈ မိူဝ်ႈႁဝ်းႁဵတ်းၵၢၼ်ၸွမ်း Data ၼၼ်ႉ။

**Example: Without Generics (Dangerous)**

```dart
List items = ["Sai", 10, true]; // dynamic list
// သင်ႁဝ်းဝူၼ်ႉဝႃႈမၼ်းပဵၼ် String တင်းသဵင်ႈ သေၵႂႃႇၸႂ်ႉ .toUpperCase()...
// items[1].toUpperCase(); // Error ၵမ်းလဵဝ်! ယွၼ်ႉ 10 ပဵၼ် int

```

**Example: With Generics (Safe)**

```dart
List<String> names = ["Sai", "Su"];
// names.add(10); // Error တႄႇတီႈတႅမ်ႈ Code (Compile-time) ၵမ်းလဵဝ်

```

---

### 2. Using Generics with Collections

ႁဝ်းၸႂ်ႉ Generics လႆႈၵူႈ Collection ယဝ်ႉ:

| Collection | Syntax | Description |
| --- | --- | --- |
| **List** | `List<int>` | သိမ်းလႆႈၵူၺ်း မၢႆၼပ်ႉ |
| **Set** | `Set<String>` | သိမ်းလႆႈၵူၺ်း တူဝ်လိၵ်ႈ (ဢၼ်ဢမ်ႇယမ်ႉၵၼ်) |
| **Map** | `Map<String, int>` | Key တေလႆႈပဵၼ် String, Value ပဵၼ် int |

---

### 3. Understanding the `<T>` Symbol

မိူဝ်ႈၸဝ်ႈၵဝ်ႇလူလိၵ်ႈၼႂ်း Documentation၊ တေၵႆႉႁၼ်တူဝ် **`T`** ၼႂ်း `< >`။ တူဝ် `T` ၼႆႉမၢႆထိုင် **Type** (ပဵၼ် Placeholder တႃႇ Type သင်ၵေႃႈယဝ်ႉ ဢၼ်ႁဝ်းတေသူင်ႇသႂ်ႇ)။

**Example in Class/Function:**

```dart
// T ၼႆႉ တေပဵၼ် Type သင်ၵေႃႈလႆႈ ၸွမ်းၼင်ႇ User သူင်ႇမႃး
class Box<T> {
  T? content;
  void add(T item) => content = item;
}

void main() {
  var intBox = Box<int>(); // ယၢမ်းၼႆႉ T ပဵၼ် int
  intBox.add(100);

  var strBox = Box<String>(); // ယၢမ်းၼႆႉ T ပဵၼ် String
  strBox.add("Diamond");
}

```

---

### 4. Benefits of Generics (ၽွၼ်းလီ)

1. **Type Safety**: ႁႄႉၵင်ႈလွင်ႈသႂ်ႇ Data ၽိတ်း Type။
2. **Code Reuse**: တႅမ်ႈ Class/Function ပွၵ်ႈလဵဝ် ၸႂ်ႉလႆႈတင်း Data လၢႆလၢႆ Type။
3. **Better IDE Support**: VS Code ဢမ်ႇၼၼ် Android Studio တေၸၢင်ႈၸူၺ်း (Suggest) Code ႁဝ်းလႆႈလီလိူဝ်ၵဝ်ႇ ယွၼ်ႉမၼ်းႁူႉဝႃႈ Data ၼၼ်ႉပဵၼ် Type သင်။

---

