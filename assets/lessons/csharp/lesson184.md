# Lesson 184: "Queue and Stack"

တင်းသွင်ပိူင်ၼႆႉ ပဵၼ် Collection ဢၼ်မၵ်းမၼ်ႈဝႃႈ "တူဝ်လႂ်တေထုၵ်ႇဢဝ်ဢွၵ်ႇၵႂႃႇၸႂ်ႉဢွၼ်တၢင်း" ၶႃႈ။

### 1\. Queue\<T\> (FIFO - First-In, First-Out)

**Queue** မိူၼ်ၼင်ႇ "ၵူၼ်းပႂ်ႉထႅဝ်" (Queue) တႃႇသိုဝ်ႉၶဝ်ႈ။

* **ပၵ်းၵၢၼ်:** ၵူၼ်းဢၼ်မႃး "ဢွၼ်တၢင်း" တေလႆႈသိုဝ်ႉ "ဢွၼ်တၢင်း" (First-In, First-Out)။
* **`.Enqueue(item)`**: ထႅမ်ၶဝ်ႈၵႂႃႇၽၢႆႇလင်ထႅဝ်။
* **`.Dequeue()`**: ဢဝ်တူဝ်ၼႃႈသုတ်းဢွၵ်ႇၵႂႃႇၸႂ်ႉ (သေလူတ်ႇမၼ်းပႅတ်ႈ)။
* **`.Peek()`**: တူၺ်းတူဝ်ၼႃႈသုတ်း ၵူၺ်းၵႃႈ "ဢမ်ႇလူတ်ႇ" မၼ်းပႅတ်ႈ။

### 2\. Stack\<T\> (LIFO - Last-In, First-Out)

**Stack** မိူၼ်ၼင်ႇ "ၵွင်ၸၢၼ်ႇ" (Stack of plates) ဢၼ်ႁဝ်းဝႆႉသိုပ်ႇၵၼ်ဝႆႉ။

* **ပၵ်းၵၢၼ်:** တူဝ်ဢၼ်ႁဝ်းဝႆႉ "လုၼ်းသုတ်း" တေယူႇၽၢႆႇၼိူဝ်သုတ်း သေတေလႆႈဢဝ်ဢွၵ်ႇ "ဢွၼ်တၢင်း" (Last-In, First-Out)။
* **`.Push(item)`**: ဝႆႉၶေႃႈမုၼ်းသိုပ်ႇဝႆႉၽၢႆႇၼိူဝ်။
* **`.Pop()`**: ဢဝ်တူဝ်ၼိူဝ်သုတ်းဢွၵ်ႇၵႂႃႇၸႂ်ႉ (သေလူတ်ႇမၼ်းပႅတ်ႈ)။
* **`.Peek()`**: တူၺ်းတူဝ်ၼိူဝ်သုတ်း ၵူၺ်းၵႃႈ "ဢမ်ႇလူတ်ႇ" မၼ်းပႅတ်ႈ။

-----

### 3\. တူဝ်ယင်ႇ ၵၢၼ်ၸႂ်ႉတႄႉ (Real-world Examples)

| Collection | Use Case (တူဝ်ယင်ႇ) |
| :--- | :--- |
| **Queue** | ပိူင် Print လိၵ်ႈ (Printer Queue), ၵၢၼ်သူင်ႇ Message ၸွမ်းလွင်ႈ |
| **Stack** | ပုမ်ႇ "Undo" (Ctrl+Z) ၼႂ်း App, ၵၢၼ်ၵႂႃႇၼႃႈ-လင် ၼႂ်း Browser |

### 4\. တူဝ်ယင်ႇ Code (Shan App Context)

```csharp
// --- Queue: တႃႇၵူၼ်းပႂ်ႉႁပ်ႉဝႂ်တွပ်ႇ ---
Queue<string> studentQueue = new Queue<string>();
studentQueue.Enqueue("Sai Hla");
studentQueue.Enqueue("Nang Mo");

string firstIn = studentQueue.Dequeue(); // "Sai Hla" ဢွၵ်ႇၵႂႃႇယဝ်ႉ

// --- Stack: တႃႇၵွင်ပပ်ႉလိၵ်ႈ ---
Stack<string> bookStack = new Stack<string>();
bookStack.Push("Shan History");
bookStack.Push("Coding in Tai");

string lastIn = bookStack.Pop(); // "Coding in Tai" ဢွၵ်ႇၵႂႃႇဢွၼ်တၢင်း
```

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **FIFO (First-In, First-Out):** ပၵ်းၵၢၼ် ၶဝ်ႈဢွၼ်တၢင်း ဢွၵ်ႇဢွၼ်တၢင်း။
* **LIFO (Last-In, First-Out):** ပၵ်းၵၢၼ် ၶဝ်ႈလုၼ်းသုတ်း ဢွၵ်ႇဢွၼ်တၢင်း။
* **Enqueue/Dequeue:** ၵၢၼ်ထႅမ်လႄႈဢဝ်ဢွၵ်ႇ ၼႂ်း Queue။
* **Push/Pop:** ၵၢၼ်ထႅမ်လႄႈဢဝ်ဢွၵ်ႇ ၼႂ်း Stack။
* **Peek:** ၵၢၼ် "ဢဵတ်းတူၺ်း" ၶေႃႈမုၼ်း ဢၼ်တေဢွၵ်ႇၵမ်းထတ်းၵႂႃႇ။

-----