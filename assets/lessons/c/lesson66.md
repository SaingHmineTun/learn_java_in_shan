## Lesson 66: Mini-Project: Saving & Loading Student Records

ၼႂ်း Project ဢွၼ်ႇၼႆႉ ႁဝ်းတေမီး Function လမ်ႇလွင်ႈ 2 ဢၼ်:
1.  **`saveData()`**: ဢဝ် Array ၶွင်လုၵ်ႈႁဵၼ်းၼႂ်း RAM ၵႂႃႇတႅမ်ႈသႂ်ႇၼႂ်း File (`fwrite`)။
2.  **`loadData()`**: လူဢဝ်ၶေႃႈမုၼ်းတႄႇဢဝ် File မႃးသႂ်ႇၼႂ်း Array ၶိုၼ်း (`fread`)။

### 1. ပိူင်ၵေႃႇသၢင်ႈ (The Code)

```c
#include <stdio.h>
#include <stdlib.h>

struct Student {
    char name[50];
    int id;
    float gpa;
};

// --- Function တွၼ်ႈတႃႇ Save ---
void saveData(struct Student list[], int count) {
    FILE *fp = fopen("tmk_students.dat", "wb"); // ပိုတ်ႇတႃႇတႅမ်ႈ Binary
    if (fp == NULL) {
        perror("Save Error");
        return;
    }
    // တႅမ်ႈ Array တင်းသဵင်ႈ ၶဝ်ႈ File ၼႂ်းၵမ်းလဵဝ်
    fwrite(list, sizeof(struct Student), count, fp);
    fclose(fp);
    printf("Successfully saved %d records!\n", count);
}

// --- Function တွၼ်ႈတႃႇ Load ---
int loadData(struct Student list[]) {
    FILE *fp = fopen("tmk_students.dat", "rb"); // ပိုတ်ႇတႃႇလူ Binary
    if (fp == NULL) {
        return 0; // သင်ဢမ်ႇမီး File တိုၵ်ႉပဵၼ် App မႂ်ႇ
    }
    
    int count = 0;
    // လူဢဝ်လုၵ်ႈႁဵၼ်းၵေႃႉယဝ်ႉၵေႃႉၼိုင်ႈ တေႃႇပေႃးထိုင် EOF
    while (fread(&list[count], sizeof(struct Student), 1, fp) == 1) {
        count++;
    }
    fclose(fp);
    return count; // သူင်ႇႁူဝ်ၼပ်ႉလုၵ်ႈႁဵၼ်း ဢၼ်လူလႆႈၼၼ်ႉၶိုၼ်းမိူဝ်း
}

int main() {
    struct Student students[100];
    int studentCount = 0;

    // 1. တႄႇပိုတ်ႇ App မႃး Load Data ဢွၼ်တၢင်း
    studentCount = loadData(students);
    printf("Welcome back! Loaded %d students.\n", studentCount);

    // 2. ၸၢမ်းထႅမ်လုၵ်ႈႁဵၼ်းမႂ်ႇ (Simulation)
    if (studentCount < 100) {
        printf("Adding a new student: Sai Mao...\n");
        sprintf(students[studentCount].name, "Sai Mao");
        students[studentCount].id = 101;
        students[studentCount].gpa = 3.90;
        studentCount++;
    }

    // 3. မိူဝ်ႈတေပိတ်း App ႁႂ်ႈ Save ဝႆႉ
    saveData(students, studentCount);

    return 0;
}
```



---

