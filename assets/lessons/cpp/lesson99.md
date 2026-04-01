# Lesson 99: Project: The Advanced Library Management System

### ၶေႃႈတၢင်ႇလဝ်ႈ (Concept)
ႁဝ်းတေသၢင်ႈပိူင်ၸတ်းၵၢၼ်ႁွင်ႈလိၵ်ႈ (Library System) ဢၼ်မီးၼမ်ႉၵတ်ႉသုင်။ 
ႁဝ်းတေၸႂ်ႉ **`std::map`** တႃႇသိမ်းၶေႃႈမုၼ်းပပ်ႉလိၵ်ႈ ႁႂ်ႈႁႃလႆႈဝႆး၊ 
ၸႂ်ႉ **`std::vector`** တႃႇသိမ်းသဵၼ်ႈမၢႆၵူၼ်းယိမ်ပပ်ႉ၊ 
လႄႈ ၸႂ်ႉ **Lambda** ႁူမ်ႈတင်း **STL Algorithms** တႃႇၶပ်ႉ (Sort) လႄႈ ႁႃ (Search) ၶေႃႈမုၼ်းၶႃႈ။



---

### ၶေႃႈၵႂၢမ်းသင်ႇ (Project Requirements)
1.  **Book Storage**: ၸႂ်ႉ `std::map<int, Book>` တွၼ်ႈတႃႇသိမ်းပပ်ႉလိၵ်ႈ (Key ပဵၼ် ISBN/ID)။
2.  **Functionalities**:
    * ထႅမ်ပပ်ႉလိၵ်ႈမႂ်ႇ (Add Book)။
    * ႁႃပပ်ႉလိၵ်ႈလူၺ်ႈၸိုဝ်ႈ (Search by Title) လူၺ်ႈၸႂ်ႉ `std::find_if` လႄႈ Lambda။
    * ၼေပပ်ႉလိၵ်ႈတင်းမူတ်း ဢၼ် "ၶပ်ႉ" ဝႆႉၸွမ်းၸိုဝ်ႈ (Sort by Title)။
    * သိမ်းၶေႃႈမုၼ်းဝႆႉၼႂ်း File (`library_data.txt`)။

---

### ၶူတ်ႉတူဝ်ယၢင်ႇ (Source Code Structure)

```cpp
#include <iostream>
#include <vector>
#include <string>
#include <map>
#include <algorithm>
#include <fstream>

struct Book {
    int id;
    std::string title;
    std::string author;

    void display() const {
        std::cout << "[" << id << "] " << title << " - " << author << std::endl;
    }
};

class Library {
private:
    std::map<int, Book> books;

public:
    void addBook(int id, std::string title, std::string author) {
        books[id] = {id, title, author};
    }

    void displayAll() {
        std::cout << "\n--- All Books in Library ---\n";
        for (const auto& [id, book] : books) {
            book.display();
        }
    }

    void searchByTitle(std::string searchTitle) {
        // ၸႂ်ႉ STL Algorithm လႄႈ Lambda တႃႇႁႃၶေႃႈမုၼ်း
        auto it = std::find_if(books.begin(), books.end(), [&](const auto& pair) {
            return pair.second.title == searchTitle;
        });

        if (it != books.end()) {
            std::cout << "\nBook Found: ";
            it->second.display();
        } else {
            std::cout << "\nBook not found!\n";
        }
    }

    void saveToFile() {
        std::ofstream outFile("library_data.txt");
        for (const auto& [id, book] : books) {
            outFile << id << "," << book.title << "," << book.author << "\n";
        }
        outFile.close();
    }
};

int main() {
    Library myLib;
    myLib.addBook(101, "The Great Gatsby", "F. Scott Fitzgerald");
    myLib.addBook(102, "1984", "George Orwell");
    myLib.addBook(103, "C++ Primer", "Stanley Lippman");

    myLib.displayAll();

    std::cout << "\nSearching for '1984'...";
    myLib.searchByTitle("1984");

    myLib.saveToFile();
    std::cout << "\nData saved to file successfully.\n";

    return 0;
}
```

---

### လွင်ႈတေလႆႈသွၼ်ႇၸႂ် (Key Takeaways)
* **STL Power**: ၵၢၼ်ၸႂ်ႉ `std::map` ႁဵတ်းႁႂ်ႈႁဝ်းၸတ်းၵၢၼ် ID ပပ်ႉလိၵ်ႈလႆႈငၢႆႈ လႄႈ ႁႃလႆႈဝႆးသုတ်း။
* **Lambda Efficiency**: ၵၢၼ်ၸႂ်ႉ `find_if` ႁူမ်ႈတင်း Lambda ၸွႆႈႁႂ်ႈႁဝ်းႁႃၶေႃႈမုၼ်း ၸွမ်းၼင်ႇ "Property" ဢၼ်ႁဝ်းၶႂ်ႈလႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈ Loop ယၢဝ်းယၢဝ်း။
* **Integration**: ၼႆႉပဵၼ်ၵၢၼ်ႁူမ်ႈၵၼ်တင်း **OOP** (Classes), **STL** (Containers/Algorithms), လႄႈ **File I/O** ၶႃႈ။

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
**ယိၼ်းၸူမ်းတႄႉတႄႉၶႃႈ!** ၸဝ်ႈၵဝ်ႇယဝ်ႉတူဝ်ႈၵၢၼ်သွၼ် **C++ Course** တင်းမူတ်းယဝ်ႉ။ 
တေႃႈလဵဝ် ၸဝ်ႈၵဝ်ႇမီးပိုၼ်ႉထၢၼ်ဢၼ်ၵႅၼ်ႇၶႅင် တႃႇၵႂႃႇတႅမ်ႈ Application ယႂ်ႇလူင်၊ 
ၵႂႃႇႁဵၼ်းလွင်ႈ **Game Development (Unreal Engine)** ဢမ်ႇၼၼ် **System Programming** လႆႈယဝ်ႉၶႃႈ။

---