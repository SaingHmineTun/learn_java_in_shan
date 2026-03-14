## 57) Inheritance: The 'extends' keyword

**Inheritance** (ၵၢၼ်သိုပ်ႇၶေႃ) ပဵၼ်ပိုၼ်ႉထၢၼ်ဢၼ်လမ်ႇလွင်ႈသုတ်းၼိုင်ႈယၢင်ႇၼႂ်း OOP။ မၼ်းပဵၼ်လၢႆးၵၢၼ်ဢၼ်ႁဝ်းသၢင်ႈ Class မႂ်ႇ ဢၼ်သိုပ်ႇဢဝ် Properties လႄႈ Methods တီႈ Class ဢၼ်မီးဝႆႉယူႇယဝ်ႉၼၼ်ႉမႃးၸႂ်ႉယဝ်ႉ။

---

### 1. တူဝ်လႂ်ပဵၼ်တူဝ်လႂ်? (Terminology)

မိူဝ်ႈႁဝ်းၸႂ်ႉ Inheritance, မၼ်းတေမီး Class သွင်ပိူင်:

* **Superclass (Parent)**: Class တူဝ်တႄႇ ဢၼ်ပၼ် Properties လႄႈ Methods (တူဝ်ယၢင်ႇ: Animal)။
* **Subclass (Child)**: Class တူဝ်ဢၼ်သိုပ်ႇဢဝ်ၶေႃႈမုၼ်းမႃး (တူဝ်ယၢင်ႇ: Dog)။

---

### 2. ပိူင်ၵၢၼ်ၸႂ်ႉ `extends`

ႁဝ်းၸႂ်ႉ Keyword **`extends`** တႃႇလၢတ်ႈဝႃႈ Class လုၵ်ႈၼႆႉ ပဵၼ်ၶိူဝ်းလဵဝ်ၵၼ်တင်း Class ပေႃႈမႄႇ။

**Example:**

```dart
// Parent Class
class Animal {
  int legs = 4;

  void eat() {
    print("This animal is eating.");
  }
}

// Subclass (သိုပ်ႇဢဝ်ၵူႈယၢမ်းတီႈ Animal)
class Dog extends Animal {
  void bark() {
    print("Woof! Woof!");
  }
}

void main() {
  var myDog = Dog();
  
  // ၸႂ်ႉ Field ဢၼ်သိုပ်ႇမႃး
  print("My dog has ${myDog.legs} legs."); 
  
  // ၸႂ်ႉ Method ဢၼ်သိုပ်ႇမႃး
  myDog.eat(); 
  
  // ၸႂ်ႉ Method ႁင်းၵူၺ်းမၼ်း
  myDog.bark(); 
}

```

---

### 3. "Is-A" Relationship

လၢႆးတူၺ်းဝႃႈ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Inheritance ႁႃႉဢမ်ႇၸႂ်ႉၼၼ်ႉ ႁဝ်းၸႂ်ႉပိူင်ၵၢၼ် **"Is-A"** (ပဵၼ်...)။

* Dog **is a** Animal. (မႅၼ်ႈ - ၸႂ်ႉ Inheritance လႆႈ)
* Car **is a** Vehicle. (မႅၼ်ႈ - ၸႂ်ႉ Inheritance လႆႈ)
* Student **is a** Person. (မႅၼ်ႈ - ၸႂ်ႉ Inheritance လႆႈ)
* *Engine **is a** Car?* (ဢမ်ႇမႅၼ်ႈ - Engine ပဵၼ်တွၼ်ႈၼိုင်ႈ "Has-a" ၵူၺ်း၊ ဢမ်ႇထုၵ်ႇလီ extends)

---

### 4. Why Use Inheritance? (ၽွၼ်းလီ)

1. **Code Reusability**: ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Code ဝႆႉၼႂ်း Parent Class ပွၵ်ႈလဵဝ်၊ Subclasses တင်းသဵင်ႈၸၢင်ႈၸႂ်ႉၸွမ်းၵၼ်လႆႈၵမ်းလဵဝ်။
2. **Organization**: ႁဵတ်းႁႂ်ႈ Code ႁဝ်းမီးပိူင်မီးသၢႆ (Hierarchy) ဢၼ်လူငၢႆႈ။
3. **Extensibility**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈထႅမ် "လွင်ႈလူးၵတ်ႉ" (Specialization) သႂ်ႇၼႂ်း Subclass လူၺ်ႈဢမ်ႇလူဝ်ႇၵႂႃႇမႄး Code ၼႂ်း Parent Class။

---

### 5. Important Rules in Dart

* **Single Inheritance**: ၼႂ်း Dart, Class ၼိုင်ႈဢၼ် သိုပ်ႇဢဝ် (extends) လႆႈၵူၺ်း **ၼိုင်ႈ Class** ပွၵ်ႈလဵဝ်။
* **Private Members**: Variable ဢၼ်မီး `_` (Private) တေဢမ်ႇသိုပ်ႇၵႂႃႇၸူး Subclass သင်ဝႃႈယူႇၵူၼ်းလိုင် File ၵၼ်။

---
