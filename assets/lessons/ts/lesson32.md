### **Lesson 32: Multi-dimensional Arrays (Matrices in TS)**

ၼႂ်းပရူဝ်ႇၵရႅမ်ႇမင်းၼၼ်ႉ ၵႆႉမီးလွင်ႈတၢင်းဢၼ်ႁဝ်းလူဝ်ႇသိမ်းၶေႃႈမုၼ်းပဵၼ် "ၸၼ်ႉ" (Layers) ၼင်ႇ ပိူင်တႅၵ်ႈၼိူင်း Grid, Table ဢမ်ႇၼၼ် Matrix ၶႃႈ။ ၼႂ်း TypeScript ႁဝ်းႁွင်ႉဝႃႈ **Multi-dimensional Array** (Array ၼႂ်း Array) ၶႃႈဢေႃႈ။

---

#### **1. 2D Array Syntax (Array ၸၼ်ႉသွင်)**
တွၼ်ႈတႃႇမၢႆ Type ပၼ် Array ဢၼ်မီး Array ၼႂ်းမၼ်းထႅင်ႈၼၼ်ႉ ႁဝ်းၵူၺ်းလူဝ်ႇထႅမ် **`[]`** ဝႆႉသွင်ၸၼ်ႉၵူၺ်းၶႃႈ။

```typescript
// Array ၶွင် Array ၶွင် number
let matrix: number[][] = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
];

// ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇမႃး (Accessing)
console.log(matrix[0][0]); // 1 (Row 0, Column 0)
console.log(matrix[1][2]); // 6 (Row 1, Column 2)
```



---

#### **2. Multi-dimensional Types (ၸၼ်ႉသၢမ် လႄႈ သီႇ)**
သင်ဝႃႈၶေႃႈမုၼ်းၸဝ်ႈၵဝ်ႇ သုၵ်ႉယုင်ႈလိူဝ်ၼၼ်ႉ ၸဝ်ႈၵဝ်ႇယင်းၸၢင်ႈထႅမ် `[]` ၵႂႃႇတိၵ်းတိၵ်းလႆႈယူႇၶႃႈ (ၵူၺ်းၵႃႈ ၵႆႉၸႂ်ႉၵူၺ်း 2 ၸၼ်ႉ ဢမ်ႇၼၼ် 3 ၸၼ်ႉၶႃႈ)။

```typescript
// 3D Array (ၼင်ႇ Cube ၶေႃႈမုၼ်း)
let cube: number[][][] = [
  [[1, 2], [3, 4]],
  [[5, 6], [7, 8]]
];
```

---

#### **3. ၵၢၼ်ၸႂ်ႉ Generic Syntax ၸွမ်း 2D Array**
သင်ဝႃႈၸဝ်ႈၵဝ်ႇမၵ်ႉလၢႆးတႅမ်ႈ `Array<T>` ၸိုင် ႁဝ်းၵေႃႈတႅမ်ႈလႆႈၸိူဝ်ႉၼႆၶႃႈ:

```typescript
let grid: Array<Array<string>> = [
  ["A1", "A2"],
  ["B1", "B2"]
];
```

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `type[][]` တႃႇသၢင်ႈ 2D Array (Matrix)။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `matrix[row][column]` ၸႂ်ႉတႃႇဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇမႃး။
- [ ] ႁူႉလၢႆးၸႂ်ႉ Generic `Array<Array<T>>` တႅၼ်းလႆႈ။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇသူင်ႇ Array ၸၼ်ႉလဵဝ် ၶဝ်ႈၵႂႃႇၼႂ်း Variable ဢၼ်မၢႆဝႆႉပဵၼ် 2D။

---