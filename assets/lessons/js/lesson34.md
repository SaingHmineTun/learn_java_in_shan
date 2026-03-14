# Lesson 34: Callbacks & Callback Hell

**Callback** ၼႆႉ ပဵၼ် Function ဢၼ်ႁဝ်းသူင်ႇၶဝ်ႈၵႂႃႇ (Pass as an argument) ၼႂ်း Function တၢင်ႇဢၼ် ပိူဝ်ႈတေႁႂ်ႈမၼ်း "ႁဵတ်းၵၢၼ်ၶိုၼ်း" (Call back) မိူဝ်ႈၵၢၼ်သင်ဝႆႉၼိုင်ႈယၢင်ႇယဝ်ႉတူဝ်ႈၶႃႈ။

### 1. Callback ပဵၼ်သင်?

ၼႂ်း JavaScript Asynchronous၊ ႁဝ်းၸႂ်ႉ Callback ပိူဝ်ႈတေလၢတ်ႈဝႃႈ: *"မိူဝ်ႈလူတ်ႇၶေႃႈမုၼ်းယဝ်ႉယဝ်ႉၸိုင်၊ ၸွႆႈႁဵတ်း Function ၼႆႉပၼ်ၵမ်းၼႃႈ။"*

```javascript
function downloadFile(callback) {
  console.log("Downloading...");
  setTimeout(() => {
    console.log("Download complete!");
    callback(); // ၼႆႉပဵၼ်ၵၢၼ် "ႁွင်ႉၶိုၼ်း" (Callback)
  }, 2000);
}

downloadFile(() => {
  console.log("Processing the file...");
});

```

---

### 2. Callback Hell (ၶုမ်ၾီၾႃႉ Callback)

ပၼ်ႁႃတႄႇမီးမိူဝ်ႈႁဝ်းလူဝ်ႇႁဵတ်းၵၢၼ် Asynchronous လၢႆလၢႆယၢင်ႇ သိုပ်ႇၵၼ် (Sequential)။ မိူၼ်ၼင်ႇ:

1. လူတ်ႇၶေႃႈမုၼ်း User
2. လူတ်ႇ Post ၶွင် User ၼၼ်ႉ
3. လူတ်ႇ Comment ၼႂ်း Post ၼၼ်ႉ

သင်ႁဝ်းၸႂ်ႉ Callback၊ ၵူတ်ႉႁဝ်းတေတႄႇ "ငႅၵ်း" ၶဝ်ႈၵႂႃႇၽၢႆႇၶႂႃတိၵ်းတိၵ်း မိူၼ်ႁၢင်ႈပိရမိတ်ႉ (Pyramid of Doom) ၶႃႈ။

```javascript
// တူဝ်ယၢင်ႇ Callback Hell
getData(function(a) {
  getMoreData(a, function(b) {
    getEvenMoreData(b, function(c) {
      getFinalData(c, function(d) {
        console.log("Final Result: " + d);
      });
    });
  });
});

```

---

### 3. ယွၼ်ႉသင် Callback Hell ထိုင်ပဵၼ်ပၼ်ႁႃ?

* **လူယႃႇယၢပ်ႇ (Hard to read)**: ၵူတ်ႉသုၵ်ႉယုင်ႈၼႃႇ။
* **ၸတ်းၵၢၼ် Error ယၢပ်ႇ (Error Handling)**: ႁဝ်းတေလႆႈၵူတ်ႇထတ်း Error ၼႂ်းၵူႈထႅဝ် Callback။
* **ၵုမ်းထိူင်းယၢပ်ႇ (Hard to maintain)**: သင်ၶႂ်ႈလႅၵ်ႈလၢႆႈလမ်ႇတပ်ႉၵၢၼ်ႁဵတ်း၊ တေလႆႈမႄးတင်းမူတ်း။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Callback**: ပဵၼ် Function ဢၼ်ႁဝ်းသူင်ႇၵႂႃႇ တႃႇႁႂ်ႈႁဵတ်းၵၢၼ်မိူဝ်ႈၵၢၼ်တၢင်ႇဢၼ်ယဝ်ႉ။
* **Callback Hell**: ပဵၼ်လွင်ႈၵူတ်ႉသုၵ်ႉယုင်ႈ ဢၼ်ပဵၼ်မႃးလူၺ်ႈၵၢၼ်သႂ်ႇ Callback သိုပ်ႇၵၼ်ၼမ်လႅတ်း။
* **လၢႆးၵႄႈ**: ၼႂ်း JavaScript မၼ်းမီးလၢႆးၵႄႈဢၼ်ႁွင်ႉဝႃႈ **Promises** လႄႈ **Async/Await** ဢၼ်ႁဝ်းတေႁဵၼ်းၼႂ်းတွၼ်ႈၼႃႈၶႃႈ။

---