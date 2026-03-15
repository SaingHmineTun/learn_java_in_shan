### 1. Sets (သဵၼ်ႈမၢႆဢၼ်ဢမ်ႇသမ်ႉၵၼ်)

**Set** ပဵၼ် "ၸုမ်းၶေႃႈမုၼ်း" ဢၼ်သိမ်းလႆႈၵႃႈၶၼ်ၵူႈမဵဝ်း၊ ၵူၺ်းၵႃႈ လွင်ႈၶႅၼ်ႇမၼ်းတႄႉပဵၼ် **"ၵႃႈၶၼ်ၼႂ်းမၼ်း တေလႆႈပႅၵ်ႇပိူင်ႈၵၼ်ၵူၺ်း (Unique Values)"** ၶႃႈ။ သင်ႁဝ်းသႂ်ႇၶေႃႈမုၼ်းဢၼ်သမ်ႉၵၼ် (Duplicate) ၶဝ်ႈၵႂႃႇ၊ မၼ်းတေထွၼ်ပႅတ်ႈႁင်းမၼ်းၵမ်းလဵဝ်ၶႃႈ။

**လၢႆးၸႂ်ႉတူဝ်ယၢင်ႇ:**

```javascript
const mySet = new Set();

mySet.add(1);
mySet.add(5);
mySet.add(5); // ❌ တေဢမ်ႇထႅမ်ၶဝ်ႈ ယွၼ်ႉမၼ်းသမ်ႉၵၼ်
mySet.add("Hello");

console.log(mySet); // Set { 1, 5, "Hello" }
console.log(mySet.has(1)); // true (ၵူတ်ႇထတ်းဝႃႈမီးႁႃႉ?)
mySet.delete(5); // ထွၼ်ဢွၵ်ႇ

```

---

### 2. Maps (Object ဢၼ်လွတ်ႈလႅဝ်း)

**Map** တေႃႉမိူၼ် Object ၶႃႈ (သိမ်းပဵၼ် Key: Value)၊ ၵူၺ်းၵႃႈ မၼ်းမီးလွင်ႈပႅၵ်ႇပိူင်ႈ ဢၼ်ၶႅၼ်ႇလိူဝ် Object ယူႇ 2 ယၢင်ႇ:

1. **Key Type:** Object ၸႂ်ႉလႆႈ String ႁိုဝ် Symbol ၵူၺ်း၊ ၵူၺ်းၵႃႈ Map ၸၢင်ႈဢဝ် **သင်ၵေႃႈယဝ်ႉ** (Number, Array, Function, Object) မႃးႁဵတ်းပဵၼ် **Key** လႆႈၶႃႈ။
2. **Order:** Map တေတွၼ်းဝႆႉ "လမ်ႇတတ်း (Order)" ၶွင်ၶေႃႈမုၼ်း ၸွမ်းၼင်ႇဢၼ်ႁဝ်းသႂ်ႇၶဝ်ႈၵႂႃႇၶႃႈ။

**လၢႆးၸႂ်ႉတူဝ်ယၢင်ႇ:**

```javascript
const myMap = new Map();

// ၵၢၼ်သႂ်ႇၶေႃႈမုၼ်း (.set)
myMap.set("name", "Sai Kham");
myMap.set(100, "Number Key"); // ✅ ၸႂ်ႉ Number ပဵၼ် Key လႆႈ
myMap.set(true, "Boolean Key");

// ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်း (.get)
console.log(myMap.get(100)); // "Number Key"
console.log(myMap.size); // 3 (မိူၼ် .length ၼႂ်း Array)

```

---

### 💡 တႅၵ်ႈၼိူဝ် (Comparison Table)

| Feature | Object | Map |
| --- | --- | --- |
| **Key Type** | String / Symbol ၵူၺ်း | သင်ၵေႃႈယဝ်ႉ (Any type) |
| **Element Order** | ဢမ်ႇၼႄႉၼွၼ်း | ၼပ်ႉၸွမ်းလမ်ႇတတ်း (Preserved) |
| **Size** | လူဝ်ႇၼပ်ႉႁင်းၵူၺ်း | မီး Property `.size` ၵမ်းလဵဝ် |
| **Performance** | လီတႃႇၶေႃႈမုၼ်းဢၼ်တႅတ်ႉတေႃး | လီတႃႇၵၢၼ်ထႅမ်/ထွၼ် ၶေႃႈမုၼ်းၼမ်ၼမ် |

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* ၸႂ်ႉ **Set** မိူဝ်ႈလူဝ်ႇၵူတ်ႇထတ်း "ၶေႃႈမုၼ်းသမ်ႉ (Duplicates)" (မိူၼ်ၼင်ႇ ၵဵပ်း ID ၵူၼ်းၸႂ်ႉ ဢၼ်ဢမ်ႇပၼ်ႁႂ်ႈသမ်ႉၵၼ်)။
* ၸႂ်ႉ **Map** မိူဝ်ႈလူဝ်ႇ Key ဢၼ်ဢမ်ႇၸႂ်ႈ String ႁိုဝ် မိူဝ်ႈလူဝ်ႇၵုမ်းၵမ် Order ၶွင်ၶေႃႈမုၼ်း။
* တႃႇသေႇ၊ `Set` လႄႈ `Map` တေမီး Method ဢၼ်ၸိုဝ်ႈမိူၼ်ၵၼ် မိူၼ်ၼင်ႇ `.has()`, `.delete()`, လႄႈ `.clear()` ၶႃႈ။

---
