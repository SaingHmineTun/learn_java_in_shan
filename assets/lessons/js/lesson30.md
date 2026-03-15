# Lesson 30: Modifying: splice, slice, and concat

### 1. `slice()` (ၵၢၼ်ထုတ်ႇဢဝ်/ၵေႃႇပီႇ)

`slice` ပွင်ႇဝႃႈ "တတ်းဢဝ်ပွတ်းၼိုင်ႈ" ၶႃႈ။ မၼ်းတေ **ဢမ်ႇလႅၵ်ႈလၢႆႈ** Array တူဝ်တေႉ၊ ၵူၺ်းၵႃႈ မၼ်းတေသူင်ႇ Array ဢၼ်မႂ်ႇဢွၵ်ႇမႃးပၼ်ၶႃႈ။

* **Syntax**: `array.slice(start, end)` (ၼပ်ႉတႄႇတီႈ start တေႃႇထိုင် **ဢွၼ်တၢင်း** end)။

```javascript
const colors = ["Red", "Green", "Blue", "Yellow", "Pink"];
const favorite = colors.slice(1, 4); 

console.log(favorite); // ["Green", "Blue", "Yellow"]
console.log(colors);   // ["Red", "Green", "Blue", "Yellow", "Pink"] (တူဝ်တေႉဢမ်ႇလႅၵ်ႈလၢႆႈ)

```

---

### 2. `splice()` (ၵၢၼ်တတ်းဢွၵ်ႇ/ထႅမ်သႂ်ႇ)

`splice` ပဵၼ် "မိတ်ႈၽႃႇတတ်း" ၶႃႈ။ မၼ်းတေ **လႅၵ်ႈလၢႆႈ** Array တူဝ်တေႉၵမ်းလဵဝ်။ ႁဝ်းၸႂ်ႉမၼ်းတႃႇ "ထွၼ်" ႁိုဝ် "ထႅမ်" ၶေႃႈမုၼ်းတီႈ Index ဢၼ်ႁဝ်းၶႂ်ႈလႆႈၼၼ်ႉၶႃႈ။

* **Syntax**: `array.splice(start, deleteCount, item1, item2, ...)`

```javascript
const months = ["Jan", "March", "April", "June"];

// တီႈ Index 1, ထွၼ်ဢွၵ်ႇ 0 တူဝ်, သေထႅမ် "Feb" သႂ်ႇ
months.splice(1, 0, "Feb"); 
console.log(months); // ["Jan", "Feb", "March", "April", "June"]

// တီႈ Index 3, ထွၼ်ဢွၵ်ႇ 2 တူဝ်
months.splice(3, 2); 
console.log(months); // ["Jan", "Feb", "March"]

```

---

### 3. `concat()` (ၵၢၼ်ဢဝ်မႃးၵပ်းၵၼ်)

`concat` (Concatenate) ၸႂ်ႉတႃႇဢဝ် Array 2 ဢၼ် (ႁိုဝ်ၼမ်လိူဝ်ၼၼ်ႉ) မႃးၵပ်းၵၼ် ႁႂ်ႈပဵၼ် Array လဵဝ်ၵၼ်။ မၼ်းတေ **ဢမ်ႇလႅၵ်ႈလၢႆႈ** Array တူဝ်တေႉၶႃႈ။

```javascript
const arr1 = ["a", "b"];
const arr2 = ["c", "d"];
const combined = arr1.concat(arr2);

console.log(combined); // ["a", "b", "c", "d"]

```

---

### 💡 လွင်ႈပႅၵ်ႇပိူင်ႈ ဢၼ်လမ်ႇလွင်ႈ

| Method | လႅၵ်ႈလၢႆႈ Array တူဝ်တေႉ? (Mutate) | ၼႃႈတီႈ |
| --- | --- | --- |
| **`slice`** | ဢမ်ႇလႅၵ်ႈ (No) | ၵေႃႇပီႇဢဝ်ပွတ်းၼိုင်ႈဢွၵ်ႇမႃး |
| **`splice`** | လႅၵ်ႈ (Yes) | ထွၼ်ဢွၵ်ႇ ႁိုဝ် ထႅမ်သႂ်ႇ တီႈၵၢင် Array |
| **`concat`** | ဢမ်ႇလႅၵ်ႈ (No) | ဢဝ်သွင်ဢၼ်မႃးၸပ်းၵၼ် |

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* ၸႂ်ႉ **`slice`** မိူဝ်ႈၶႂ်ႈလႆႈၶေႃႈမုၼ်းပွတ်းၼိုင်ႈ လူၺ်ႈဢမ်ႇၶႂ်ႈယုင်ႈတင်း Array ငဝ်ႈတိုၼ်း။
* ၸႂ်ႉ **`splice`** မိူဝ်ႈလူဝ်ႇ "တတ်းပႅတ်ႈ" ႁိုဝ် "သႂ်ႇၶဝ်ႈ" တီႈဢွင်ႈတီႈတႅတ်ႉတေႃး။
* တွၼ်းဝႆႉဝႃႈ `slice` (မီးတူဝ် 'c' မိူၼ် Copy) — မၼ်းတေ Copy ဢွၵ်ႇမႃးၵူၺ်းၶႃႈ။

---