### **Lesson 61: Typing Promises (Generics with Promise\<T\>)**

ၼႂ်း TypeScript ၼၼ်ႉ ၵၢၼ်ၸႂ်ႉ Async/Await လၢႆလၢႆမၼ်းဢမ်ႇၵုမ်ႇထူၼ်ႈၶႃႈ။ ႁဝ်းလူဝ်ႇလႆႈ "မၵ်းမၼ်ႈ Type" (Type Definition) ပၼ် Promise ႁဝ်း တွၼ်ႈတႃႇႁႂ်ႈ TypeScript ႁူႉဝႃႈ ၶေႃႈမုၼ်းဢၼ်တေလႆႈမႃးၼၼ်ႉ ပဵၼ်သင်တေႉတေႉၶႃႈ။ ႁဝ်းတေၸႂ်ႉ **Generics** ၶဝ်ႈမႃးၸွႆးၶႃႈဢေႃႈ။

-----

#### **1. The `Promise<T>` Syntax**

မိူဝ်ႈႁဝ်းသၢင်ႈ Promise, ႁဝ်းၸၢင်ႈသႂ်ႇ `<T>` ဝႆႉလၢႆးလၢႆးၼႆႉၶႃႈ:

```typescript
// မၵ်းမၼ်ႈဝႃႈ Promise ၼႆႉ တေသူင်ႇ string ဢွၵ်ႇမႃး
const myPromise: Promise<string> = new Promise((resolve, reject) => {
  setTimeout(() => {
    resolve("Data from Muse Server");
  }, 1000);
});

myPromise.then((data) => {
  // ယၢမ်းၼႆႉ data တေပဵၼ် string တႅတ်ႈတေႃး
  console.log(data.toUpperCase()); 
});
```

-----

#### **2. Typing Async Functions**

မိူဝ်ႈႁဝ်းတႅမ်ႈ `async function`, Return Type မၼ်းတေပဵၼ် `Promise<T>` တႃႇသေႇၶႃႈ။

```typescript
interface User {
  id: number;
  name: string;
}

// မၵ်းမၼ်ႈဝႃႈ Function ၼႆႉ တေသူင်ႇ Promise ဢၼ်မီး User Object ယူႇၼႂ်းမၼ်း
async function getUser(id: number): Promise<User> {
  const response = await fetch(`https://api.saimao.com/users/${id}`);
  const data: User = await response.json();
  return data;
}

const user = await getUser(1);
console.log(user.name); // ✅ TypeScript ႁူႉဝႃႈမီး .name
```

-----

#### **3. Typing `fetch` and JSON**

ယွၼ်ႉဝႃႈ `response.json()` ၼႂ်း JavaScript မၼ်းသူင်ႇ `any` ဢွၵ်ႇမႃး, ႁဝ်းလူဝ်ႇလႆႈ "Assert" (မၵ်းမၼ်ႈ) Type မၼ်းႁင်းၵူၺ်း တွၼ်ႈတႃႇႁႂ်ႈပရူဝ်ႇၵရႅမ်ႇႁဝ်း Safe လိူဝ်သေၵဝ်ႇၶႃႈ။

```typescript
async function getPosts(): Promise<string[]> {
  const res = await fetch("...");
  // မၵ်းမၼ်ႈဝႃႈ data ပဵၼ် Array ၶွင် string
  const data: string[] = await res.json(); 
  return data;
}
```

-----

#### **4. Summary Checklist**

- [ ] ႁူႉလၢႆးၸႂ်ႉ `Promise<T>` တႃႇမၵ်းမၼ်ႈ Type ၶွင် Result။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `async function` တေလူဝ်ႇလႆႈမီး Return Type ပဵၼ် `Promise` တႃႇသေႇ။
- [ ] ၸႂ်ႉ Interface ႁူမ်ႈၸွမ်း Generics တႃႇမၵ်းမၼ်ႈ Type ၶေႃႈမုၼ်းဢၼ်လႆႈမႃးတီႈ API။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇၸႂ်ႉ `Promise<any>` ယွၼ်ႉမၼ်းတေႁဵတ်းႁႂ်ႈႁၢႆလၢႆ Type Safety။

-----
