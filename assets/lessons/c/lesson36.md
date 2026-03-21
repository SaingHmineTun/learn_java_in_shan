## Lesson 36: Pointer Basics: The * Operator

### 1. Pointer ပဵၼ်သင်?
**Pointer** ပဵၼ် Variable တူဝ်ၼိုင်ႈ ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၵဵပ်း **Memory Address** ၶွင် Variable တၢင်ႇတူဝ်။ ႁဝ်းၸႂ်ႉမၼ်းတႃႇ "ၸี้" (Point) ၵႂႃႇၸူး ၶေႃႈမုၼ်းဢၼ်ႁဝ်းၶႂ်ႈလႆႈၼၼ်ႉၶႃႈဢေႃႈ။



### 2. ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ Pointer (Declaration)
ႁဝ်းၸႂ်ႉတူဝ်မၢႆ **`*`** (Asterisk) တီႈၼႃႈၸိုဝ်ႈ Variable တႃႇသင်ႇႁႂ်ႈ Compiler ႁူႉဝႃႈ ၼႆႉပဵၼ် Pointer ၶႃႈ။
**Syntax:** `data_type *pointer_name;`

```c
int *ptr;   // Pointer ဢၼ်တေၸี้ၵႂႃႇၸူး တူဝ်ၼပ်ႉတဵမ် (int)
char *p;    // Pointer ဢၼ်တေၸี้ၵႂႃႇၸူး တူဝ်လိၵ်ႈ (char)
```

### 3. ၵၢၼ်ပၼ် Address ၵႂႃႇၸူး Pointer
ႁဝ်းတေလႆႈဢဝ် Address ဢၼ်လႆႈမႃးတီႈ **`&`** (Lesson 35) ၼၼ်ႉ မႃးၵဵပ်းဝႆႉၼႂ်း Pointer ၶႃႈ။

```c
int age = 25;
int *ptr;

ptr = &age; // ဢဝ် Address ၶွင် age ၵႂႃႇသႂ်ႇၼႂ်း ptr
```

### 4. Dereferencing: The * Operator (Value at Address)
တူဝ်မၢႆ **`*`** ၼႆႉ မီးၵၢၼ်ၸႂ်ႉ 2 မဵဝ်းၶႃႈ:
1. ၸႂ်ႉတႃႇ **ပိုၼ်ၽၢဝ်ႇ** Pointer (မိူၼ်ၼင်ႇ `int *ptr`).
2. ၸႂ်ႉတႃႇ **ၶဝ်ႈၸူး Value** ဢၼ်ယူႇၼႂ်း Address ၼၼ်ႉ (ႁွင်ႉဝႃႈ **Dereferencing**).

```c
printf("Address in ptr: %p\n", ptr);  // ၼႄမၢႆလိၵ်ႈ (Address)
printf("Value at ptr: %d\n", *ptr);    // ၼႄမၢႆၶေႃႈမုၼ်း (25)
```



### 5. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ?
1. **Efficiency:** တႅၼ်းၵၢၼ်ဢၼ်တေသူင်ႇၶေႃႈမုၼ်းဢၼ်ယႂ်ႇယႂ်ႇ (မိူၼ်ၼင်ႇ Array) ၵႂႃႇၸူး Function၊ ႁဝ်းသူင်ႇၵူၺ်း "မၢႆလိၵ်ႈ Address" မၼ်းၵႂႃႇ ၼႆမၼ်းတေၽႂ်းလိူဝ်ၶႃႈ။
2. **Dynamic Memory:** ၸႂ်ႉတႃႇၶေႃ Memory တီႈ RAM မိူဝ်ႈ Runtime (Lesson 40)။
3. **Control:** ၸွႆႈႁႂ်ႈႁဝ်းၵုမ်းၵမ် Hardware လႄႈ Memory လႆႈတႅတ်ႈတေႃး။

---

## 🏗️ Logic for Expert Programming
ႁႂ်ႈဝူၼ်ႉတူၺ်းဝႃႈ Pointer ပဵၼ် "ၵူၼ်းသူင်ႇလိၵ်ႈ" ၶႃႈ။
* `ptr` ပဵၼ် **မၢႆလိၵ်ႈႁိူၼ်း** ဢၼ်တႅမ်ႈဝႆႉၼိူဝ်သွင်လိၵ်ႈ။
* `*ptr` သမ်ႉပဵၼ် **ၶူဝ်းၶွင်** ဢၼ်ယူႇၼႂ်းႁိူၼ်းလင်ၼၼ်ႉၶႃႈဢေႃႈ။
  သင်ၸဝ်ႈၵဝ်ႇလႅၵ်ႈလၢႆႈ `*ptr = 30;` ၼႆ၊ Variable `age` တူဝ်တေႉၵေႃႈ တေလႅၵ်ႈလၢႆႈပဵၼ် 30 ၵႂႃႇၸွမ်းၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. တႅမ်ႈ Code ဢၼ်ပိုၼ်ၽၢဝ်ႇ `int x = 10;` လႄႈ Pointer `ptr`။ ၸၢမ်းလႅၵ်ႈလၢႆႈမၢႆ `x` လူၺ်ႈၵၢၼ်ၸႂ်ႉ `*ptr = 20;` သေ `printf` တူၺ်း `x` ၶႃႈ။
2. ၸၢမ်းတူၺ်း `sizeof(ptr)` ဝႃႈမၼ်းမီးလၢႆ Bytes? (ၸွႆႈတွပ်ႇ: ပဵၼ် 4 ႁိုဝ် 8 Bytes ၸွမ်းၼင်ႇ ၶွမ်ႇပိဝ်ႇတႃႇ 32/64-bit ၶႃႈ)။
3. သင်ႁဝ်းပိုၼ်ၽၢဝ်ႇ `int *ptr;` သေ ဢမ်ႇပၼ် Address မၼ်းသေဢိတ်း (Uninitialized Pointer)၊ ယဝ်ႉႁဝ်းၸၢမ်းတႅမ်ႈ `*ptr = 100;` ၼႆ တေပဵၼ်သင်ၶႃႈၼႄႇ? (သတိ: ၼႆႉႁွင်ႉဝႃႈ **Wild Pointer**၊ မၼ်းၸၢင်ႈႁဵတ်းႁႂ်ႈပူဝ်ႇၵရႅမ်ႇ Crash ၶႃႈ!)။

---