### **Lesson 60: Promise.all vs Promise.race (Handling multiple tasks)**

မိူဝ်ႈႁဝ်းမီး Task လၢႆလၢႆဢၼ် ဢၼ်လူဝ်ႇႁဵတ်းၸွမ်းၵၼ် (Parallel) ၼၼ်ႉ၊ သင်ႁဝ်းၸႂ်ႉ `await` "ทีละตัว" (One by one) မၼ်းတေၵိၼ်ယၢမ်းၼမ်ၶႃႈ။ JavaScript/TypeScript မီး Method ဝိသဵတ်ႇ တႃႇၸတ်းၵၢၼ် Promise လၢႆလၢႆဢၼ် ႁူမ်ႈၵၼ်ၶႃႈဢေႃႈ။

-----

#### **1. Promise.all() (ႁဵတ်းၸွမ်းၵၼ် - ထႃႉၵူႈတူဝ်)**

`Promise.all` တေႁပ်ႉဢဝ် Array ၶွင် Promises သေ တေသူင်ႇ Array ၶွင် Result ဢွၵ်ႇမႃး မိူဝ်ႈ **"ၵူႈတူဝ်"** ႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈၶႃႈ။

* **သၢႆငၢႆ:** သင်မီးတူဝ်ၼိုင်ႈ **Rejected**, `Promise.all` တေ Rejected ၵမ်းလဵဝ် (All or Nothing)။
* **ၵွပ်ႈသင်လႄႈၸႂ်ႉ:** မိူဝ်ႈႁဝ်းလူဝ်ႇၶေႃႈမုၼ်းတင်းသဵၼ်ႈ ၸင်ႇတေႁဵတ်းၵၢၼ်လႆႈ (ၼင်ႇ လူတ်ႇ Profile လႄႈ Posts ၸွမ်းၵၼ်)။

<!-- end list -->

```typescript
async function fetchAllData() {
  try {
    // တႄႇႁဵတ်းၵၢၼ်ၸွမ်းၵၼ် (Parallel)
    const [user, posts] = await Promise.all([
      fetchUser(1),
      fetchPosts(1)
    ]);
    
    console.log(user.name, posts.length);
  } catch (error) {
    console.error("One of the requests failed!");
  }
}
```

-----

#### **2. Promise.race() (ၽႂ်ၽႂ်း ၽႂ်လႆႈ)**

`Promise.race` တေသူင်ႇ Result ၶွင် Promise **"တူဝ်ဢၼ်ယဝ်ႉဢွၼ်တၢင်းပိူၼ်ႈ"** ဢွၵ်ႇမႃးၶႃႈ (ဢမ်ႇဝႃႈတေ Resolved ဢမ်ႇၼၼ် Rejected)။

* **ၵွပ်ႈသင်လႄႈၸႂ်ႉ:** ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇႁဵတ်း **Timeout** (သင် API ႁိုင်ပူၼ်း 5 ၸႅၵ်ႉၵၼ်ႇ ႁႂ်ႈမၼ်း Stop)။

<!-- end list -->

```typescript
const request = fetchDataFromServer();
const timeout = new Promise((_, reject) => 
  setTimeout(() => reject(new Error("Timeout!")), 5000)
);

try {
  // တူဝ်လႂ်ယဝ်ႉဢွၼ်တၢင်း ဢဝ်တူဝ်ၼၼ်ႉ
  const result = await Promise.race([request, timeout]);
  console.log(result);
} catch (error) {
  console.error(error.message);
}
```

-----

#### **3. Summary Comparison**

| Feature | Promise.all | Promise.race |
| :--- | :--- | :--- |
| **ၵၢၼ်ႁဵတ်းၵၢၼ်** | ထႃႉႁႂ်ႈယဝ်ႉ "ၵူႈတူဝ်" | ဢဝ်တူဝ်ဢၼ်ယဝ်ႉ "ဢွၼ်တၢင်းပိူၼ်ႈ" |
| **သင်မီး Error** | သင်မီးတူဝ်ၼိုင်ႈၽိတ်း တေၽိတ်းတင်းသဵၼ်ႈ | ဢဝ်တူဝ်ဢၼ်ၽိတ်း/ဢွင်ႇ ဢွၼ်တၢင်းပိူၼ်ႈ |
| **Usage** | လူတ်ႇၶေႃႈမုၼ်းလၢႆမဵဝ်းႁူမ်ႈၵၼ် | ႁဵတ်း Timeout ဢမ်ႇၼၼ် Backup Server |

-----

#### **4. Summary Checklist**

- [ ] ၸႂ်ႉ `Promise.all` တႃႇႁဵတ်း Task လၢႆဢၼ်ႁူမ်ႈၵၼ် (Parallel) တႃႇႁႂ်ႈ App ၽႂ်းလိူဝ်သေၵဝ်ႇ။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `Promise.all` တေ Fail ၵမ်းလဵဝ် သင်မီးတူဝ်ၼိုင်ႈ Rejected။
- [ ] ၸႂ်ႉ `Promise.race` တႃႇမၵ်းမၼ်ႈၶၢဝ်းယၢမ်း (Timeout) ဢမ်ႇၼၼ် တွၼ်ႈတႃႇ Race Condition။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇသူင်ႇ Array ၶဝ်ႈၵႂႃႇၼႂ်း Method ၸိူဝ်းၼႆႉ။

-----