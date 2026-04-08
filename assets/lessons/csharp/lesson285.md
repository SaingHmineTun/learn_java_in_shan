# Lesson 285: "Razor Views"

**Razor** ပဵၼ် View Engine ဢၼ်ၸႂ်ႉတူဝ်မၢႆ **`@`** တွၼ်ႈတႃႇလႅၵ်ႈပိၼ်ႇၵႄႈ HTML လႄႈ C# ၶႃႈ။ 
ၾၢႆႇၶွင်မၼ်းတေမီး Extension ပဵၼ် **`.cshtml`** (C-Sharp + HTML) ၶႃႈ။

### 1. လၢႆးၸႂ်ႉ Syntax `@` (Razor Basics)
မိူဝ်ႈႁဝ်းတႅမ်ႈ `@` ၼႂ်း HTML ၼၼ်ႉ Browser တေႁူႉဝႃႈ "ၼႆႉပဵၼ် Code C# ယဝ်ႉၼႃ" ၼႆၶႃႈ။

* **ၼႄၵႃႈၶၼ် Variable:**
  ```html
  <p>မႂ်ႇသုင်ၶႃႈ, @DateTime.Now.Year</p> 
  ```

* **C# Code Block:**
  ```razor
  @{
      string myName = "ၸၢႆးသႅင်";
      int age = 20;
  }
  <h3>ၸိုဝ်ႈ: @myName</h3>
  ```

### 2. Control Structures (If လႄႈ Foreach)
ၼႆႉပဵၼ်သုၼ်ႇဢၼ်ၵတ်ႉလိူဝ်ပိူၼ်ႈၶႃႈ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ Loop ၼႂ်း HTML လႆႈၵမ်းလဵဝ်:

* **ၵၢၼ်ၸႂ်ႉ `if`:**
  ```razor
  @if (DateTime.Now.Hour < 12) {
      <p>မႂ်ႇသုင်ၵၢင်ၼႂ်ၶႃႈ!</p>
  } else {
      <p>မႂ်ႇသုင်ၵၢင်ၶမ်းၶႃႈ!</p>
  }
  ```

* **ၵၢၼ်ၸႂ်ႉ `foreach` (တွၼ်ႈတႃႇၼႄသဵၼ်ႈမၢႆ):**
  ```razor
  <ul>
      @foreach (var item in ViewBag.Students) {
          <li>@item.Name</li>
      }
  </ul>
  ```



---

### 3. လၢႆးသူင်ႇ Data လုၵ်ႉတီႈ Controller ၸူး View
ႁဝ်းၸၢင်ႈၸႂ်ႉ **`ViewBag`** ဢမ်ႇၼၼ် **`ViewData`** တႃႇသူင်ႇၶေႃႈမုၼ်းလဵၵ်ႉလဵၵ်ႉ ၼွႆႉၼွႆႉ ၵႂႃႇၶႃႈ:

**ၼႂ်း Controller:**
```csharp
public IActionResult Index() {
    ViewBag.Message = "ယိၼ်းဒီႁပ်ႉတွၼ်ႈၸူး ႁူင်းႁဵၼ်းတႆး!";
    return View();
}
```

**ၼႂ်း View (Index.cshtml):**
```html
<h2>@ViewBag.Message</h2>
```

---

### ႁဵတ်းသင် Razor ၸင်ႇၸွႆးႁဝ်းလႆႈၼမ်?
1. **Dynamic Content:** ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ HTML 100 ထႅဝ် တွၼ်ႈတႃႇလုၵ်ႈႁဵၼ်း 100 ၵေႃႉ၊ ႁဝ်းၵူၺ်းတႅမ်ႈ `foreach` 3 ထႅဝ်ၵေႃႈယဝ်ႉယဝ်ႉၶႃႈ။
2. **Type Safety:** သင်ႁဝ်းတႅမ်ႈ Code C# ၽိတ်းၼႂ်း View ၼႆ Visual Studio တေၼႄသီလႅင် လၢတ်ႈၼႄႁဝ်းၵမ်းလဵဝ်။
3. **Clean Code:** မၼ်းႁဵတ်းႁႂ်ႈ HTML ႁဝ်းလူငၢႆႈသေ ၸႅၵ်ႇ Logic ဢွၵ်ႇလႆႈလီၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **View Engine:** Software ဢၼ်ပိၼ်ႇ Code Razor ႁႂ်ႈပဵၼ် HTML တွၼ်ႈတႃႇ Browser။
* **Directives:** ၶေႃႈသင်ႇဢၼ်တႄႇလူၺ်ႈ `@` (မိူၼ်ၼင်ႇ `@model` ဢမ်ႇၼၼ် `@using`)။
* **Expression:** Code C# ထႅဝ်လဵဝ် ဢၼ်တွပ်ႇၶိုၼ်းပဵၼ်ၵႃႈၶၼ် (Value)။
* **Code Block:** သုၼ်ႇဢၼ်မီး Code C# လၢႆလၢႆထႅဝ် ၼႂ်း `{ ... }`။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈၼႄ "ပီၼႆႉ" (Current Year) ၼိူဝ် ၼႃႈတႃ Web ၼႆ ႁဝ်းတေလႆႈတႅမ်ႈ Code Razor ၸိူင်ႉႁိုဝ်?
2. Extension ၶွင်ၾၢႆႇ Razor View ပဵၼ်သင်?