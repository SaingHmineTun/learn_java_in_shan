# Lesson 37: For Loops: Traditional Iteration

**Loop** ပဵၼ်ၵၢၼ်သင်ႇႁႂ်ႈၵူတ်ႉတွၼ်ႈၼိုင်ႈ "လႅၼ်ႈသမ်ႉ" တိၵ်းတိၵ်း တေႃႇထိုင်ၶေႃႈၵၢတ်ႇ (Condition) ဢၼ်ႁဝ်းပၼ်ဝႆႉၼၼ်ႉ တေပဵၼ် `false` ၶႃႈ။ **For Loop** ပဵၼ်ပိူင်ဢၼ်ၵႆႉၸႂ်ႉသုတ်း ယွၼ်ႉမၼ်းၵုမ်းၵမ်လႆႈတင်းမူတ်း 3 တွၼ်ႈ။

### 1. ပိူင်တႅမ်ႈ (Anatomy of a For Loop)

ၼႂ်း `for` loop မီးတွၼ်ႈလမ်ႇလွင်ႈ 3 ဢၼ် ဢၼ်ၸႅၵ်ႇၵၼ်လူၺ်ႈ **Semicolon (`;`)** ၶႃႈ:

```javascript
for (initialization; condition; increment) {
  // ၵူတ်ႉဢၼ်ၶႂ်ႈႁႂ်ႈလႅၼ်ႈသမ်ႉ
}

```

1. **Initialization:** တႄႇပိုၼ်ေၽၢဝ်ႇ Variable (မိူၼ်ၼင်ႇ `let i = 0`)။ တွၼ်ႈၼႆႉတေႁဵတ်းၵၢၼ် **ပွၵ်ႈလဵဝ်ၵူၺ်း** မိူဝ်ႈတႄႇ loop။
2. **Condition:** ၵူတ်ႇထတ်း "ၶေႃႈၵၢတ်ႇ" တႃႇသေႇဢွၼ်တၢင်းတေလႅၼ်ႈ။ သင်ပဵၼ် `true` မၼ်းတေလႅၼ်ႈသိုပ်ႇ၊ သင်ပဵၼ် `false` မၼ်းတေၵိုတ်း။
3. **Increment:** လႅၵ်ႈလၢႆႈၵႃႈၶၼ် Variable (မိူၼ်ၼင်ႇ `i++`) ၵူႈပွၵ်ႈဢၼ်လႅၼ်ႈယဝ်ႉ။

---

### 💻 တူဝ်ယၢင်ႇပိုၼ်ႉထၢၼ်

```javascript
for (let i = 1; i <= 5; i++) {
  console.log("Iteration number: " + i);
}

// Result:
// Iteration number: 1
// Iteration number: 2
// Iteration number: 3
// Iteration number: 4
// Iteration number: 5

```

---

### 2. ၸႂ်ႉ For Loop တႃႇတူၺ်း Array

ၼႆႉပဵၼ်လၢႆးဢၼ်ၵႆႉၸႂ်ႉသုတ်းၶႃႈ။ ႁဝ်းၸႂ်ႉ `.length` တႃႇႁူႉဝႃႈ လူဝ်ႇလႅၼ်ႈသမ်ႉၵႃႈႁိုင်။

```javascript
const animals = ["Tiger", "Lion", "Elephant", "Bear"];

for (let i = 0; i < animals.length; i++) {
  console.log(`Animal at index ${i} is: ${animals[i]}`);
}

```

---

### 3. Breaking & Continuing (ၵၢၼ်ၵုမ်းၵမ် Loop)

* **`break`:** ၸႂ်ႉတႃႇ "ထွၼ်တူဝ်" ဢွၵ်ႇၼႂ်း Loop ၵမ်းလဵဝ် (ၵိုတ်းၵၢၼ်ႁဵတ်းၵၢၼ်)။
* **`continue`:** ၸႂ်ႉတႃႇ "ၶၢမ်ႇ" ပွၵ်ႈၼႆႉသေ ၵႂႃႇတႄႇပွၵ်ႈၼႃႈ (Next iteration) ၵမ်းလဵဝ်။

```javascript
for (let i = 1; i <= 10; i++) {
  if (i === 3) continue; // ၶၢမ်ႇမၢႆ 3 
  if (i === 7) break;    // ၵိုတ်းတင်းမူတ်းမိူဝ်ႈၽႅဝ် 7
  console.log(i); 
}
// Result: 1, 2, 4, 5, 6

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **For Loop** လီသုတ်းမိူဝ်ႈႁဝ်းႁူႉဝႃႈ လူဝ်ႇလႅၼ်ႈသမ်ႉ "ၵႃႈႁိုင်" (တႅတ်ႉတေႃး)။
* သတိဝႆႉလွင်ႈ **Infinite Loop** (Loop ဢမ်ႇသုတ်း) — သင်ၶေႃႈၵၢတ်ႇပဵၼ် `true` တႃႇသေႇ၊ Computer ၸဝ်ႈၵဝ်ႇတေ "ၶၢင်း" (Hang) လႆႈၶႃႈ။
* တွၼ်းဝႆႉဝႃႈ Index တႄႇတီႈ `0` ၵွပ်ႈၼၼ် ၶေႃႈၵၢတ်ႇၵႆႉပဵၼ် `i < array.length` ၶႃႈ။

---
