## **Lesson 74: Grand Finale: Compiling and Packaging**

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေဢဝ် Code ဢၼ်ႁဝ်းတႅမ်ႈမႃးတင်းหมด ၼႂ်း Lesson 72-73 မႃး "ၵူတ်ႇ" (Compile) ႁႂ်ႈပဵၼ် **Executable File** ဢၼ်ၸၢင်ႈသူင်ႇပၼ်ၵၼ်ၸႂ်ႉလႆႈၶႃႈ။

### **1. GHC: The Compiler Power**
ႁဝ်းၸႂ်ႉ **GHC** (Glasgow Haskell Compiler) တွၼ်ႈတႃႇပိၼ်ႇ Code ႁဝ်းႁႂ်ႈပဵၼ် Machine Code ၶႃႈ။

**လၢႆးတႅမ်ႈၼႂ်း Terminal:**
```bash
ghc --make -O2 Main.hs -o tmk
```
* **`--make`**: ႁႂ်ႈမၼ်းႁႃ Dependencies တင်းหมดၵမ်းလဵဝ်။
* **`-O2`**: ႁႂ်ႈမၼ်း "Optimized" ႁႂ်ႈ Program လႅၼ်ႈဝႆးသုတ်း။
* **`-o tmk`**: တင်ႈၸိုဝ်ႈ File ဢွၵ်ႇမႃးဝႃႈ `tmk` (ဢမ်ႇၼၼ် `tmk.exe`)။



---

### **2. Structuring with Cabal or Stack**
တွၼ်ႈတႃႇ Project ဢၼ်ပဵၼ် Professional ၼၼ်ႉ ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈသွၼ်လုၵ်ႈႁဵၼ်းႁႂ်ႈၸႂ်ႉ **Cabal** ဢမ်ႇၼၼ် **Stack** ၶႃႈ။ မၼ်းတေၸွႆႈၸတ်းၵၢၼ် Library ၸိူဝ်းဢၼ်ႁဝ်းလူဝ်ႇ (မိူၼ်ၼင်ႇ `async` ဢမ်ႇၼၼ် `text`) ႁႂ်ႈငၢႆႈၶႃႈ။

**လၢႆးသၢင်ႈ Project:**
```bash
cabal init
cabal build
cabal run tmk -- list
```

---

### **3. The "TMK Task Manager" in Action**
မိူဝ်ႈႁဝ်း Compile ယဝ်ႉယဝ်ႉ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ Program ႁဝ်းၼင်ႇၼႆၶႃႈ:

```bash
./tmk add "Teach Haskell at Muse"
./tmk add "Develop Shan App"
./tmk list
# Result: 
# 1. [ ] Teach Haskell at Muse
# 2. [ ] Develop Shan App

./tmk done 1
./tmk list
# Result: 
# 1. [X] Teach Haskell at Muse
# 2. [ ] Develop Shan App
```



---

### **4. Teacher's Reflection: The Haskell Mindset**
ၵၢၼ်ႁဵၼ်း Haskell ၼႆႉ မၼ်းဢမ်ႇၸႂ် ၵူၺ်းပဵၼ်ၵၢၼ်ႁဵၼ်း Programming Language မႂ်ႇ၊ မၼ်းပဵၼ် **"ၵၢၼ်လႅၵ်ႈလၢႆးပၢႆးဝူၼ်ႉ"** (Shift in Thinking) ၶႃႈ:
* **Purity**: ႁဵတ်းႁႂ်ႈႁဝ်းဝူၼ်ႉလွင်ႈ Logic ႁႂ်ႈသႅၼ်ႈသႂ်ႇ။
* **Types**: ႁဵတ်းႁႂ်ႈ Computer ၸွႆႈၵူတ်ႇထတ်း Error ပၼ်ႁဝ်း ဢွၼ်တၢင်းတေလႅၼ်ႈ။
* **Abstraction**: ႁဵတ်းႁႂ်ႈႁဝ်းမေႃၸတ်းၵၢၼ်ပၼ်ႁႃ ဢၼ်ယၢပ်ႇယၢပ်ႇ လူၺ်ႈၸႂ်ႉ Tools ဢၼ်မီးဢဵၼ်ႁႅင်း (Monads)။

---