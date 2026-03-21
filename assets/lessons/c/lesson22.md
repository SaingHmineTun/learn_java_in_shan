## Lesson 22: Switch Case: The Multi-way Branch

### 1. Switch Case ၼႆႉ ပဵၼ်သင်?
`Switch` ၼႆႉ ပဵၼ်ၵၢၼ်ဢဝ် Variable တူဝ်ၼိုင်ႈ မႃးတႅၵ်ႈၼိူင်းတင်း **Case** (လွင်ႈတၢင်း) လၢႆလၢႆမဵဝ်း။ မၼ်းၸႂ်ႉလႆႈတင်း **`int`** လႄႈ **`char`** ၵူၺ်းၶႃႈ (ၸႂ်ႉတင်း `float` ဢမ်ႇလႆႈ)။



### 2. ပိူင်တႅမ်ႈ (Syntax)
```c
switch (variable) {
    case value1:
        // Code ႁဵတ်းၵၢၼ်တီႈၼႆႈ
        break;
    case value2:
        // Code ႁဵတ်းၵၢၼ်တီႈၼႆႈ
        break;
    default:
        // သင်ဢမ်ႇမၢၼ်ႇတင်း Case လႂ်ၵေႃႈယဝ်ႉ
}
```

### 3. တူဝ်မၢႆလမ်ႇလွင်ႈ (Key Keywords)
* **`case`**: ပဵၼ်ၵၢၼ်မၢႆဝႆႉ တူဝ်ၼပ်ႉ ဢမ်ႇၼၼ် တူဝ်လိၵ်ႈ ဢၼ်ႁဝ်းၶႂ်ႈတႅၵ်ႈ။
* **`break`**: ၼႆႉလမ်ႇလွင်ႈတေႉတေႉ! မၼ်းသင်ႇႁႂ်ႈပူဝ်ႇၵရႅမ်ႇ "ထွၼ်တူဝ်" ဢွၵ်ႇတီႈ Switch ၵမ်းလဵဝ်။ သင်ဢမ်ႇသႂ်ႇ `break` ၼႆ မၼ်းတေလႆလူင်းၵႂႃႇႁဵတ်းၵၢၼ်ၼႂ်း Case တၢင်ႇၸိူဝ်း တေႃႇပေႃးသုတ်းၶႃႈဢေႃႈ (ႁွင်ႉဝႃႈ Fall-through)။
* **`default`**: မိူၼ်ၼင်ႇ `else` ၼၼ်ႉၶႃႈ။ သင်ဝႃႈ Variable ႁဝ်း ဢမ်ႇတူႇတင်း Case လႂ်ၵေႃႈယဝ်ႉ မၼ်းတေမႃးႁဵတ်းၵၢၼ်တီႈၼႆႈၶႃႈ။

### 4. တူဝ်ယၢင်ႇ Code: Menu System
ၼႆႉပဵၼ်လၢႆးတႅမ်ႈ ဢၼ်ၸဝ်ႈၵဝ်ႇတေလႆႈၸႂ်ႉၼႂ်း Software ၸဝ်ႈၵဝ်ႇၶႃႈ:

```c
int choice;
printf("1. Add Student\n2. View List\n3. Exit\n");
printf("Enter choice: ");
scanf("%d", &choice);

switch (choice) {
    case 1:
        printf("Adding a new student...");
        break;
    case 2:
        printf("Showing student list...");
        break;
    case 3:
        printf("Exiting program...");
        break;
    default:
        printf("Invalid choice! Please try again.");
}
```



### 5. Switch vs If-Else: ၸႂ်ႉဢၼ်လႂ်လီ?
* ၸႂ်ႉ **Switch** မိူဝ်ႈမီးၵၢၼ်တႅၵ်ႈၼိူင်း Variable တူဝ်လဵဝ် တင်းတူဝ်ၼပ်ႉတႅတ်ႈတေႃး (မိူၼ်ၼင်ႇ 1, 2, 3)။ မၼ်းၽႂ်းလိူဝ် လႄႈ လူငၢႆႈလိူဝ်ၶႃႈ။
* ၸႂ်ႉ **If-Else** မိူဝ်ႈမီးၵၢၼ်တႅၵ်ႈၼိူင်း "ၶွပ်ႇပိူင်" (Range) (မိူၼ်ၼင်ႇ `marks > 40 && marks < 60`) ဢမ်ႇၼၼ် တႅၵ်ႈၼိူင်းလၢႆလၢႆ Variable ၸွမ်းၵၼ်ၶႃႈ။

---

## 💡 ၶေႃႈၵႂၢမ်းတွၼ်းမၢႆ
ၼႂ်း **TMK Student Manager**၊ ၸဝ်ႈၵဝ်ႇတေလႆႈၸႂ်ႉ `Switch Case` တႃႇႁဵတ်း **Main Menu** ၶႃႈဢေႃႈ။ မၼ်းတေၸွႆႈႁႂ်ႈ Code ၸဝ်ႈၵဝ်ႇ သႅၼ်ႈသႂ် (Clean) သေ ၵၢၼ်ၸႂ်ႉ `if-else if-else if` ယၢဝ်းယၢဝ်းၼၼ်ႉၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1.  တႅမ်ႈ Code ၶိူင်ႈၼပ်ႉလၢႆးၵူၺ်ႉ (Simple Calculator)။ ႁပ်ႉဢဝ်တူဝ်ၼပ်ႉ 2 တူဝ် လႄႈ တူဝ်မၢႆ (`+`, `-`, `*`, `/`) သေၸႂ်ႉ **Switch Case** တႃႇၼပ်ႉဢၢၼ်ႇတွပ်ႇမၼ်း။ (ၸွႆႈတွပ်ႇ: ၸႂ်ႉ `switch(operator)`)။
2.  ၸၢမ်းထွၼ်ပႅတ်ႈ `break` တီႈ Case ၼိုင်ႈသေ Run တူၺ်း၊ တူၺ်းဝႃႈ တွပ်ႇမၼ်းဢွၵ်ႇမႃးၸိူင်ႉႁိူဝ်?
3.  ၵွပ်ႈသင် ႁဝ်းသမ်ႉဢဝ် `float` မႃးၸႂ်ႉၼႂ်း `switch` ဢမ်ႇလႆႈၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: ၵွပ်ႈတူဝ်ၼပ်ႉ float မၼ်းမီးလွင်ႈပႅၵ်ႇပိူင်ႈဢွၼ်ႇဢွၼ်ႇၼႂ်း Memory လႄႈ မၼ်းတႅၵ်ႈၼိူင်းတူႇၵၼ် (Exact match) လႆႈယၢပ်ႇၶႃႈ)။

---