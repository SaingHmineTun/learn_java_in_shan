## Lesson 32: Introduction to Structs: Heterogeneous Data
ယေႃးၶႃႈ! တွၼ်ႈၵၼ် 32 ၼႆႉ တေပဵၼ်လွင်ႈ **"Structs" (Structures)** ၶႃႈယဝ်ႉ။ သင်ဝႃႈ Array ပဵၼ်ၵၢၼ်ၵဵပ်းၶေႃႈမုၼ်း "မဵဝ်းလဵဝ်ၵၼ်" (Homogeneous) ၼႆ၊ `struct` သမ်ႉပဵၼ်ၵၢၼ်ၵဵပ်းၶေႃႈမုၼ်း "လၢႆလၢႆမဵဝ်း" (Heterogeneous) မႃးဝႆႉၼႂ်းၸိုဝ်ႈလဵဝ်ၵၼ်ၶႃႈဢေႃႈ။

---

## Lesson 32: Introduction to Structs: Heterogeneous Data

### 1. Struct ၼႆႉ ပဵၼ်သင်?
**Struct** ပဵၼ် Data Type ဢၼ်ႁဝ်း "သၢင်ႈၶိုၼ်းႁင်းၵူၺ်း" (User-defined) တွၼ်ႈတႃႇၵဵပ်းၶေႃႈမုၼ်းဢၼ်ၵပ်းၵၢႆႇၵၼ်။
* **Array:** ၵဵပ်း `int` 10 တူဝ်။
* **Struct:** ၵဵပ်း `char` (ၸိုဝ်ႈ) + `int` (ဢႃႇယု) + `float` (မၢႆၶႅတ်း) ႁူမ်ႈၵၼ် ဝႆႉၼႂ်း "ၵွၵ်း" လဵဝ်ၵၼ်ၶႃႈ။



### 2. ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ (Declaration)
ႁဝ်းတေလႆႈသၢင်ႈ "ပိူင်" (Template) မၼ်းဝႆႉဢွၼ်တၢင်း ၽၢႆႇၼွၵ်ႈ `main()` ၶႃႈ။

```c
struct Student {
    char name[50];
    int roll_no;
    float marks;
};
```

### 3. ၵၢၼ်သၢင်ႈ Variable លႄႈ ၵၢၼ်ပၼ်ၶေႃႈမုၼ်း
မိူဝ်ႈႁဝ်းသၢင်ႈ Variable တူဝ်ၼိုင်ႈ ၼႂ်း `struct` ၼၼ်ႉ ႁဝ်းႁွင်ႉမၼ်းဝႃႈ **Object** ဢမ်ႇၼၼ် **Instance** ၶႃႈ။

```c
struct Student s1 = {"Sai Mao", 101, 85.5};

// ဢမ်ႇၼၼ် ပၼ်ၼိုင်ႈဢၼ်ယဝ်ႉၼိုင်ႈဢၼ်
s1.roll_no = 102;
strcpy(s1.name, "Sai Tun");
```

### 4. The Dot Operator (`.`)
ႁဝ်းၸႂ်ႉ **"မၢႆၸုၵ်း" (`.`)** တွၼ်ႈတႃႇၶဝ်ႈၸူး (Access) ၶေႃႈမုၼ်းၼႂ်း Struct ၼၼ်ႉၶႃႈဢေႃႈ။
* `s1.name` : ၶဝ်ႈၸူးၸိုဝ်ႈ။
* `s1.marks` : ၶဝ်ႈၸူးမၢႆၶႅတ်း။



### 5. Memory Architecture ၶွင် Struct
ၼႂ်း Memory ၼၼ်ႉ `struct` တေၵဵပ်းၶေႃႈမုၼ်းသိုပ်ႇၵၼ်ၵႂႃႇ (Contiguous)။ သႅၼ်း (Size) တင်းသဵင်ႈၶွင် Struct တေပဵၼ် ႁူဝ်ၼပ်ႉ Bytes ၶွင် Variable တင်းသဵင်ႈ မႃးႁူမ်ႈၵၼ် (လႄႈ ပႃးလွင်ႈ Padding ဢိတ်းဢီတ်း) ၶႃႈဢေႃႈ။

