### **Lesson 31: Array Types (Square brackets vs Array\<T\>)**

ၼႂ်း JavaScript ၼၼ်ႉ Array တူဝ်ၼိုင်ႈ ၸၢင်ႈသိမ်းလႆႈတင်း String, Number လႄႈ Object ပူၼ်းၵၼ်ဝႆႉၶႃႈ။ ၵူၺ်းၵႃႈ ၼႂ်း TypeScript တွၼ်ႈတႃႇႁႄႉၵႅတ်ႇ Bug ၼၼ်ႉ ႁဝ်းၵႆႉမၢႆ Type ဝႆႉဝႃႈ Array ၼိုင်ႈဢၼ် လူဝ်ႇမီးၶေႃႈမုၼ်း "မဵဝ်းလဵဝ်ၵၼ်" ၶႃႈဢေႃႈ။

ႁဝ်းမၢႆ Type ပၼ် Array လႆႈ 2 လၢႆး ဢၼ်ႁဵတ်းၵၢၼ်မိူၼ်ၵၼ်တႅတ်ႈတေႃးၶႃႈ:

-----

#### **1. Square Bracket Syntax (`type[]`)**

ၼႆႉပဵၼ်လၢႆးဢၼ် "ၸႂ်ႉၼမ်သုတ်း" (Most Common) ၶႃႈ။ မၼ်းပွတ်းသေ ဢၢၼ်ႇငၢႆႈ၊ ႁဵတ်းႁႂ်ႈႁဝ်းႁူႉၵမ်းလဵဝ်ဝႃႈ မၼ်းပဵၼ်သဵၼ်ႈမၢႆၶွင် Type သင်။

```typescript
let skills: string[] = ["Java", "Flutter", "TypeScript"];
let scores: number[] = [90, 85, 100];

// skills.push(2026); // ❌ Error: Argument of type 'number' is not assignable to 'string'
```

-----

#### **2. Generic Array Syntax (`Array<T>`)**

လၢႆးၼႆႉၸႂ်ႉ **Generics** ၶႃႈ။ မၼ်းမီးလွင်ႈပႅၵ်ႇပိူင်ႈၵၼ်တီႈ "လၢႆးတႅမ်ႈ" လၢႆလၢႆၵူၺ်း။ တေႃႈလဵဝ် ၸဝ်ႈၵဝ်ႇလိူၵ်ႈၸႂ်ႉလၢႆးလႂ်ၵေႃႈလႆႈ ၸွမ်းၼင်ႇၸဝ်ႈၵဝ်ႇမၵ်ႉၶႃႈ။

```typescript
let students: Array<string> = ["Sai Mao", "Kham", "Nang"];
let prices: Array<number> = [1500, 2000, 3500];
```

-----

#### **3. Union Types in Arrays**

သင်ဝႃႈၼႂ်း Array ၼၼ်ႉ ၸဝ်ႈၵဝ်ႇၶႂ်ႈႁပ်ႉဢဝ်တင်း String လႄႈ Number ပူၼ်းၵၼ်ၸိုင် ႁဝ်းၸၢင်ႈၸႂ်ႉ **Union Type** ႁူမ်ႈၸွမ်းလႆႈၶႃႈ။

```typescript
let mixed: (string | number)[] = ["Muse", 2026, "Namkham", 2025];

// မၢႆတွၼ်ႈ: လူဝ်ႇသႂ်ႇ ( ) ဝႆႉ ၸင်ႇတေမၢႆထိုင်ဝႃႈ "Array ၶွင် string/number" ၶႃႈ
```

-----

#### **4. Summary Checklist**

- [ ] ႁူႉလၢႆးၸႂ်ႉ `type[]` တႃႇသၢင်ႈသဵၼ်ႈမၢႆဢၼ်မီး Type လဵဝ်ၵၼ်။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `Array<type>` ပဵၼ်လၢႆးတႅမ်ႈထႅင်ႈပိူင်ၼိုင်ႈ (Generic Syntax)။
- [ ] ႁူႉလၢႆးၸႂ်ႉ Union `|` ၼႂ်း Array တႃႇႁပ်ႉၶေႃႈမုၼ်းလၢႆမဵဝ်း။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇသူင်ႇ Type ၽိတ်း ၶဝ်ႈၵႂႃႇၼႂ်း Array ဢၼ်မၢႆဝႆႉယဝ်ႉ။

-----