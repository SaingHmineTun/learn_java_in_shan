

## **Lesson 46: Image Loading with Glide or Coil**

### **1. The URL-to-Image Challenge (ပၼ်ႁႃလွင်ႈလူတ်ႇႁၢင်ႈ)**

ပဵၼ်သင်လႄႈ ႁဝ်းဢမ်ႇၸၢင်ႈဢဝ် URL ၵႂႃႇသႂ်ႇၼႂ်း `ImageView` လႆႈၵမ်းလဵဝ်?

* **Networking:** ၵၢၼ်လူတ်ႇႁၢင်ႈလူဝ်ႇလႆႈၸႂ်ႉ Internet လႄႈ လူဝ်ႇလႆႈႁဵတ်းၵၢၼ်ၼႂ်း Background (မိူၼ်ၼင်ႇ Coroutines) ယဝ်ႉ။
* **Memory Management:** ႁၢင်ႈမၢင်ဢၼ်မီးသႅၼ်းယႂ်ႇၼႃႇ။ သင်ႁဝ်းဢမ်ႇၸတ်ႉၵၢၼ်လီလီၼႆ App ႁဝ်းတေၵိၼ် RAM ၼမ်သေ တေႁဵတ်းႁႂ်ႈ ဢႅပ်းႁဝ်းလူႉ (Crash) ယဝ်ႉ။
* **Decoding:** ႁဝ်းလူဝ်ႇလႆႈပိၼ်ႇ Binary Data ဢၼ်လုၵ်ႉတီႈ Web မႃး ႁႂ်ႈပဵၼ် Bitmap ဢၼ် Android ၼႄလႆႈယဝ်ႉ။

---

### **2. Caching & Placeholders (ၵၢၼ်ၸတ်ႉၵၢၼ်ငဝ်းလၢႆး)**

တႃႇတေလူတ်ႇဢဝ် ၶႅပ်းႁၢင်ႈၼိူဝ် ဢွၼ်ႇလၢႆးသေ မႃးၸႂ်ႉတီႈၼႂ်းဢႅပ်းႁဝ်းၼႆႉ
ႁဝ်းတေၸႂ်ႉ Library (မိူၼ်ၼင်ႇ **Glide** ဢမ်ႇၼၼ် **Coil**) တႃႇၸွႆႈယဝ်ႉ:

* **Caching (ၵၢၼ်သိမ်းဝႆႉ):** မိူဝ်ႈႁဝ်းလူတ်ႇႁၢင်ႈၼိုင်ႈပွၵ်ႈယဝ်ႉၼၼ်ႉ Library တေသိမ်းႁၢင်ႈၼၼ်ႉဝႆႉၼႂ်းၾူၼ်း။ ပွၵ်ႈၼႃႈမႃး ႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ Internet တႃႇလူတ်ႇမၼ်းထႅင်ႈယဝ်ႉ။
* **Placeholder (ႁၢင်ႈပႂ်ႉ):** ၼႄႁၢင်ႈတူဝ်ယၢင်ႇ ၼႂ်းၵႄႈဢၼ်တိုၵ်ႉပႂ်ႉ Internet ယူႇ။
* **Error Image:** သင် Internet ဢမ်ႇလီ ဢမ်ႇၼၼ် Link ႁၢႆၵႂႃႇၸိုင် ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈမၼ်းၼႄ "ႁၢင်ႈၽိတ်းပိူင်" တႅၼ်းယဝ်ႉ။

#### **တူဝ်ယၢင်ႇ Code (Using Glide):**

```kotlin
Glide.with(context)
    .load("https://example.com/shan-noodle.jpg") // Link ႁၢင်ႈ
    .placeholder(R.drawable.loading_spinner)    // ႁၢင်ႈမိူဝ်ႈတိုၵ်ႉပႂ်ႉ
    .error(R.drawable.error_image)              // ႁၢင်ႈမိူဝ်ႈမီးပၼ်ႁႃ
    .into(binding.ivRecipeImage)                // ဢဝ်ၵႂႃႇသႂ်ႇၼႂ်း ImageView ၼႆႉ

```

---

### **3. Glide vs. Coil**

* **Glide:** ပဵၼ် Library ဢၼ်ၵဝ်ႇၵႄႇ လႄႈ မၼ်ႈၵိုမ်းသုတ်း။ ၵူၼ်းၸႂ်ႉၼမ်၊ မီး Documentation တဵမ်ထူၼ်ႈၶႃႈ။
* **Coil:** ပဵၼ် Library မႂ်ႇ ဢၼ်တႅမ်ႈလူၺ်ႈ Kotlin တႄႉတႄႉ။ မၼ်းၸႂ်ႉ Coroutines သေ ႁဵတ်းႁႂ်ႈ Code ႁဝ်း လဵၵ်ႉလိူဝ်ၵဝ်ႇ (Lightweight) လႄႈ ၸႂ်ႉငၢႆႈလိူဝ်ၶႃႈ။

---

### **Advice for Students**

'ယႃႇလိုမ်းသႂ်ႇ **Internet Permission** ၼႂ်း `AndroidManifest.xml` ၶႃႈၼေႃ!' 
သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Code ယဝ်ႉလီငၢမ်းယဝ်ႉ၊ သင်ဢမ်ႇယွၼ်းၶႂၢင်ႉၸႂ်ႉ Internet တီႈ Android ၼႆ App တေဢမ်ႇလူတ်ႇႁၢင်ႈသင်ပၼ်လႆႈ။
မၼ်းမိူၼ်ႁဝ်းမီးၾူၼ်းယူႇ ၵူၺ်းၵႃႈ ဢမ်ႇပိုတ်ႇ Data ၼၼ်ႉၶႃႈယဝ်ႉ!