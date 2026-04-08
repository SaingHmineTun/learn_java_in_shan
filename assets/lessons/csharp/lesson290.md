# Lesson 290: "Middleware and the Request Pipeline"

### 1. Middleware ပဵၼ်သင်?
**Middleware** ပဵၼ် Code သုၼ်ႇလဵၵ်ႉလဵၵ်ႉ ဢၼ်ဝၢင်းသွၼ်ႉၵၼ်ဝႆႉၼႂ်း Pipeline (လွတ်ႇသူင်ႇ Request) ၶႃႈ။ 
Middleware ၵူႈဢၼ် တေမီးၼႃႈၵၢၼ် 2 ပိူင်ၼႆႉၶႃႈ:
1.  ၸတ်းၵၢၼ် Request ဢၼ်ၶဝ်ႈမႃး။
2.  သူင်ႇ Request ၼၼ်ႉ သိုပ်ႇၵႂႃႇပၼ် Middleware ထႅင်ႈတူဝ်ၼိုင်ႈ (Next)။

### 2. Request Pipeline (သဵၼ်ႈတၢင်းသူင်ႇ Request)
မိူဝ်ႈ Request ၶဝ်ႈမႃးၼၼ်ႉ မၼ်းတေလႆႈလႅၼ်ႈၽၢၼ်ႇ Middleware ၸိူင်ႉၼႆၶႃႈ:
* **Static Files:** ၵူတ်ႇထတ်းဝႃႈ User ၶႂ်ႈလႆႈ Image ႁႃႉ? သင်မႅၼ်ႈ မၼ်းတေတွပ်ႇၶိုၼ်းၵမ်းလဵဝ်။
* **Routing:** မၵ်းမၼ်ႈဝႃႈ Request ၼႆႉ တေလႆႈသူင်ႇၵႂႃႇၸူး Controller တူဝ်လႂ်။
* **Authentication:** ၵူတ်ႇထတ်းဝႃႈ User ၵေႃႉၼႆႉ လႆႈ Login ဝႆႉယဝ်ႉႁႃႉ?
* **Authorization:** ၵူတ်ႇထတ်းဝႃႈ User မီးသုၼ်ႇၶဝ်ႈတူၺ်း ၼႃႈလိၵ်ႈၼႆႉႁႃႉ?
* **Endpoint (Controller):** တီႈၵမ်းလိုၼ်းသုတ်း ဢၼ်တႅမ်ႈ Code Logic ႁဝ်းဝႆႉ။



---

### 3. လၢႆး Setup Middleware ၼႂ်း Program.cs
ႁဝ်းမၵ်းမၼ်ႈ Middleware ၸိူဝ်းၼႆႉၼႂ်းၾၢႆႇ `Program.cs` လူၺ်ႈၸႂ်ႉၶေႃႈသင်ႇဢၼ်တႄႇလူၺ်ႈ `app.Use...` ၶႃႈ:

```csharp
var app = builder.Build();

// ၸိူဝ်းၼႆႉပဵၼ် Middleware တူဝ်ပႂ်ႉယၢမ်းၶႃႈ
app.UseStaticFiles();   // တွၼ်ႈတႃႇၼႄၶႅပ်းႁၢင်ႈ (Logo)
app.UseRouting();       // တွၼ်ႈတႃႇၸီႉတၢင်း
app.UseAuthentication(); // တွၼ်ႈတႃႇၵူတ်ႇထတ်းၵူၼ်းၶဝ်ႈၸႂ်ႉ
app.UseAuthorization();  // တွၼ်ႈတႃႇၵူတ်ႇထတ်းသုၼ်ႇ (Permissions)

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
```

### 4. ႁဵတ်းသင် လွင်ႈၶပ်ႉထႅဝ် (Order) ၸင်ႇလမ်ႇလွင်ႈ?
လွင်ႈၶပ်ႉထႅဝ် ၵၢၼ်ဝၢင်း Middleware လမ်ႇလွင်ႈၼႃႇၶႃႈ။ သင်ႁဝ်းဝၢင်း `app.UseAuthorization()` ဝႆႉ**ဢွၼ်တၢင်း** `app.UseRouting()` ၼႆၸိုင် App တေဢမ်ႇႁူႉဝႃႈ User ၶႂ်ႈၵႂႃႇတီႈလႂ် သေမၼ်းတေၼႄ Error ၶႃႈ။ 
မၼ်းမိူၼ်တင်း "ၵၢၼ်ၼုင်ႈသိူဝ်ႈၽႃႈ" ယဝ်ႉၶႃႈ။ ႁဝ်းတေလႆႈၼုင်ႈၶူဝ်း တင်းၼႂ်းဢွၼ်တၢင်း ၸင်ႇၼုင်ႈၶူဝ်းတင်းၼွၵ်ႈ ၶႃႈဢေႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Middleware:** Code ဢၼ်ၸတ်းၵၢၼ် Request လႄႈ Response ၼႂ်း Pipeline။
* **Request Pipeline:** သဵၼ်ႈတၢင်းဢၼ် Request လႅၼ်ႈၽၢၼ်ႇ Middleware တင်းမူတ်း။
* **Short-circuiting:** မိူဝ်ႈ Middleware ဢၼ်ၼိုင်ႈ တွပ်ႇၶိုၼ်း (Return) ၵမ်းလဵဝ် လူၺ်ႈဢမ်ႇသိုပ်ႇသူင်ႇ Request ၵႂႃႇ (မိူၼ်ၼင်ႇ ႁၼ်ဝႃႈ Password ၽိတ်း)။
* **Delegates:** Method ဢၼ်သူင်ႇ Request ၵႂႃႇပၼ် Middleware ထႅင်ႈဢၼ်ၼိုင်ႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈႁႂ်ႈ App ႁဝ်းၼႄၶႅပ်းႁၢင်ႈ (Images) ဢၼ်ယူႇၼႂ်း Folder `wwwroot` ၼႆ ႁဝ်းတေလႆႈသႂ်ႇ Middleware ဢၼ်ၸိုဝ်ႈဝႃႈသင်?
2. **Short-circuiting** ၼႂ်း Middleware ပွင်ႇဝႃႈသင်? (မၼ်းသိုပ်ႇသူင်ႇ Request ၵႂႃႇႁႃႉ? ဢမ်ႇၼၼ် မၼ်းပိၵ်ႉၵၢၼ်သေ တွပ်ႇၶိုၼ်းၵမ်းလဵဝ်?)