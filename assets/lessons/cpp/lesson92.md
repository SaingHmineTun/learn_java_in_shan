# Lesson 11.92: Project: The Digital Diary App

### ၶေႃႈတၢင်ႇလဝ်ႈ (Concept)
ႁဝ်းတေသၢင်ႈ **Digital Diary** (ပပ်ႉမၢႆပိုၼ်း)။ 
ပရူဝ်ႇၶႅမ်ႇၼႆႉ တေပၼ်သုၼ်ႇႁႂ်ႈ User:
1.  **Write**: တႅမ်ႈပိုၼ်းမႂ်ႇ သေသိမ်းထႅမ်သႂ်ႇ (Append) ၼႂ်း File။
2.  **Read**: ပိုတ်ႇလူပိုၼ်းတင်းမူတ်း ဢၼ်ယဝ်ႉမႃး။
3.  **Persistence**: ဢမ်ႇဝႃႈတေ ပိၵ်ႉ/ပိုတ်ႇ ပရူဝ်ႇၶႅမ်ႇလၢႆပွၵ်ႈၵေႃႈ ပိုၼ်းဢၼ်လႆႈတႅမ်ႈဝႆႉ တေဢမ်ႇႁၢႆ။

### ၶေႃႈၵႂၢမ်းသင်ႇ (Project Requirements)
* **Menu**: မီႇၼိဝ်းတႃႇလိူၵ်ႈ (1. Add Entry, 2. View All, 3. Exit)။
* **Appending**: ၸႂ်ႉ `std::ios::app` တႃႇတႅမ်ႈထႅမ်သႂ်ႇ `diary.txt`။
* **Reading**: ၸႂ်ႉ `std::getline()` ၼႂ်း loop တႃႇလူၼေၵူႈထႅဝ်။
* **Formatting**: ထႅမ်ဝၼ်းတီႈ (Date) ဢမ်ႇၼၼ် သဵၼ်ႈထႅဝ်ၸႅၵ်ႇ ႁႂ်ႈလူငၢႆႈ။

---

### ၶူတ်ႉတူဝ်ယၢင်ႇ (Source Code)

```cpp
#include <iostream>
#include <fstream>
#include <string>

void addEntry() {
    std::ofstream file("diary.txt", std::ios::app); // ပိုတ်ႇတႃႇတႅမ်ႈထႅမ်
    if (file.is_open()) {
        std::string entry;
        std::cout << "\nEnter your diary entry (Press Enter to save): \n> ";
        std::cin.ignore(); // Clear buffer
        std::getline(std::cin, entry);

        file << "--- Entry ---\n";
        file << entry << "\n\n";
        
        file.close();
        std::cout << "Entry saved successfully!\n";
    } else {
        std::cerr << "Error: Could not open diary file.\n";
    }
}

void viewEntries() {
    std::ifstream file("diary.txt");
    if (file.is_open()) {
        std::string line;
        std::cout << "\n========== MY DIARY ==========\n";
        while (std::getline(file, line)) {
            std::cout << line << std::endl;
        }
        std::cout << "==============================\n";
        file.close();
    } else {
        std::cout << "\nYour diary is empty or file not found.\n";
    }
}

int main() {
    int choice;

    do {
        std::cout << "\n--- Digital Diary Menu ---";
        std::cout << "\n1. Add New Entry";
        std::cout << "\n2. View All Entries";
        std::cout << "\n3. Exit";
        std::cout << "\nSelect choice: ";
        std::cin >> choice;

        switch (choice) {
            case 1: addEntry(); break;
            case 2: viewEntries(); break;
            case 3: std::cout << "Goodbye!\n"; break;
            default: std::cout << "Invalid choice. Try again.\n";
        }
    } while (choice != 3);

    return 0;
}
```

---

### လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)
* **User Interface**: ၵၢၼ်ၸႂ်ႉ `do-while` loop လႄႈ `switch` ၸွႆႈႁႂ်ႈပရူဝ်ႇၶႅမ်ႇ ႁဵတ်းၵၢၼ်လႆႈ ၶႅမ်ႉလိူဝ်။
* **Data Safety**: ၵၢၼ်ၸႂ်ႉ `std::ios::app` ၸွႆႈႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈပိုၼ်းၵဝ်ႇ (History) ထုၵ်ႇလူပ်းပႅတ်ႈ။
* **Input Handling**: ၵၢၼ်ၸႂ်ႉ `std::cin.ignore()` ပဵၼ်လွင်ႈလမ်ႇလွင်ႈ မိူဝ်ႈႁဝ်းၸႂ်ႉ `cin >>` ယဝ်ႉသေ တေၸႂ်ႉ `getline()` တေႃႇ ၵွပ်ႈမၼ်းတေၸွႆႈလူပ်း "Newline character" ဢၼ်ၵိုတ်းဝႆႉၼၼ်ႉၶႃႈ။



---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
ယဝ်ႉတူဝ်ႈ **Module 11** ယဝ်ႉၶႃႈ! တေႃႈလဵဝ် ၸဝ်ႈၵဝ်ႇသၢင်ႈ Software ဢၼ်သိမ်းၶေႃႈမုၼ်းလႆႈတႄႉတႄႉယဝ်ႉ။ 
ၼႆႉပဵၼ် ပိုၼ်ႉထၢၼ် ဢၼ်ယႂ်ႇလူင် တႃႇၵႂႃႇတႅမ်ႈ Applications ဢၼ်မီး Databases ဢမ်ႇၼၼ် Configuration Files ၶႃႈ။

---