## Lesson 63: Working with Structs: fwrite & fread

### 1. `fwrite()` (ၵၢၼ်တႅမ်ႈ Binary)
Function ၼႆႉ တေၵေႃႇပီႇ (Copy) Byte ဢၼ်ယူႇၼႂ်း RAM ၵႂႃႇဝၢႆႇဝႆႉၼႂ်း File တႅတ်ႈတေႃးၶႃႈ။

**Syntax:**
```c
fwrite(address, size, count, fp);
```
* **address:** မၢႆလိၵ်ႈ Struct ဢမ်ႇၼၼ် Array ဢၼ်ႁဝ်းတေတႅမ်ႈ။
* **size:** သႅၼ်း Bytes ၶွင် 1 item (ၸႂ်ႉ `sizeof` တႃႇသေႇ)။
* **count:** တေတႅမ်ႈလၢႆဢၼ်? (သင်ပဵၼ် 1 item ၵေႃႈသႂ်ႇ 1)။
* **fp:** File Pointer။



### 2. `fread()` (ၵၢၼ်လူ Binary)
မိူၼ်တင်း `fwrite` ၵူၺ်းၵႃႈ မၼ်းတေၸၼ်ဢဝ် Bytes တႄႇဢဝ် File မႃးသႂ်ႇၼႂ်း Variable (Struct) ႁဝ်းၶိုၼ်းၶႃႈ။

**Syntax:**
```c
fread(address, size, count, fp);
```

---

### 3. တူဝ်ယၢင်ႇ: Saving a Student Struct
မႃးႁဝ်းမႃးၸၢမ်း "Save" လႄႈ "Load" ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း ၼႂ်းၵမ်းလဵဝ်ၶႃႈ။

```c
#include <stdio.h>

struct Student {
    char name[20];
    int age;
};

int main() {
    struct Student s1 = {"Sai Mao", 25};
    struct Student s2; // တႃႇႁပ်ႉၶေႃႈမုၼ်းၶိုၼ်း

    // --- တွၼ်ႈ SAVE ---
    FILE *f_out = fopen("student.dat", "wb");
    fwrite(&s1, sizeof(struct Student), 1, f_out);
    fclose(f_out);

    // --- တွၼ်ႈ LOAD ---
    FILE *f_in = fopen("student.dat", "rb");
    fread(&s2, sizeof(struct Student), 1, f_in);
    fclose(f_in);

    printf("Loaded: %s, Age: %d\n", s2.name, s2.age);
    return 0;
}
```



---

### 4. ၵွပ်ႈသင် `fwrite/fread` သမ်ႉလီလိူဝ်?
1.  **Speed (ၽႂ်း):** မၼ်းဢမ်ႇလူဝ်ႇလႅၵ်ႈ `int` ႁိုဝ် `float` ႁႂ်ႈပဵၼ်လိၵ်ႈ Text။ မၼ်းၵေႃႇပီႇ Bytes ၵႂႃႇၵမ်းလဵဝ်။
2.  **Simplicity:** သင် Struct ၸဝ်ႈၵဝ်ႇမီး 50 Variables ၵေႃႈယဝ်ႉ၊ ၸဝ်ႈၵဝ်ႇတႅမ်ႈ `fwrite` **ထႅဝ်လဵဝ်** ၵေႃႈ Save လႆႈတင်းသဵင်ႈယဝ်ႉၶႃႈ။
3.  **Array Support:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈ Save "Array ၶွင်လုၵ်ႈႁဵၼ်း 100 ၵေႃႉ" ၼႂ်းထႅဝ်လဵဝ်ၵူၺ်း လူၺ်ႈၵၢၼ်လႅၵ်ႈ `count` ပဵၼ် 100 ၶႃႈ။

---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* ႁဝ်းတေၸႂ်ႉ `fwrite` တွၼ်ႈတႃႇ "Save All" မိူဝ်ႈ User တဵၵ်းပိတ်း App။
* ႁဝ်းတေၸႂ်ႉ `fread` တွၼ်ႈတႃႇ "Load All" မိူဝ်ႈ App တႄႇပိုတ်ႇမႃး။
* ၼႆႉတေႁဵတ်းႁႂ်ႈ Software ၸဝ်ႈၵဝ်ႇ ႁဵတ်းၵၢၼ်လႆႈမိူၼ်တင်း **Database Systems** တေႉတေႉၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1. တႅမ်ႈ Code ဢၼ်ၸႂ်ႉ `fwrite` သေ Save **"Array ၶွင်တူဝ်ၼပ်ႉ 5 တူဝ်"** ၶဝ်ႈၼႂ်း File ၼႂ်းထႅဝ်လဵဝ်ၵူၺ်း (သႂ်ႇ `count = 5`)။
2. ၵွပ်ႈသင်ႁဝ်းသမ်ႉတေလႆႈၸႂ်ႉ `sizeof(struct Student)` တႅၼ်းၵၢၼ်သႂ်ႇတူဝ်ၼပ်ႉတေႉမၼ်း (မိူၼ်ၼင်ႇ 24) ၶႃႈၼႄႇ? (ၸွပ်ႇ: တွၼ်ႈတႃႇႁႂ်ႈမၼ်း **Portable**၊ ၵွပ်ႈဝႃႈသႅၼ်း Struct ၸၢင်ႈပႅၵ်ႇပိူင်ႈၵၼ် ၸွမ်းၼင်ႇၶွမ်ႇပိဝ်ႇတႃႇ လႄႈ Compiler ၶႃႈဢေႃႈ)။
3. သင်ႁဝ်းပိုတ်ႇ File ဢၼ် Save ဝႆႉလူၺ်ႈ `fwrite` ၼၼ်ႉလူၺ်ႈ Notepad ၼႆ မၼ်းတေပဵၼ်သင်ၶႃႈၼႄႇ? (ၸွပ်ႇ: တေႁၼ်တူဝ်လိၵ်ႈဢၼ်ဢမ်ႇပွင်ႇၸႂ် ၵွပ်ႈမၼ်းပဵၼ် **Raw Bytes** ဢၼ်ဢမ်ႇၸႂ်ႇ ASCII Text ၼၼ်ႉၶႃႈဢေႃႈ)။

---