### 2. ၵၢၼ်ႁဵတ်းၵၢၼ် (How it works)
* **Persistent Storage:** မိူဝ်ႈၸဝ်ႈၵဝ်ႇ Run ပူဝ်ႇၵရႅမ်ႇၼႆႉ ၵမ်းထီႉ 2၊ ၸဝ်ႈၵဝ်ႇတေႁၼ်ဝႃႈ ၸိုဝ်ႈ "Sai Mao" မီးဝႆႉယူႇယဝ်ႉ ၵွပ်ႈမၼ်း Load တႄႇဢဝ် File မႃးၶႃႈ။
* **Binary Efficiency:** ႁဝ်းၸႂ်ႉ `.dat` File ၵွပ်ႈမၼ်းၵဵပ်း Struct လႆႈတႅတ်ႈတေႃး သေဢမ်ႇလူဝ်ႇလႅၵ်ႈပဵၼ် Text ၶႃႈ။
* **Dynamic Count:** Function `loadData` တေသူင်ႇမႃးဝႃႈ မၼ်းလူလႆႈလုၵ်ႈႁဵၼ်းၵေႃႉ (Count) တွၼ်ႈတႃႇႁႂ်ႈ `main` ႁူႉဝႃႈ တေလႆႈထႅမ်လုၵ်ႈႁဵၼ်းၵေႃႉတေႃႉၼႃႈ တီႈ Index လႂ်ၶႃႈ။

---

## 🏗️ Logic for Your Portfolio
ၼႆႉပဵၼ် **The Core** ၶွင်ၵၢၼ်တႅမ်ႈ App တေႉတေႉၶႃႈယဝ်ႉ။
* သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Android App လူၺ်ႈ **Java/Flutter**၊ ၸဝ်ႈၵဝ်ႇၵေႃႈတေလႆႈၸႂ်ႉ Logic မိူၼ်ၵၼ်ၼႆႉ (Open File -> Read/Write -> Close)။
* ၵၢၼ်ဢၼ်ၸဝ်ႈၵဝ်ႇႁဵတ်းလႆႈၼႂ်း **C Language** ၼႆႉ တေႁဵတ်းႁႂ်ႈၸဝ်ႈၵဝ်ႇ "ပွင်ႇၸႂ်လိုၵ်ႉ" (Deep Understanding) ဝႃႈ ၶေႃႈမုၼ်းလုၵ်ႉဢဝ် RAM ၵႂႃႇယူႇၼႂ်း Disk လႆႈၸိူင်ႉႁိုဝ် ၼၼ်ႉၶႃႈဢေႃႈ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1.  ၸၢမ်းမႄး Code ႁႂ်ႈမၼ်းႁပ်ႉၸိုဝ်ႈလုၵ်ႈႁဵၼ်းတႄႇဢဝ် `scanf()` သေ ၸင်ႇၵွႆႈ Save။
2.  သၢင်ႈ Function `void clearDatabase()` ဢၼ်တေယႃႉ File `tmk_students.dat` ပႅတ်ႈ (ၸွႆႈတွပ်ႇ: ပိုတ်ႇလူၺ်ႈ Mode `"w"` သေပိတ်းၵမ်းလဵဝ်ၵေႃႈယဝ်ႉယဝ်ႉၶႃႈ)။
3.  သင်ႁဝ်းမႄးလႅၵ်ႈလၢႆႈ **Struct Student** (မိူၼ်ၼင်ႇ ထႅမ် `phone_number` ဝႆႉၼႂ်းမၼ်း)၊ ၸဝ်ႈၵဝ်ႇဝူၼ်ႉဝႃႈ File ၵဝ်ႇ ဢၼ် Save ဝႆႉၼၼ်ႉ တိုၵ်ႉတေ Load လႆႈယူႇႁိုဝ်? (ၸွပ်ႇ: **ဢမ်ႇလႆႈယဝ်ႉၶႃႈ**၊ ၵွပ်ႈသႅၼ်း Bytes မၼ်းဢမ်ႇတူင်ႇၵၼ်ယဝ်ႉ (Data Corruption)၊ ၸဝ်ႈၵဝ်ႇတေလႆႈ Reset Database ဢမ်ႇၼၼ် တႅမ်ႈ Migration Tool ၶႃႈဢေႃႈ)။

---