---

## 🏗️ Logic for Applications
ၼႆႉပဵၼ် "မၢႆၸႂ်" ၶွင် **TMK Student Manager** ၸဝ်ႈၵဝ်ႇၶႃႈယဝ်ႉ!
1. **Student Profile:** တႅၼ်းၵၢၼ်ဢၼ်တေၸႂ်ႉ Array လၢႆလၢႆဢၼ် (ၸိုဝ်ႈ Array ၼိုင်ႈဢၼ်၊ မၢႆ Array ၼိုင်ႈဢၼ်)၊ ႁဝ်းၸႂ်ႉ `struct Student` တူဝ်လဵဝ်ၵူၺ်း ၵုမ်းၵမ်ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်းၵေႃႉၼၼ်ႉ တူဝ်ႈတူဝ်ႈၶႃႈ။
2. **Database System:** ၼႂ်း Software တူဝ်တေႉ၊ ၶေႃႈမုၼ်းၵူႈယၢင်ႇ (User, Product, Order) လႆႈထုၵ်ႇၸတ်းၵၢၼ်လူၺ်ႈ **Structs** တႃႇသေႇၶႃႈ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1. တႅမ်ႈ `struct Book` ဢၼ်မီး `title` (string), `author` (string), လႄႈ `price` (float)။ ယဝ်ႉသၢင်ႈ Variable တူဝ်ၼိုင်ႈသေ ၼႄၶေႃႈမုၼ်းမၼ်းဢွၵ်ႇမႃး။
2. ၸၢမ်းတႅမ်ႈ Code ႁပ်ႉဢဝ်ၶေႃႈမုၼ်း "လုၵ်ႈႁဵၼ်း" တီႈ User (လူၺ်ႈၸႂ်ႉ `scanf` သေၵဵပ်းသႂ်ႇၼႂ်း Struct)။
3. သင်ၸဝ်ႈၵဝ်ႇမီး `struct Person { char c; int i; };` ၼႆ၊ `sizeof(struct Person)` တေလႆႈလၢႆ Bytes ၶႃႈၼႄႇ? (ၸၢမ်းတႅမ်ႈ Code ၵူတ်ႇထတ်းတူၺ်းၶႃႈ)။

---

တွၼ်ႈၵၼ် 32 ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ။ တေၵႂႃႇၸူး **Lesson 33: Nested Structs & Arrays of Structs: Database Basics** ဢၼ်တေသွၼ်လွင်ႈၵၢၼ်ၵဵပ်းၶေႃႈမုၼ်း လုၵ်ႈႁဵၼ်း 100 ၵေႃႉ ၸွမ်းၵၼ် ၼၼ်ႉၶႃႈႁိုဝ်?
### 1. Struct ၼႆႉ ပဵၼ်သင်?
**Struct** ပဵၼ် Data Type ဢၼ်ႁဝ်း "သၢင်ႈၶိုၼ်းႁင်းၵူၺ်း" (User-defined) တွၼ်ႈတႃႇၵဵပ်းၶေႃႈမုၼ်းဢၼ်ၵပ်းၵၢႆႇၵၼ်။
* **Array:** ၵဵပ်း `int` 10 တူဝ်။
* **Struct:** ၵဵပ်း `char` (ၸိုဝ်ႈ) + `int` (ဢႃႇယု) + `float` (မၢႆၶႅတ်း) ႁူမ်ႈၵၼ် ဝႆႉၼႂ်း "ၵွၵ်း" လဵဝ်ၵၼ်ၶႃႈ။



### 2. ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ (Declaration)
ႁဝ်းတေလႆႈသၢင်ႈ "ပိူင်" (Template) မၼ်းဝႆႉဢွၼ်တၢင်း ၽၢႆႇၼွၵ်ႈ `main()` ၶႃႈ။

```c
struct Student {
    char name[50];
    int roll_no;
    float marks;
};
```

