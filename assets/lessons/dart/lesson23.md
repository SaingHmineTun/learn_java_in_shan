## 23) Standard For Loops

**Loops** ၼႆႉ ၸႂ်ႉတႃႇၸီႉသင်ႇႁႂ်ႈ Program ႁဵတ်းၵၢၼ် "တူဝ်ႈၶိုၼ်း" (Repeat) လၢႆလၢႆပွၵ်ႈ ၸွမ်းၼင်ႇႁဝ်းမၵ်းမၼ်ႈဝႆႉ။ `for` loop ၼႆႉ ပဵၼ်ဢၼ်ႁဝ်းၸႂ်ႉၼမ်သုတ်း မိူဝ်ႈႁဝ်း **ႁူႉတႅတ်ႈတေႃး** ဝႃႈ ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းလႅၼ်ႈၵႂႃႇ တင်းၵႃႈႁိုဝ် (လၢႆပွၵ်ႈ) ယဝ်ႉ။

---

### Standard For Loop Structure

ပိူင်တႅမ်ႈမၼ်းမီး 3 တွၼ်ႈလူင် ဢၼ်ၶႅၼ်ႈဝႆႉလူၺ်ႈမၢႆ `;`:

| Part | Meaning | Description |
| --- | --- | --- |
| **`Initialization`** | တႄႇတႅတ်ႈသိၼ် | ပိုၼ်ၽၢဝ်ႇတူဝ်ၼပ်ႉ (Counter) တႄႇတီႈလႂ် |
| **`Condition`** | လွင်ႈတၢင်း | ထတ်းသၢင်ဝႃႈ တေလႅၼ်ႈတေႃႇၵႂႃႇထႅင်ႈႁႃႉ? |
| **`Increment`** | လွင်ႈထႅမ်ၵႃႈၶၼ် | ႁဵတ်းႁႂ်ႈတူဝ်ၼပ်ႉ ၶိုၼ်ႈၵႂႃႇ (တူဝ်ယၢင်ႇ: `i++`) |

---

### 1. Basic For Loop

မႃးတူၺ်းတူဝ်ယၢင်ႇ လွင်ႈၼပ်ႉမၢႆၼပ်ႉ 1 တေႃႇ 5 ယဝ်ႉ။

```dart
for (int i = 1; i <= 5; i++) {
  print("Count: $i");
}
/* Output:
Count: 1
Count: 2
Count: 3
Count: 4
Count: 5
*/

```

* **Logic:** တႄႇတီႈ `i = 1`၊ ထတ်းသၢင်ဝႃႈ `i` တိုၵ်ႉလဵၵ်ႉလိူဝ် ဢမ်ႇၼၼ် ၽဵင်ႇ 5 ယူႇႁႃႉ? သင်မႅၼ်ႈ ႁႂ်ႈ `print` သေ ၸင်ႇထႅမ် `i` ၶိုၼ်ႈ 1 ယဝ်ႉ ႁဵတ်းသိုပ်ႇၵႂႃႇ တေႃႇလွင်ႈတၢင်းတေၽိတ်း။

---

### 2. Decrementing For Loop (ၼပ်ႉလူင်း)

ႁဝ်းဢမ်ႇၵူၺ်းၼပ်ႉၶိုၼ်ႈလႆႈလၢႆလၢႆ၊ ႁဝ်းၸၢင်ႈၼပ်ႉလူင်းၵေႃႈလႆႈယဝ်ႉ။

**Example: Countdown**

```dart
for (int i = 5; i >= 1; i--) {
  print("Countdown: $i");
}
print("Blast off!");

```

---

### 3. Loop with Step Value

ႁဝ်းၸၢင်ႈၵုမ်းၵၢၼ် Increment ႁႂ်ႈမၼ်းၶိုၼ်ႈၵႂႃႇ လၢႆလၢႆမၢႆၼပ်ႉၼႂ်းပွၵ်ႈလဵဝ်ၵေႃႈလႆႈ။

**Example: Even Numbers Only**

```dart
for (int i = 0; i <= 10; i += 2) {
  print("Even: $i"); // တေၼပ်ႉ 0, 2, 4, 6, 8, 10
}

```

---

### 4. Nested For Loop (Loop ၼႂ်း Loop)

ၸႂ်ႉမိူဝ်ႈႁဝ်းလူဝ်ႇႁဵတ်းၵၢၼ် ဢၼ်မီးလၢႆၸၼ်ႉ မိူၼ်ၼင်ႇ တารางမၢႆပိုၼ် (Multiplication Table)။

**Example: Simple Grid**

```dart
for (int i = 1; i <= 2; i++) {
  for (int j = 1; j <= 2; j++) {
    print("Row $i - Col $j");
  }
}
/* Output:
Row 1 - Col 1
Row 1 - Col 2
Row 2 - Col 1
Row 2 - Col 2
*/

```

---
