## **Lesson 6: Strings and Characters (Haskell's List of Chars)**

ၼႂ်း Haskell ၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႅၵ်ႇပႅၵ်ႇၵၼ်ဝႆႉယူႇ 2 မဵဝ်းၶႃႈ:

### **1. Char (Character)**
**Char** ၼႆႉ ပဵၼ် "တူဝ်လိၵ်ႈ" တူဝ်လဵဝ်ၵူၺ်းၶႃႈ။
* ႁဝ်းတေလႆႈၸႂ်ႉ **Single Quote (`'`)** တႃႇႁေႃႇမၼ်းဝႆႉ။
* **တူဝ်ယၢင်ႇ:** `'A'`, `'s'`, `'တ'`, `'1'`.
* **ထတ်းတူၺ်း Type:** `ghci> :t 'S'` $\rightarrow$ `'S' :: Char`

### **2. String (List of Characters)**
ၼႆႉပဵၼ် "လွင်ႈသိူၵ်ႈသႅၼ်း" (Secret) ၶေႃႈၼိုင်ႈၶေႃႈ Haskell ၶႃႈ!
* **String** ၼႆႉ တိုၼ်းပဵၼ် **[Char]** (List ၶေႃႈ Char) ၼၼ်ႉယဝ်ႉ။
* ႁဝ်းတေလႆႈၸႂ်ႉ **Double Quote (`"`)** တႃႇႁေႃႇမၼ်းဝႆႉ။
* **တူဝ်ယၢင်ႇ:** `"Shan"` ၼႆႉ တီႈတႄႉမၼ်း ပဵၼ် `['S', 'h', 'a', 'n']` ၶႃႈဢေႃႈ။



---

### **3. String Operations (ၵၢၼ်ၸွႆႈထတ်း String)**

ၵွပ်ႈဝႃႈ String ပဵၼ် List (သႅၼ်းလိၵ်ႈ) လႄႈ ႁဝ်းၸၢင်ႈၸႂ်ႉ Functions ပုၼ်ႈတႃႇ List မႃးၸွႆႈလႆႈၶႃႈ:

#### **ၵ. ၵၢၼ်သိုပ်ႇၶေႃႈၵႂၢမ်း (Concatenation)**
ႁဝ်းၸႂ်ႉ **`++`** တႃႇဢဝ် String 2 ဢၼ်မႃးသိုပ်ႇၵၼ်ၶႃႈ။
```haskell
ghci> "TMK" ++ " Academy"
"TMK Academy"
```

#### **ၶ. ၵၢၼ်ဢဝ် Char သႂ်ႇၼႃႈ (Cons Operator)**
ႁဝ်းၸႂ်ႉ **`:`** တႃႇဢဝ် Char တူဝ်ၼိုင်ႈ မႃးသႂ်ႇၼႃႈ String ၶႃႈ။
```haskell
ghci> 'T' : "MK"
"TMK"
```

#### **င. ၵၢၼ်ၼပ်ႉတူဝ်လိၵ်ႈ (Length)**
```haskell
ghci> length "Muse"
4
```

---

### **4. ၵၢၼ်ၸႅၵ်ႇ String လႄႈ Char**
လုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** လူဝ်ႇသတိဝႆႉဝႃႈ:
* `'A'` $\rightarrow$ ပဵၼ် **Char** (တူဝ်လိၵ်ႈတူဝ်လဵဝ်)။
* `"A"` $\rightarrow$ ပဵၼ် **String** (List ဢၼ်မီး Char တူဝ် 'A' ဝႆႉတူဝ်လဵဝ်)။

သင်ႁဝ်းဢဝ် String မႃးသိုပ်ႇတင်း Char လူၺ်ႈၸႂ်ႉ `++` ၼၼ်ႉ မၼ်းတေ **Error** ၶႃႈဢေႃႈ။
* **Wrong:** `"Hello" ++ '!'` (Error!)
* **Right:** `"Hello" ++ "!"` (Correct)



---

**Summary for TMK Students:**
* **`Char`** ၸႂ်ႉ `' '` (Single Quote)။
* **`String`** ၸႂ်ႉ `" "` (Double Quote)။
* **String** ပဵၼ် **List ၶေႃႈ Char**.
* **`++`** တႃႇသိုပ်ႇ String၊ **`:`** တႃႇဢဝ် Char သႂ်ႇၼႃႈ String။

တွၼ်ႈသွၼ်ၼႆႉ ပဵၼ်တွၼ်ႈၵမ်းလိုၼ်းသုတ်း ဢၼ်ႁဝ်းတေၸႂ်ႉ GHCi ၵူၺ်းယဝ်ႉၶႃႈ။