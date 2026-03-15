
# Lesson 21: Parameters vs. Arguments & Default Values

### 1. Parameters vs. Arguments (မၼ်းပႅၵ်ႇၵၼ်ၸိူင်ႉၼိုင်?)

ၵူၼ်းတႅမ်ႈၵူတ်ႉမႂ်ႇမႂ်ႇၵႆႉလူင်ၵၼ်၊ ၵူၺ်းၵႃႈလွင်ႈပႅၵ်ႇမၼ်းငၢႆႈငၢႆႈၵူၺ်းၶႃႈ:

* **Parameters:** ပဵၼ် "ၸိုဝ်ႈတူဝ်တႅၼ်း" ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်းတွၼ်ႈ **ပိုၼ်ေၽၢဝ်ႇ (Define)** Function။ (မိူၼ်ၼင်ႇ ၵွၵ်းပဝ်ႇဢၼ်ပႂ်ႉႁပ်ႉၶေႃႈမုၼ်း)။
* **Arguments:** ပဵၼ် "ၵႃႈၶၼ်တေႉတေႉ" ဢၼ်ႁဝ်းသူင်ႇၶဝ်ႈၵႂႃႇမိူဝ်ႈႁဝ်း **ႁွင်ႉၸႂ်ႉ (Call)** Function။

```javascript
// 'name' လႄႈ 'role' ပဵၼ် Parameters
function welcomeUser(name, role) {
  console.log(`Hello ${name}, you are a ${role}.`);
}

// "Sai Kham" လႄႈ "Developer" ပဵၼ် Arguments
welcomeUser("Sai Kham", "Developer");

```

---

### 2. Default Parameters (ၵႃႈၶၼ်ပိုၼ်ႉထၢၼ်)

မိူဝ်ႈၵွၼ်ႇ၊ သင်ႁဝ်းႁွင်ႉ Function သေဢမ်ႇသူင်ႇ Argument ၶဝ်ႈၵႂႃႇ၊ Parameter ၼၼ်ႉတေပဵၼ် `undefined` ၵမ်းလဵဝ်။ ၵူၺ်းၵႃႈ ယၢမ်းလဵဝ်ႁဝ်းၸၢင်ႈသႂ်ႇ **Default Value** ဝႆႉလႆႈယဝ်ႉၶႃႈ။

```javascript
function greet(name = "Guest", time = "Day") {
  return `Good ${time}, ${name}!`;
}

console.log(greet());               // "Good Day, Guest!" (ၸႂ်ႉ Default တင်းသွင်)
console.log(greet("Sai Kham"));      // "Good Day, Sai Kham!" (ၸႂ်ႉ Default တီႈ time)
console.log(greet("Sai Kham", "Morning")); // "Good Morning, Sai Kham!" (ဢမ်ႇၸႂ်ႉ Default)

```

---

### 3. ၵၢၼ်သူင်ႇ Arguments လၢႆလၢႆမဵဝ်း

Function ၼႂ်း JavaScript ၼႆႉမၼ်း "ၸႂ်လီ" ၼႃႇၶႃႈ။ ၸဝ်ႈၵဝ်ႇၸၢင်ႈသူင်ႇ Argument ၶဝ်ႈၵႂႃႇ တူဝ်ၼပ်ႉ၊ တူဝ်လိၵ်ႈ၊ Boolean၊ ႁိုဝ် ပႃးတင်း Function ထႅင်ႈတူဝ်ၼိုင်ႈၵေႃႈလႆႈၶႃႈ။

* **Too many arguments:** သင်သူင်ႇ Argument ၼမ်လိူဝ် Parameter၊ JavaScript တေဢမ်ႇ Error၊ မၼ်းတေသိမ်းဝႆႉၼႂ်း Object ဢၼ်ႁွင်ႉဝႃႈ `arguments` (ၵူၺ်းၵႃႈ ႁဝ်းဢမ်ႇၵႆႉၸႂ်ႉယဝ်ႉ၊ ႁဝ်းၸႂ်ႉ Rest Parameters တႅၼ်း)။
* **Too few arguments:** Parameter ဢၼ်ဢမ်ႇလႆႈၵႃႈၶၼ် တေပဵၼ် `undefined` (သင်ဢမ်ႇမီး Default Value)။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Parameters** ယူႇတီႈၵူတ်ႉပိုၼ်ေၽၢဝ်ႇ၊ **Arguments** ယူႇတီႈၵူတ်ႉႁွင်ႉၸႂ်ႉ။
* ၸႂ်ႉ **Default Parameters** တႃႇႁႄႉၵင်ႈပၼ်ႁႃ `undefined` ၼႂ်း Function ႁဝ်း။
* လၢႆးတႅမ်ႈၼႆႉ ၸွႆႈႁႂ်ႈ Function ႁဝ်းမီးလွင်ႈလွတ်ႈလႅဝ်း (Flexible) လႄႈ ၸႂ်ႉလႆႈလၢႆငဝ်းလၢႆးၶႃႈ။

---