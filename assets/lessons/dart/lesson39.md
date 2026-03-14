## 39) Maps: Key-Value Pairs

**Map** ပဵၼ် Collection ဢၼ်မီးဢႃႇၼႃႇၼမ်သုတ်း တႃႇၸတ်းၵၢၼ်ၶေႃႈမုၼ်း ဢၼ်မီး "လွင်ႈၵပ်းၵၢႆႇ" ၵၼ်။ မၼ်းသိမ်းၶေႃႈမုၼ်းပဵၼ်ၵူပ်ႉ (Pair) ဢၼ်ႁွင်ႉဝႃႈ **Key** လႄႈ **Value** ယဝ်ႉ။

မိူၼ်ၼင်ႇ "ပပ်ႉသပ်း" (Dictionary) - ႁဝ်းႁႃတူဝ်လိၵ်ႈ (**Key**) သေ ႁဝ်းတေလႆႈႁၼ် တီႈပွင်ႇမၼ်း (**Value**) ယဝ်ႉ။

---

### 1. Map Syntax

ႁဝ်းၸႂ်ႉ **Curly Braces `{ }**` မိူၼ်ၼင်ႇ Set ၼင်ႇၵဝ်ႇ၊ ၵူၺ်းၵႃႈ ၼႂ်းမၼ်းတေမီးမၢႆ **`:`** တႃႇၶႅၼ်ႇ Key လႄႈ Value။

**Example: User Data**

```dart
void main() {
  // Key   : Value
  Map<String, String> user = {
    "name": "Sai Sai",
    "city": "Taunggyi",
    "role": "Admin"
  };

  print(user); // {name: Sai Sai, city: Taunggyi, role: Admin}
}

```

---

### 2. Accessing and Updating Values

တႃႇတေဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇမႃး ဢမ်ႇၼၼ် မႄးၶေႃႈမုၼ်း၊ ႁဝ်းတေလႆႈၸႂ်ႉ **Key** မၼ်း (ဢမ်ႇၸႂ်ႈ Index)။

**Example:**

```dart
Map<String, int> scores = {"Math": 90, "English": 85};

// ဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇ
print(scores["Math"]); // 90

// မႄးၵႃႈၶၼ် (Update)
scores["Math"] = 95;

// ထႅမ် Key မႂ်ႇ (Add)
scores["Science"] = 88;

print(scores); // {Math: 95, English: 85, Science: 88}

```

---

### 3. Key Rules (ပိူင်လမ်ႇလွင်ႈ)

1. **Unique Keys**: Key တေ **ဢမ်ႇၸၢင်ႈယမ်ႉၵၼ်** လႆႈ (သင်ထႅမ် Key ဢၼ်မီးဝႆႉယဝ်ႉ၊ မၼ်းတေၵႂႃႇ Update ၵႃႈၶၼ်ၵဝ်ႇပႅတ်ႈ)။
2. **Duplicate Values**: Value တႄႉ **ယမ်ႉၵၼ်လႆႈ** (တူဝ်ယၢင်ႇ: ၵူၼ်းသွင်ၵေႃႉ ယူႇဝဵင်းလဵဝ်ၵၼ်)။
3. **Null Safety**: သင်ႁဝ်းႁႃ Key ဢၼ်ဢမ်ႇမီး၊ Dart တေသူင်ႇ `null` ဢွၵ်ႇမႃးပၼ်။

---

### 4. Important Properties and Methods

| Property/Method | Description |
| --- | --- |
| **`.keys`** | ဢဝ်သဵၼ်ႈၸိုဝ်ႈ Keys တင်းသဵင်ႈဢွၵ်ႇမႃး |
| **`.values`** | ဢဝ်ၵႃႈၶၼ် Values တင်းသဵင်ႈဢွၵ်ႇမႃး |
| **`.containsKey()`** | ၵူတ်ႇထတ်းဝႃႈ မီး Key ၼႆႉယူႇႁႃႉ? |
| **`.remove()`** | ထွၼ် Key လႄႈ Value ဢွၵ်ႇလူၺ်ႈၸႂ်ႉ Key |

**Example:**

```dart
Map<String, String> capitals = {"Thailand": "Bangkok", "Japan": "Tokyo"};

print(capitals.keys);   // (Thailand, Japan)
print(capitals.values); // (Bangkok, Tokyo)

capitals.remove("Thailand");
print(capitals); // {Japan: Tokyo}

```

---

### 5. Summary: List vs Set vs Map

| Collection | Syntax | Ordering | Uniqueness | Access by |
| --- | --- | --- | --- | --- |
| **List** | `[ ]` | Ordered | Allowed | Index (0, 1) |
| **Set** | `{ }` | Unordered | Unique Values | Value |
| **Map** | `{ : }` | Unordered | Unique Keys | Key |

---