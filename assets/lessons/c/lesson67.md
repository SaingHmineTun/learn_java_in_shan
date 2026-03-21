## Lesson 67: Command Line Arguments (argc, argv)

တေႃႇထိုင်ယၢမ်းလဵဝ်၊ ႁဝ်းတႅမ်ႈ `int main()` ပဝ်ႇပဝ်ႇဝႆႉတႃႇသေႇ။ ၵူၺ်းၵႃႈ တေႃႇၼႃႈၼႆႉၵႂႃႇ ႁဝ်းတေပၼ် "ဢဵၼ်ႁႅင်း" ၸူးမၼ်း လူၺ်ႈၵၢၼ်ႁပ်ႉဢဝ် Parameters 2 တူဝ်ၶႃႈ။

### 1. `argc` လႄႈ `argv` ပဵၼ်သင်?
မိူဝ်ႈၸဝ်ႈၵဝ်ႇ Run ပူဝ်ႇၵရႅမ်ႇတႄႇဢဝ် Terminal (CMD)၊ ၸဝ်ႈၵဝ်ႇၸၢင်ႈသူင်ႇ "ၶေႃႈၵႂၢမ်း" ၶဝ်ႈၵႂႃႇၸွမ်းလႆႈၶႃႈ။

* **`argc` (Argument Count):** တူဝ်ၼပ်ႉ `int` ဢၼ်ၼႄဝႃႈ မီးၶေႃႈၵႂၢမ်းသူင်ႇမႃးတင်းသဵင်ႈ လၢႆဢၼ် (ပႃးတင်းၸိုဝ်ႈ App ႁဝ်း)။
* **`argv` (Argument Vector):** ပဵၼ် **Array ၶွင် Strings** (Array of pointers to char) ဢၼ်ၵဵပ်းၶေႃႈၵႂၢမ်း ၸိူဝ်းၼၼ်ႉဝႆႉၶႃႈ။



### 2. ပိူင်တႅမ်ႈ (Syntax)
```c
#include <stdio.h>

int main(int argc, char *argv[]) {
    printf("Number of arguments: %d\n", argc);

    for (int i = 0; i < argc; i++) {
        printf("Argument %d: %s\n", i, argv[i]);
    }

    return 0;
}
```
သင်ၸဝ်ႈၵဝ်ႇ Run ဝႃႈ: `tmk.exe students.dat`
* `argc` တေပဵၼ် **2**။
* `argv[0]` တေပဵၼ် `"tmk.exe"` (ၸိုဝ်ႈ App တႃႇသေႇ)။
* `argv[1]` တေပဵၼ် `"students.dat"` (ၶေႃႈမုၼ်းဢၼ်ႁဝ်းသူင်ႇၵႂႃႇ)။

### 3. ၵၢၼ်ၸႂ်ႉတူဝ်တေႉ: Opening Files via CLI
တႅၼ်းၵၢၼ်ဢၼ်တေတႅမ်ႈၸိုဝ်ႈ File ဝႆႉၼႂ်း Code (Hardcode)၊ ႁဝ်းၸၢင်ႈႁႂ်ႈ User ပဵၼ်ၵေႃႉလိူၵ်ႈ File ဢၼ်ၶႂ်ႈပိုတ်ႇ ၼင်ႇၼႆၶႃႈ:

```c
#include <stdio.h>

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: %s <filename>\n", argv[0]);
        return 1;
    }

    FILE *fp = fopen(argv[1], "r"); // ပိုတ်ႇ File ၸွမ်းၼင်ႇ User သင်ႇ
    if (fp == NULL) {
        perror("Error opening file");
        return 1;
    }

    printf("Successfully opened %s!\n", argv[1]);
    fclose(fp);
    return 0;
}
```

---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ App ဢၼ်ႁဵတ်းၵၢၼ်လႆႈလၢႆမဵဝ်း မိူၼ်ၼင်ႇ:
    * `tmk.exe --view` (တႃႇတူၺ်းသဵၼ်ႈမၢႆၵူၺ်း)
    * `tmk.exe --add "Sai Mao" 3.90` (တႃႇထႅမ်လုၵ်ႈႁဵၼ်းၵမ်းလဵဝ် တႄႇဢဝ် Terminal)
* ၵၢၼ်ႁဵတ်းၼႆ တေႁဵတ်းႁႂ်ႈ Software ၸဝ်ႈၵဝ်ႇ "ယืดႇယုၼ်ႇ" (Flexible) သေ ၸၢင်ႈဢဝ်ၵႂႃႇၵွင်ႉၸူး (Automate) တင်း Scripts တၢင်ႇဢၼ်လႆႈငၢႆႈငၢႆႈၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1.  တႅမ်ႈ Code ဢၼ်ႁပ်ႉတူဝ်ၼပ်ႉ 2 တူဝ်တႄႇဢဝ် Command Line (မိူၼ်ၼင်ႇ `add.exe 5 10`) သေ ၼႄၽွၼ်းလႆႈ (15) ဢွၵ်ႇမႃး။ (ၸွႆႈတွပ်ႇ: လူဝ်ႇၸႂ်ႉ `atoi(argv[1])` တွၼ်ႈတႃႇလႅၵ်ႈ String ပဵၼ် Integer ၶႃႈဢေႃႈ)။
2.  သင်ႁဝ်း Run App ၸဝ်ႈၵဝ်ႇပဝ်ႇပဝ်ႇ (မိူၼ်ၼင်ႇ `tmk.exe`) ၼႆ `argc` တေပဵၼ်ၵႃႈႁိုဝ်ၶႃႈၼႄႇ? (ၸွပ်ႇ: တေပဵၼ် **1** ၶႃႈ၊ ၵွပ်ႈမၼ်းၼပ်ႉပႃးၸိုဝ်ႈ App မၼ်း 1 တူဝ်တႃႇသေႇၶႃႈ)။
3.  `argv[argc]` ၼႆႉ မၼ်းတေၵဵပ်း Value သင်ဝႆႉၶႃႈၼႄႇ? (ၸွပ်ႇ: ၼႂ်းလိၵ်ႈ C မၼ်းတေပဵၼ် **NULL** တႃႇသေႇၶႃႈဢေႃႈ)။

---