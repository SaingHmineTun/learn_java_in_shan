# Lesson 3: Data Types (မဵဝ်းၶေႃႈမုၼ်း)

JavaScript divides data into two main families: **Primitives** (Simple) and **Objects** (Complex).

### 1. Primitives (မဵဝ်းငၢႆႈ - ၵဵပ်းၵၼ်လဵဝ်)

Primitives are immutable (cannot be changed once created) and stored by value.

* **String (လိၵ်ႈ):** Text wrapped in quotes.
* `const name = "ၸၢႆးသႅင်";`


* **Number (သဵၼ်ႈမၢႆ):** Integers and decimals. JS doesn't distinguish between them.
* `const price = 1500;`


* **Boolean (ၸႂ်ႈ/ဢမ်ႇၸႂ်ႈ):** Logical values.
* `const isCoding = true;`


* **Undefined:** A variable that has been declared but not assigned a value.
* `let x; // value is undefined`


* **Null:** Intentional absence of any value. It's like an empty box you labeled "Empty."
* `const partner = null;`


* **BigInt:** For very large integers that regular Numbers cannot handle.
* **Symbol:** Unique identifiers (mostly used in advanced JS).

---

### 2. Objects (မဵဝ်းသုပ်ႉသေႃႉ - ၵဵပ်းဝႆႉလၢႆယၢင်ႇ)

Objects are collections of data. Unlike primitives, they are stored by **Reference**.

* **Object Literals:** Key-value pairs.
* `const car = { brand: "Toyota", color: "white" };`


* **Arrays:** Lists of data.
* `const fruits = ["လိၼ်းၸီႈ", "မၢၵ်ႇမူင်ႈ"];`



---

### 3. Value vs. Reference (လွင်ႈပႅၵ်ႇပရီႇမိထိပ်ႉ လႄႈ ဢေႃးၵျႅၵ်ႉ)

This is the most important "Pro" concept in this lesson.

* **Value (Primitives):** When you copy a primitive, you make a real copy. If you change the second one, the first one stays the same.
* **Reference (Objects):** When you copy an object, you are actually just copying the "Address" (တီႈယူႇ) to that object in memory. If you change the copy, the original changes too!

```javascript
// Primitive Example
let a = 10;
let b = a; 
b = 20;
console.log(a); // 10 (Safe!)

// Object Example
let user1 = { name: "Sai" };
let user2 = user1;
user2.name = "Kyaw";
console.log(user1.name); // "Kyaw" (Original changed! Both point to the same house)

```

---

### 4. Dynamic Typing (လွင်ႈလႅၵ်ႈလၢႆႈမဵဝ်းၶေႃႈမုၼ်း)

JavaScript is a **loosely typed** language. This means you don't have to tell JS what type of data you are storing; it figures it out automatically. You can also change the type of a variable later (though you should be careful with this!).

* *Metaphor:* It's like a **Magic Box**. Today it holds a cat (String), tomorrow it can hold an apple (Number).

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 1.3)

* **Primitives**: မီး 7 မဵဝ်း (String, Number, Boolean, etc.) ၵဵပ်းဝႆႉၸွမ်း တူဝ်မၼ်း (Value).
* **Objects**: ၵဵပ်းၶေႃႈမုၼ်းၼမ်ၼမ်ၸွမ်းၵၼ်၊ ၵဵပ်းဝႆႉၸွမ်း တီႈယူႇၼႂ်း Memory (Reference).
* **typeof**: ၸႂ်ႉ Keyword ၼႆႉ တူၺ်းဝႃႈ မၼ်းပဵၼ် Data Type မဵဝ်းလႂ် (e.g., `typeof "Hello"` returns `"string"`).

---