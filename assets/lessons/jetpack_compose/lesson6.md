## Lesson 6: Modifiers – The "Style Brush"

**Modifier** ပဵၼ်ၶေႃႈၵႂၢမ်းဢၼ်ႁဝ်းသႂ်ႇပၼ် Component (မိူၼ်ၼင်ႇ Text, Column) တႃႇလၢတ်ႈၼႄဝႃႈ:
* မၼ်းတေယႂ်ႇတၢၼ်ႇလႂ်? (Size)
* မၼ်းတေမီးသီသင်? (Background)
* မၼ်းတေႁၢင်ႇၵၼ်တၢၼ်ႇလႂ်? (Padding)
* ပေႃးၼဵၵ်းမၼ်း တေႁဵတ်းသင်? (Clickable)

### 1. Modifiers ဢၼ်ၸႂ်ႉၼမ် (Common Modifiers)
* **`.fillMaxSize()`**: ႁဵတ်းႁႂ်ႈယႂ်ႇတဵမ်ၼႃႈၸေႃး။
* **`.padding(16.dp)`**: ႁဵတ်းႁႂ်ႈမီးတီႈလွတ်ႈ (Space) ႁိမ်းႁွမ်းမၼ်း။
* **`.background(Color.Blue)`**: သႂ်ႇသီပိုၼ်ႉၽၢႆႇတႂ်ႈ။
* **`.size(100.dp)`**: မၵ်းမၼ်ႈ တၢင်းၵႂၢင်ႈလႄႈတၢင်းသုင်။



### 2. ပၵ်းပိူင်လွင်ႈယႂ်ႇ (Order Matters!)
ဢၼ်ၼႆႉလွင်ႈယႂ်ႇသုတ်းၶႃႈ။ ၼႂ်း Compose ၼႆႉ **Modifier တႅမ်ႈဢွၼ်တၢင်း ႁဵတ်းၵၢၼ်ဢွၼ်တၢင်း** ၶႃႈ။

တူၺ်းတူဝ်ယၢင်ႇၼႆႉၶႃႈ:
* **ပိူင် A:** `.padding(16.dp).background(Color.Yellow)`
  -> မၼ်းတေဢဝ် Padding သႂ်ႇၵွၼ်ႇ၊ ယဝ်ႉၸင်ႇသႂ်ႇသီလိူင်။ (သီလိူင်တေဢမ်ႇတဵမ်တီႈ Padding)
* **ပိူင် B:** `.background(Color.Yellow).padding(16.dp)`
  -> မၼ်းတေဢဝ်သီလိူင်သႂ်ႇၵွၼ်ႇ၊ ယဝ်ႉၸင်ႇဢဝ် Padding သႂ်ႇဝႆႉတၢင်းၼႂ်း။ (သီလိူင်တေတဵမ်ၵႂႃႇၵူႈတီႈ)



### 3. တူဝ်ယၢင်ႇ Code ၼႂ်း Proverb Card
```kotlin
Text(
    text = "ၵူၼ်းႁူႉဢမ်ႇၼမ်",
    modifier = Modifier
        .fillMaxWidth()        // ႁႂ်ႈၵႂၢင်ႈတဵမ်ၽၢႆႇသၢႆႉၶႂႃ
        .background(Color.DarkGray)
        .padding(20.dp)        // သႂ်ႇတီႈလွတ်ႈဝႆႉတၢင်းၼႂ်း 20.dp
)
```

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 6)
1.  ၼႂ်း `MainActivity.kt` ၸၢမ်းသႂ်ႇ `.background(Color.Green)` လႄႈ `.padding(30.dp)` ၼႂ်း `Greeting` function ၶႃႈ။
2.  ၸၢမ်းလႅၵ်ႈလၢႆႈ "ပၵ်းပိူင်" (Order) မၼ်းတူၺ်း — ဢဝ် Padding ဝႆႉဢွၼ်တၢင်း Background၊ ယဝ်ႉၵေႃႈ ဢဝ် Background ဝႆႉဢွၼ်တၢင်း Padding သေ တူၺ်းၼႂ်း Preview ဝႃႈ မၼ်းပႅၵ်ႇၵၼ်ၸိူင်ႉႁိုဝ်ၶႃႈ။
3.  ၸၢမ်းသႂ်ႇ `.fillMaxSize()` ၼႂ်း `Column` ဢွၼ်တၢင်းသုတ်း ႁႂ်ႈ UI ႁဝ်းယႂ်ႇတဵမ်ၼႃႈၸေႃးၾူၼ်းၶႃႈ။