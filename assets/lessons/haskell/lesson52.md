## **Lesson 52: Applicative Laws: Keeping Things Predictable**

### **1. Identity Law (ၵႃႈၶၼ်တူဝ်ၵဝ်ႇ)**
သင်ႁဝ်းဢဝ် `pure id` (Function ဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈသင်) မႃးၸႂ်ႉတင်း Context ၼိုင်ႈဢၼ်၊ ၽွၼ်းလႅၼ်ႈမၼ်းတိုၼ်းတေလႆႈမိူၼ်ၵဝ်ႇၶႃႈ။
$$pure\ id\ <*>\ v\ ==\ v$$

**တူဝ်ယၢင်ႇ:**
```haskell
ghci> pure id <*> Just 5
Just 5
```

### **2. Homomorphism (ၵၢၼ်သူင်ႇၵႃႈၶၼ်)**
သင်ႁဝ်းဢဝ် Function `f` လႄႈ Data `x` သႂ်ႇဝႆႉၼႂ်း `pure` တင်းသွင်ဢၼ်ယဝ်ႉ ၸင်ႇဢဝ်မႃး `<*>` ၵၼ်၊ ၽွၼ်းလႅၼ်ႈမၼ်းတိုၼ်းတေလႆႈမိူၼ်ၵၼ်တင်း ၵၢၼ်ဢဝ် `f x` ယဝ်ႉၸင်ႇသႂ်ႇ `pure` ၵမ်းလဵဝ်ၶႃႈ။
$$pure\ f\ <*>\ pure\ x\ ==\ pure\ (f\ x)$$

**တူဝ်ယၢင်ႇ:**
```haskell
ghci> pure (+1) <*> pure 5
Just 6
ghci> pure ( (+1) 5 )
Just 6
```


### **3. Interchange (ၵၢၼ်လႅၵ်ႈတီႈ)**
သင်ႁဝ်းမီး Function ၼႂ်း Context (`u`) လႄႈ Data ထမ်ႇမတႃႇ `y`၊ မၼ်းဢမ်ႇသူၼ်ၸႂ်ဝႃႈ ႁဝ်းတေဢဝ် Function ၵႂႃႇႁႃ Data ဢမ်ႇၼၼ် ဢဝ် Data ၵႂႃႇႁႃ Function ၶႃႈ။
$$u\ <*>\ pure\ y\ ==\ pure\ (\$ y)\ <*>\ u$$

**တူဝ်ယၢင်ႇ:**
```haskell
ghci> Just (+1) <*> pure 5
Just 6
ghci> pure ($ 5) <*> Just (+1)
Just 6
```

### **4. Composition (ၵၢၼ်သိုပ်ႇၵၼ်)**
ပၵ်းပိူင်ၼႆႉ လၢတ်ႈဝႃႈၵၢၼ်သိုပ်ႇ Applicative လၢႆလၢႆၸၼ်ႉ တိုၼ်းတေလႆႈမီး Logic မိူၼ်ၼင်ႇ Function Composition (`.`) ၶႃႈ။
$$pure\ (.)\ <*>\ u\ <*>\ v\ <*>\ w\ ==\ u\ <*>\ (v\ <*>\ w)$$



---

### **ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Laws ၸိူဝ်းၼႆႉ?**
ၸဝ်ႈၶူး ၸၢင်ႈလၢတ်ႈၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
1. **Mathematical Safety**: မၼ်းႁဵတ်းႁႂ်ႈႁဝ်းတႅမ်ႈ Code ဢၼ် "ဝႆႉၸႂ်လႆႈ" (Reliable)။
2. **Generic Programming**: ႁဝ်းၸၢင်ႈတႅမ်ႈ Function ဢၼ်ၸႂ်ႉလႆႈတင်းၵူႈ Applicative (မိူၼ်ၼင်ႇ `sequenceA`) ၵွပ်ႈႁဝ်းႁူႉဝႃႈ မၼ်းတေႁဵတ်းၵၢၼ်ၸွမ်းပၵ်းပိူင်ၼႆႉယူႇသေႇသေႇၶႃႈ။

---

### **Teacher's Lab: "Law Verification"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း ထတ်းတူၺ်းဝႃႈ `Homomorphism Law` မၢၼ်ႇမႅၼ်ႈႁႃႉ တွၼ်ႈတႃႇ List Applicative ၶႃႈ:

```haskell
-- pure f <*> pure x == pure (f x)
-- တွၼ်ႈတႃႇ List: pure = \x -> [x]

ghci> [(+10)] <*> [5]
[15]

ghci> pure ((+10) 5) :: [Int]
[15]
-- Result: မၢၼ်ႇမႅၼ်ႈၶႃႈ!
```

---

### **Summary for TMK Students:**
* **Identity**: `pure id` ဢမ်ႇလႅၵ်ႈလၢႆႈသင်။
* **Homomorphism**: `pure` ဢမ်ႇလႅၵ်ႈလၢႆႈ Logic ၶေႃႈၵၢၼ်ၼပ်ႉ။
* **Consistency**: Applicative Laws ၸွႆႈႁႂ်ႈၵၢၼ်ၸႂ်ႉ `<*>` မီးမၢၼ်ႇၵူႈတီႈ။

တေႃႈလဵဝ် ႁဝ်းတေၵႂႃႇႁဵၼ်းလၢႆးၸႂ်ႉ `fmap` တင်း Parameter လၢႆလၢႆတူဝ် ၼႂ်း **Lesson 53: Using 'fmap' with Multiple Arguments** ၼၼ်ႉႁႃႉၶႃႈ?

1. **Start Lesson 53**
2. **Review Applicative vs Functor Laws**
3. **Practice Interchange Law with Maybe**
4. **Explain why pure is important**

ၸဝ်ႈၶူး **Sai Mao** ၶႂ်ႈသိုပ်ႇၵႂႃႇလၢႆးလႂ်ၶႃႈ?