# Lesson 35: Multidimensional Arrays: Working with Tables and Grids

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မၢင်ပွၵ်ႈၼႆ ႁဝ်းဢမ်ႇၸၢင်ႈသိမ်းၶေႃႈမုၼ်း ၼႂ်းထႅဝ်လဵဝ် (1D Array) လႆႈၵူႈမဵဝ်းၶႃႈ။ 
တူဝ်ယၢင်ႇ - "ပပ်ႉၼပ်ႉသွၼ်ႇ" (Table)၊ "ၶႅၼ်ႇလႅၼ်ႇတႃႇ" (Calendar)၊ ဢမ်ႇၼၼ် "ႁၢင်ႈၽႅၼ်ႇလိၼ်" (Map) ၼႂ်းၵဵမ်း။ 
တႃႇတေသိမ်းၶေႃႈမုၼ်းၸိူဝ်းၼႆႉ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ **2D Array** ဢၼ်မိူၼ်ၼင်ႇ Grid ၼၼ်ႉၶႃႈယဝ်ႉ။

---

### 1. ပိူင်သၢင်ႈ 2D Array (Structure)
2D Array ၼႆႉ မၼ်းမိူၼ်ၼင်ႇ **"Array ဢၼ်မီး Array သွၼ်ႉဝႆႉၼႂ်းမၼ်း"** ၶႃႈ။ ႁဝ်းတေလႆႈလၢတ်ႈၼေ Size ၶွင်မၼ်း 2 ဢၼ်:
1.  **Rows**: ထႅဝ်ၼွၼ်း
2.  **Columns**: ထႅဝ်တင်ႈ

* **Syntax**: `dataType arrayName[rows][columns];`



---

### 2. ၵၢၼ်ပၼ်ၵႃႈၶၼ် (Initialization)
ႁဝ်းၸၢင်ႈပၼ်ၵႃႈၶၼ် ၸႅၵ်ႇပဵၼ်ၸုမ်းပဵၼ်ၸုမ်း လူၺ်ႈၸႂ်ႉ `{ }` သွၼ်ႉၵၼ်ၶႃႈ။

```cpp
// သၢင်ႈတาราง 2 ထႅဝ်ၼေႃး, 3 ထႅဝ်တင်ႈ (2x3 Grid)
int matrix[2][3] = {
    {1, 2, 3}, // Row 0
    {4, 5, 6}  // Row 1
};
```

---

### 3. ၵၢၼ်ၵႂႃႇဢဝ်ၶေႃႈမုၼ်း (Accessing Elements)
တႃႇတေၵႂႃႇဢဝ်ၶေႃႈမုၼ်းတူဝ်ၼိုင်ႈ၊ ႁဝ်းတေလႆႈလၢတ်ႈၼေ **Index** တင်းသွင်ၽၢႆႇၶႃႈ။
* **Syntax**: `arrayName[rowIndex][columnIndex]`

```cpp
std::cout << matrix[0][1]; // တေၼေ 2 (Row 0, Column 1)
std::cout << matrix[1][2]; // တေၼေ 6 (Row 1, Column 2)
```

---

### 4. တူဝ်ယၢင်ႇၶူတ်ႉ: ၵၢၼ်ၸႂ်ႉ Nested Loop လူၶေႃႈမုၼ်း
တႃႇတေလူၶေႃႈမုၼ်း ၼႂ်း 2D Array တင်းမူတ်း၊ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ **Nested Loop** ဢၼ်ႁဝ်းႁဵၼ်းမႃးၼႂ်း **Lesson 29** ၼၼ်ႉၶႃႈ။

```cpp
#include <iostream>

int main() {
    int grid[2][2] = { {10, 20}, {30, 40} };

    for (int i = 0; i < 2; i++) {       // ပၼ်ႇၸွမ်း Row
        for (int j = 0; j < 2; j++) {   // ပၼ်ႇၸွမ်း Column
            std::cout << grid[i][j] << " ";
        }
        std::cout << std::endl;         // ယဝ်ႉၼိုင်ႈ Row လူင်းထႅဝ်မႂ်ႇ
    }

    return 0;
}
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **2D Array**: သိမ်းၶေႃႈမုၼ်း ပဵၼ်တาราง (Rows & Columns)။
* Index **ဢွၼ်တၢင်း** ပဵၼ် Row၊ Index **တွၼ်ႈသွင်** ပဵၼ် Column။
* ၸႂ်ႉ **Nested Loop** တႃႇလူ ဢမ်ႇၼၼ် တႅမ်ႈၶေႃႈမုၼ်းၼႂ်း 2D Array။

---