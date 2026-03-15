# Lesson 18: Logic Practice (ၵၢၼ်ၸၢမ်းတႅမ်ႈ Logic)

ႁဝ်းတေမႃးသၢင်ႈ Logic တႃႇၵိမ်း **"Adventure Quest"**။ တူဝ်ละคร (Character) ႁဝ်းတေလႆႈတႅပ်းတတ်းၵၢၼ် ၸွမ်းၼင်ႇငဝ်းလၢႆး (Conditions) ဢၼ်မီးဝႆႉၶႃႈ။

### 🎮 တိုဝ်းၵၢၼ် (Scenario)

1. Character လူဝ်ႇမီး **Energy** ၼမ်လိူဝ် 0 ၸင်ႇတေလႅၼ်ႈလႆႈ။
2. သင်မီး **Sword** (လႅဝ်း) လႄႈ **Level** ၼမ်လိူဝ် 5 ၸိုင် တေတိုၵ်း Monster လႆႈ။
3. သင်ဢမ်ႇမီးလႅဝ်း ၵူၺ်းၵႃႈမီး **Magic Wand** ၸိုင် တေၸႂ်ႉၵႃႇထႃႇလႆႈ။
4. သင်ႁူဝ်ၸႂ် (Health) လူတ်းယွမ်းၵႂႃႇ ႁဝ်းလူဝ်ႇၸႂ်ႉ **Potion** (ယႃတ်ႉ) ဢၼ်မီးဝႆႉ (Default Value)။

---

### 💻 တႅမ်ႈၵူတ်ႉ (The Code)

```javascript
// 1. တင်ႈၵႃႈၶၼ်ပိုၼ်ႉထၢၼ် (Variables)
const health = 50;
const energy = 20;
const hasSword = true;
const hasWand = false;
const playerLevel = 7;
let inventoryPotion = null; // ဢမ်ႇမီးယႃတ်ႉ

// 2. ၸႂ်ႉ Short-circuiting တႃႇႁႃယႃတ်ႉ (Default Value)
const healingItem = inventoryPotion ?? "Bread"; 

// 3. ၸႂ်ႉ Logic တႅပ်းတတ်းၵၢၼ်
console.log(`--- Game Start ---`);

// ၵူတ်ႇထတ်း Energy (Truthy/Falsy)
if (energy) {
  console.log("🏃 Player တိုၵ်ႉလႅၼ်ႈလႆႈယူႇ...");
} else {
  console.log("😴 Player ဢမ်ႇမီးႁႅင်းယဝ်ႉ၊ လူဝ်ႇၼອນလိုဝ်ႈ။");
}

// ၵူတ်ႇထတ်း လၢႆးတိုၵ်း (Logical Operators)
if (hasSword && playerLevel >= 5) {
  console.log("⚔️ တိုၵ်းလူၺ်ႈလႅဝ်း! (Physical Attack)");
} else if (hasWand) {
  console.log("🪄 ၸႂ်ႉၵႃႇထႃႇတိုၵ်း! (Magic Attack)");
} else {
  console.log("🏃 လႅၼ်ႈပၢႆႈၵူၺ်းယဝ်ႉ၊ ဢမ်ႇမီးၶိူင်ႈတိုၵ်း။");
}

// ၸႂ်ႉ Ternary Operator တႃႇတူၺ်းလွင်ႈၸႂ်ႉယႃတ်ႉ
const action = health < 30 ? `ၸႂ်ႉ ${healingItem} တႃႇထႅမ်လိူတ်ႈ` : "တိုၵ်ႉၶႅင်ႁႅင်းယူႇ";
console.log(`Status: ${action}`);

```

---

### 🔍 ထတ်းသၢင်ၵူတ်ႉ (Code Review)

* **`inventoryPotion ?? "Bread"`**: ႁဝ်းၸႂ်ႉ **Nullish Coalescing**။ ယွၼ်ႉ `inventoryPotion` ပဵၼ် `null`၊ မၼ်းၸင်ႇလိူၵ်ႈဢဝ် `"Bread"` မႃးပဵၼ်တူဝ်ၸွႆႈၶႃႈ။
* **`if (energy)`**: ၼႆႉပဵၼ်ၵၢၼ်ၸႂ်ႉ **Truthy/Falsy**။ သင် `energy` ပဵၼ် `20` (Truthy) မၼ်းတေႁဵတ်းၵၢၼ်၊ သင်ပဵၼ် `0` (Falsy) မၼ်းတေၶဝ်ႈ `else` ၶႃႈ။
* **`hasSword && playerLevel >= 5`**: ၼႆႉပဵၼ် **AND (`&&`)**။ လူဝ်ႇမၢၼ်ႇတင်းသွင်ယၢင်ႇ ၸင်ႇတေတိုၵ်းလႆႈၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* Logic ဢၼ်ႁဝ်းႁဵၼ်းမႃးတင်းမူတ်း ၸွႆႈႁႂ်ႈ Program ႁဝ်း "ဝူၼ်ႉ" ပဵၼ်မိူၼ်ၵူၼ်း။
* ၵၢၼ်ၸႂ်ႉ **Short-circuiting** လႄႈ **Ternary** ၸွႆႈႁႂ်ႈၵူတ်ႉႁဝ်းသႅၼ်ႈသႂ် လႄႈ ဢမ်ႇလူဝ်ႇတႅမ်ႈ `if/else` သုၵ်ႉယုင်ႈၼမ်လၢႆၶႃႈ။

---