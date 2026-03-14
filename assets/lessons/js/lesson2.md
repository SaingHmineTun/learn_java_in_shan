# Lesson 2: Variables & Scope (တီႈၵဵပ်းၶေႃႈမုၼ်း လႄႈ ၶွပ်ႇၵင်ႈ)

In JavaScript, a variable is like a container (ပိုတ်ႇ/ပုင်း) where we store data. But not all containers are the same.

### 1. The Three Keywords (သၢမ်လၢႆးတႅမ်ႈ)

Before ES6 (2015), we only had `var`. Now, we use `let` and `const` because they are safer.

| Keyword | Re-assignable? (လႅၵ်ႈလၢႆႈလႆႈ?) | Scope (ၶွပ်ႇၵင်ႈ) | Description |
| --- | --- | --- | --- |
| **`var`** | Yes | Function | The "Old Way." It has many bugs. |
| **`let`** | Yes | Block `{ }` | Use this for values that will change. |
| **`const`** | **No** | Block `{ }` | Use this for constants (values that stay the same). |

> **Ebook Note:** Always tell your readers: **"Use `const` by default. If you know the value must change, use `let`. Never use `var`."**

---

### 2. Understanding Scope (ပွင်ႇၸႂ်လွင်ႈ ၶွပ်ႇၵင်ႈ)

Scope determines where your variables are accessible. Think of it like a house with rooms.

#### A. Global Scope (ဝူင်းၵၢၼ်ၵူႈလႅတ်း)

Variables defined outside of any function or block.

* *Metaphor:* Like the **Sun (ၵၢင်ဝၼ်း)**. Everyone outside or inside any house can see it.

#### B. Function Scope (ဝူင်းၵၢၼ်ၼႂ်း Function)

Variables defined inside a `function`.

* *Metaphor:* Like a **TV inside a house**. People outside on the street cannot see what you are watching.

#### C. Block Scope (ဝူင်းၵၢၼ်ၼႂ်း { }) - *ES6 Feature*

Variables defined inside curly braces `{ }`, like an `if` statement or a `loop`.

* Only `let` and `const` follow this rule. `var` does NOT.
* *Metaphor:* Like a **Flashlight inside a cupboard**. It only lights up that specific small space.

---

### 3. The "Leak" of `var` (လွင်ႈတၢင်းဢၼ် `var` ပၼ်ပၼ်ႁႃ)

One reason `var` is dangerous is that it doesn't care about Block Scope.

```javascript
if (true) {
  var ghost = "I am everywhere";
  let secret = "I am hidden";
}

console.log(ghost);  // "I am everywhere" (It leaked out!)
console.log(secret); // Error: secret is not defined (Correct behavior)

```

In your Shan ebook, explain that `var` is like a **"Ghost" (ၽီ)**—it can walk through the walls of `{ }` blocks and cause bugs in your program. `let` and `const` stay inside the walls where they belong.

---

### 4. Shadowing (ၵၢၼ်တႅမ်ႈတပ်ႉ)

If you create a variable with the same name inside a local scope, it "shadows" (ႁဵတ်းႁၢႆးတူၵ်းတပ်ႉ) the global one.

```javascript
const money = 100; // Global

function spend() {
  const money = 20; // Local (Shadows the global one)
  console.log(money); // 20
}

spend();
console.log(money); // 100 (The global one is safe)

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 1.2)

* **`const`**: တႅမ်ႈဝႆႉတႃႇ ၶေႃႈမုၼ်းဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈ (Constants).
* **`let`**: တႅမ်ႈဝႆႉတႃႇ ၶေႃႈမုၼ်းဢၼ်တေလႅၵ်ႈလၢႆႈ (Variables).
* **Global Scope**: ၸႂ်ႉလႆႈၵူႈတီႈ။
* **Block Scope**: ၸႂ်ႉလႆႈၼႂ်း `{ }` ၵူၺ်း (Safe & Clean).

---