## Lesson 62: Binary Files vs. Text Files

### 1. Text Files (`.txt`)
ပဵၼ် File ဢၼ်ၵဵပ်းၶေႃႈမုၼ်းပဵၼ် **ASCII** ဢမ်ႇၼၼ် **Characters**။ ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ Notepad ပိုတ်ႇလူလႆႈငၢႆႈငၢႆႈ။
* **ဢၼ်လီ:** ၵူၼ်းလူပွင်ႇၸႂ် (Human Readable)၊ မႄးလႆႈငၢႆႈ။
* **ဢၼ်ႁၢႆႉ:** သဵင်ႈ Memory ၼမ် (မိူၼ်ၼင်ႇ မၢႆ `12345` ၼႆ ၼႂ်း Text မၼ်းတေၸႂ်ႉ 5 Bytes တွၼ်ႈတႃႇ 5 တူဝ်လိၵ်ႈ)။

### 2. Binary Files (`.bin` ႁိုဝ် `.dat`)
ပဵၼ် File ဢၼ်ၵဵပ်းၶေႃႈမုၼ်းပဵၼ် **0 လႄႈ 1** (Bits) တႅတ်ႈတေႃး မိူၼ်ၼင်ႇမၼ်းယူႇၼႂ်း RAM ၼၼ်ႉၶႃႈယဝ်ႉ။
* **ဢၼ်လီ:** * **Efficiency:** ၽႂ်းလႅတ်းသုတ်း ၵွပ်ႈၶွမ်ႇပိဝ်ႇတႃႇဢမ်ႇလူဝ်ႇ "လႅၵ်ႈ" (Convert) ၶေႃႈမုၼ်းသင်ယဝ်ႉ။
    * **Compact:** ၸႂ်ႉ Memory ဢွၼ်ႇ (မၢႆ `12345` ၼႂ်း Binary တေၸႂ်ႉၵူၺ်း 4 Bytes ၸွမ်းၼင်ႇသႅၼ်း `int` ၶႃႈ)။
    * **Security:** ၵူၼ်းပိုတ်ႇတူၺ်းလူၺ်ႈ Notepad တေဢမ်ႇပွင်ႇၸႂ် ၵွပ်ႈမၼ်းတေၼႄပဵၼ်တူဝ်လိၵ်ႈလၢၵ်ႇလၢၵ်ႇပိူင်ႇပိူင်ႇ။
* **ဢၼ်ႁၢႆႉ:** ၵူၼ်းလူဢမ်ႇပွင်ႇၸႂ်၊ လူဝ်ႇမီးပူဝ်ႇၵရႅမ်ႇၶူးဝႆႉ ၸင်ႇတေပိုတ်ႇလူလႆႈ။



### 3. Comparison Table

| Feature | Text Files | Binary Files |
| :--- | :--- | :--- |
| **Readable?** | Yes (Human) | No (Computer only) |
| **Storage Size** | Larger | Smaller |
| **Speed** | Slower (needs parsing) | Faster (direct copy) |
| **Newline** | `\n` to `\r\n` conversion | No conversion |
| **Best For** | Configuration, Notes | **Databases**, Images, Executables |

### 4. Mode ဢၼ်လူဝ်ႇလႅၵ်ႈလၢႆႈ
မိူဝ်ႈၸဝ်ႈၵဝ်ႇပိုတ်ႇ Binary File၊ ၸဝ်ႈၵဝ်ႇတေလႆႈထႅမ်တူဝ် **`b`** ၼႂ်း Mode ၶႃႈ:
* `"rb"` = Read Binary
* `"wb"` = Write Binary
* `"ab"` = Append Binary

---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* ႁဝ်းတေၸႂ်ႉ **Binary File** တွၼ်ႈတႃႇၵဵပ်း "သဵၼ်ႈမၢႆလုၵ်ႈႁဵၼ်း" (Student Database) ၶႃႈ။
* **ၵွပ်ႈသင်?** ၵွပ်ႈဝႃႈႁဝ်းမီး **Struct** ဢၼ်ယႂ်ႇ။ သင်ႁဝ်းၸႂ်ႉ Text File ႁဝ်းတေလႆႈတႅမ်ႈ `fprintf` ယၢဝ်းယၢဝ်းတွၼ်ႈတႃႇၵူႈ Member။
* ၵူၺ်းၵႃႈ ၼႂ်း Binary၊ ႁဝ်းၸၢင်ႈ "ၵေႃႇပီႇ" (Copy) တူဝ် **Struct Student** တင်းတူဝ် ၵႂႃႇဝၢႆႇဝႆႉၼႂ်း Disk ၼႂ်းၵမ်းလဵဝ်ၵူၺ်းၶႃႈ။ ၼႆႉႁွင်ႉဝႃႈ **Direct Memory Dumping** ၶႃႈဢေႃႈ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1. သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈၵဵပ်းၶေႃႈမုၼ်း "လုၵ်ႈႁဵၼ်း 10,000 ၵေႃႉ" ႁႂ်ႈ App ႁဵတ်းၵၢၼ်ၽႂ်းသုတ်းၼႆ ၸဝ်ႈၵဝ်ႇတေလိူၵ်ႈၸႂ်ႉ File မဵဝ်းလႂ်? (ၸွပ်ႇ: **Binary File** ၶႃႈ)။
2. Mode **"wb"** လႄႈ **"w"** ပႅၵ်ႇပိူင်ႈၵၼ်ၸိူင်ႉႁိုဝ်? (ၸွပ်ႇ: **"wb"** ပိုတ်ႇတႃႇတႅမ်ႈ Binary၊ မၼ်းတေဢမ်ႇလႅၵ်ႈလၢႆႈတူဝ်လိၵ်ႈ `\n` ပဵၼ်သင်သေမဵဝ်းၶႃႈ)။
3. ၸၢမ်းပိုတ်ႇ File `.exe` ဢမ်ႇၼၼ် `.jpg` လူၺ်ႈ Notepad တူၺ်း၊ ၸဝ်ႈၵဝ်ႇႁၼ်သင်ၶႃႈၼႄႇ? (ၸွပ်ႇ: တေႁၼ်တူဝ်လိၵ်ႈဢၼ်ဢမ်ႇပွင်ႇၸႂ် ၵွပ်ႈမၼ်းပဵၼ် **Binary Data** ဢၼ် Notepad ၶျတ်းတႅမ်ႈဢမ်ႇလႆႈၼၼ်ႉၶႃႈဢေႃႈ)။

---