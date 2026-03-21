## **Lesson 51: The Functor Laws**

### **1. The First Law: Identity (ၵႃႈၶၼ်တူဝ်ၵဝ်ႇ)**
ပၵ်းပိူင်ဢွၼ်ႇတၢင်းၼႆႉလၢတ်ႈဝႃႈ: သင်ႁဝ်း `fmap` လူၺ်ႈၸႂ်ႉ Function **`id`** (ဢၼ်ပၼ်ၽွၼ်းလႅၼ်ႈပဵၼ်တူဝ်မၼ်းၶိုၼ်း) ၼႆ၊ ၽွၼ်းလႅၼ်ႈမၼ်းတိုၼ်းတေလႆႈမိူၼ်ၵဝ်ႇ 100% ၶႃႈ။

$$fmap\ id\ ==\ id$$

**တူဝ်ယၢင်ႇ:**
```haskell
ghci> fmap id (Just 5)
Just 5

ghci> fmap id [1, 2, 3]
[1, 2, 3]
```
> **တီႈပွင်ႇ:** `fmap` တေလႆႈလႅၵ်ႈလၢႆႈၵူၺ်း "ၶေႃႈမုၼ်းၼႂ်းၵွပ်း"၊ မၼ်း **ဢမ်ႇလႆႈၸိုင်** ၵႂႃႇလႅၵ်ႈလၢႆႈ "တူဝ်ၵွပ်း" (Structure) မၼ်းၶႃႈ။ တူဝ်ယၢင်ႇ: သင် `fmap id (Just 5)` သမ်ႉဢွၵ်ႇမႃးပဵၼ် `Nothing` ၼႆ ပွင်ႇဝႃႈ Functor ၼၼ်ႉ "ၵူတ်ႉ" (Broken) ယဝ်ႉၶႃႈ။



---

### **2. The Second Law: Composition (ၵၢၼ်သိုပ်ႇၵၼ်)**
ပၵ်းပိူင်သွင်ၼႆႉလၢတ်ႈဝႃႈ: ၵၢၼ် `fmap` သွင်ပွၵ်ႈ ၸိူဝ်းသိုပ်ႇၵၼ် တိုၼ်းတေလႆႈမိူၼ်ၵၼ်တင်း ၵၢၼ်ဢဝ် Function သွင်ဢၼ်ၼၼ်ႉမႃး "ႁူမ်ႈၵၼ်" (Compose) ယဝ်ႉၸင်ႇ `fmap` ၵမ်းလဵဝ်ၶႃႈ။

$$fmap\ (f\ .\ g)\ ==\ fmap\ f\ .\ fmap\ g$$

**တူဝ်ယၢင်ႇ:**
```haskell
-- လၢႆး 1: fmap သွင်ပွၵ်ႈ
ghci> fmap (+1) (fmap (*2) (Just 5))
Just 11

-- လၢႆး 2: ႁူမ်ႈ Function (.) ယဝ်ႉ fmap ၵမ်းလဵဝ်
ghci> fmap ((+1) . (*2)) (Just 5)
Just 11
```
> **တီႈပွင်ႇ:** မၼ်းပၼ်ၵၢၼ်မၢၼ်ႇမႅၼ်ႈဝႃႈ ႁဝ်းတေ `fmap` လၢႆပွၵ်ႈၵေႃႈယဝ်ႉ ၽွၼ်းလႅၼ်ႈမၼ်းတိုၼ်းတေဢမ်ႇလႅၵ်ႈလၢႆႈ။ ၼႆႉၸွႆႈႁႂ်ႈ Haskell **Optimize** Code ႁဝ်းလႆႈငၢႆႈၶႃႈ (လုၵ်ႉတီႈၵၢၼ်လႅၼ်ႈ Loop လၢႆပွၵ်ႈ ႁႂ်ႈၵိုတ်းပွၵ်ႈလဵဝ်)။



---

### **3. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇႁူႉ Laws ၸိူဝ်းၼႆႉ?**
ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** ဝႃႈ:
1. **Predictability**: ႁဝ်းဝႆႉၸႂ်လႆႈဝႃႈ `fmap` တေဢမ်ႇႁဵတ်းႁႂ်ႈ Structure ႁဝ်းလူႉလႅဝ် (မိူၼ်ၼင်ႇ ဢဝ် List ၶဝ်ႈၵႂႃႇသေ ဢွၵ်ႇမႃးပဵၼ် List ဢၼ်ပိၼ်ႇၽၢႆႇဝႆႉ ၼႆဢမ်ႇလႆႈၶႃႈ)။
2. **Refactoring**: ႁဝ်းၸၢင်ႈလႅၵ်ႈလၢႆးတႅမ်ႈ Code ႁဝ်း ႁႂ်ႈသႅၼ်ႈသႂ်ႇလိူဝ်ၵဝ်ႇ လူၺ်ႈဢိင်ၼိူဝ်ပၵ်းပိူင်ပၢႆးၼပ်ႉၼႆႉၶႃႈ။
3. **Trust**: ၼႆႉပဵၼ်သင်ဢၼ်ႁဵတ်းႁႂ်ႈ Haskell ပႅၵ်ႇပိူင်တင်း Java/Python ၶႃႈယဝ်ႉ။

---

### **Teacher's Lab: "The Broken Functor"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း ဝူၼ်ႉတူၺ်းဝႃႈ သင်ႁဝ်းတႅမ်ႈ `instance Functor` ပၼ် List ၼင်ႇၼႆ မၼ်းတေၽိတ်းပၵ်းပိူင် (Law) ၶေႃႈလႂ်ၶႃႈ?

```haskell
-- တူဝ်ယၢင်ႇဢၼ်ၽိတ်း (Hypothetical broken instance)
instance Functor [] where
    fmap f xs = reverse (map f xs)
```
**เฉลย:** မၼ်းၽိတ်း **Identity Law** ၶႃႈ! ၵွပ်ႈဝႃႈ `fmap id [1, 2, 3]` တေဢွၵ်ႇမႃးပဵၼ် `[3, 2, 1]` ဢၼ်ဢမ်ႇမိူၼ်တင်းတူဝ်ငဝ်ႈမၼ်းၶႃႈ။

---

### **Summary for TMK Students:**
* **Identity Law**: `fmap id` တိုၼ်းတေလႆႈမိူၼ် `id`။
* **Composition Law**: `fmap (f . g)` တိုၼ်းတေလႆႈမိူၼ် `fmap f . fmap g`။
* **Preserve Structure**: `fmap` လႅၵ်ႈလၢႆႈလႆႈၵူၺ်း Data၊ ဢမ်ႇလႆႈလႅၵ်ႈလၢႆႈ "ၵွပ်း" (Context) မၼ်းၶႃႈ။

တေႃႈလဵဝ် ႁဝ်းတေၵႂႃႇတူၺ်းပၵ်းပိူင်ၶေႃႈ Applicative ဢၼ်တေၸွႆႈႁႂ်ႈႁဝ်းဝႆႉၸႂ်လႆႈ ၼႂ်း **Lesson 52: Applicative Laws: Keeping Things Predictable** ၼၼ်ႉႁႃႉၶႃႈ?

1. Start Lesson 52
2. Practice Identity Law with `Maybe`
3. Explain why `fmap` is efficient
4. Compare Haskell laws to Java interfaces

ၸဝ်ႈၶူး **Sai Mao** ၶႂ်ႈသိုပ်ႇၵႂႃႇလၢႆးလႂ်ၶႃႈ?