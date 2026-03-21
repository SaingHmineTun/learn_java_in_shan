### **Lesson 54: Mapped Types (Transforming types dynamically)**

**Mapped Types** ပဵၼ်လၢႆးတႅမ်ႈ "Advanced" သုတ်း ဢၼ်ၸွႆးႁႂ်ႈႁဝ်းသၢင်ႈ Type မႂ်ႇ လူၺ်ႈၵၢၼ် "ပၼ်ႇ Loop" (Iterate) ဢဝ် Property တီႈ Type ဢၼ်မီးဝႆႉယဝ်ႉမႃးၸႂ်ႉၶႃႈ။ မိူၼ်ၼင်ႇႁဝ်းၸႂ်ႉ `.map()` ၼႂ်း Array ၼၼ်ႉၶႃႈဢေႃႈ၊ ၵူၺ်းၵႃႈ ဢၼ်ၼႆႉပဵၼ်ၵၢၼ် Map ၼႂ်း "Level ၶွင် Type" ၶႃႈ။

---

#### **1. Mapped Type Syntax (ပိူင်တႅမ်ႈ)**
ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း **`in`** လႄႈ **`keyof`** တႃႇပၼ်ႇ Loop ၼႂ်း Keys ၶွင် Interface ၶႃႈ။

```typescript
type OptionsFlags<T> = {
  [Property in keyof T]: boolean; // ပၼ်ႇ Loop ၵူႈ Property သေ လႅၵ်ႈ Type ႁႂ်ႈပဵၼ် boolean တင်းသဵၼ်ႈ
};

interface FeatureFlags {
  darkMode: () => void;
  newUserProfile: () => void;
}

type FeatureOptions = OptionsFlags<FeatureFlags>;

/* FeatureOptions တေဢွၵ်ႇမႃးပဵၼ်:
   {
     darkMode: boolean;
     newUserProfile: boolean;
  }
*/
```



---

#### **2. Mapping Modifiers (`+` လႄႈ `-`)**
ႁဝ်းၸၢင်ႈ "ထႅမ်" (`+`) ဢမ်ႇၼၼ် "ထွၼ်ပႅတ်ႈ" (`-`) Modifier ၼင်ႇ `readonly` လႄႈ `?` (Optional) လႆႈၶႃႈ။

**တူဝ်ယၢင်ႇ: ထွၼ်ပႅတ်ႈ `readonly` တင်းသဵၼ်ႈ**
```typescript
type CreateMutable<T> = {
  -readonly [P in keyof T]: T[P]; // '-' မၢႆထိုင် ထွၼ် readonly ဢွၵ်ႇပႅတ်ႈ
};

interface LockedUser {
  readonly id: string;
  readonly name: string;
}

type UnlockedUser = CreateMutable<LockedUser>; 
// ယၢမ်းၼႆႉ id လႄႈ name တေမႄးလႆႈ (Mutable) ယဝ်ႉၶႃႈ
```

---

#### **3. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?**
* **Dynamic Generation:** မိူဝ်ႈ Interface ႁဝ်းမီး Property ၼမ်ၼႃႇသေ ႁဝ်းဢမ်ႇၶႂ်ႈလႅၵ်ႈလၢႆႈမၼ်း "ทีละตัว" (One by one) ၶႃႈ။
* **Custom Utility Types:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈသၢင်ႈ Utility Types ႁင်းၵူၺ်း (ၼင်ႇ `Partial` ဢမ်ႇၼၼ် `Readonly`) လူၺ်ႈၵၢၼ်ၸႂ်ႉ Mapped Types ၼႆႉၶႃႈဢေႃႈ။
* **Consistency:** ၼႄႇၸႂ်ဝႃႈ Type မႂ်ႇ ဢၼ်သၢင်ႈဢွၵ်ႇမႃးၼၼ်ႉ တေမီး Key မိူၼ်တင်း Type ၵဝ်ႇတႃႇသေႇ။



---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `[P in keyof T]` တႃႇပၼ်ႇ Loop ၼႂ်း Type Keys။
- [ ] ၸႂ်ႉ `+` ဢမ်ႇၼၼ် `-` တႃႇမႄးလၢႆႈ `readonly` လႄႈ `?` (Optional)။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Mapped Types ၸွႆးႁႂ်ႈႁဝ်း "Transform" Type ဢၼ်မီးဝႆႉယဝ်ႉ ႁႂ်ႈပဵၼ် Type မႂ်ႇ။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇၸႂ်ႉ `keyof` တႃႇဢဝ် Keys တင်းသဵၼ်ႈမႃးၸႂ်ႉ။

---
