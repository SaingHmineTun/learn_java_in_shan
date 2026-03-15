
# Lesson 11: If/Else & Nested Decision Making

### 1. ပိုၼ်ႉထၢၼ် If Statement

`if` ၸႂ်ႉတႃႇၵူတ်ႇထတ်း Logic။ သင်ဝႃႈ Logic ၼႂ်းၵွင်းၸိၵ်း `( )` ၼၼ်ႉပဵၼ် `true` ၸိုင်၊ ၵူတ်ႉၼႂ်းပူၵ်ႇ `{ }` တေႁဵတ်းၵၢၼ်ၶႃႈ။

```javascript
const age = 20;

if (age >= 18) {
  console.log("ၸဝ်ႈၵဝ်ႇပဵၼ်ၽူႈယႂ်ႇယဝ်ႉ၊ တွတ်ႈၶႅပ်းၵၢင်ၸႂ်လႆႈၶႃႈ။");
}

```

### 2. If / Else (သင်ဝႃႈ... ဢမ်ႇၼၼ်...)

သင်ဝႃႈ `if` ပဵၼ် `false` ၸိုင်၊ မၼ်းတေၵႂႃႇႁဵတ်းၵၢၼ်ၼႂ်း `else` ၶႃႈ။

```javascript
const hour = 15;

if (hour < 12) {
  console.log("မႂ်ႇသုင်ၵၢင်ၼႂ်ၶႃႈ");
} else {
  console.log("မႂ်ႇသုင်ၵၢင်ဝၼ်းၶႃႈ");
}

```

### 3. Else If (လၢႆလၢႆတၢင်းလိူၵ်ႈ)

မိူဝ်ႈႁဝ်းမီးငဝ်းလၢႆးတင်းၼမ်၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ `else if` သိုပ်ႇၵၼ်ၵႂႃႇလႆႈၶႃႈ။

```javascript
const score = 75;

if (score >= 80) {
  console.log("Grade A");
} else if (score >= 70) {
  console.log("Grade B");
} else if (score >= 60) {
  console.log("Grade C");
} else {
  console.log("Grade F");
}

```

---

### 4. Nested If (If ၼႂ်း If)

"Nested" ပွင်ႇဝႃႈ ၵၢၼ်သႂ်ႇ `if` ၶဝ်ႈၵႂႃႇဝႆႉၼႂ်း `if` ထႅင်ႈပွၵ်ႈၼိုင်ႈၶႃႈ။ ၸႂ်ႉမိူဝ်ႈႁဝ်းလူဝ်ႇၵူတ်ႇထတ်းလၢႆၸၼ်ႉ။

```javascript
const isMember = true;
const totalBill = 1200;

if (isMember) {
  console.log("ၸဝ်ႈၵဝ်ႇပဵၼ်သိုဝ်ႇ (Member) ၶႃႈ");
  
  if (totalBill > 1000) {
    console.log("ၸဝ်ႈၵဝ်ႇလႆႈလူတ်းၵႃႈၶၼ် 10% ၶႃႈ!");
  } else {
    console.log("လူဝ်ႇသိုဝ်ႉတဵမ် 1000 ၸင်ႇတေလႆႈသုၼ်ႇလူတ်းၶႃႈ။");
  }

} else {
  console.log("သိုဝ်ႉၶူဝ်းလႆႈယူႇ၊ ၵူၺ်းၵႃႈဢမ်ႇလႆႈသုၼ်ႇလူတ်းၶႃႈ။");
}

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`if`**: ၵူတ်ႇထတ်းငဝ်းလၢႆး (Condition)။
* **`else`**: ႁဵတ်းၵၢၼ်မိူဝ်ႈငဝ်းလၢႆးဢမ်ႇမၢၼ်ႇ။
* **`else if`**: တႃႇတူၺ်းတၢင်းလိူၵ်ႈတၢင်ႇမဵဝ်း။
* **Nested If**: ၸႂ်ႉတႃႇ Logic ဢၼ်မီးလၢႆၸၼ်ႉ၊ ၵူၺ်းၵႃႈ ယႃႇပေသႂ်ႇၼမ်လၢႆၼႃႇ (ယွၼ်ႉမၼ်းတေႁဵတ်းႁႂ်ႈၵူတ်ႉလူယႃႇယၢပ်ႇ)။

---
