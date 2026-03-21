### **Lesson 44: Throwing Errors (Creating custom exceptions)**

မၢင်ပွၵ်ႈ ပရူဝ်ႇၵရႅမ်ႇႁဝ်းဢမ်ႇလႆႈ Error ယွၼ်ႉ Syntax ၽိတ်း ဢမ်ႇၼၼ် System ၶတ်းလၢတ်းၶႃႈ။ ၵူၺ်းၵႃႈ မၼ်းၽိတ်းၸွမ်းၼင်ႇ **"Business Logic"** ႁဝ်းၶႃႈဢေႃႈ။ တူဝ်ယၢင်ႇ: မိူဝ်ႈ User သႂ်ႇ Password ၽိတ်း ဢမ်ႇၼၼ် ထုတ်ႇငိုၼ်းပူၼ်းပႅတ်ႈၵႃႈၶၼ်ဢၼ်မီးၼႂ်း Bank Account ၼၼ်ႉၶႃႈ။

ၼႂ်း TypeScript ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း **`throw`** တႃႇ "ပွႆႇ Error" ဢွၵ်ႇမႃးႁင်းၵူၺ်းၶႃႈ။

---

#### **1. Using the `throw` Keyword**
ႁဝ်းၸၢင်ႈ `throw` ၶေႃႈမုၼ်းသင်ၵေႃႈလႆႈ (string, number, object)၊ ၵူၺ်းၵႃႈ လၢႆးဢၼ်လီသုတ်းတႄႉ ပဵၼ်ၵၢၼ်ၸႂ်ႉ **`new Error()`** ၶႃႈဢေႃႈ။

```typescript
function withdrawMoney(amount: number, balance: number) {
  if (amount > balance) {
    // သၢင်ႈ Error မႂ်ႇ သေ ပွႆႇဢွၵ်ႇၵႂႃႇၵမ်းလဵဝ်
    throw new Error("ငိုၼ်းၼႂ်း Account ဢမ်ႇၵုမ်ႇထူၼ်ႈၶႃႈ!"); 
  }
  return balance - amount;
}
```



---

#### **2. Custom Error Classes (Advanced)**
သင်ဝႃႈၸဝ်ႈၵဝ်ႇၶႂ်ႈၸႅၵ်ႇ Error ႁႂ်ႈပဵၼ်လၢႆလၢႆမဵဝ်း (ၼင်ႇ `AuthError`, `DatabaseError`) ၸိုင် ႁဝ်းၸၢင်ႈသၢင်ႈ **Class** သေ `extends Error` ဝႆႉလႆႈၶႃႈဢေႃႈ။

```typescript
class AuthError extends Error {
  constructor(message: string) {
    super(message);
    this.name = "AuthError";
  }
}

function login(password: string) {
  if (password !== "1234") {
    throw new AuthError("Password ၽိတ်းဝႆႉၶႃႈဢေႃႈ!");
  }
}
```

---

#### **3. Why use `throw`?**
* **Validation:** ၸႅတ်ႈထတ်း Parameter ဢၼ်သူင်ႇၶဝ်ႈမႃးၼႂ်း Function ႁႂ်ႈတႅတ်ႈတေႃး။
* **Early Exit:** မိူဝ်ႈမီးလွင်ႈၽိတ်းပိူင်ယဝ်ႉ ႁႂ်ႈပရူဝ်ႇၵရႅမ်ႇ "ၵိုတ်း" ၵမ်းလဵဝ် (ဢမ်ႇႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်ၽိတ်းတေႃႇၵႂႃႇ)။
* **Centralized Handling:** ႁဝ်းပွႆႇ Error တီႈၼိုင်ႈ သေ ၵႂႃႇၸတ်းၵၢၼ် (Catch) တီႈၼိုင်ႈ ႁဵတ်းႁႂ်ႈၶူတ်ႉသႅၼ်ႈသႂ်ၶႃႈ။



---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `throw new Error("message")` တႃႇပွႆႇ Error ႁင်းၵူၺ်း။
- [ ] ပွင်ႇၸႂ်ဝႃႈ မိူဝ်ႈ `throw` ယဝ်ႉ၊ ၶူတ်ႉတၢင်းလင်မၼ်းတေဢမ်ႇႁဵတ်းၵၢၼ်တေႃႇ။
- [ ] ႁူႉလၢႆးသၢင်ႈ Custom Error Classes တႃႇၸႅၵ်ႇ Error လၢႆလၢႆမဵဝ်း။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇၸႂ်ႉ `try...catch` တႃႇႁပ်ႉ (Catch) ၶေႃႈမုၼ်းဢၼ် `throw` ဢွၵ်ႇမႃးၼၼ်ႉ။

---