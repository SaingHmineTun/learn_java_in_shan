# Lesson 10: Modern Looping (for...of လႄႈ for...in)

မိူဝ်ႈႁဝ်းမီးၶေႃႈမုၼ်းဢၼ်ၵဵပ်းဝႆႉပဵၼ်သဵၼ်ႈမၢႆ (Array) ႁိုဝ် ပဵၼ်ၸုမ်း (Object)၊ JavaScript မီးလၢႆးပၼ်ႇလူဢၼ်သႅၼ်းသႃႇဝႆႉပၼ်ႁဝ်းယဝ်ႉ။

### 1. `for...of` (တႃႇပၼ်ႇလူ Array)

ႁဝ်းၸႂ်ႉ `for...of` ပိူဝ်ႈတေဢဝ် "ၵႃႈၶၼ်" (Value) ၼႂ်း Array ဢွၵ်ႇမႃးၼိုင်ႈတူဝ်ယဝ်ႉၼိုင်ႈတူဝ်။

**တူဝ်ယၢင်ႇ (Example):**

```javascript
const fruits = ["မၢၵ်ႇမူင်ႈ", "မၢၵ်ႇၵႅတ်း", "လိၼ်းၸီႈ"];

for (const fruit of fruits) {
  console.log(`ၵိၼ် ${fruit}`);
}

```

* **ႁႅင်းလီ:** မၼ်းငၢႆႈ၊ ဢမ်ႇလူဝ်ႇတႅမ်ႈ `let i = 0; i < fruits.length; i++` ႁႂ်ႈသုၵ်ႉယုင်ႈ။
* **ၵၢၼ်ၸႂ်ႉတူဝ်:** ၸႂ်ႉလႆႈတင်း Arrays, Strings, လႄႈ NodeLists။

---

### 2. `for...in` (တႃႇပၼ်ႇလူ Object)

ႁဝ်းၸႂ်ႉ `for...in` ပိူဝ်ႈတေပၼ်ႇလူ "ႁူဝ်ၶေႃႈ" (Keys) ၼႂ်း Object။

**တူဝ်ယၢင်ႇ (Example):**

```javascript
const car = {
  brand: "Toyota",
  model: "Vigo",
  year: 2022
};

for (const key in car) {
  console.log(`${key}: ${car[key]}`);
}

```

* **သတိ:** `for...in` ၼႆႉမၼ်းတေပၼ် "ၸိုဝ်ႈႁူဝ်ၶေႃႈ" (Key) မၼ်းဢွၵ်ႇမႃး။ ပိူဝ်ႈတေဢဝ် "ၵႃႈၶၼ်" (Value) မၼ်းၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ `car[key]` ၶႃႈ။

---

### 3. ပႅၵ်ႇပိူင်ႈၵၼ်ၸိူင်ႉႁိုဝ်? (Difference)

| Loop Type | ၸႂ်ႉတႃႇ (Target) | ဢၼ်မၼ်းပၼ်ဢွၵ်ႇမႃး (Output) |
| --- | --- | --- |
| **`for...of`** | Arrays, Strings | **Value** (ၵႃႈၶၼ်) |
| **`for...in`** | Objects | **Key** (ၸိုဝ်ႈ/ႁူဝ်ၶေႃႈ) |

> **Ebook Note:** တႃႇတွၼ်းငၢႆႈငၢႆႈ - **"O"**f တႃႇ **"O"**bject (ဢမ်ႇၸႂ်ႈ!)၊ ပၼ်ႇပိၼ်ႇၵၼ်ၶႃႈ။
> * **`for...of`** -> တႃႇ **Array** (ဢဝ် Value)
> * **`for...in`** -> တႃႇ **Object** (ဢဝ် Key)
>
>

---

### 4. `forEach()` Method (ပႅၵ်ႉၵမ်ႉ)

ၼႆႉၵေႃႈပဵၼ်လၢႆးပၼ်ႇလူ Array ဢၼ်ၵႆႉၸႂ်ႉၼမ်သုတ်း။ မၼ်းၸႂ်ႉ Callback Function ပိူဝ်ႈတေႁဵတ်းၵၢၼ်။

```javascript
const numbers = [10, 20, 30];

numbers.forEach((num, index) => {
  console.log(`တီႈယူႇ ${index} မီးၵႃႈၶၼ် ${num}`);
});

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 10)

* **`for...of`**: ငၢႆႈသုတ်းတႃႇပၼ်ႇလူ Arrays။
* **`for...in`**: ၸႂ်ႉတႃႇတူၺ်း Properties ၼႂ်း Objects။
* **Break/Continue**: ၸႂ်ႉလႆႈၼႂ်း `for...of` လႄႈ `for...in` ယူႇ၊ ၵူၺ်းၵႃႈ ၸႂ်ႉၼႂ်း `forEach` ဢမ်ႇလႆႈၶႃႈ။

---