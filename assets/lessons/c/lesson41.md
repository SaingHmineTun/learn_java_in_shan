## Lesson 41: Void Pointers & Pointers to Pointers

### 1. Void Pointers (`void *`)
**Void Pointer** ၼႆႉ ႁဝ်းႁွင်ႉမၼ်းဝႃႈ "Generic Pointer" ၶႃႈ။ မၼ်းပဵၼ် Pointer ဢၼ် **"ဢမ်ႇမီး Data Type"** တႅတ်ႈတေႃး၊ ၵွပ်ႈၼၼ် မၼ်းၸၢင်ႈၵဵပ်း Address ၶွင် Variable **ၵူႈမဵဝ်း** လႆႈတင်းသဵင်ႈ (int, float, char, struct) ၶႃႈယဝ်ႉ။

* **မၢႆမီႈ:** ႁဝ်းဢဝ် `void *` မႃး **Dereference (`*ptr`)** ၵမ်းလဵဝ်ဢမ်ႇလႆႈ၊ ႁဝ်းတေလႆႈ **Typecast** မၼ်းပဵၼ် Type ဢၼ်ႁဝ်းၶႂ်ႈလႆႈၼၼ်ႉ ဢွၼ်တၢင်းၶႃႈ။



**တူဝ်ယၢင်ႇ:**
```c
int n = 10;
char c = 'A';
void *ptr;

ptr = &n; // ၵဵပ်း Address int
printf("%d\n", *(int*)ptr); // Typecast ပဵၼ် int* ယဝ်ႉၸင်ႇ Dereference

ptr = &c; // ၵဵပ်း Address char
printf("%c\n", *(char*)ptr); // Typecast ပဵၼ် char* ```

### 2. Pointers to Pointers (Double Pointers)
ၼႆႉပဵၼ် Variable ဢၼ်ၵဵပ်း **"Address ၶွင် Pointer"** ထႅင်ႈတူဝ်ၼိုင်ႈၶႃႈ။ ႁဝ်းၸႂ်ႉတူဝ်မၢႆ **`**`** သွင်ဢၼ်တွၼ်ႈတႃႇပိုၼ်ၽၢဝ်ႇၶႃႈ။

* `ptr` : ၵဵပ်း Address ၶွင် Variable။
* `pptr` : ၵဵပ်း Address ၶွင် `ptr`။



**တူဝ်ယၢင်ႇ:**
```c
int x = 5;
int *ptr = &x;    // Pointer ၸၼ်ႉ 1
int **pptr = &ptr; // Pointer ၸၼ်ႉ 2 (Double Pointer)

printf("Value of x: %d\n", **pptr); // Dereference 2 ၵမ်း တႃႇလႆႈ Value x
```

### 3. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ?
1. **Void Pointers:** ၸႂ်ႉၼမ်ၼႂ်း Function ဢၼ်လူဝ်ႇႁပ်ႉ Parameter လၢႆလၢႆ Type (မိူၼ်ၼင်ႇ `malloc` ဢၼ် `return` ပၼ် `void*` တွၼ်ႈတႃႇႁႂ်ႈႁဝ်းလႅၵ်ႈပဵၼ် Type သင်ၵေႃႈလႆႈၼၼ်ႉၶႃႈ)။
2. **Double Pointers:** ၸႂ်ႉတွၼ်ႈတႃႇ **မႄးလႅၵ်ႈလၢႆႈ Address ၶွင် Pointer** ၼႂ်း Function (မိူၼ်ၼင်ႇ ၵၢၼ်ၸတ်းၵၢၼ် Linked List ဢမ်ႇၼၼ် 2D Dynamic Arrays) ၶႃႈဢေႃႈ။

---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager**၊ မိူဝ်ႈၸဝ်ႈၵဝ်ႇတႅမ်ႈ Function တႃႇ "ၸႅၵ်ႇသဵၼ်ႈမၢႆ" (Sorting)၊ ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ **Void Pointer** တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ Function ၼၼ်ႉ ၸၢင်ႈၸႅၵ်ႇလႆႈတင်း "ၸိုဝ်ႈ" (String) လႄႈ "မၢႆၶႅတ်း" (Float) လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈ Code မႂ်ႇလၢႆလၢႆၵမ်းၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1. တႅမ်ႈ Code ဢၼ်ၸႂ်ႉ `void *ptr` တႃႇၵဵပ်း `float` သေ ၼႄ Value မၼ်းဢွၵ်ႇမႃး လူၺ်ႈၵၢၼ် Typecasting။
2. တႅမ်ႈ Code ဢၼ်ၸႂ်ႉ Double Pointer (`**pptr`) တႃႇလႅၵ်ႈလၢႆႈ Value ၶွင် Variable `int` တူဝ်ၼိုင်ႈ။
3. သင်ႁဝ်းမီး `int ***ppptr;` ၼႆ မၼ်းပွင်ႇဝႃႈသင်ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: ပဵၼ် Triple Pointer ဢၼ်ၸี้ၵႂႃႇၸူး Double Pointer ၶႃႈ၊ ၼႆႉၸႂ်ႉၼမ်ၼႂ်း 3D Dynamic Arrays ၶႃႈဢေႃႈ)။

---