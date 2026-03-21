### **Lesson 78: Decorator Factories (Customizing your magic)**

မၢင်ပွၵ်ႈ ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈ Decorator ႁဝ်းႁဵတ်းၵၢၼ်မိူၼ်ၵၼ်ၵူႈတီႈၶႃႈ။ ႁဝ်းၶႂ်ႈ "သူင်ႇၵႃႈၶၼ်" (Arguments) ၶဝ်ႈၵႂႃႇၼႂ်း Decorator တႃႇမၵ်းမၼ်ႈဝႃႈ မၼ်းတေႁဵတ်းၵၢၼ်ၸိူဝ်ႉႁိုဝ်။ တွၼ်ႈတႃႇတေႁဵတ်းၼႆလႆႈ ႁဝ်းၸႂ်ႉ **Decorator Factory** ၶႃႈဢေႃႈ။

---

#### **1. What is a Decorator Factory?**
**Decorator Factory** ပဵၼ် Function ဢၼ် "သူင်ႇ" (Return) **Decorator Function** တူဝ်ၼိုင်ႈဢွၵ်ႇမႃးၶႃႈ။
* မၼ်းပၼ်ႁဝ်း "ႁပ်ႉ" ၶေႃႈမုၼ်းတီႈၽၢႆႇၼွၵ်ႈ။
* ယဝ်ႉၵေႃႈ ဢဝ်ၶေႃႈမုၼ်းၼၼ်ႉ ၵႂႃႇၸႂ်ႉၼႂ်း Decorator တေႉတေႉၶႃႈ။



---

#### **2. Implementation (လၢႆးတႅမ်ႈ)**

```typescript
// 1. ၼႆႉပဵၼ် Factory (ႁပ်ႉ string မႃး)
function Logger(logString: string) {
  // 2. သူင်ႇ Decorator Function တေႉတေႉဢွၵ်ႇၵႂႃႇ
  return function(constructor: Function) {
    console.log(logString); // ၸႂ်ႉ Argument တီႈ Factory
    console.log(constructor);
  };
}

// 3. ႁွင်ႉၸႂ်ႉလူၺ်ႈၵၢၼ် "ႁွင်ႉ Function" ()
@Logger('LOGGING - PERSON OBJECT') 
class Person {
  name = "Sai Mao";
}

@Logger('LOGGING - PRODUCT OBJECT')
class Product {
  title = "Shan Book";
}
```

---

#### **3. Advanced: Decorators with Logic (Template Rendering)**
ႁဝ်းၸၢင်ႈၸႂ်ႉ Decorator တႃႇႁဵတ်း Task ဢၼ်သုၵ်ႉယၢင်ႈ ၼင်ႇၵၢၼ် "Render" HTML ၶဝ်ႈၵႂႃႇၼႂ်း Page ၵမ်းလဵဝ်လႆႈၶႃႈ။

```typescript
function WithTemplate(template: string, hookId: string) {
  return function(constructor: any) {
    const hookEl = document.getElementById(hookId);
    const p = new constructor(); // သၢင်ႈ Object တူဝ်မႂ်ႇ
    if (hookEl) {
      hookEl.innerHTML = template;
      hookEl.querySelector('h1')!.textContent = p.name;
    }
  }
}

@WithTemplate('<h1>My Profile</h1>', 'app')
class Profile {
  name = "Sai Mao";
}
```



---

#### **4. Summary Checklist**
- [ ] ႁူႉဝႃႈ **Decorator Factory** ပဵၼ် Function ဢၼ်သူင်ႇ Decorator ဢွၵ်ႇမႃး။
- [ ] ၸႂ်ႉ **Argument** ၼႂ်း Factory တႃႇ Customize ၵၢၼ်ႁဵတ်းၵၢၼ်။
- [ ] ႁွင်ႉၸႂ်ႉလူၺ်ႈၵၢၼ်သႂ်ႇ **`()`** ဝႆႉၼႃႈ Class (ၼင်ႇ `@Logger()`)။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Factory ၸွႆးႁႂ်ႈ Decorator တူဝ်လဵဝ်ၵၼ် ႁဵတ်းၵၢၼ်ပႅၵ်ႇပိူင်ႈၵၼ်လႆႈ ၸွမ်းၼင်ႇၵႃႈၶၼ်ဢၼ်သူင်ႇၶဝ်ႈၵႂႃႇ။

---
