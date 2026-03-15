# Lesson 40: Looping through Objects (for-in)

ၼႂ်း JavaScript၊ Object တေဢမ်ႇမီး "မၢႆ Index" (0, 1, 2) မိူၼ် Array။ ၵွပ်ႈၼၼ် ႁဝ်းၸင်ႇလူဝ်ႇၸႂ်ႉ `for...in` တႃႇတႆႇႁႃ **Keys (Properties)** ၶွင်မၼ်းၶႃႈ။

### 1. ပိူင်တႅမ်ႈ (Syntax)

လၢႆးၼႆႉမၼ်းတေ "ထုတ်ႇ" ဢဝ် **ၸိုဝ်ႈ (Key)** ဢွၵ်ႇမႃးတူဝ်ၼိုင်ႈယဝ်ႉတူဝ်ၼိုင်ႈၶႃႈ။

```javascript
for (const key in object) {
  // ၵူတ်ႉဢၼ်တေႁဵတ်းၵၢၼ်ၸွမ်း key ၼၼ်ႉ
}

```

---

### 💻 တူဝ်ယၢင်ႇ (Code Example)

ႁဝ်းမႃးတူၺ်းလၢႆးဢဝ်တင်း **Key** လႄႈ **Value** ဢွၵ်ႇမႃးၸႂ်ႉႁူမ်ႈၵၼ်ၶႃႈ:

```javascript
const smartphone = {
  brand: "Apple",
  model: "iPhone 15",
  year: 2023,
  color: "Titanium"
};

for (const property in smartphone) {
  // property တေပဵၼ် "brand", "model", ...
  // ႁဝ်းၸႂ်ႉ Bracket Notation [ ] တႃႇဢဝ် Value မၼ်းဢွၵ်ႇမႃး
  console.log(`${property}: ${smartphone[property]}`);
}

/* Result:
brand: Apple
model: iPhone 15
year: 2023
color: Titanium
*/

```

---

### 2. လွင်ႈပႅၵ်ႇပိူင်ႈ ဢၼ်လမ်ႇလွင်ႈ (For-in vs. For-of)

တွၼ်ႈၼႆႉၵႆႉႁဵတ်းႁႂ်ႈၵူၼ်းႁဵၼ်းမႂ်ႇ "ယုင်ႈ" (Confused) ၵၼ်ၼႃႇၶႃႈ။ ႁႂ်ႈတွၼ်းဝႆႉၼႆၶႃႈ:

* **`for...in`**: ၸႂ်ႉတႃႇ **Object** (တႆႇႁႃ **Key** / Index)။
* **`for...of`**: ၸႂ်ႉတႃႇ **Array** (တႆႇႁႃ **Value** ၵမ်းလဵဝ်)။

> ⚠️ **သတိ:** ဢမ်ႇလီၸႂ်ႉ `for...in` တႃႇ Array ၶႃႈ၊ ယွၼ်ႉမၼ်းၸၢင်ႈတႆႇႁႃ Index ပဵၼ် String သေ ႁဵတ်းႁႂ်ႈၵၢၼ်ၼပ်ႉသွၼ်ႇ (Calculation) ၸဝ်ႈၵဝ်ႇၽိတ်းပိူင်ႈလႆႈ။

---

### 3. လၢႆးတၢင်ႇဢၼ် (Object.keys, Object.values, Object.entries)

ၼႂ်း Modern JS၊ ႁဝ်းယင်းမီးလၢႆးဢၼ်ၸၢင်ႈဢဝ် Object လႅၵ်ႈပဵၼ် Array သေၸႂ်ႉ `for...of` လႆႈၵေႃႈမီးၶႃႈ:

* **`Object.keys(obj)`**: ဢဝ် Key တင်းမူတ်းသႂ်ႇၼႂ်း Array။
* **`Object.values(obj)`**: ဢဝ် Value တင်းမူတ်းသႂ်ႇၼႂ်း Array။
* **`Object.entries(obj)`**: ဢဝ်တင်း Key လႄႈ Value သႂ်ႇၼႂ်း Array (ႁဵတ်းပဵၼ် Pair)။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* ၸႂ်ႉ **`for...in`** မိူဝ်ႈလူဝ်ႇ "ၵူတ်ႇထတ်း" (Inspect) ၶေႃႈမုၼ်းၼႂ်း Object။
* တွၼ်းဝႆႉဝႃႈ `in` ပဵၼ် **In**ventory (တူၺ်းၶူဝ်းၼႂ်း Object)။
* တႃႇသေႇ၊ ၸႂ်ႉ **Bracket Notation `obj[key]**` တႃႇဢဝ်ၵႃႈၶၼ်ဢွၵ်ႇမႃးၼႂ်း loop ၼႆႉၶႃႈ။

---