
# Lesson 53: Polymorphism & OOP Review

### 1. Polymorphism ပဵၼ်သင်?

**Polymorphism** (လၢႆးႁၢင်ႈၼမ်) ပဵၼ်ၶေႃႈၵႂၢမ်း Greek ဢၼ်ပွင်ႇဝႃႈ "မီးလၢႆႁၢင်ႈ" ၶႃႈ။ ၼႂ်း OOP မၼ်းပွင်ႇဝႃႈ **"Object လၢႆလၢႆမဵဝ်း ၸၢင်ႈၸႂ်ႉ Method ဢၼ်မီးၸိုဝ်ႈမိူၼ်ၵၼ် ၵူၺ်းၵႃႈ ႁဵတ်းၵၢၼ်ပႅၵ်ႇပိူင်ႈၵၼ်"** ၶႃႈ။

#### 💻 တူဝ်ယၢင်ႇ:

ဝူၼ်ႉဝႃႈ ႁဝ်းမီး Class `Bird` လႄႈ `Penguin`။ ၶဝ်တင်းသွင်မီး Method `fly()` မိူၼ်ၵၼ် ၵူၺ်းၵႃႈ ႁဵတ်းၵၢၼ်ဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ။

```javascript
class Bird {
  fly() {
    console.log("Flying high in the sky!");
  }
}

class Penguin extends Bird {
  // Method Overriding (Polymorphism)
  fly() {
    console.log("I cannot fly, but I can swim!");
  }
}

const birds = [new Bird(), new Penguin()];

birds.forEach(bird => {
  bird.fly(); // ၸိုဝ်ႈမိူၼ်ၵၼ် ၵူၺ်းၵႃႈ ၽົນလႆႈ (Result) ပႅၵ်ႇၵၼ်
});

```

---

### 2. ႁုပ်ႈတွၼ်း OOP (The 4 Pillars)

တွၼ်ႃႇႁႂ်ႈပဵၼ် "ၸဝ်ႈပၢႆး OOP" တေႉတေႉ၊ ၸဝ်ႈၵဝ်ႇလူဝ်ႇတွၼ်းပိုၼ်ႉထၢၼ် 4 ယၢင်ႇၼႆႉၶႃႈ:

| Pillar | ၼႃႈတီႈ (Description) | Keyword ၼႂ်း JS |
| --- | --- | --- |
| **Encapsulation** | သိမ်းလပ်ႉၶေႃႈမုၼ်း ဢမ်ႇပၼ်ၵူၼ်းၼွၵ်ႈယုင်ႈ | `#privateField` |
| **Abstraction** | ၼႄၵူၺ်းတွၼ်ႈဢၼ်လူဝ်ႇၸႂ်ႉ၊ သိမ်း Logic ယုင်ႈယၢပ်ႈဝႆႉ | Class Methods |
| **Inheritance** | သိုပ်ႇပူၺ်ႈႁႅင်း Class ပေႃႈမႄႈ မႃးၸူးလုၵ်ႈလၢၼ် | `extends`, `super` |
| **Polymorphism** | ၸႂ်ႉၸိုဝ်ႈ Method မိူၼ်ၵၼ် တႃႇႁဵတ်းၵၢၼ်ပႅၵ်ႇၵၼ် | Overriding |

---

### 3. OOP Review Checklist

ဢွၼ်တၢင်းတေယဝ်ႉ Module ၼႆႉ၊ ၵူတ်ႇထတ်းတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇပွင်ႇၸႂ်ၸိူဝ်းၼႆႉယဝ်ႉႁႃႉ:

* [ ] ၸႂ်ႉ **`class`** တႃႇသၢင်ႈ Blueprint။
* [ ] ၸႂ်ႉ **`constructor`** တႃႇတႄႇပၼ်ၵႃႈၶၼ် Object။
* [ ] ၸႂ်ႉ **`get` / `set**` တႃႇၵုမ်းၵမ်လွင်ႈထုၵ်ႇမႅၼ်ႈၶေႃႈမုၼ်း။
* [ ] ၸႂ်ႉ **`static`** တႃႇ Method ဢၼ်ၸပ်းဝႆႉတီႈ Class။
* [ ] ၸႂ်ႉ **`?.`** တႃႇၶဝ်ႈႁႃၶေႃႈမုၼ်း ဢၼ်ဢမ်ႇၼႄႉၼွၼ်း။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* OOP ၸွႆႈႁႂ်ႈၵူတ်ႉႁဝ်း "ၸတ်းပႅၼ်ႇ" (Organized) လႄႈ ၸႂ်ႉၶိုၼ်းလႆႈငၢႆႈ (Reusable)။
* **Polymorphism** ၸွႆႈႁႂ်ႈႁဝ်းတႅမ်ႈၵူတ်ႉ ဢၼ်လႅတ်းၽႂ်း (Flexible) ၸွမ်းၼင်ႇ Object ၵူႈမဵဝ်းမဵဝ်း။
* တႃႇသေႇ၊ ဝူၼ်ႉဝႃႈ Object ပဵၼ် "သိုင်ႇ" (Things) သေ Class ပဵၼ် "ပိူင်" (Categories) ၶႃႈ။

---