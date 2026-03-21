## Lesson 39: Call by Value vs. Call by Reference

### 1. Call by Value (ၵၢၼ်သူင်ႇ "ၵေႃႇပီႇ")
မိူဝ်ႈႁဝ်းသူင်ႇ Variable ၵႂႃႇၸူး Function လူၺ်ႈလၢႆးၼႆႉ၊ C တေ "ၵေႃႇပီႇ" (Copy) Value မၼ်းၵႂႃႇၵူၺ်း။
* **ၽွၼ်းလႆႈ:** သင်ႁဝ်းမႄးလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း ၼႂ်း Function၊ Variable တူဝ်တေႉ ဢၼ်ယူႇၼႂ်း `main()` တေ **ဢမ်ႇလႅၵ်ႈလၢႆႈ** ၸွမ်းၶႃႈ။

**တူဝ်ယၢင်ႇ:**
```c
void changeValue(int x) {
    x = 100; // လႅၵ်ႈလၢႆႈၵူၺ်းတူဝ် Copy
}

int main() {
    int n = 10;
    changeValue(n);
    printf("%d", n); // Output: 10 (ဢမ်ႇလႅၵ်ႈလၢႆႈ)
}
```



### 2. Call by Reference (ၵၢၼ်သူင်ႇ "မၢႆလိၵ်ႈ Address")
ၼႆႉပဵၼ်တွၼ်ႈဢၼ်ႁဝ်းၸႂ်ႉ **Pointer** မႃးၸွႆႈၶႃႈ။ ႁဝ်းသူင်ႇ "မၢႆလိၵ်ႈ" (Address) ၶွင် Variable ၼၼ်ႉၵႂႃႇၸူး Function။
* **ၽွၼ်းလႆႈ:** Function တေၸၢင်ႈၶဝ်ႈၸူး Address တူဝ်တေႉသေ **မႄးလႅၵ်ႈလၢႆႈ** ၶေႃႈမုၼ်းလႆႈၵမ်းလဵဝ်ၶႃႈ။

**တူဝ်ယၢင်ႇ:**
```c
void changeRealValue(int *ptr) {
    *ptr = 100; // လႅၵ်ႈလၢႆႈၵႂႃႇၸူး Variable တူဝ်တေႉ
}

int main() {
    int n = 10;
    changeRealValue(&n); // သူင်ႇ Address ၵႂႃႇ
    printf("%d", n); // Output: 100 (လႅၵ်ႈလၢႆႈယဝ်ႉ!)
}
```



### 3. လွင်ႈပႅၵ်ႇပိူင်ႈ (Key Differences)

| Feature | **Call by Value** | **Call by Reference** |
| :--- | :--- | :--- |
| **Data Sent** | Copy of the value | Address of the variable |
| **Memory** | ၸႂ်ႉ Memory ၼမ် (ၵွပ်ႈလူဝ်ႇ Copy) | ၸႂ်ႉ Memory ဢွၼ်ႇ (သူင်ႇၵူၺ်း Address) |
| **Effect** | ဢမ်ႇမႄးလႅၵ်ႈ Variable တူဝ်တေႉ | မႄးလႅၵ်ႈ Variable တူဝ်တေႉလႆႈ |
| **Safety** | လွတ်ႈၽေး (Safe) | လူဝ်ႇသတိ (Dangerous if handled wrong) |

### 4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ "Call by Reference"?
1. **Returning Multiple Values:** Function ၼိုင်ႈဢၼ် `return` လႆႈၵူၺ်း 1 Value၊ ၵူၺ်းၵႃႈ သင်ၸႂ်ႉ Pointer ႁဝ်းၸၢင်ႈမႄးလႅၵ်ႈလၢႆႈ Variable လၢႆလၢႆတူဝ် ၼႂ်း Function လဵဝ်ၵၼ်လႆႈၶႃႈ။
2. **Efficiency:** မိူဝ်ႈလူဝ်ႇသူင်ႇ **Struct** ဢမ်ႇၼၼ် **Array** ဢၼ်ယႂ်ႇယႂ်ႇ၊ ၵၢၼ်သူင်ႇ Address မၼ်းတေၽႂ်းသေ ၵၢၼ်ၵေႃႇပီႇၶေႃႈမုၼ်းတင်းသဵင်ႈၶႃႈဢေႃႈ။

---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager**၊ မိူဝ်ႈၸဝ်ႈၵဝ်ႇတႅမ်ႈ Function တွၼ်ႈတႃႇ "မႄးၸိုဝ်ႈလုၵ်ႈႁဵၼ်း" (Update Name) ၼၼ်ႉ:
* ၸဝ်ႈၵဝ်ႇတေလႆႈသူင်ႇ `Student *s` (Pointer to Struct) ၵႂႃႇၸူး Function။
* ၼၼ်ႉၸင်ႇႁဵတ်းႁႂ်ႈ Function ၼၼ်ႉ ၸၢင်ႈၵႂႃႇလႅၵ်ႈလၢႆႈၸိုဝ်ႈၼႂ်း Database (Array of Structs) ၶွင်ၸဝ်ႈၵဝ်ႇလႆႈတႅတ်ႈတေႃးၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. တႅမ်ႈ Function ဢၼ်ၸိုဝ်ႈဝႃႈ `swap(int *a, int *b)` တွၼ်ႈတႃႇ "လႅၵ်ႈ" မၢႆၶေႃႈမုၼ်း Variable သွင်တူဝ် ႁႂ်ႈပိၼ်ႇၵၼ်။ (ၼႆႉပဵၼ်တူဝ်ယၢင်ႇ Classic သုတ်းၶွင် Pointer ၶႃႈ)။
2. ၸၢမ်းတႅမ်ႈ Code သူင်ႇ Array ၵႂႃႇၸူး Function သေ မႄးလႅၵ်ႈလၢႆႈတူဝ်ၼပ်ႉၼႂ်း Array ၼၼ်ႉတူၺ်းၶႃႈ။ (သတိ: Array ပဵၼ် Call by Reference ႁင်းၵူၺ်းမၼ်းတႃႇသေႇၶႃႈ!)။
3. ၵွပ်ႈသင် `scanf("%d", &n);` သမ်ႉလူဝ်ႇၸႂ်ႉ `&` ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: ၵွပ်ႈ `scanf` လူဝ်ႇၸႂ်ႉ Call by Reference တႃႇဢဝ် Value မႃးသႂ်ႇၼႂ်း `n` ၶႃႈဢေႃႈ)။

---