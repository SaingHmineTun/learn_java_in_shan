## Lesson 57: Memory Management Strategy: Avoiding Leaks in Functions

### 1. The "Owner" Principle (ၽႂ်ၵေႃႉသၢင်ႈ ၽႂ်ၵေႃႉယႃႉ)
ၼႂ်းလိၵ်ႈ C၊ ၵၢၼ်ၸတ်းၵၢၼ် Memory တေလႆႈမီး "ၸဝ်ႈၶွင်" (Owner) ဢၼ်တႅတ်ႈတေႃးၶႃႈ။ သင် Function ၼိုင်ႈဢၼ် `malloc()` ၶေႃ Memory မႃး၊ ၸဝ်ႈၵဝ်ႇလူဝ်ႇလႅတ်းဝႃႈ "ၽႂ်တေပဵၼ်ၵေႃႉ `free()` မၼ်း?"

* **Internal Free:** Function ၶေႃမႃးၸႂ်ႉသေ `free()` ပႅတ်ႈၼႂ်းတူဝ်မၼ်းၵမ်းလဵဝ်။
* **External Free:** Function ၶေႃမႃးသေ `return` Address မၼ်းပၼ် `main()`၊ ယဝ်ႉႁႂ်ႈ `main()` ပဵၼ်ၵေႃႉ `free()` ၶႃႈ။



### 2. Common Pitfall: Hidden Leaks (လွင်ႈလိုမ်းဢၼ်ၽေးသုတ်း)
မၢင်ပွၵ်ႈ ႁဝ်းႁွင်ႉၸႂ်ႉ Function ဢၼ် `return` Address မႃးပၼ်ႁဝ်း လၢႆလၢႆၵမ်း ၼႂ်း Loop၊ ၵူၺ်းၵႃႈ ႁဝ်းသမ်ႉလိုမ်း `free()` ၵူႈပွၵ်ႈ ၼၼ်ႉၶႃႈ။

**တူဝ်ယၢင်ႇ ဢၼ်ၽိတ်း:**
```c
char* getStatus() {
    char *s = (char*) malloc(20);
    strcpy(s, "Active");
    return s;
}

int main() {
    for (int i = 0; i < 1000; i++) {
        char *msg = getStatus(); 
        printf("%s\n", msg);
        // ဢမ်ႇမီး free(msg) တီႈၼႆႈ! RAM တေတဵမ်ၵႂႃႇတိၵ်းတိၵ်း 1,000 ၵမ်းၶႃႈ။
    }
}
```

### 3. Strategy: Pass-by-Buffer (လၢႆးႁဵတ်း प्रोफेशनल)
တႅၼ်းၵၢၼ်ဢၼ် Function တေ `malloc` ႁင်းၵူၺ်းမၼ်း၊ ႁဝ်းႁႂ်ႈ `main()` ပဵၼ်ၵေႃႉသၢင်ႈ Memory ဝႆႉဢွၼ်တၢင်း (ၼႂ်း Stack ၵေႃႈလႆႈ) သေ "သူင်ႇ" ၵႂႃႇႁႂ်ႈ Function ၼၼ်ႉၵူၺ်းၶႃႈ။ လၢႆးၼႆႉ **ဢမ်ႇပဵၼ် Memory Leak** လႆႈၶႃႈ။

**တူဝ်ယၢင်ႇ ဢၼ်လီ:**
```c
void getStatusSafe(char *buffer) {
    strcpy(buffer, "Active"); // တႅမ်ႈသႂ်ႇၼႂ်း Memory ဢၼ်သူင်ႇမႃး
}

int main() {
    char status[20]; // သၢင်ႈဝႆႉၼႂ်း Stack (ဢမ်ႇလူဝ်ႇ free)
    getStatusSafe(status);
    printf("%s\n", status);
}
```



### 4. Checklist တႃႇဝႄႉ Memory Leak
1.  **Match Every Malloc:** တူၺ်းဝႃႈ `malloc` ၵူႈဢၼ် မီး `free` မႃးႁပ်ႉမၼ်းယူႇႁိုဝ်?
2.  **NULL after Free:** ဝၢႆးသေ `free(ptr)` ယဝ်ႉ၊ ႁႂ်ႈပၼ် `ptr = NULL` တႃႇသေႇ တႃႇဝႄႉ **Dangling Pointer**။
3.  **Check Return Value:** မိူဝ်ႈ `malloc` ၼႂ်း Function၊ ၵူတ်ႇထတ်း `if (ptr == NULL)` တႃႇသေႇ။

---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* မိူဝ်ႈၸဝ်ႈၵဝ်ႇတႅမ်ႈ Function `loadData()`၊ ၸဝ်ႈၵဝ်ႇလူဝ်ႇတႅပ်းတတ်းဝႃႈ တေသူင်ႇ Array ဢၼ်သၢင်ႈဝႆႉၼႂ်း `main` ၵႂႃႇ ႁိုဝ် ဢမ်ႇၼၼ် တေႁႂ်ႈ Function ၼၼ်ႉ `malloc` ပၼ်မႂ်ႇ?
* သင်ပဵၼ် Software ဢၼ်ယႂ်ႇ၊ လၢႆး **Pass-by-Buffer** (သူင်ႇ Memory ၵႂႃႇႁႂ်ႈမၼ်းတႅမ်ႈသႂ်ႇ) တေႁဵတ်းႁႂ်ႈ Software ၸဝ်ႈၵဝ်ႇ "ၵႅၼ်ႇၶႅင်" လႄႈ မႄး (Debug) ငၢႆႈလိူဝ်ၼမ်ၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  မႄးတႅမ်ႈ Code တွၼ်ႈ 2 (Hidden Leaks) ႁႂ်ႈမၼ်း `free()` Memory လႆႈထုၵ်ႇလီ။
2.  တႅမ်ႈ Function ဢၼ်ႁပ်ႉ `int *arr` သေ ဢဝ်တူဝ်ၼပ်ႉ $1-10$ သႂ်ႇပၼ်ၼႂ်းမၼ်း (လၢႆး Pass-by-Buffer)။
3.  သင်ႁဝ်း `free()` Pointer တူဝ်ၼိုင်ႈ 2 ၵမ်း (Double Free) ၼႆ မၼ်းတေပဵၼ်သင်ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: ပူဝ်ႇၵရႅမ်ႇတေ Crash ၵမ်းလဵဝ် ၵွပ်ႈမၼ်းၵႂႃႇယႃႉ Memory ဢၼ်ဢမ်ႇၸႂ်ႇၶွင်မၼ်းယဝ်ႉၼၼ်ႉၶႃႈဢေႃႈ)။

---