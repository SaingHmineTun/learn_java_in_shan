## 55) The 'late' keyword in Classes

ၼႂ်း Dart **Null Safety**, Field ၵူႈဢၼ်ၼႂ်း Class တေလႆႈမီးၵႃႈၶၼ် (Initialized) ဢွၼ်တၢင်းသုတ်း။ ၵူၺ်းၵႃႈ မၢင်ပွၵ်ႈႁဝ်းဢမ်ႇၸၢင်ႈပၼ်ၵႃႈၶၼ်မၼ်းလႆႈ မိူဝ်ႈသၢင်ႈ Object ၵမ်းလဵဝ်။ ၼႆႉပဵၼ်တီႈဢၼ် Keyword **`late`** ၶဝ်ႈမႃးၸူၺ်းယဝ်ႉ။

---

### 1. What does `late` do?

Keyword **`late`** လၢတ်ႈပၼ် Dart ဝႃႈ:

1. "ယႃႇပႆႇပၼ် Error တီႈၵဝ်၊ ၵဝ်ႁူႉယူႇဝႃႈ Variable ၼႆႉ ဢမ်ႇၸႂ်ႈ Null တႄႇတႄႇ။"
2. "ၵဝ်တေပၼ်ၵႃႈၶၼ်မၼ်း **ဝၢႆးလုၼ်း (Later)** ဢွၼ်တၢင်းတေၸႂ်ႉမၼ်းယူႇ။"

---

### 2. Common Use Cases (လၢႆးၸႂ်ႉတူဝ်ယၢင်ႇ)

#### A) Initializing after Constructor (ပၼ်ၵႃႈၶၼ်ဝၢႆးသၢင်ႈ Object)

မၢင်ပွၵ်ႈႁဝ်းလူဝ်ႇႁွင်ႉ Method သေဢၼ်ဢွၼ်တၢင်း ၸင်ႇတေလႆႈ Data မႃး။

```dart
class Profile {
  // သင်ဢမ်ႇသႂ်ႇ late, Dart တေပၼ် Error ဝႃႈ 'description' တေလႆႈမီးၵႃႈၶၼ်
  late String description;

  void loadProfile() {
    description = "Hello, I am a Flutter Developer!";
  }
}

void main() {
  var myProfile = Profile();
  // print(myProfile.description); // Error! သင်ၸႂ်ႉမိူဝ်ႈပႆႇပၼ်ၵႃႈၶၼ်
  
  myProfile.loadProfile();
  print(myProfile.description); // Output: Hello, I am...
}

```

#### B) Lazy Initialization (ၵၢၼ်ပၼ်ၵႃႈၶၼ် မိူဝ်ႈလူဝ်ႇၸႂ်ႉၵူၺ်း)

သင်ႁဝ်းမီး Variable ဢၼ် "ၼၵ်း" (Heavy) ဢမ်ႇၼၼ် "ၵိၼ် Memory ၼမ်" သေ ႁဝ်းဢမ်ႇႁူႉဝႃႈ User တေၸႂ်ႉမၼ်းႁႃႉ ဢမ်ႇၸႂ်ႉ။ ၵၢၼ်ၸႂ်ႉ `late` တေႁဵတ်းႁႂ်ႈ Dart **ဢမ်ႇၼပ်ႉ/ဢမ်ႇသၢင်ႈ** Variable ၼၼ်ႉ တေႃႇပေႃးထိုင် "ၵမ်းဢွၼ်တၢင်းသုတ်း ဢၼ်ႁဝ်းႁွင်ႉၸႂ်ႉမၼ်း" ယဝ်ႉ။

```dart
class DatabaseConfig {
  // Variable ၼႆႉ တေဢမ်ႇသၢင်ႈ တေႃႇပေႃးႁွင်ႉ print(config.connectionString)
  late String connectionString = _complexCalculation();

  String _complexCalculation() {
    print("Doing heavy work...");
    return "server_123_abc";
  }
}

```

---

### 3. Key Benefits (ၽွၼ်းလီ)

1. **Flexibility**: ၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇမၵ်းမၼ်ႈ Variable ႁႂ်ႈပဵၼ် Nullable (`String?`) တႃႇသေႇ၊ ႁဵတ်းႁႂ်ႈ Code သႅၼ်ႈသႂ်လိူဝ်ၵဝ်ႇ။
2. **Performance**: ၸႂ်ႉ Lazy loading တႃႇလူတ်းယွၼ်ႇၵၢၼ်ၸႂ်ႉ Resource ဢၼ်ဢမ်ႇလူဝ်ႇ။
3. **Readability**: လၢတ်ႈပၼ် Developer တၢင်ႇၵူၼ်းႁူႉဝႃႈ Variable ၼႆႉ မၼ်းမီးလွင်ႈပိုင်ႈဢိင် (Dependency) ဝၢႆးလုၼ်း။

---

### 4. ၶေႃႈသတိ (The Risk)

သင်ၸဝ်ႈၵဝ်ႇပိုၼ်ၽၢဝ်ႇ `late` ဝႆႉ၊ ၵူၺ်းၵႃႈ **လူင်ပၼ်ၵႃႈၶၼ်မၼ်း** သေ ၵႂႃႇႁွင်ႉၸႂ်ႉ (Read) ၸိုင်၊ Program တေ **Crash** (LateInitializationError) ၵမ်းလဵဝ်ယဝ်ႉ။

---

### Summary Table

| Keyword | Use Case | Result |
| --- | --- | --- |
| **`String?`** | ၶေႃႈမုၼ်းဢၼ်ၸၢင်ႈပဵၼ် Null လႆႈ | လူဝ်ႇၵူတ်ႇထတ်း `if (x != null)` |
| **`late String`** | ၶေႃႈမုၼ်းဢၼ်တေပဵၼ် String တႄႇတႄႇ (ၵူၺ်းၵႃႈပၼ်ၵႃႈၶၼ်ဝၢႆးလုၼ်း) | ဢမ်ႇလူဝ်ႇၵူတ်ႇ null, ၵူၺ်းၵႃႈ Crash လႆႈသင်လူင်ပၼ်ၵႃႈၶၼ် |

---
