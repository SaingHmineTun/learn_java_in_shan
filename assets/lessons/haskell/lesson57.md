## **Lesson 57: ZipLists: A Different Kind of Applicative**

**ZipList** ပဵၼ် Wrapper Type တွၼ်ႈတႃႇ List ဢၼ်လႅၵ်ႈလၢႆႈလၢႆးၸႂ်ႉ `<*>` ႁႂ်ႈမၼ်း "ၵူပ်ႉၵၼ်ၸွမ်း Index" ၶႃႈ။

### **1. Standard List vs. ZipList**

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၶူး **Sai Mao** မီး List ၶေႃႈ Function သွင်ဢၼ် လႄႈ List ၶေႃႈတူဝ်ၼပ်ႉသွင်တူဝ်ၶႃႈ:

* **Standard List (The Default):**
  ```haskell
  ghci> [(+1), (*10)] <*> [1, 2]
  [2, 3, 10, 20] 
  -- (1+1, 2+1, 1*10, 2*10) -> All combinations
  ```

* **ZipList (The Specialized):**
  ```haskell
  import Control.Applicative
  
  ghci> getZipList $ ZipList [(+1), (*10)] <*> ZipList [1, 2]
  [2, 20]
  -- (1+1, 2*10) -> Pairwise (Index 0 ၵူပ်ႉ 0, Index 1 ၵူပ်ႉ 1)
  ```



---

### **2. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ ZipList?**
ၸဝ်ႈၶူး ၸၢင်ႈသပ်းလႅင်းၼႄဝႃႈ:
1. **Column-wise Processing**: မိူၼ်ၼင်ႇႁဝ်းမီး Table သေ ၶႂ်ႈဢဝ် Column A မႃးပวกတင်း Column B ၸွမ်းၸၼ်ႉမၼ်း (Row by Row) ၶႃႈ။
2. **Infinite Lists**: ZipList ႁဵတ်းၵၢၼ်လႆႈလီတင်း List ဢၼ်ဢမ်ႇမီးတီႈသုတ်း ၵွပ်ႈမၼ်းတေၵိုတ်းမိူဝ်ႈ List တူဝ်ဢၼ်ပိုင်ႈၼၼ်ႉသုတ်းၵႂႃႇၶႃႈ။

---

### **3. 'pure' ၼႂ်း ZipList (The Constant Stream)**
ၼႆႉပဵၼ်ဢၼ်လီသူၼ်ၸႂ်သုတ်းၶႃႈ။ `pure` ၶေႃႈ ZipList မၼ်းဢမ်ႇလႆႈပၼ် List ဢၼ်မီးတူဝ်လဵဝ် `[x]`၊ မၼ်းသမ်ႉပၼ် **List ဢၼ်မီးၵႃႈၶၼ်ၼၼ်ႉသိုပ်ႇၵၼ်ၵႂႃႇဢမ်ႇမီးတီႈသုတ်း** ၶႃႈယဝ်ႉ။

```haskell
-- pure 5 ၼႂ်း ZipList တေမိူၼ်တင်း [5, 5, 5, 5, ...]
ghci> getZipList $ (+) <$> ZipList [1, 2, 3] <*> pure 10
[11, 12, 13]
```



---

### **Teacher's Lab: "The Grade Calculator"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Code တွၼ်ႈတႃႇဢဝ် "คะแนนสอบ" (Scores) လႄႈ "คะแนนจิตพิสัย" (Bonus) မႃးပวกၵၼ်ၸွမ်းၸိုဝ်ႈလုၵ်ႈႁဵၼ်းၶႃႈ:

```haskell
import Control.Applicative

scores = ZipList [80, 75, 90]
bonus  = ZipList [5, 10, 2]

finalGrades = getZipList $ (+) <$> scores <*> bonus
-- Result: [85, 85, 92]
```

---

### **Summary for TMK Students:**
* **ZipList**: ပဵၼ်လၢႆးၸႂ်ႉ Applicative ဢၼ် "ၵူပ်ႉ Index တူဝ်လဵဝ်ၵၼ်"။
* **`getZipList`**: ၸႂ်ႉတွၼ်ႈတႃႇဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇမႃးပဵၼ် List ထမ်ႇမတႃႇၶိုၼ်း။
* **Utility**: လီသုတ်းတွၼ်ႈတႃႇၸတ်းၵၢၼ် Data ဢၼ်မီး Order မိူၼ်ၵၼ်ၶႃႈ။
