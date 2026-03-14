# Lesson 24: Array Iteration Methods (ၵၢၼ်ပၼ်ႇလူၶေႃႈမုၼ်း)

မိူဝ်ႈႁဝ်းမီးၶေႃႈမုၼ်းၼပ်ႉႁဵင်၊ ႁဝ်းဢမ်ႇၸၢင်ႈႁွင်ႉ `array[0]`, `array[1]` ၵႂႃႇၸိူင်ႉၼၼ်လႆႈ။ ႁဝ်းလူဝ်ႇၸႂ်ႉ Methods ဢၼ်ၸွႆႈႁဝ်း "ပၼ်ႇ" တူၺ်းၶေႃႈမုၼ်းၵူႈတူဝ်ႁင်းၵူၺ်းမၼ်းၶႃႈ။

### 1. `.forEach()`

ၼႆႉပဵၼ်လၢႆးဢၼ်ငၢႆႈသုတ်း တႃႇတႅၼ်းၵၢၼ်ၸႂ်ႉ `for` loop။ မၼ်းတေပၼ်ႇႁဵတ်းၵၢၼ် (Callback Function) တေႃႇၶေႃႈမုၼ်းၵူႈတူဝ်ၼႂ်း Array ၶႃႈ။

```javascript
const students = ["ၸၢႆးၶမ်း", "ၼၢင်းမူဝ်", "ၸၢႆးလၢဝ်"];

students.forEach(function(item, index) {
  console.log(`${index + 1}. မႂ်ႇသုင် ${item}`);
});
/* ဢွၵ်ႇ:
1. မႂ်ႇသုင် ၸၢႆးၶမ်း
2. မႂ်ႇသုင် ၼၢင်းမူဝ်
3. မႂ်ႇသုင် ၸၢႆးလၢဝ်
*/

```

> **မၢႆတွၼ်း:** `.forEach()` ဢမ်ႇ Return ၵႃႈၶၼ်သင်ဢွၵ်ႇမႃး (undefined)။ မၼ်းၸႂ်ႉတႃႇ "ႁဵတ်းၵၢၼ်သင်ဝႆႉၼိုင်ႈယၢင်ႇ" ၵူၺ်း။

---

### 2. `.indexOf()` & `.lastIndexOf()`

ၸႂ်ႉတႃႇႁႃ "မၢႆထႅဝ်" (Index) ၶွင်ၶေႃႈမုၼ်းဢၼ်ႁဝ်းၶႂ်ႈႁႃ။

* **`.indexOf()`**: ႁႃလုၵ်ႉၽၢႆႇၼႃႈ။
* **`.lastIndexOf()`**: ႁႃလုၵ်ႉၽၢႆႇလင်။

```javascript
const tools = ["Hammer", "Saw", "Hammer", "Drill"];

console.log(tools.indexOf("Hammer"));     // 0
console.log(tools.lastIndexOf("Hammer")); // 2
console.log(tools.indexOf("Axe"));        // -1 (သင်ဢမ်ႇမီး)

```

---

### 3. `.includes()`

ၼႆႉပဵၼ်လၢႆးၵူတ်ႇထတ်းဢၼ်ငၢႆႈသုတ်း ဝႃႈၼႂ်း Array မီးၶေႃႈမုၼ်းၼၼ်ႉယူႇႁႃႉ? မၼ်းတေ Return ပဵၼ် `true` ႁိုဝ် `false` ၶႃႈ။

```javascript
const guestList = ["Sai", "Nan", "Lon"];

if (guestList.includes("Nan")) {
  console.log("ၶဝ်ႈမႃးလႆႈၶႃႈ!");
}

```

---

### 4. `.find()` & `.findIndex()` (ES6)

ၸႂ်ႉတႃႇႁႃၶေႃႈမုၼ်းဢၼ် "မႅၼ်ႈၸွမ်းပၵ်းပိူင်" ဢၼ်ႁဝ်းတႅပ်းတတ်း။

* **`.find()`**: Return ဢဝ် "တူဝ်ၶေႃႈမုၼ်း" တူဝ်ဢွၼ်တၢင်းသုတ်းဢၼ်မႅၼ်ႈ။
* **`.findIndex()`**: Return ဢဝ် "မၢႆထႅဝ်" (Index) ၶွင်မၼ်း။

```javascript
const ages = [12, 18, 25, 30];

const adult = ages.find(age => age >= 18); 
console.log(adult); // 18 (မၼ်းတေဢဝ်တူဝ်ဢွၼ်တၢင်းသုတ်းၵူၺ်း)

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* ၸႂ်ႉ **`.forEach`** မိူဝ်ႈၶႂ်ႈပၼ်ႇႁဵတ်းၵၢၼ်သင်ဝႆႉၼိုင်ႈယၢင်ႇ။
* ၸႂ်ႉ **`.includes`** မိူဝ်ႈၶႂ်ႈၵူတ်ႇထတ်းဝႃႈ "မီး/ဢမ်ႇမီး"။
* ၸႂ်ႉ **`.find`** မိူဝ်ႈၶႂ်ႈႁႃၶေႃႈမုၼ်း ဢၼ်မီးပၵ်းပိူင် (မိူၼ်ၼင်ႇ ႁႃ User ID)။

---