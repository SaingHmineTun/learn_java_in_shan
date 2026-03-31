# Lesson 12: The C++ String Class (std::string)

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း Lesson ပူၼ်ႉမႃး ႁဝ်းႁူႉၸၵ်း `char` ဢၼ်သိမ်းလႆႈတူဝ်လိၵ်ႈတူဝ်လဵဝ်ယဝ်ႉ။ 
ၵူၺ်းၵႃႈ ပေႃးႁဝ်းလူဝ်ႇသိမ်း ၸိုဝ်ႈၵူၼ်း၊ တီႈယူႇ ဢမ်ႇၼၼ် ၶေႃႈၵႂၢမ်းယၢဝ်းယၢဝ်းၼၼ်ႉ 
ႁဝ်းတေလႆႈၸႂ်ႉ **`std::string`** ၶႃႈ။ 
မၼ်းပဵၼ် Class ဢၼ်မႃးၸွမ်း Standard Library ၶမ်ႇပိဝ်ႇတႃႇ C++ ၼၼ်ႉယဝ်ႉ။

---

### 1. ၵၢၼ်ၸႂ်ႉတိုဝ်း (Using `std::string`)
တႃႇတေၸႂ်ႉ String လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈ `#include <string>` ဝႆႉတီႈၼိူဝ်သုတ်း ပရူဝ်ႇၶႅမ်ႇႁဝ်းၶႃႈ။
* **Syntax**: တေလႆႈၸႂ်ႉ **Double quotes (" ")** သေႇသေႇ။

```cpp
#include <iostream>
#include <string> // လူဝ်ႇလႆႈပႃးဢၼ်ၼႆႉသေႇသေႇ

int main() {
    std::string name = "Sai Mao";
    std::string greeting = "Mai Sung Kha!";
    
    std::cout << greeting << " I am " << name << std::endl;
    return 0;
}
```



---

### 2. ၵၢၼ်ႁပ်ႉဢဝ်လိၵ်ႈ (Input with Strings)
မိူဝ်ႈႁဝ်းၸႂ်ႉ `std::cin` တႃႇႁပ်ႉဢဝ်လိၵ်ႈ ဢၼ်မီး **"ပိုၼ်ႉတီႈပဝ်ႇ" (Space)** ၼၼ်ႉ မၼ်းတေတတ်းဢဝ် ၶေႃႈၵႂၢမ်းဢွၼ်ႇတၢင်းသုတ်းၶႃႈ။

* **Problem**: ပေႃးႁဝ်းတႅမ်ႈ "Sai Mao"၊ `cin` တေဢဝ် "Sai" လႆႈလၢႆလၢႆ။
* **Solution**: ၸႂ်ႉ **`getline()`** တႃႇႁပ်ႉဢဝ်တင်းထႅဝ်ၶႃႈ။

```cpp
std::string fullName;
std::cout << "Enter your full name: ";
std::getline(std::cin, fullName); // ႁပ်ႉဢဝ်တင်းထႅဝ် ပႃးတင်း Space
```

---

### 3. ၶေႃႈလၢၵ်ႇလၢႆး String (String Operations)
String ၼႂ်း C++ မၼ်းမီး "ဢဵၼ်ႁႅင်း" (Power) လၢႆမဵဝ်း ဢၼ်ႁဝ်းၸၢင်ႈၸႂ်ႉလႆႈငၢႆႈငၢႆႈ:

* **Concatenation (ၵၢၼ်သိုပ်ႇလိၵ်ႈ)**: ၸႂ်ႉတူဝ် `+` တႃႇဢဝ် String 2 ဢၼ်မႃးၸပ်းၵၼ်။
  ```cpp
  std::string first = "Mai";
  std::string second = " Sung";
  std::string result = first + second; // "Mai Sung"
  ```
* **Length (ၵၢၼ်ၼပ်ႉတူဝ်လိၵ်ႈ)**: ၸႂ်ႉ `.length()` ဢမ်ႇၼၼ် `.size()`။
  ```cpp
  std::cout << name.length(); // တေၼေတူဝ်ၼပ်ႉ တူဝ်လိၵ်ႈတင်းမူတ်း
  ```

---

### 4. String vs C-style String
မိူဝ်ႈၵွၼ်ႇ (ၼႂ်းၽႃႇသႃႇ C) ၶဝ်ၸႂ်ႉ `char[]` (Array of characters) တႃႇသိမ်းလိၵ်ႈ။ 
မၼ်းၸႂ်ႉယၢပ်ႇ လႄႈ မီးလွင်ႈၽိတ်းငၢႆႈ။ ၵူၺ်းၵႃႈ `std::string` ၼႂ်း C++ ၼႆႉ မၼ်းပဵၼ် **Dynamic** (ယိုတ်းလႆႈ ႁူတ်းလႆႈ) လႄႈ မီးလွင်ႈလွတ်ႈၽေး (Safe) လိူဝ်ၵဝ်ႇ တၢင်းၼမ်ၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* လူဝ်ႇလႆႈ `#include <string>` တႃႇၸႂ်ႉ String။
* ၸႂ်ႉ **Double quotes (" ")** တႃႇလိၵ်ႈယၢဝ်း။
* ၸႂ်ႉ **`getline(std::cin, var)`** ပေႃးလူဝ်ႇႁပ်ႉဢဝ်လိၵ်ႈ ဢၼ်ပႃး Space။
* ၸႂ်ႉတူဝ် **`+`** တႃႇဢဝ်လိၵ်ႈမႃးၸပ်းၵၼ်။

---