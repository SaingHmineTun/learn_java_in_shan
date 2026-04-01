# Lesson 91: Working with CSV Files: Basic Data Parsing

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)

File **CSV** ၼႆႉ မၼ်းသိမ်းၶေႃႈမုၼ်းပဵၼ်ထႅဝ် (Row) သေ ၸႅၵ်ႇၶေႃႈမုၼ်းၵူႈဢၼ်လူၺ်ႈ **Comma (`,`)** ၶႃႈ။
တူဝ်ယၢင်ႇ ၼႂ်း `students.csv`:

```text
Sai Mao,25,Muse
Nang Hla,22,Namkham
```

ၵၢၼ် **Parsing** မၢႆထိုင် ၵၢၼ်လူဢဝ်ထႅဝ်လိၵ်ႈၼၼ်ႉမႃး သေ "ၸႅၵ်ႇ" (Split)
မၼ်းဢွၵ်ႇပဵၼ်တွၼ်ႈၽႂ်တွၼ်ႈမၼ်း (မိူၼ်ၼင်ႇ ၸိုဝ်ႈ၊ ဢႃႇယု၊ ဝဵင်း) ၶႃႈ။



---

### 1. ၶိူင်ႈမိုဝ်းလမ်ႇလွင်ႈ: `std::stringstream`

တႃႇတေၸႅၵ်ႇလိၵ်ႈဢွၵ်ႇပဵၼ်တွၼ်ႈၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ Library **`<sstream>`** ၶႃႈ။ မၼ်းတေႁဵတ်းႁႂ်ႈ String
ႁဝ်းႁဵတ်းၵၢၼ်လႆႈမိူၼ်တင်း "Stream" (ၸိူင်ႉၼင်ႇ `cin`) သေ ၸႅၵ်ႇဢဝ်ၶေႃႈမုၼ်းလႆႈငၢႆႈငၢႆႈၶႃႈ။

---

### 2. ၵၢၼ်ၸႂ်ႉ `getline()` တႃႇၸႅၵ်ႇ Comma

ၵၢၼ်ႁဵတ်း `getline(file, line)` မၼ်းတေလူတေႃႇပေႃးထိုင်ထႅဝ်မႂ်ႇ။ ၵူၺ်းၵႃႈ ႁဝ်းၸၢင်ႈထႅမ် Argument
တူဝ်ထၢတ်း (Delimiter) သႂ်ႇပႃးလႆႈၶႃႈ:
`getline(ss, part, ',');` — ၼႆႉမၢႆဝႃႈ "လူတေႃႇပေႃးထိုင် Comma" ၼၼ်ႉၶႃႈဢေႃႈ။

---

### 3. တူဝ်ယၢင်ႇ Code ဢၼ်ၵုမ်ႇထူၼ်ႈ

```cpp
#include <iostream>
#include <fstream>
#include <string>
#include <sstream> // လူဝ်ႇပႃးတွၼ်ႈၼႆႉ
#include <vector>

int main() {
    std::ifstream file("students.csv");

    if (!file.is_open()) {
        std::cerr << "Could not open CSV file!" << std::endl;
        return 1;
    }

    std::string line;
    std::cout << "Name\t\tAge\tLocation" << std::endl;
    std::cout << "------------------------------------" << std::endl;

    // 1. လူထႅဝ်လႂ်ထႅဝ် (Row by Row)
    while (std::getline(file, line)) {
        std::stringstream ss(line); // ဢဝ်ထႅဝ်ၼၼ်ႉသႂ်ႇၼႂ်း stringstream
        std::string name, age, city;

        // 2. ၸႅၵ်ႇ (Parse) လူၺ်ႈၸႂ်ႉ Comma
        std::getline(ss, name, ','); // လူဢဝ်ၸိုဝ်ႈ တေႃႇပေႃးထိုင် ','
        std::getline(ss, age, ',');  // လူဢဝ်ဢႃႇယု တေႃႇပေႃးထိုင် ','
        std::getline(ss, city, ','); // လူဢဝ်ဝဵင်း တေႃႇပေႃးသုတ်း

        // 3. ၼေၽွၼ်းလႆႈ
        std::cout << name << "\t" << age << "\t" << city << std::endl;
    }

    file.close();
    return 0;
}
```

---

### 4. လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)

* **`stringstream`**: ၸွႆႈႁႂ်ႈႁဝ်းၸႅၵ်ႇ String ဢွၵ်ႇပဵၼ်တွၼ်ႈလႆႈငၢႆႈငၢႆႈ။
* **Delimiter**: ႁဝ်းလိူၵ်ႈလႆႈဝႃႈတေၸႅၵ်ႇလူၺ်ႈသင် (Comma `,`, Tab `\t`, ဢမ်ႇၼၼ် Space)။
* **Data Types**: သတိဝႆႉဝႃႈ `getline()` တေသူင်ႇဢွၵ်ႇမႃးပဵၼ် **String** သေႇသေႇ။
  သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈလႆႈတူဝ်ၼပ်ႉ (int)၊ တေလႆႈၸႂ်ႉ `std::stoi(age)` တႃႇလႅၵ်ႈမၼ်းၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)

* **CSV**: ပဵၼ်ပိူင်သိမ်းၶေႃႈမုၼ်းဢၼ်ၸႅၵ်ႇလူၺ်ႈ Comma။
* **`getline(ss, item, ',')`**: ပဵၼ် "ၵမ်ၸိုမ်း" တွၼ်ႈတႃႇၸႅၵ်ႇၶေႃႈမုၼ်း။
* **Parsing**: ၸွႆႈႁႂ်ႈႁဝ်းဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ File မႃးၸႂ်ႉၼႂ်း Variables လႆႈတႅတ်ႉတေႃႇၶႃႈ။

---