## Lesson 60: Writing Text Data: fputs, fprintf & fputc

တွၼ်ႈတႃႇတႅမ်ႈလိၵ်ႈ (Text) ၶဝ်ႈ File ၼၼ်ႉ C မီး Function ၵူႈမဵဝ်းၸွမ်းၼင်ႇႁဝ်းလူဝ်ႇၸႂ်ႉၶႃႈ:

### 1. `fputc()` (File Put Character)
ၸႂ်ႉတွၼ်ႈတႃႇတႅမ်ႈလိၵ်ႈ **"ၼိုင်ႈတူဝ်"** (Single character) ၵႂႃႇၸူး File ၶႃႈ။
```c
fputc('A', fp); // တႅမ်ႈတူဝ်လိၵ်ႈ A သႂ်ႇၼႂ်း File
```

### 2. `fputs()` (File Put String)
ၸႂ်ႉတွၼ်ႈတႃႇတႅမ်ႈလိၵ်ႈ **"ၼိုင်ႈၸုမ်း"** (String) ၵႂႃႇၸူး File ၶႃႈ။ မၼ်းတေဢမ်ႇထႅမ် Newline (`\n`) ပၼ်ႁင်းမၼ်းၼႃၶႃႈ။
```c
fputs("Hello Sai Mao!\n", fp);
```

### 3. `fprintf()` (File Print Formatted)
ၼႆႉပဵၼ် Function ဢၼ် **မီးဢဵၼ်ႁႅင်းသုင်သုတ်း** ၶႃႈ။ မၼ်းမိူၼ်တင်း `printf` ၵူႈမဵဝ်း၊ ၸဝ်ႈၵဝ်ႇၸၢင်ႈသႂ်ႇ Format Specifiers (`%d`, `%s`, `%f`) သေတႅမ်ႈၶေႃႈမုၼ်းလၢႆမဵဝ်းလေႃးၵၼ်လႆႈၶႃႈ။



**တူဝ်ယၢင်ႇ:**
```c
#include <stdio.h>

int main() {
    FILE *fp = fopen("students.txt", "w"); // ပိုတ်ႇတႃႇတႅမ်ႈ (Write)
    
    if (fp == NULL) return 1;

    char name[] = "Sai Mao";
    int age = 25;
    float gpa = 3.85;

    // တႅမ်ႈၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း ၶဝ်ႈၼႂ်း File
    fprintf(fp, "Name: %s, Age: %d, GPA: %.2f\n", name, age, gpa);

    fclose(fp); // ပိတ်း File တွၼ်ႈတႃႇ Save
    return 0;
}
```

### 4. လွင်ႈပႅၵ်ႇပိူင်ႈ ဢၼ်လူဝ်ႇတွပ်ႇဝႆႉ
| Function | ၸႂ်ႉတွၼ်ႈတႃႇ | လွင်ႈယืดႇယုၼ်ႇ |
| :--- | :--- | :--- |
| **`fputc`** | 1 Character | ဢွၼ်ႇသုတ်း |
| **`fputs`** | Simple String | ပၢၼ်ၵၢင် |
| **`fprintf`** | Mixed Data (Formatted) | **သုင်သုတ်း** |



---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* မိူဝ်ႈ User ထႅမ်လုၵ်ႈႁဵၼ်းမႂ်ႇ၊ ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ **`fprintf`** တွၼ်ႈတႃႇတႅမ်ႈ "ၸိုဝ်ႈ" လႄႈ "မၢႆၶႅတ်း" ၶဝ်ႈၵႂႃႇၼႂ်း File ၸိူင်ႉၼႆ:
  `fprintf(fp, "%s %d %f\n", s.name, s.age, s.gpa);`
* ၵၢၼ်ႁဵတ်းၼႆ တေႁဵတ်းႁႂ်ႈ File `students.txt` ၶွင်ၸဝ်ႈၵဝ်ႇ လူလိၵ်ႈငၢႆႈ (Human Readable) သေ ပိုတ်ႇတူၺ်းၼႂ်း Notepad ၵေႃႈတေႁၼ်ၶေႃႈမုၼ်းတႅတ်ႈတေႃးၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1. တႅမ်ႈ Code ဢၼ်ႁပ်ႉၸိုဝ်ႈလုၵ်ႈႁဵၼ်း 3 ၵေႃႉတီႈ Keyboard သေ ၸႂ်ႉ `fprintf` တႅမ်ႈၵဵပ်းဝႆႉၼႂ်း File `list.txt` လူၺ်ႈၸႂ်ႉ Loop (For loop)။
2. သင်ႁဝ်းၸႂ်ႉ Mode **"a"** (Append) တႅၼ်း "w" ၼႆ၊ မိူဝ်ႈႁဝ်းပိုတ်ႇပူဝ်ႇၵရႅမ်ႇထႅင်ႈၵမ်းၼိုင်ႈ ၶေႃႈမုၼ်းၵဝ်ႇ တေႁၢႆႁိုဝ်ဢမ်ႇႁၢႆၶႃႈၼႄႇ? (ၸွပ်ႇ: **ဢမ်ႇႁၢႆၶႃႈ**၊ မၼ်းတေတႅမ်ႈသိုပ်ႇၽၢႆႇလင်ၵႂႃႇတိၵ်းတိၵ်းၶႃႈဢေႃႈ)။
3. ၵွပ်ႈသင် `fprintf` သမ်ႉလူဝ်ႇ `fp` (File Pointer) ပဵၼ် Parameter တူဝ်ထီႉၼိုင်ႈၶႃႈၼႄႇ? (ၸွပ်ႇ: တွၼ်ႈတႃႇႁႂ်ႈမၼ်းႁူႉဝႃႈ တေလႆႈသူင်ႇၶေႃႈမုၼ်းၼၼ်ႉ ၵႂႃႇတႅမ်ႈသႂ်ႇၼႂ်း File ဢၼ်လႂ်ၼၼ်ႉၶႃႈဢေႃႈ)။

---