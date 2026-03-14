## 26) Break and Continue

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးလဵပ်ႈႁဵၼ်းလွင်ႈ "ၵုမ်းၵၢၼ်" (Control) Loop ႁႂ်ႈမၼ်းမီးပၢႆးဝူၼ်ႉလိူဝ်ၵဝ်ႇ။ မၢင်ပွၵ်ႈ ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈ Loop လႅၼ်ႈယဝ်ႉတူဝ်ႈၸွမ်းပိူင်မၼ်း၊ ႁဝ်းၶႂ်ႈ "ၵိုတ်း" ဢမ်ႇၼၼ် "ၶၢမ်ႈ" မၼ်းၵႂႃႇယဝ်ႉ။

---

### Control Keywords Table

| Keyword | Action (ၵၢၼ်ႁဵတ်း) | Effect (ၽူၼ်မၼ်း) |
| --- | --- | --- |
| **`break`** | ၵိုတ်းၵမ်းလဵဝ် | ဢွၵ်ႇၼႂ်း Loop သေ ၵႂႃႇႁဵတ်း Code ထႅဝ်တေႃႇၵႂႃႇ |
| **`continue`** | ၶၢမ်ႈပွၵ်ႈၼႆႉ | ၵိုတ်းၵၢၼ်ႁဵတ်းၼႂ်းပွၵ်ႈၼႆႉ သေၵႂႃႇတႄႇပွၵ်ႈၼႃႈ (Next iteration) |

---

### 1. Using with 'for' Loop

**`break`**: ၸႂ်ႉမိူဝ်ႈႁဝ်းႁူႉၽူၼ်မၼ်းယဝ်ႉ သေဢမ်ႇၶႂ်ႈႁႂ်ႈ Loop သိုပ်ႇပၼ်ႇထႅင်ႈ။
**`continue`**: ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈ "ၶၢမ်ႈ" (Skip) ၶေႃႈမုၼ်းမၢင်ဢၼ်။

```dart
for (int i = 1; i <= 5; i++) {
  if (i == 2) continue; // ၶၢမ်ႈမၢႆ 2 ၵႂႃႇ
  if (i == 4) break;    // ႁွတ်ႈမၢႆ 4 ၵိုတ်းၵမ်းလဵဝ်
  print("For loop: $i");
}
// Output: 1, 3

```

---

### 2. Using with 'while' Loop

မိူဝ်ႈၸႂ်ႉ `continue` ၼႂ်း `while` loop လူဝ်ႇၾၢင်ႉဝႆႉလွင်ႈၼိုင်ႈ - ႁဝ်းတေလႆႈထႅမ်ၵႃႈၶၼ် (Increment) ဢွၼ်တၢင်း `continue` ဢမ်ႇၼၼ် Loop တေပဵၼ် Infinite Loop (ပၼ်ႇဢမ်ႇၵိုတ်း) ယွၼ်ႉမၼ်းၶၢမ်ႈထႅဝ် Increment ၼၼ်ႉၵႂႃႇယဝ်ႉ။

**Example: Skip specific number**

```dart
int i = 0;
while (i < 5) {
  i++;
  if (i == 3) {
    continue; // ၶၢမ်ႈမၢႆ 3 ၵႂႃႇ
  }
  print("While loop: $i");
  
  if (i == 4) {
    break; // ၵိုတ်းမိူဝ်ႈႁွတ်ႈ 4
  }
}
// Output: 1, 2, 4

```

---

### 3. Using with 'do-while' Loop

`do-while` တေႁဵတ်းၵၢၼ်ၼႂ်း Block ဢွၼ်တၢင်း 1 ပွၵ်ႈ၊ ယဝ်ႉၸင်ႇတူၺ်းလွင်ႈတၢင်း (Condition)။

**Example: Search simulation**

```dart
int score = 0;
do {
  score += 10;
  if (score == 20) {
    print("Skipping 20...");
    continue; // ၶၢမ်ႈၵၢၼ် print ၽၢႆႇတႂ်ႈၼႆႉ သေၵႂႃႇထတ်းသၢင် while ၵမ်းလဵဝ်
  }
  
  print("Current Score: $score");
  
  if (score >= 40) {
    print("Target reached!");
    break; // ဢွၵ်ႇၼႂ်း loop
  }
} while (score < 100);

/* Output:
Current Score: 10
Skipping 20...
Current Score: 30
Current Score: 40
Target reached!
*/

```

---

### 4. Summary & Best Practices

* **Break**: လီသုတ်း တႃႇၸႂ်ႉၼႂ်း "Search" (မိူဝ်ႈႁၼ်ၶေႃႈမုၼ်းယဝ်ႉ ၵိုတ်းၵမ်းလဵဝ်)။
* **Continue**: လီသုတ်း တႃႇၸႂ်ႉၼႂ်း "Filtering" (မိူဝ်ႈၶႂ်ႈၶၢမ်ႈၶေႃႈမုၼ်း ဢၼ်ဢမ်ႇၵပ်းၵၢႆႇ)။
* **Caution**: ယႃႇတႅမ်ႈ Code ဝႆႉၽၢႆႇတႂ်ႈ `break` ဢမ်ႇၼၼ် `continue` ၼႂ်း Block လဵဝ်ၵၼ် ယွၼ်ႉမၼ်းတေဢမ်ႇမီးဝၼ်းလႆႈႁဵတ်းၵၢၼ် (Unreachable Code)။

---
