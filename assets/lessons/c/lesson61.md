## Lesson 61: Reading Text Data: fgets, fscanf & fgetc

တွၼ်ႈတႃႇလူလိၵ်ႈ (Text) တႄႇဢဝ် File ၼၼ်ႉ ႁဝ်းမီး Function 3 မဵဝ်း ဢၼ်ၸႂ်ႉၼမ်သုတ်းၶႃႈ:

### 1. `fgetc()` (File Get Character)
ၸႂ်ႉတွၼ်ႈတႃႇလူလိၵ်ႈ **"ၼိုင်ႈတူဝ်"** ၵမ်းလဵဝ်။ မၼ်းတေလူဢဝ်တူဝ်လိၵ်ႈ တီႈဢၼ် Pointer ၸี้ဝႆႉၼၼ်ႉသေ ၶယိူၼ်ႉၵႂႃႇတူဝ်ၼႃႈထႅင်ႈၶႃႈ။
```c
char c = fgetc(fp); // လူဢဝ် 1 character
```

### 2. `fgets()` (File Get String)
ၸႂ်ႉတွၼ်ႈတႃႇလူလိၵ်ႈ **"ၼိုင်ႈထႅဝ်"** (One line)။ ၼႆႉပဵၼ်လၢႆးဢၼ် **လွတ်ႈၽေးသုတ်း** ၵွပ်ႈႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈလႆႈဝႃႈ တေလူဢဝ်ၵႃႈႁိုဝ် (Buffer size) တွၼ်ႈတႃႇဝႄႉ Buffer Overflow ၶႃႈ။
```c
char buffer[100];
fgets(buffer, 100, fp); // လူဢဝ် 1 ထႅဝ် (ဢမ်ႇႁႂ်ႈပူၼ်ႉ 100 တူဝ်)
```

### 3. `fscanf()` (File Scan Formatted)
မိူၼ်တင်း `scanf` ၵူၺ်းၵႃႈ မၼ်းလူဢဝ်တႄႇဢဝ် File ၶႃႈ။ မၼ်းၸွႆႈႁႂ်ႈႁဝ်းၸႅၵ်ႇ (Parse) ၶေႃႈမုၼ်းလၢႆမဵဝ်း (int, float, string) ဢွၵ်ႇၵၼ်လႆႈငၢႆႈငၢႆႈ။

**တူဝ်ယၢင်ႇ:**
```c
#include <stdio.h>

int main() {
    FILE *fp = fopen("students.txt", "r"); // ပိုတ်ႇတႃႇ "လူ" (Read)
    
    if (fp == NULL) {
        printf("File not found!\n");
        return 1;
    }

    char name[50];
    int age;
    float gpa;

    // လူၶေႃႈမုၼ်းၸွမ်း Format ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ
    while (fscanf(fp, "Name: %s, Age: %d, GPA: %f\n", name, &age, &gpa) != EOF) {
        printf("Read: %s is %d years old with %.2f GPA\n", name, age, gpa);
    }

    fclose(fp);
    return 0;
}
```



### 4. EOF (End Of File) ပဵၼ်သင်?
မိူဝ်ႈႁဝ်းလူလိၵ်ႈၵႂႃႇတိၵ်းတိၵ်း တေႃႇပေႃးထိုင် **"ပၢႆသုတ်း"** ၶွင် File၊ Function ၸိူဝ်းၼႆႉတေသူင်ႇ Value တူဝ်ၼိုင်ႈ ဢၼ်ႁွင်ႉဝႃႈ **`EOF`** ၶိုၼ်းမႃးၶႃႈ။ ႁဝ်းၸႂ်ႉမၼ်းၼႂ်း Loop တွၼ်ႈတႃႇႁူႉဝႃႈ လူယဝ်ႉသဵင်ႈယဝ်ႉႁိုဝ် ၼၼ်ႉၶႃႈဢေႃႈ။



---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* မိူဝ်ႈပိုတ်ႇ App၊ ၸဝ်ႈၵဝ်ႇတေၸႂ်ႉ **`fscanf`** ဢမ်ႇၼၼ် **`fgets`** ၼႂ်း **While Loop**။
* မၼ်းတေလူဢဝ် "ၸိုဝ်ႈ" လႄႈ "မၢႆၶႅတ်း" လုၵ်ႈႁဵၼ်းၵေႃႉယဝ်ႉၵေႃႉၼိုင်ႈ ၶဝ်ႈမႃးၼႂ်း Array (RAM)။
* ၵၢၼ်ႁဵတ်းၼႆ တေႁဵတ်းႁႂ်ႈ Software ၸဝ်ႈၵဝ်ႇ မီးၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်းဝႆႉတႃႇသေႇ၊ ပႅၵ်ႉသမ်ႉပိတ်း App ၵႂႃႇယဝ်ႉၵေႃႈယဝ်ႉၶႃႈ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1. တႅမ်ႈ Code ဢၼ်ၸႂ်ႉ `fgetc` သေၼပ်ႉဢၢၼ်ႇတူၺ်းဝႃႈ ၼႂ်း File `data.txt` ၼၼ်ႉ မီးတူဝ်လိၵ်ႈတင်းသဵင်ႈလၢႆတူဝ်?
2. ၵွပ်ႈသင်ႁဝ်းသမ်ႉတေလႆႈၸႂ်ႉ `while(... != EOF)` မိူဝ်ႈလူလိၵ်ႈၼႂ်း File ၶႃႈၼႄႇ? (ၸွပ်ႇ: တွၼ်ႈတႃႇႁႂ်ႈပူဝ်ႇၵရႅမ်ႇ လူဢဝ်ၶေႃႈမုၼ်းတေႃႇပေႃးထိုင် **"ပၢႆသုတ်း File"** သေ ၸင်ႇၵိုတ်း ၼၼ်ႉၶႃႈဢေႃႈ)။
3. လွင်ႈပႅၵ်ႇပိူင်ႈၵႄႈ `fscanf` လႄႈ `fgets` ပဵၼ်သင်? (ၸွပ်ႇ: `fgets` လူဢဝ်တင်းထႅဝ် (String)၊ ၵူၺ်းၵႃႈ `fscanf` ၸၢင်ႈၸႅၵ်ႇပဵၼ် `int`, `float` ၸွမ်း Format လႆႈၶႃႈ)။

---