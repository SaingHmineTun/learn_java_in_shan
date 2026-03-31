# Lesson 25: The Switch Statement: Efficient Multi-way Branching

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မိူဝ်ႈႁဝ်းမီးတူဝ်ၼပ်ႉ (Integer) ဢမ်ႇၼၼ် တူဝ်လိၵ်ႈ (Character) လႄႈ ႁဝ်းၶႂ်ႈလိူၵ်ႈႁဵတ်းၵၢၼ် လၢႆလၢႆမဵဝ်းၼၼ်ႉ၊ 
ၵၢၼ်ၸႂ်ႉ `if-else if` ယၢဝ်းယၢဝ်း မၼ်းၸၢင်ႈႁဵတ်းႁႂ်ႈၶူတ်ႉႁဝ်း လူယၢပ်ႇၶႃႈ။ 
**`switch`** statement ၼႆႉ မႃးၸွႆႈႁႂ်ႈၶူတ်ႉႁဝ်း ၸႅင်ႈလႅင်း (Clean) လႄႈ ဝႆးလိူဝ်ၵဝ်ႇၶႃႈယဝ်ႉ။

---

### 1. ပိူင်သၢင်ႈ (Syntax) ၶွင် `switch`
`switch` တေတူၺ်းၵႃႈၶၼ် Variable ဢၼ်ၼိုင်ႈ သေယဝ်ႉ "ၵျွၵ်ႉ" (Jump) ၵႂႃႇၸူး **`case`** ဢၼ်မႅၼ်ႈၸွမ်းၼၼ်ႉၵမ်းလဵဝ်ၶႃႈ။

```cpp
switch (variable) {
    case value1:
        // ႁဵတ်းၵၢၼ်တီႈၼႆႈ
        break;
    case value2:
        // ႁဵတ်းၵၢၼ်တီႈၼႆႈ
        break;
    default:
        // ႁဵတ်းၵၢၼ် ပေႃးဢမ်ႇမႅၼ်ႈတင်း Case လႂ်
}
```



---

### 2. ၶေႃႈၵႂၢမ်းသင်ႇလၢၵ်ႇလၢႆး (Keywords)
* **`switch`**: တီႈတႄႇၵူတ်ႇထတ်း Variable (တေလႆႈပဵၼ် `int` ဢမ်ႇၼၼ် `char`)။
* **`case`**: ပဵၼ်တူဝ်လိူၵ်ႈ ဢၼ်ႁဝ်းတေၼိူင်းတူၺ်း။
* **`break`**: **လွင်ႈယႂ်ႇတႄႉတႄႉ!** မၼ်းၸႂ်ႉတႃႇ "ဢွၵ်ႇ" (Exit) ၵႂႃႇၽၢႆႇၼွၵ်ႈ Switch။ ပေႃးဢမ်ႇသႂ်ႇ `break`၊ မၼ်းတေႁဵတ်းၵၢၼ် Case ၽၢႆႇတႂ်ႈမၼ်းၵႂႃႇ တင်းမူတ်း (Fall-through) ၶႃႈ။
* **`default`**: မိူၼ်ၼင်ႇ `else` ၼႂ်း if-else ၶႃႈ၊ မၼ်းတေႁဵတ်းၵၢၼ် ပေႃး Case တၢင်ႇဢၼ် ဢမ်ႇမႅၼ်ႈသေဢၼ်ယဝ်ႉ။

---

### 3. တူဝ်ယၢင်ႇၶူတ်ႉ (Example Code)

```cpp
#include <iostream>

int main() {
    int day = 3;

    switch (day) {
        case 1:
            std::cout << "Monday";
            break;
        case 2:
            std::cout << "Tuesday";
            break;
        case 3:
            std::cout << "Wednesday"; // တေႁဵတ်းၵၢၼ်တီႈၼႆႈ
            break;
        default:
            std::cout << "Invalid Day";
    }

    return 0;
}
```

---

### 4. Switch vs If-Else
| Feature | If-Else Ladder                          | Switch Statement                      |
| :--- |:----------------------------------------|:--------------------------------------|
| **ၵၢၼ်ၼိူင်း** | ၸၢမ်းလႆႈတင်း Range ( <, > )             | ၸၢမ်းလႆႈၵႃႈၶၼ် ဢၼ်မီးပိူင်ႈတၢႆ ( == ) |
| **Data Type** | ၸႂ်ႉလႆႈၵူႈမဵဝ်း (float, string...)      | ၸႂ်ႉလႆႈၸွမ်း `int` လႄႈ `char` ၵူၺ်း   |
| **လွင်ႈဝႆး** | ပေႃးမီး Case တင်းၼမ် တေထိူင်းဢိတ်းဢိတ်း | ဝႆးလိူဝ် (ၸႂ်ႉ Jump Table ၼႂ်း CPU)   |

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* ၸႂ်ႉ **`switch`** မိူဝ်ႈမီးတူဝ်လိူၵ်ႈ တင်းၼမ် ဢၼ်ပဵၼ်ၵႃႈၶၼ် ဢၼ်မီးပိူင်ႈတၢႆ (int, char)။
* ယႃႇလိုမ်းသႂ်ႇ **`break`** တီႈသုတ်း Case ၵူႈဢၼ်။
* **`default`** ၸွႆႈႁႄႉၵင်ႈ လွင်ႈၶေႃႈမုၼ်းၽိတ်း (Unexpected values)။

---