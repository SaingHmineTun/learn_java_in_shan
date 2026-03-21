### **Lesson 56: Callbacks (The old way and 'Callback Hell')**

ဢွၼ်တၢင်းတေမီး `Promises` လႄႈ `Async/Await` ၼၼ်ႉ Developer ၶဝ်ၸႂ်ႉ **Callbacks** တႃႇၸတ်းၵၢၼ် Task ဢၼ်ၵိၼ်ယၢမ်းၶႃႈ။ မၼ်းပဵၼ်လၢႆးငၢႆႈသုတ်း၊ ၵူၺ်းၵႃႈ သင်ႁဝ်းၸႂ်ႉၼမ်ပူၼ်းတီႈ မၼ်းတေႁဵတ်းႁႂ်ႈၶူတ်ႉႁဝ်း "ယုင်ႈ" သုတ်းၶႃႈဢေႃႈ။

---

#### **1. What is a Callback?**
**Callback** ပဵၼ်ၵၢၼ်သူင်ႇ "Function" တူဝ်ၼိုင်ႈ ၶဝ်ႈၵႂႃႇပဵၼ် **Argument** ၼႂ်း Function တၢင်ႇဢၼ်။ ဝၢႆးၼၼ်ႉ Function ဢၼ်ႁပ်ႉဢဝ်မႃးၼၼ်ႉ တေ "ႁွင်ႉၶိုၼ်း" (Call back) မိူဝ်ႈမၼ်းႁဵတ်းၵၢၼ်ယဝ်ႉၶႃႈ။

```typescript
function downloadFile(url: string, callback: (content: string) => void) {
  console.log("Downloading from: " + url);
  
  // သမုၵ်ႉဝႃႈ လူတ်ႇၶေႃႈမုၼ်းၵိၼ်ယၢမ်း 2 ၸႅၵ်ႉၵၼ်ႇ
  setTimeout(() => {
    const data = "File Content from Muse Server";
    callback(data); // ႁွင်ႉ Callback မိူဝ်ႈယဝ်ႉ
  }, 2000);
}

downloadFile("https://saimao.com/api", (result) => {
  console.log("Download finished: " + result);
});
```



---

#### **2. Callback Hell (ပိူင်ပိၵ်ႇသၢပ်ႇ)**
မိူဝ်ႈႁဝ်းလူဝ်ႇႁဵတ်း Task တေႃႇၵၼ်လၢႆလၢႆဢၼ် (Serial Tasks) ၸိုင် ၶူတ်ႉႁဝ်းတေ "ငႅတ်း" (Nest) ၶဝ်ႈၵႂႃႇတိၵ်းတိၵ်း ႁဵတ်းႁႂ်ႈမၼ်းဢွၵ်ႇပဵၼ်သႅၼ်း "Pyramid of Doom" ၶႃႈ။

```typescript
// ❌ Example of Callback Hell
getUser(1, (user) => {
  getPosts(user.id, (posts) => {
    getComments(posts[0].id, (comments) => {
      getLikes(comments[0].id, (likes) => {
        console.log("Finally got the likes: " + likes);
      });
    });
  });
});
```



---

#### **3. Why is it bad? (ၵွပ်ႈသင်လႄႈမၼ်းဢမ်ႇလီ?)**
* **Hard to Read:** ၶူတ်ႉမၼ်းလႅၼ်ႈ "ၼိူဝ်လူင်းတႂ်ႈ" ၵေႃႈယဝ်ႉ ၵူၺ်းၵႃႈ လွင်ႈႁဵတ်းၵၢၼ်မၼ်း "သၢႆႉၵႂႃႇၶႂႃ" (Indentation) ၼမ်ၼႃႇ။
* **Error Handling:** ႁဝ်းလူဝ်ႇလႆႈၸႅတ်ႈထတ်း Error ၼႂ်းၵူႈ Layer ႁင်းၵူၺ်း၊ ႁဵတ်းႁႂ်ႈၶူတ်ႉယုင်ႈယၢင်ႈ။
* **Debugging:** မိူဝ်ႈမီး Error တီႈတွၼ်ႈၼိုင်ႈ ၵၢၼ်ၸွမ်းတူၺ်း (Trace) မၼ်းယၢပ်ႇသုတ်းၶႃႈ။

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးသူင်ႇ Function ၶဝ်ႈၵႂႃႇၼႂ်း Function တၢင်ႇဢၼ် (Callback)။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Callback ႁဵတ်းၵၢၼ် "ဝၢႆးသေ" Task ၼၼ်ႉယဝ်ႉ။
- [ ] ႁူႉဝႃႈ **Callback Hell** ႁဵတ်းႁႂ်ႈၶူတ်ႉ "ဢၢၼ်ႇယၢပ်ႇ" လႄႈ "မႄးယၢပ်ႇ"။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇပွင်ႇၸႂ်လွင်ႈ Nested Functions ဢွၼ်တၢင်းတေၵႂႃႇႁဵၼ်း Promises။

---