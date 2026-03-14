## 38) Sets: Unique Values and Set Math

**Set** ၼႆႉ ပဵၼ် Collection ဢၼ်မိူၼ်တင်း List ယူႇဝႆႉဢိတ်းဢိတ်း၊ ၵူၺ်းၵႃႈ မၼ်းမီးလၵ်းသၼႃပႅၵ်ႇပိူင်ႈၵၼ်ယူႇ 2 ဢၼ်:

1. **Unique Values**: ၶေႃႈမုၼ်းၼႂ်း Set တေ **ဢမ်ႇၸၢင်ႈယမ်ႉၵၼ်** (No duplicates) လႆႈ။
2. **Unordered**: ၶေႃႈမုၼ်းၼႂ်း Set တေဢမ်ႇမီး Index ဢၼ်တႅတ်ႈတေႃး (0, 1, 2) မိူၼ်ၼင်ႇ List။

---

### 1. Creating a Set

ႁဝ်းၸႂ်ႉ **Curly Braces `{ }`** တႃႇသၢင်ႈ Set (တွၼ်းဝႆႉဝႃႈ သင်ပဵၼ် List ၸႂ်ႉ `[ ]`)။

**Example:**

```dart
void main() {
  // သၢင်ႈ Set ဢၼ်မီး String
  Set<String> users = {"Sai", "Su", "Kyaw"};

  // သင်ႁဝ်းထႅမ် "Sai" သႂ်ႇထႅင်ႈ၊ မၼ်းတေဢမ်ႇႁဵတ်းသင် ယွၼ်ႉမၼ်းမီးဝႆႉယဝ်ႉ
  users.add("Sai"); 
  
  print(users); // Output: {Sai, Su, Kyaw}
}

```

---

### 2. Why use a Set?

* **Remove Duplicates**: သင်ၸဝ်ႈၵဝ်ႇမီး List ဢၼ်မီးၶေႃႈမုၼ်းယမ်ႉၵၼ်ၼမ်ၼမ် သေၶႂ်ႈလၢင်ႉပႅတ်ႈ၊ ႁဝ်းၸၢင်ႈပိၼ်ႇမၼ်းပဵၼ် Set လႆႈငၢႆႈငၢႆႈ။
* **Fast Lookup**: ၵၢၼ်ၵူတ်ႇထတ်းဝႃႈ "မီးၶေႃႈမုၼ်းၼႆႉယူႇႁႃႉ?" (`.contains`) ၼႂ်း Set တေဝႆးလိူဝ် List ၼမ်ၼႃႇ။

**Example: Removing Duplicates from a List**

```dart
List<int> numbers = [1, 2, 2, 3, 4, 4, 5];
Set<int> uniqueNumbers = numbers.toSet();

print(uniqueNumbers); // {1, 2, 3, 4, 5}

```

---

### 3. Set Mathematics (ၵၢၼ်ၸတ်းၵၢၼ်ၸုမ်း)

လွင်ႈၶႅၼ်ႇၶေႃ Set ၵေႃႈပဵၼ် ၵၢၼ်ႁႃၶေႃႈမုၼ်းဢၼ်မိူၼ်ၵၼ် ဢမ်ႇၼၼ် ပႅၵ်ႇၵၼ် ၼႂ်းၵႄႈသွင်ၸုမ်းယဝ်ႉ။

* **`.intersection()`**: ဢဝ်ၵူၺ်းၶေႃႈမုၼ်းဢၼ် **မိူၼ်ၵၼ်** တင်းသွင်ၽၢႆႇ။
* **`.union()`**: ဢဝ်ၶေႃႈမုၼ်းတင်းသဵင်ႈမႃး **ႁူမ်ႈၵၼ်** (ဢၼ်ယမ်ႉၵၼ်တေထုၵ်ႇတတ်းပႅတ်ႈ)။
* **`.difference()`**: ဢဝ်ၶေႃႈမုၼ်းဢၼ်မီးၼႂ်း Set ဢွၼ်တၢင်း ၵူၺ်းၵႃႈ **ဢမ်ႇမီး** ၼႂ်း Set တူဝ်လုၼ်ႈ။

**Example:**

```dart
Set<int> setA = {1, 2, 3, 4};
Set<int> setB = {3, 4, 5, 6};

print(setA.intersection(setB)); // {3, 4}
print(setA.union(setB));        // {1, 2, 3, 4, 5, 6}
print(setA.difference(setB));   // {1, 2}

```

---

### 4. Summary Table: List vs Set

| Feature | List `[]` | Set `{}` |
| --- | --- | --- |
| **Duplicates** | လႆႈ (Allowed) | ဢမ်ႇလႆႈ (Not Allowed) |
| **Order** | မီးလမ်ႇดับ (Ordered) | ဢမ်ႇမီးလမ်ႇดับ (Unordered) |
| **Access** | ၸႂ်ႉ Index (`[0]`) | ၸႂ်ႉ `.elementAt()` ဢမ်ႇၼၼ် Loop |
| **Speed** | ၸႃႉလိူဝ် မိူဝ်ႈႁႃၶေႃႈမုၼ်း | ဝႆးလိူဝ် မိူဝ်ႈႁႃၶေႃႈမုၼ်း |

---
