
# Lesson 12: Logical Operators (&&, ||, !)

Logical Operators ၸွႆႈႁႂ်ႈႁဝ်းဢဝ် Logic လၢႆဢၼ်မႃး "မတ်ႉၸွႆး" ၵၼ် ဢမ်ႇၼၼ် "ပိၼ်ႇၽိတ်းပဵၼ်မၢၼ်ႇ" ၶႃႈ။

### 1. AND Operator (`&&`)

**"လူဝ်ႇမၢၼ်ႇတင်းမူတ်း"** - ငဝ်းလၢႆး (Condition) တင်းသွင်ၽၢႆႇ လူဝ်ႇပဵၼ် `true` တင်းသွင်ဢၼ် ၸင်ႇတေဢွၵ်ႇမႃးပဵၼ် `true` ၶႃႈ။

```javascript
const hasTicket = true;
const isSober = true;

if (hasTicket && isSober) {
  console.log("ၶဝ်ႈပွႆးလႆႈၶႃႈ!");
} else {
  console.log("ၶဝ်ႈဢမ်ႇလႆႈၶႃႈ။");
}
// သင်မီးဝႂ် ၵူၺ်းၵႃႈ မဝ်းလဝ်ႈ (false) ၸိုင် တေၶဝ်ႈဢမ်ႇလႆႈ။

```

---

### 2. OR Operator (`||`)

**"မၢၼ်ႇဢၼ်ၼိုင်ႈၵေႃႈလႆႈ"** - သင်မီးၽၢႆႇလႂ်ၽၢႆႇၼိုင်ႈပဵၼ် `true` ၸိုင် မၼ်းတေဢွၵ်ႇမႃးပဵၼ် `true` ၵမ်းလဵဝ်ၶႃႈ။

```javascript
const isWeekend = true;
const isHoliday = false;

if (isWeekend || isHoliday) {
  console.log("ယဝ်ႉၵၢၼ်ယဝ်ႉ၊ ၼອນလႆႈ!");
}
// မၢၼ်ႇဢၼ်ၼိုင်ႈၵေႃႈ ႁဵတ်းႁႂ်ႈ Logic တင်းမူတ်းပဵၼ် true ၶႃႈ။

```

---

### 3. NOT Operator (`!`)

**"ပိၼ်ႇၽၢႆႇ"** - မၼ်းတေပိၼ်ႇ `true` ပဵၼ် `false`၊ လႄႈ ပိၼ်ႇ `false` ပဵၼ် `true` ၶႃႈ။

```javascript
const isRaining = false;

if (!isRaining) {
  console.log("ၾူၼ်ဢမ်ႇတူၵ်း၊ ဢွၵ်ႇၵႂႃႇလဵၼ်ႈလႆႈၶႃႈ။");
}
// !false တေပဵၼ် true ၶႃႈ။

```

---

### 4. ၵၢၼ်ၸႂ်ႉႁူမ်ႈၵၼ် (Combining Operators)

ႁဝ်းၸၢင်ႈၸႂ်ႉၶဝ်ႁူမ်ႈၵၼ်လႆႈ၊ ၵူၺ်းၵႃႈ လူဝ်ႇၸႂ်ႉၵွင်းၸိၵ်း `( )` တႃႇၸႅၵ်ႇတွၼ်ႈ Logic ႁႂ်ႈမၼ်းၸႅၼ်ႇလႅင်းၶႃႈ။

```javascript
const age = 20;
const hasLicense = true;
const isDrunk = false;

// လူဝ်ႇဢႃႇယု 18+ လႄႈ မီးဝႂ်ၶပ်းၶီႇ၊ သေတေလႆႈဢမ်ႇမဝ်းလဝ်ႈ
if ((age >= 18 && hasLicense) && !isDrunk) {
  console.log("ၶပ်းၵႃးလႆႈၶႃႈ!");
}

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`&&` (AND)**: တေပဵၼ် true မိူဝ်ႈ "တင်းသွင်ၽၢႆႇ" ပဵၼ် true။
* **`||` (OR)**: တေပဵၼ် true မိူဝ်ႈ "ၽၢႆႇလႂ်ၽၢႆႇၼိုင်ႈ" ပဵၼ် true။
* **`!` (NOT)**: ၸႂ်ႉတႃႇပိၼ်ႇၵႃႈၶၼ် Boolean ႁႂ်ႈပဵၼ်ၽၢႆႇၶတ်းၵၼ်။
* ၵၢၼ်ၸႂ်ႉ Logical Operators တေၸွႆႈႁႂ်ႈ `if/else` ႁဝ်းသႅၼ်ႈသႂ် လႄႈ ဢမ်ႇလူဝ်ႇတႅမ်ႈ Nested If ၼမ်လၢႆၶႃႈ။

---


