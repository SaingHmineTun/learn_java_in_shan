## **Lesson 39: Lambdas: Anonymous Functions on the Fly**

**Lambda** ပဵၼ် Function ဢၼ်ႁဝ်း "တႅမ်ႈယဝ်ႉၸႂ်ႉၵမ်းလဵဝ်" သေ ဢမ်ႇလူဝ်ႇပိုတ်ႇၸိုဝ်ႈမၼ်းဝႆႉၶႃႈ။

### **1. ပိူင်တႅမ်ႈ (The Backslash Syntax)**
ႁဝ်းၸႂ်ႉသင်ႇၵေႇတႃႇ **`\`** (Backslash) တႃႇတႅၼ်းတူဝ်လိၵ်ႈ Greek $\lambda$ (Lambda) ၶႃႈ။
`(\parameter -> expression)`

* **`\`**: လၢတ်ႈဝႃႈ "ၼႆႉပဵၼ် Lambda ဢေႃႈ"။
* **`->`**: ၸႅၵ်ႇၵႄႈ Parameter လႄႈ Logic မၼ်း။



---

### **2. တူဝ်ယၢင်ႇၵၢၼ်ၸႂ်ႉတႄႉ**

**ၵ. ၵၢၼ်ၸႂ်ႉတင်း `map`:**
ဢဝ်တူဝ်ၼပ်ႉၼႂ်း List မႃးၼပ်ႉတင်း 3 သေ ထႅမ် 1။
```haskell
ghci> map (\x -> x * 3 + 1) [1, 2, 3]
[4, 7, 10]
```

**ၶ. ၵၢၼ်ၸႂ်ႉတင်း `filter`:**
ထတ်းဢဝ် String ဢၼ်မီးတၢင်းယၢဝ်း (Length) ယႂ်ႇသေ 3။
```haskell
ghci> filter (\xs -> length xs > 3) ["Sai", "Mao", "TMK", "Academy"]
["Academy"]
```

**င. Lambda ဢၼ်မီးလၢႆ Parameter:**
```haskell
ghci> (\x y -> x + y) 5 10
15
```

---

### **3. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ Lambdas?**
ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** ဝႃႈ:
1. **No Clutter:** ဢမ်ႇႁဵတ်းႁႂ်ႈ Code ႁဝ်းယုင်ႈယၢင်ႈလူၺ်ႈၸိုဝ်ႈ Function ဢွၼ်ႇဢွၼ်ႇ တင်းၼမ်။
2. **Locality:** Function ၼၼ်ႉယူႇၸပ်းတင်းၵၢၼ်ၸႂ်ႉတႄႉမၼ်း၊ ႁဵတ်းႁႂ်ႈလူပွင်ႇၸႂ်ငၢႆႈဝႃႈ "တွၼ်ႈၼႆႉမၼ်းႁဵတ်းသင်"။
3. **Currying:** Lambda ၵေႃႈ Curried ယူႇသေႇသေႇၶႃႈ။ `\x y -> x + y` တီႈတႄႉမၼ်းပဵၼ် `\x -> (\y -> x + y)` ၶႃႈဢေႃႈ။



---

### **4. ၶေႃႈသတိ: ၵၢၼ်ၸႂ်ႉ Pattern Matching**
ၼႂ်း Lambda ႁဝ်းၸၢင်ႈၸႂ်ႉ Pattern Matching ဢွၼ်ႇဢွၼ်ႇလႆႈ၊ ၵူၺ်းၵႃႈ မၼ်း **ဢမ်ႇၸၢင်ႈ** တႅမ်ႈလၢႆလၢႆထႅဝ် (Multiple equations) မိူၼ် Function ယူႇၵဝ်ႇၶႃႈ။

* **လၢႆးမၢၼ်ႇ:** `map (\(a,b) -> a + b) [(1,2), (3,4)]`
* **ၶေႃႈသတိ:** သင် Pattern ဢမ်ႇၵိုင်ႇၵၼ် (Match fail) ၼႆ Program တေ Crash ၵမ်းလဵဝ်ၶႃႈ။

---

### **Teacher's Lab: "Custom Formatting"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Code တွၼ်ႈတႃႇ "ႁၢင်ႈၶိူင်ႈ" ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း ႁႂ်ႈမီး `[ ]` ႁေႃႇဝႆႉၶႃႈ:

```haskell
formatNames :: [String] -> [String]
formatNames names = map (\name -> "[" ++ name ++ "]") names

-- ghci> formatNames ["Sai", "Mao"] --> ["[Sai]", "[Mao]"]
```

---

### **Summary for TMK Students:**
* **Lambda**: Function ဢမ်ႇမီးၸိုဝ်ႈ ဢၼ်ၸႂ်ႉ **`\`** တႄႇၼႃႈ။
* ၸႂ်ႉတွၼ်ႈတႃႇ **Short Tasks** ၼႂ်း `map`, `filter`, ဢမ်ႇၼၼ် Higher-order functions တၢင်ႇဢၼ်။
* ႁဵတ်းႁႂ်ႈ Code သႅၼ်ႈသႂ်ႇ လႄႈ ဝႆးလိူဝ်သေၵဝ်ႇ။
