## Lesson 47: Parameters & Arguments: Passing Data by Value

### 1. Parameters vs. Arguments
မၢင်ပွၵ်ႈႁဝ်းၸၢင်ႈငိူဝ်ႇတင်းသွင်ဢၼ်ၼႆႉ၊ ၵူၺ်းၵႃႈမၼ်းပႅၵ်ႇပိူင်ႈၵၼ်ၼင်ႇၼႆၶႃႈ:
* **Parameters:** ပဵၼ် "ၵွၵ်း" (Variable) ဢၼ်ႁဝ်းပိုၼ်ၽၢဝ်ႇဝႆႉ တီႈ **Header** ၶွင် Function။
* **Arguments:** ပဵၼ် "ၶေႃႈမုၼ်းတေႉ" (Value) ဢၼ်ႁဝ်းသူင်ႇၵႂႃႇ မိူဝ်ႈ **ႁွင်ႉၸႂ်ႉ** (Call) Function ၼၼ်ႉၶႃႈ။



### 2. Passing by Value (ၵၢၼ်သူင်ႇ "ၵေႃႇပီႇ")
ၼႂ်းလိၵ်ႈ C၊ မိူဝ်ႈႁဝ်းသူင်ႇ Variable ၵႂႃႇၸူး Function၊ မၼ်းတေ **ဢမ်ႇသူင်ႇတူဝ်တေႉ** ၵႂႃႇၶႃႈ။ မၼ်းတေ **"ၵေႃႇပီႇ" (Copy)** Value မၼ်းၵႂႃႇၵူၺ်း။
* **ၽွၼ်းလႆႈ:** သင်ၸဝ်ႈၵဝ်ႇလႅၵ်ႈလၢႆႈမၢႆၼႂ်း Function၊ Variable တူဝ်တေႉ ဢၼ်ယူႇၼႂ်း `main()` တေ **ဢမ်ႇလႅၵ်ႈလၢႆႈ** ၸွမ်းၶႃႈ။

**တူဝ်ယၢင်ႇ:**
```c
#include <stdio.h>

void checkScore(int score) { // 'score' is a Parameter
    if (score >= 40) {
        printf("You Passed!\n");
    } else {
        printf("You Failed!\n");
    }
    score = 100; // ၸၢမ်းလႅၵ်ႈလၢႆႈတူဝ် Copy
}

int main() {
    int myMark = 35;
    
    checkScore(myMark); // 'myMark' is an Argument
    
    printf("My original mark is still: %d", myMark); 
    // Output: 35 (ဢမ်ႇပဵၼ် 100 ၸွမ်း ၵွပ်ႈမၼ်းပဵၼ်ၵၢၼ်သူင်ႇ Copy)
    
    return 0;
}
```



### 3. Multiple Parameters (သူင်ႇလၢႆလၢႆဢၼ်)
ႁဝ်းၸၢင်ႈသူင်ႇၶေႃႈမုၼ်းလၢႆလၢႆမဵဝ်း ၶဝ်ႈၵႂႃႇၸွမ်းၵၼ်လႆႈၶႃႈ၊ ၵူၺ်းၵႃႈလူဝ်ႇဝႆႉလႅၼ်း (Order) မၼ်းႁႂ်ႈမႅၼ်ႈ။

```c
void studentInfo(char name[], int age) {
    printf("Student: %s, Age: %d\n", name, age);
}

int main() {
    studentInfo("Sai Mao", 25); // သူင်ႇ String လႄႈ Int ၵႂႃႇၸွမ်းၵၼ်
    return 0;
}
```

---

## 🏗️ Logic for Applications
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ Function `printGrade(int mark)`။
* မိူဝ်ႈၸဝ်ႈၵဝ်ႇဝၼ်ႇ Loop (For loop) ၼႂ်း Array ၶွင်လုၵ်ႈႁဵၼ်း၊ ၸဝ်ႈၵဝ်ႇသူင်ႇမၢႆၶႅတ်းလုၵ်ႈႁဵၼ်းၼိုင်ႈၵေႃႉယဝ်ႉၼိုင်ႈၵေႃႉ ၶဝ်ႈၵႂႃႇၼႂ်း Function ၼႆႉ တႃႇႁႂ်ႈမၼ်းၼႄၽွၼ်းလႆႈ (Grade) ဢွၵ်ႇမႃးၶႃႈယဝ်ႉ။
* ၵၢၼ်ႁဵတ်းၼႆ တေႁဵတ်းႁႂ်ႈ Code ၸဝ်ႈၵဝ်ႇ "သႅၼ်ႈသႂ်" (Clean) သေ လူငၢႆႈလိူဝ်ၵဝ်ႇၼမ်ၶႃႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  တႅမ်ႈ Function `void calculateSquare(int n)` ဢၼ်တေႁပ်ႉတူဝ်ၼပ်ႉၼိုင်ႈတူဝ် သေၼႄၽွၼ်းလႆႈ (Square) မၼ်းဢွၵ်ႇမႃး (n * n)။
2.  တႅမ်ႈ Function `void welcomeUser(char name[])` ဢၼ်တေႁပ်ႉၸိုဝ်ႈသေ ၼႄၶေႃႈၵႂၢမ်း "Hello, [name]! Welcome to TMK."
3.  သင်ႁဝ်းသူင်ႇ `float` ၵႂႃႇၸူး Parameter ဢၼ်ပဵၼ် `int` ၼႆ မၼ်းတေပဵၼ်သင်ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: မၼ်းတေထုၵ်ႇတတ်း (Truncate) တူဝ်ၼပ်ႉၽၢႆႇလင်ၸုၵ်းပႅတ်ႈ သေၵဵပ်းၵူၺ်းတူဝ်ၼပ်ႉတဵမ်ၶႃႈဢေႃႈ)။

---