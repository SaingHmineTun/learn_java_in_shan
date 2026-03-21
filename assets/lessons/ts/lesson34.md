### **Lesson 34: Enums (Numeric and String enumerations)**

**Enum** (Short for Enumeration) ပဵၼ်လၢႆးတႅမ်ႈဢၼ်ၸွႆးႁႂ်ႈႁဝ်းတင်ႈ "ၸိုဝ်ႈ" ပၼ်ၵႃႈၶၼ် (Values) ဢၼ်ၼိမ်ဝႆႉၶႃႈ။ မၼ်းလီသုတ်းတွၼ်ႈတႃႇၸတ်းၵၢၼ်ၶေႃႈမုၼ်းဢၼ်မီးတၢင်းလိူၵ်ႈတႅတ်ႈတေႃး ၼင်ႇ ဝၼ်းၼႂ်းသႅတ်ႉတပတ်း (Days), သီ (Colors), ဢမ်ႇၼၼ် ၸၼ်ႉဝူၺ်ႇရႃႇ (User Roles) ၶႃႈဢေႃႈ။

---

#### **1. Numeric Enums (ၵႃႈၶၼ်တူဝ်ၼပ်ႉ)**
ၼႆႉပဵၼ် Default ၶွင် Enum ၶႃႈ။ သင်ႁဝ်းဢမ်ႇပၼ်ၵႃႈၶၼ်သင်ဝႆႉၸိုင် TypeScript တေၼပ်ႉတႄႇတီႈ **0** သေ ထႅမ်ၵႂႃႇတိၵ်းတိၵ်းၶႃႈ။

```typescript
enum Direction {
  Up,    // 0
  Down,  // 1
  Left,  // 2
  Right  // 3
}

let myDir = Direction.Up; // 0
```

သင်ဝႃႈၶႂ်ႈတႄႇၼပ်ႉတီႈ 1 ၸိုင် ႁဝ်းၸၢင်ႈမၢႆဝႆႉလႆႈၶႃႈ:
```typescript
enum Status {
  Active = 1,
  Inactive, // 2
  Pending   // 3
}
```



---

#### **2. String Enums (ၵႃႈၶၼ်တူဝ်လိၵ်ႈ)**
String Enum ပဵၼ်ဢၼ် "ဢၢၼ်ႇငၢႆႈ" သုတ်း (Readable) မိူဝ်ႈႁဝ်း Debugging ၶူတ်ႉၶႃႈ။ ယွၼ်ႉမၼ်းတေၼႄပၼ်တူဝ်လိၵ်ႈတေႉတေႉ ဢမ်ႇၸႂ်ႉတူဝ်ၼပ်ႉၶႃႈ။

```typescript
enum UserRole {
  Admin = "ADMIN",
  Editor = "EDITOR",
  Viewer = "VIEWER"
}

let currentUser: UserRole = UserRole.Admin;

if (currentUser === UserRole.Admin) {
  console.log("Welcome, Administrator!");
}
```



---

#### **3. ၵွပ်ႈသင်လႄႈလီၸႂ်ႉ Enum?**
* **Type Safety:** ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇတေဢဝ်ၵႃႈၶၼ်ဢၼ်မႅၼ်ႈၸွမ်း Enum ၼၼ်ႉၸႂ်ႉၵူၺ်း။
* **Readability:** တႅၼ်းတွၼ်ႈတႃႇၸႂ်ႉ "Magic Numbers" (ၼင်ႇ `if (role === 1)`) ႁဝ်းၸႂ်ႉ `UserRole.Admin` တႅၼ်းသေ ဢၢၼ်ႇငၢႆႈလိူဝ်ၶႃႈ။
* **Autocompletion:** မိူဝ်ႈၸဝ်ႈၵဝ်ႇတႅမ်ႈ `UserRole.` ၼၼ်ႉ VS Code တေၼႄပၼ်တၢင်းလိူၵ်ႈတင်းသဵၼ်ႈၵမ်းလဵဝ်ၶႃႈ။

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉၶေႃႈၵႂၢမ်း `enum` တႃႇသၢင်ႈသဵၼ်ႈမၢႆၵႃႈၶၼ်ဢၼ်ၼိမ်ဝႆႉ။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Numeric Enum တေတႄႇၼပ်ႉတီႈ 0 တႃႇသေႇ (သင်ဢမ်ႇမၵ်းမၼ်ႈဝႆႉ)။
- [ ] ၸႂ်ႉ String Enum တႃႇႁႂ်ႈၶေႃႈမုၼ်းဢၢၼ်ႇငၢႆႈ (Readable) ၼႂ်း Console။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇသူင်ႇ String လၢႆလၢႆ ၶဝ်ႈၵႂႃႇၼႂ်း Variable ဢၼ်မၢႆဝႆႉပဵၼ် Enum Type။

---