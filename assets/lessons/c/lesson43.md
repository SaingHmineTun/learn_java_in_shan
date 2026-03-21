## Lesson 43: Pointers to Structs: The -> Arrow Operator

### 1. Pointer to Struct ၼႆႉ ပဵၼ်သင်?
မိူၼ်ၼင်ႇ `int *ptr` ၸี้ၵႂႃႇၸူးတူဝ်ၼပ်ႉၼၼ်ႉၶႃႈယဝ်ႉ၊ **Pointer to Struct** သမ်ႉပဵၼ် Pointer ဢၼ်ၵဵပ်း Address ၶွင် Variable ဢၼ်ပဵၼ် `struct` ၼၼ်ႉၶႃႈဢေႃႈ။



### 2. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ `->` (Arrow Operator)?
မိူဝ်ႈႁဝ်းမီး Struct Variable ယူဝ်းယူဝ်း ႁဝ်းၸႂ်ႉ **`.` (Dot)** တႃႇၶဝ်ႈၸူး Member မၼ်း။ ၵူၺ်းၵႃႈ သင်ႁဝ်းမီး **Pointer** ၼႆ ႁဝ်းတေလႆႈၸႂ်ႉ **`->` (Arrow)** ၶႃႈ။

* **လၢႆးတႅမ်ႈဢၼ်ယၢပ်ႇ:** `(*ptr).name` (လူဝ်ႇသႂ်ႇဝူင်းလဵပ်ႈ ၵွပ်ႈ `.` မီး Precedence သုင်သေ `*`)
* **လၢႆးတႅမ်ႈဢၼ်ငၢႆႈ:** **`ptr->name`** (ၼႆႉပဵၼ်တူဝ်မၢႆ Arrow ဢၼ်ႁဝ်းၸႂ်ႉတေႉၶႃႈ)



**တူဝ်ယၢင်ႇ:**
```c
struct Student {
    char name[20];
    int age;
};

int main() {
    struct Student s1 = {"Sai Mao", 25};
    struct Student *ptr = &s1;

    // ၵၢၼ်ၸႂ်ႉ Arrow Operator
    printf("Name: %s\n", ptr->name);
    printf("Age: %d\n", ptr->age);

    return 0;
}
```

### 3. ၵၢၼ်ၸႂ်ႉတင်း Dynamic Memory (`malloc`)
ၼႆႉပဵၼ်လၢႆးဢၼ် Professional ၶဝ်ၸႂ်ႉတေႉၶႃႈ။ ႁဝ်းၶေႃ Memory တႃႇ Struct တူဝ်ၼိုင်ႈသေ ၸတ်းၵၢၼ်မၼ်းလူၺ်ႈ Pointer ၶႃႈ။

```c
struct Student *s_ptr;
s_ptr = (struct Student*) malloc(sizeof(struct Student));

strcpy(s_ptr->name, "Nang Aye");
s_ptr->age = 22;

free(s_ptr); // ယႃႇလိုမ်း free ၼႃၶႃႈ!
```

### 4. ၵွပ်ႈသင်သမ်ႉလူဝ်ႇၸႂ်ႉ Arrow Operator?
1. **Efficiency:** မိူဝ်ႈသူင်ႇ Struct ၵႂႃႇၸူး Function (Call by Reference)၊ ႁဝ်းၸႂ်ႉ Pointer သေ `->` တႃႇမႄးၶေႃႈမုၼ်း တေၽႂ်းသေၵၢၼ် Copy ၶေႃႈမုၼ်းတင်းသဵင်ႈၶႃႈ။
2. **Linked Data Structures:** တွၼ်ႈတႃႇတႅမ်ႈ **Linked List** ဢမ်ႇၼၼ် **Trees**၊ ႁဝ်းတေလႆႈၸႂ်ႉ `->` တႃႇ "ၵွင်ႉ" (Link) ၸူး Node တၢင်ႇဢၼ်တႃႇသေႇၶႃႈဢေႃႈ။

---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager**၊ မိူဝ်ႈၸဝ်ႈၵဝ်ႇတႅမ်ႈ Function တွၼ်ႈတႃႇၼပ်ႉဢၢၼ်ႇ "မၢႆၶႅတ်း" (Grade) လုၵ်ႈႁဵၼ်းၼၼ်ႉ:
* ၸဝ်ႈၵဝ်ႇတေသူင်ႇ `Student *ptr` ၵႂႃႇ။
* ၼႂ်း Function ၼၼ်ႉ ၸဝ်ႈၵဝ်ႇတေၸႂ်ႉ **`ptr->marks`** တႃႇတူၺ်းၶေႃႈမုၼ်း။
* ၼႆႉၸွႆႈႁႂ်ႈ Software ၸဝ်ႈၵဝ်ႇႁဵတ်းၵၢၼ်လႆႈၽႂ်း ၵွပ်ႈမၼ်းဢမ်ႇလႆႈ Copy ၸိုဝ်ႈ လႄႈ ၶေႃႈမုၼ်းသုၼ်ႇတူဝ်လုၵ်ႈႁဵၼ်း ၵႂႃႇၵျွၵ်းၵႂႃႇမႃးၼႂ်း RAM ၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1. တႅမ်ႈ `struct Product` ဢၼ်မီး `name` လႄႈ `price`။ ယဝ်ႉသၢင်ႈ Pointer သေပၼ် Value လူၺ်ႈၸႂ်ႉ `->`။
2. တႅမ်ႈ Function ဢၼ်ႁပ်ႉ `struct Student *s` သေ မႄးလႅၵ်ႈလၢႆႈ "ဢႃႇယု" (Age) မၼ်း။
3. သင်ႁဝ်းတႅမ်ႈ `ptr.name` တႅၼ်းၵၢၼ် `ptr->name` ၼႆ Compiler တေၼႄ Error ဝႃႈၸိူင်ႉႁိုဝ်ၶႃႈၼႄႇ? (ၸၢမ်းတႅမ်ႈ Code ၵူတ်ႇထတ်းတူၺ်းၶႃႈ)။

---