### 3. ၵၢၼ်သၢင်ႈ Variable លႄႈ ၵၢၼ်ပၼ်ၶေႃႈမုၼ်း
မိူဝ်ႈႁဝ်းသၢင်ႈ Variable တူဝ်ၼိုင်ႈ ၼႂ်း `struct` ၼၼ်ႉ ႁဝ်းႁွင်ႉမၼ်းဝႃႈ **Object** ဢမ်ႇၼၼ် **Instance** ၶႃႈ။

```c
struct Student s1 = {"Sai Mao", 101, 85.5};

// ဢမ်ႇၼၼ် ပၼ်ၼိုင်ႈဢၼ်ယဝ်ႉၼိုင်ႈဢၼ်
s1.roll_no = 102;
strcpy(s1.name, "Sai Tun");
```

### 4. The Dot Operator (`.`)
ႁဝ်းၸႂ်ႉ **"မၢႆၸုၵ်း" (`.`)** တွၼ်ႈတႃႇၶဝ်ႈၸူး (Access) ၶေႃႈမုၼ်းၼႂ်း Struct ၼၼ်ႉၶႃႈဢေႃႈ။
* `s1.name` : ၶဝ်ႈၸူးၸိုဝ်ႈ။
* `s1.marks` : ၶဝ်ႈၸူးမၢႆၶႅတ်း။



### 5. Memory Architecture ၶွင် Struct
ၼႂ်း Memory ၼၼ်ႉ `struct` တေၵဵပ်းၶေႃႈမုၼ်းသိုပ်ႇၵၼ်ၵႂႃႇ (Contiguous)။ သႅၼ်း (Size) တင်းသဵင်ႈၶွင် Struct တေပဵၼ် ႁူဝ်ၼပ်ႉ Bytes ၶွင် Variable တင်းသဵင်ႈ မႃးႁူမ်ႈၵၼ် (လႄႈ ပႃးလွင်ႈ Padding ဢိတ်းဢီတ်း) ၶႃႈဢေႃႈ။

---

## 🏗️ Logic for Applications
ၼႆႉပဵၼ် "မၢႆၸႂ်" ၶွင် **TMK Student Manager** ၸဝ်ႈၵဝ်ႇၶႃႈယဝ်ႉ!
1. **Student Profile:** တႅၼ်းၵၢၼ်ဢၼ်တေၸႂ်ႉ Array လၢႆလၢႆဢၼ် (ၸိုဝ်ႈ Array ၼိုင်ႈဢၼ်၊ မၢႆ Array ၼိုင်ႈဢၼ်)၊ ႁဝ်းၸႂ်ႉ `struct Student` တူဝ်လဵဝ်ၵူၺ်း ၵုမ်းၵမ်ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်းၵေႃႉၼၼ်ႉ တူဝ်ႈတူဝ်ႈၶႃႈ။
2. **Database System:** ၼႂ်း Software တူဝ်တေႉ၊ ၶေႃႈမုၼ်းၵူႈယၢင်ႇ (User, Product, Order) လႆႈထုၵ်ႇၸတ်းၵၢၼ်လူၺ်ႈ **Structs** တႃႇသေႇၶႃႈ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1. တႅမ်ႈ `struct Book` ဢၼ်မီး `title` (string), `author` (string), လႄႈ `price` (float)။ ယဝ်ႉသၢင်ႈ Variable တူဝ်ၼိုင်ႈသေ ၼႄၶေႃႈမုၼ်းမၼ်းဢွၵ်ႇမႃး။
2. ၸၢမ်းတႅမ်ႈ Code ႁပ်ႉဢဝ်ၶေႃႈမုၼ်း "လုၵ်ႈႁဵၼ်း" တီႈ User (လူၺ်ႈၸႂ်ႉ `scanf` သေၵဵပ်းသႂ်ႇၼႂ်း Struct)။
3. သင်ၸဝ်ႈၵဝ်ႇမီး `struct Person { char c; int i; };` ၼႆ၊ `sizeof(struct Person)` တေလႆႈလၢႆ Bytes ၶႃႈၼႄႇ? (ၸၢမ်းတႅမ်ႈ Code ၵူတ်ႇထတ်းတူၺ်းၶႃႈ)။

---