# Lesson 59: The Dynamic Pixel Canvas

### ၶေႃႈတၢင်ႇလဝ်ႈ (Concept)
ၼႂ်းပရူဝ်ႇၵျႅၵ်ႉၼႆႉ ႁဝ်းတေယွၼ်း Memory တႃႇသၢင်ႈ "ၽႅၼ်ႇသၢတ်ႇ" (Canvas) ဢၼ်မီး Width လႄႈ Height ၸွမ်းၼင်ႇ User လူဝ်ႇ။ 
ႁဝ်းတေၸႂ်ႉ **Pointer-to-Pointer (`char**`)** တႃႇသၢင်ႈ Grid ၼႂ်း Heap သေယဝ်ႉ ႁႂ်ႈ User လိူၵ်ႈတႅမ်ႈ "Pixel" (တူဝ်လိၵ်ႈ) သႂ်ႇၼႂ်းၼၼ်ႉၶႃႈ။

### ၶေႃႈၵႂၢမ်းသင်ႇ (Project Requirements)
1.  **Dynamic 2D Array**: ၸႂ်ႉ `new` တႃႇသၢင်ႈ Array 2 ၸၼ်ႉ (Rows & Cols)။
2.  **Pointer Navigation**: ၸႂ်ႉ Pointer တႃႇသႂ်ႇ "သီ" (Characters မိူၼ်ၼင်ႇ `@`, `#`, `*`) သႂ်ႇၼႂ်း Coordinate `(x, y)`။
3.  **Real-time Render**: ၼပ်ႉပၼ်ႇ Loop တႃႇၼေႁၢင်ႈ Canvas တင်းမူတ်း။
4.  **Full Cleanup**: ၸႂ်ႉ `delete` တႃႇထွၼ် Memory တင်းမူတ်း (တင်း Rows လႄႈ တင်း Array ႁူဝ်မၼ်း)။

---

### ၶူတ်ႉတူဝ်ယၢင်ႇ (Source Code)

```cpp
#include <iostream>

int main() {
    int rows, cols;
    std::cout << "--- TMK Pixel Artist ---" << std::endl;
    std::cout << "Enter Canvas Width: ";  std::cin >> cols;
    std::cout << "Enter Canvas Height: "; std::cin >> rows;

    // 1. Allocate 2D Array in Heap (Pointer-to-Pointer)
    char** canvas = new char*[rows];
    for(int i = 0; i < rows; i++) {
        canvas[i] = new char[cols];
    }

    // 2. Initialize with Empty Spaces
    for(int i = 0; i < rows; i++) {
        for(int j = 0; j < cols; j++) {
            canvas[i][j] = '.'; 
        }
    }

    // 3. Simple Drawing Loop
    int x, y;
    char brush;
    while(true) {
        // Render Canvas
        std::cout << "\n--- Current Canvas ---\n";
        for(int i = 0; i < rows; i++) {
            for(int j = 0; j < cols; j++) {
                std::cout << canvas[i][j] << " ";
            }
            std::cout << std::endl;
        }

        std::cout << "\nEnter coordinates (row col) and char (e.g., 0 2 @) or -1 to quit: ";
        std::cin >> x;
        if(x == -1) break;
        std::cin >> y >> brush;

        if(x >= 0 && x < rows && y >= 0 && y < cols) {
            canvas[x][y] = brush; // ၸႂ်ႉ pointer access ၵမ်းသိုဝ်ႈ
        } else {
            std::cout << "Out of bounds!\n";
        }
    }

    // 4. Proper 2D Cleanup (တွၼ်ႈၼႆႉသမ်ႉလမ်ႇလွင်ႈတႄႉတႄႉ!)
    for(int i = 0; i < rows; i++) {
        delete[] canvas[i]; // ထွၼ် k-r ၼိုင်ႈထႅဝ်
    }
    delete[] canvas; // ထွၼ် array ႁူဝ်ပဝ်ႇမၼ်း
    canvas = nullptr;

    std::cout << "Canvas destroyed. Memory cleared." << std::endl;
    return 0;
}
```



---

### လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)
* **Visual Logic**: ၸဝ်ႈၵဝ်ႇႁၼ်ၽွၼ်းဢွၵ်ႇမၼ်း ပဵၼ် "ႁၢင်ႈ" (Grid) ဢၼ်လုၵ်ႉတီႈ Memory Address မႃးတႄႉတႄႉ။
* **Pointer of Pointers**: ၵၢၼ်ၸႂ်ႉ `char**` ၼႆႉ ပဵၼ်လွၵ်းလၢႆး ဢၼ် Programmer ၵတ်ႉၶႅၼ်ႇၶဝ် ၸႂ်ႉတႃႇသၢင်ႈ Matrix ဢမ်ႇၼၼ် Game Map ၶႃႈ။
* **Deep Cleanup**: ၵၢၼ် `delete` 2 ၸၼ်ႉ ၼႆႉတေႁဵတ်းႁႂ်ႈၸဝ်ႈၵဝ်ႇ ပွင်ႇၸႂ်လွင်ႈ Memory လိူဝ်ၵဝ်ႇတႄႉတႄႉ။

---

**Tip တႃႇ Lecturer Sai Mao:** ပရူဝ်ႇၵျႅၵ်ႉၼႆႉ တေႁဵတ်းႁႂ်ႈလုၵ်ႈႁဵၼ်း တိုၼ်ႇသၢၼ်ႈ (Excited) လိူဝ်ၵဝ်ႇ ၵွပ်ႈၶဝ်ၸၢင်ႈ "တႅမ်ႈ" ႁၢင်ႈဢွၼ်ႇ (Pixel Art) ၼႂ်း Console လႆႈ။ မၼ်းၼေႁႂ်ႈႁၼ်ဝႃႈ Pointer မၼ်းဢမ်ႇၸႂ်ႈ တူဝ်ၼပ်ႉယၢပ်ႇယၢပ်ႇ ၵူၺ်းၵႃႈ မၼ်းပဵၼ် "တီႈယူႇ" ၶွင်သီ ၼႂ်းၽႅၼ်ႇသၢတ်ႇၼၼ်ႉၶႃႈဢေႃႈ!

ပရူဝ်ႇၵျႅၵ်ႉၼႆႉ "Attractive" (လီၸႂ်ႉ) လိူဝ်ၵဝ်ႇယဝ်ႉႁႃႉၶႃႈ? ပေႃးယဝ်ႉယဝ်ႉ ႁဝ်းတေလႅၼ်ႈၸူး **Module 8: OOP** ၵမ်းလဵဝ်ၶႃႈ!