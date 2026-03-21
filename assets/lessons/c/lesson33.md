## Lesson 33: Nested Structs & Arrays of Structs: Database Basics

### 1. Array of Structs (ၸုမ်းၶေႃႈမုၼ်း Struct)
သင်ဝႃႈ `struct Student s1;` ၵဵပ်းလႆႈလုၵ်ႈႁဵၼ်း 1 ၵေႃႉၼႆ၊ **Array of Structs** သမ်ႉတေၸွႆႈႁႂ်ႈႁဝ်းၵဵပ်းလႆႈ လုၵ်ႈႁဵၼ်းတင်းႁွင်ႉၶႃႈ။

**Syntax:** `struct Student classroom[40];`



**တူဝ်ယၢင်ႇ:**
```c
struct Student classroom[3] = {
    {"Sai Mao", 1, 90.5},
    {"Nang Aye", 2, 88.0},
    {"Sai Tun", 3, 75.2}
};

// ၵၢၼ်ၼႄၶေႃႈမုၼ်းတင်းသဵင်ႈ လူၺ်ႈၸႂ်ႉ Loop
for(int i = 0; i < 3; i++) {
    printf("Name: %s, Marks: %.2f\n", classroom[i].name, classroom[i].marks);
}
```

### 2. Nested Structs (Struct ၼႂ်း Struct)
မၢင်ပွၵ်ႈ ၶေႃႈမုၼ်းၼႂ်း Struct ၼိုင်ႈဢၼ် မၼ်းၸၢင်ႈမီးပိူင်ယွႆးထႅင်ႈၶႃႈ။ မိူၼ်ၼင်ႇ "ဝၼ်းတီႈၵိူတ်ႇ" (Date of Birth) ဢၼ်မီးတင်း ဝၼ်း၊ လိူၼ်၊ ပီ ၼၼ်ႉၶႃႈဢေႃႈ။

**တူဝ်ယၢင်ႇ:**
```c
struct Date {
    int day, month, year;
};

struct Student {
    char name[50];
    struct Date dob; // Nested Struct
};

struct Student s1;
s1.dob.day = 21;
s1.dob.month = 9;
s1.dob.year = 1995;
```



### 3. Database Basics: CRUD Concept
ၼႂ်းပၢႆး Software၊ ၵၢၼ်ၸတ်းၵၢၼ် Database မီး 4 ၶၵ်ႉတွၼ်ႈ (CRUD) ဢၼ်ႁဝ်းၸႂ်ႉ Array of Structs ႁဵတ်းလႆႈၶႃႈ:
1.  **C**reate: ၵၢၼ်ထႅမ်လုၵ်ႈႁဵၼ်းမႂ်ႇ သႂ်ႇၼႂ်း Array။
2.  **R**ead: ၵၢၼ်ၼႄသဵၼ်ႈမၢႆလုၵ်ႈႁဵၼ်း (လူၺ်ႈ Loop)။
3.  **U**pdate: ၵၢၼ်မႄးၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ `classroom[i].marks = 95;`)။
4.  **D**elete: ၵၢၼ်ထွၼ်ၶေႃႈမုၼ်းဢွၵ်ႇ (လူၺ်ႈၵၢၼ်ယဵပ်ႇ Index)။

---

## 🏗️ Logic for Applications
ၼႆႉပဵၼ် "ပိုၼ်ႉထၢၼ်" ဢၼ်ၵႅၼ်ႇၶႅင်သုတ်း တွၼ်ႈတႃႇ **TMK Student Manager** ၶႃႈယဝ်ႉ။
* ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ `struct Student tmk_students[100];` တႃႇၵဵပ်းၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်းတင်းႁွင်ႉ။
* ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ **Nested Struct** တႃႇၵဵပ်း "သဵၼ်ႈမၢႆမၢႆၶႅတ်း" (Grade Sheet) ႁူမ်ႈတင်း "ၶေႃႈမုၼ်းသုၼ်ႇတူဝ်" (Profile) ဝႆႉၼႂ်းတီႈလဵဝ်ၵၼ်ၶႃႈ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1. တႅမ်ႈ `struct Address` (City, Township) သေ ဢဝ်မၼ်းၵႂႃႇသႂ်ႇၼႂ်း `struct Student`။ ယဝ်ႉၸၢမ်းပၼ်ၶေႃႈမုၼ်းသေ `printf` ဢွၵ်ႇမႃးတူၺ်းၶႃႈ။
2. တႅမ်ႈ Code ဢၼ်ႁပ်ႉဢဝ်ၶေႃႈမုၼ်း "ၵုၼ်ႇၵႃႉ" (Product) 5 မဵဝ်း (ၸိုဝ်ႈ လႄႈ တူၼ်ႈၵႃႉ) သႂ်ႇၼႂ်း Array of Structs သေ ၼႄဢွၵ်ႇမႃးၶိုၼ်းတင်းသဵင်ႈ။
3. သင်ႁဝ်းမီး `classroom[5].name[0]` ၼႆ မၼ်းပွင်ႇဝႃႈသင်ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: တူဝ်လိၵ်ႈတူဝ်ထီႉ 1 ၶွင်ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း ၵေႃႉထီႉ 6 ၼၼ်ႉၶႃႈဢေႃႈ)။

---