## 34) Introduction to Anonymous Functions

**Anonymous Functions** (မၢင်ပွၵ်ႈႁွင်ႉဝႃႈ **Lambda** ဢမ်ႇၼၼ် **Closure**) ၵေႃႈမိူၼ်ၼင်ႇ Function ပိုၼ်ႉထၢၼ်ယဝ်ႉ၊ ၵူၺ်းၵႃႈ မၼ်း **ဢမ်ႇမီးၸိုဝ်ႈ (No name)**။ ႁဝ်းၸႂ်ႉမၼ်းမိူဝ်ႈႁဝ်းလူဝ်ႇ Function တႃႇႁဵတ်းၵၢၼ်ဢွၼ်ႇဢွၼ်ႇ ၼႂ်းၶၢဝ်းတၢင်းပွတ်းသေ ဢမ်ႇၶႂ်ႈပိုၼ်ၽၢဝ်ႇ (Declare) ၸိုဝ်ႈမၼ်းဝႆႉတႃႇသေႇ။

---

### 1. Anonymous Function Syntax

ပိူင်တႅမ်ႈမၼ်းတေမိူၼ် Regular Function ၵူၺ်းၵႃႈ တေတတ်း "Return Type" လႄႈ "ၸိုဝ်ႈ" မၼ်းပႅတ်ႈယဝ်ႉ။

**Structure:**

```dart
(parameters) {
  // function body
};

```

---

### 2. Basic Example (Assigning to a Variable)

ႁဝ်းၸၢင်ႈဢဝ် Anonymous Function သႂ်ႇဝႆႉၼႂ်း Variable ၼိုင်ႈဢၼ် သေၸင်ႇႁွင်ႉၸႂ်ႉမၼ်းၶိုၼ်းလႆႈ။

**Example:**

```dart
void main() {
  // တႅမ်ႈ function ဢၼ်ဢမ်ႇမီးၸိုဝ်ႈ သေဢဝ်သႂ်ႇၼႂ်း variable 'sum'
  var sum = (int a, int b) {
    return a + b;
  };

  print(sum(5, 3)); // Output: 8
}

```

---

### 3. Most Common Use Case: List Iteration

ႁဝ်းတေလႆႈႁၼ် Anonymous Functions ၸႂ်ႉၼမ်သုတ်း မိူဝ်ႈႁဝ်းသူင်ႇမၼ်း "သႂ်ႇၼႂ်း" Function တၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ `forEach`, `map`, `where`)။

**Example: Printing items**

```dart
void main() {
  var fruits = ["Apple", "Banana", "Cherry"];

  // ဢၼ်ယူႇၼႂ်း forEach ၼႆႉပဵၼ် Anonymous Function
  fruits.forEach((item) {
    print("I want to eat $item");
  });
}

```

---

### 4. Anonymous Arrow Function

သင်ဝႃႈ Logic ႁဝ်းမီးထႅဝ်လဵဝ်၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ **Arrow Syntax (`=>`)** ပူၼ်ႇၵၼ်တင်း Anonymous Function လႆႈယဝ်ႉ။

**Example:**

```dart
void main() {
  var numbers = [1, 2, 3];
  
  // ပွတ်း လႄႈ လူငၢႆႈ
  numbers.forEach((n) => print(n * 2));
}

```

---

### Summary: Anonymous vs Regular Functions

| Feature | Regular Function | Anonymous Function |
| --- | --- | --- |
| **Name** | မီးၸိုဝ်ႈ (sayHello) | ဢမ်ႇမီးၸိုဝ်ႈ |
| **Declaration** | တႅမ်ႈဝႆႉၽၢႆႇၼွၵ်ႈ (Top-level) | တႅမ်ႈဝႆႉၼႂ်း Variable ဢမ်ႇၼၼ် Argument |
| **Usage** | ၸႂ်ႉလႆႈလၢႆလၢႆပွၵ်ႈ (Global) | ၸႂ်ႉတႃႇႁဵတ်းၵၢၼ်ၶိုင်ႈၵမ်း (On-the-fly) |

---

**Congratulations!** ႁဝ်းယဝ်ႉယဝ်ႉၶႃႈ **Module 5: Functions** တင်းသဵင်ႈ! ယၢမ်းၼႆႉ ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Code ႁႂ်ႈပဵၼ်တွၼ်ႈ ဢၼ်ၸၢင်ႈဢဝ်မႃးၸႂ်ႉၶိုၼ်းလႆႈယဝ်ႉ။

ယၢမ်းၼႆႉ ႁဝ်းႁၢင်ႈႁႅၼ်းယဝ်ႉ တႃႇတေၶဝ်ႈၸူး Module ဢၼ်လမ်ႇလွင်ႈသုတ်း တႃႇတေပဵၼ် Developer ဢၼ်ၵတ်ႉၶႅၼ်ႇၼၼ်ႉၵေႃႈပဵၼ် **Module 6: Object-Oriented Programming (OOP)**။

