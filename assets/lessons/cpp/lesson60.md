# Lesson 8.60: Thinking in Objects: Procedural vs. OOP

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
တေႃႇထိုင်ယၢမ်းလဵဝ် ႁဝ်းတႅမ်ႈပရူဝ်ႇၶႅမ်ႇလူၺ်ႈလၢႆး **Procedural Programming** (ၵၢၼ်တႅမ်ႈၸွမ်းတွၼ်ႈ) ၶႃႈ။
မၼ်းမိူၼ်ၼင်ႇ "သဵၼ်ႈမၢႆၵၢၼ်ႁဵတ်း" (To-do list) ဢၼ်ႁပ်ႉ Input၊ ၼပ်ႉသွၼ်ႇ၊ သေၼေ Output ယဝ်ႉ။
ၵူၺ်းၵႃႈ မိူဝ်ႈပရူဝ်ႇၶႅမ်ႇယႂ်ႇမႃး၊ လၢႆးၼႆႉမၼ်းယၢပ်ႇတွၼ်ႈတႃႇၵုမ်းထိင်းၶႃႈ။
**Object-Oriented Programming (OOP)** ၸင်ႇဢွၵ်ႇမႃး တႃႇႁႂ်ႈႁဝ်းၸႅၵ်ႇပရူဝ်ႇၶႅမ်ႇ ၸွမ်းၼင်ႇ "တူဝ်ၶွင်" တႄႉတႄႉၼၼ်ႉၶႃႈယဝ်ႉ။

---

### 1. Procedural Programming ပဵၼ်သင်?
မၼ်းပဵၼ်ၵၢၼ်ဝူၼ်ႉဝႃႈ **"တေႁဵတ်းသင်?" (What to do?)**။
* **Focus**: ယူႇတီႈ Function (ၵၢၼ်ႁဵတ်း)။
* **Data**: ၶေႃႈမုၼ်း လႄႈ Function ၸႅၵ်ႇၵၼ်ဝႆႉ။
* **Structure**: တႅမ်ႈၸွမ်းထႅဝ် 1, 2, 3, 4။
* **Example**: ပရူဝ်ႇၶႅမ်ႇၼပ်ႉသွၼ်ႇၸၼ်ႉလုၵ်ႈႁဵၼ်း ဢၼ်ႁပ်ႉတူဝ်ၼပ်ႉသေ ၼေၽွၼ်းဢွၵ်ႇ။



---

### 2. Object-Oriented Programming (OOP) ပဵၼ်သင်?
မၼ်းပဵၼ်ၵၢၼ်ဝူၼ်ႉဝႃႈ **"ၽႂ်ပဵၼ်ၵူၼ်းႁဵတ်း?" (Who is doing it?)**။
* **Focus**: ယူႇတီႈ Object (တူဝ်ၶွင်)။
* **Data & Behavior**: ဢဝ်ၶေႃႈမုၼ်း (Attributes) လႄႈ ၵၢၼ်ႁဵတ်း (Methods) မႃးႁူမ်ႈၵၼ်ဝႆႉ ၼႂ်းၵွၵ်းဢၼ်လဵဝ်။
* **Structure**: မိူၼ်ၼင်ႇၵၢၼ်ၵေႃႇသၢင်ႈလူၺ်ႈတူဝ် Lego။
* **Example**: တူဝ်ၵႃး (Car Object) ဢၼ်မီး "သီ၊ မေႃႇတႄႇ၊ မၢႆၵႃး" (Data) လႄႈ "လႅၼ်ႈ၊ ၵိုတ်း" (Behavior) ႁူမ်ႈၵၼ်။



---

### 3. Comparison (ၵၢၼ်ၼိူင်းတူၺ်း)

| Feature | Procedural Programming | Object-Oriented Programming |
| :--- | :--- | :--- |
| **Concept** | တႅမ်ႈၸွမ်းၶၼ်တွၼ်ႈ (Step-by-step) | တႅက်ႈၸွမ်းတူဝ်ၶွင် (Objects) |
| **Security** | ၶေႃႈမုၼ်းဢမ်ႇလွတ်ႈၽေး (Global access) | ၶေႃႈမုၼ်းလွတ်ႈၽေး (Encapsulation) |
| **Reusability** | ယၢပ်ႇ (လူဝ်ႇ Copy ၶူတ်ႉ) | ငၢႆႈ (ၸႂ်ႉ Classes ၶိုၼ်းလႆႈ) |
| **Complexity** | ၸႂ်ႉတႃႇပရူဝ်ႇၶႅမ်ႇဢွၼ်ႇ | ၸႂ်ႉတႃႇပရူဝ်ႇၶႅမ်ႇယႂ်ႇလူင် (Software Engineering) |

---

### 4. တူဝ်ယၢင်ႇၼႂ်းလူၵ်ႈတႄႉ (The Car Example)
ပေႃးႁဝ်းတေတႅမ်ႈပရူဝ်ႇၶႅမ်ႇလွင်ႈ "ၵႃး":
* **Procedural Style**: ႁဝ်းတေတႅမ်ႈ Function `drive(speed)`, `brake(pedal)`, `refuel(liters)` သေသူင်ႇ Variable တူဝ်ၼပ်ႉသႂ်ႇၼႂ်းမၼ်း။
* **OOP Style**: ႁဝ်းတေပိုၼ်ၽၢဝ်ႇ **Class Car**။ ၵႃးၵူႈလမ်း တေမီးၶေႃႈမုၼ်းမၼ်းႁင်းၵူၺ်း သေႁဝ်းၵူၺ်းသင်ႇဝႃႈ `myCar.drive()` ၵူၺ်းၶႃႈ။



---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Procedural**: ၼဵၵ်းၼၵ်း (Focus) တီႈ **ၵၢၼ်ႁဵတ်း (Functions)**။
* **OOP**: ၼဵၵ်းၼၵ်း (Focus) တီႈ **တူဝ်ၶွင် (Objects)** ဢၼ်ႁူမ်ႈဢဝ် Data လႄႈ Logic ဝႆႉၸွမ်းၵၼ်။
* OOP ၸွႆႈႁႂ်ႈႁဝ်းတႅမ်ႈပရူဝ်ႇၶႅမ်ႇ ဢၼ် "လူငၢႆႈ၊ မႄးငၢႆႈ၊ လႄႈ ၸႂ်ႉၶိုၼ်းငၢႆႈ" ၶႃႈယဝ်ႉ။

---