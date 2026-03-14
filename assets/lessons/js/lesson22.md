# Lesson 22: Object Composition vs. Inheritance

ၼႂ်း Lesson ဢၼ်ပူၼ်ႉမႃး၊ ႁဝ်းႁဵၼ်းလွင်ႈ `extends` (Inheritance) ဢၼ်ပဵၼ်ၵၢၼ်သၢင်ႈပၵ်းပိူင် "Is-A" (ပဵၼ်မဵဝ်းၼိုင်ႈ)။ မိူၼ်ၼင်ႇ: *Dog **is an** Animal*.
ၵူၺ်းၵႃႈ၊ မၢင်ၵမ်း Inheritance မၼ်းႁဵတ်းႁႂ်ႈၵူတ်ႉႁဝ်း "ၵႅၼ်ႇၶႅင်" (Rigid) လိူဝ်လႅတ်း။ ႁဝ်းၸင်ႇမီးထႅင်ႈလၢႆးၼိုင်ႈ ဢၼ်ႁွင်ႉဝႃႈ **Composition** ဢၼ်ပဵၼ်ပၵ်းပိူင် "Has-A" (မီးၵၢၼ်ႁဵတ်း) ၶႃႈ။

### 1. ပၼ်ႁႃၶွင် Inheritance (The Fragile Base Class)

မိူဝ်ႈႁဝ်းသိုပ်ႇပူၺ်ႈၸၼ်ႉလိုၵ်ႉလိူဝ်ၵဝ်ႇ (မိူၼ်ၼင်ႇ RobotDog extends Dog extends Animal)၊ သင်ႁဝ်းမႄးၵူတ်ႉၼႂ်း `Animal`၊ မၼ်းတေတုမ်ႉတိူဝ်ႉလုၵ်ႈလၢၼ်မၼ်းတင်းမူတ်း။ ၼႆႉႁွင်ႉဝႃႈ **Tight Coupling** ၶႃႈ။

---

### 2. Composition ပဵၼ်သင်?

**Composition** မၢႆထိုင် ၵၢၼ်ဢဝ် "ၵၢၼ်ႁဵတ်း" (Behaviors) လၢႆလၢႆဢၼ် မႃးပၼ်ႇႁူမ်ႈၵၼ် ၼႂ်း Object ၼိုင်ႈဢၼ်။ တႅၼ်းၵၢၼ်ဢၼ်ဝႃႈ မၼ်း "ပဵၼ်" သင်၊ ႁဝ်းတူၺ်းဝႃႈ မၼ်း "ႁဵတ်း" သင်လႆႈ။

**တူဝ်ယၢင်ႇ (Example):**
ႁဝ်းမီး Robot (ၸၢၵ်ႈ) လႄႈ User (ၵူၼ်း)။ သွင်ဢၼ်ၼႆႉ ပႅၵ်ႇပိူင်ႈၵၼ်၊ ၵူၺ်းၵႃႈ သွင်ဢၼ်ၼႆႉ "လၢတ်ႈလႆႈ" (can speak) မိူၼ်ၵၼ်။

```javascript
// 1. သၢင်ႈၵၢၼ်ႁဵတ်း (Behaviors) ဝႆႉႁင်းၽႂ်ၽႂ်
const canSpeak = (state) => ({
  speak: () => console.log(`မႂ်ႇသုင်၊ ၶႃႈၸိုဝ်ႈ ${state.name}`)
});

const canDrive = (state) => ({
  drive: () => console.log(`${state.name} တိုၵ်ႉၶပ်းရူတ်ႉယူႇ...`)
});

// 2. ဢဝ်ၵၢၼ်ႁဵတ်းၸိူဝ်းၼၼ်ႉ မႃးႁူမ်ႈၵၼ် (Compose)
const Person = (name) => {
  let state = { name };
  return Object.assign(
    state,
    canSpeak(state),
    canDrive(state)
  );
};

const Robot = (name) => {
  let state = { name };
  return Object.assign(
    state,
    canSpeak(state)
  );
};

const sai = Person("ၸၢႆးၶမ်း");
sai.speak(); // ႁဵတ်းလႆႈ
sai.drive(); // ႁဵတ်းလႆႈ

const bot = Robot("R2D2");
bot.speak(); // ႁဵတ်းလႆႈ
// bot.drive(); // Error! (ၵွပ်ႈႁဝ်းဢမ်ႇလႆႈထႅမ်သႂ်ႇပၼ်မၼ်း)

```

---

### 3. တႅၵ်ႈၼိူင်း Inheritance လႄႈ Composition

| Feature | Inheritance (သိုပ်ႇပူၺ်ႈ) | Composition (ႁူမ်ႈၵၼ်) |
| --- | --- | --- |
| **Relationship** | **Is-A** (မိူၼ်ၼင်ႇ မႃ ပဵၼ် သတ်း) | **Has-A** (မိူၼ်ၼင်ႇ ရူတ်ႉ မီး ၵွင်ႉ) |
| **Flexibility** | ၵႅၼ်ႇၶႅင်၊ မႄးယၢပ်ႇ (Rigid) | လႅတ်းသႅဝ်း၊ မႄးငၢႆႈ (Flexible) |
| **Structure** | Hierarchy (ပဵၼ်ၸၼ်ႉပဵၼ်ထႅဝ်) | Flat (ပဵၼ်လွၵ်းၽႂ်ႇလွၵ်းမၼ်း) |
| **Reuse** | သိုပ်ႇဢဝ်တင်းမူတ်း (တင်းလီတင်းႁၢႆႉ) | လိူၵ်ႈဢဝ်ၵူၺ်း ဢၼ်လူဝ်ႇၸႂ်ႉ |

---

### 4. မိူဝ်ႈလႂ်ထိုင်လီၸႂ်ႉသင်?

* **ၸႂ်ႉ Inheritance:** မိူဝ်ႈ Object ၼၼ်ႉ ပဵၼ်မဵဝ်းလဵဝ်ၵၼ်တေႉတေႉ လႄႈ ပၵ်းပိူင်မၼ်းၼိမ်ဝႆႉယဝ်ႉ (မိူၼ်ၼင်ႇ UI Component -> Button)။
* **ၸႂ်ႉ Composition:** မိူဝ်ႈၸဝ်ႈၵဝ်ႇလူဝ်ႇၵၢၼ်ႁဵတ်း ဢၼ်လႅၵ်ႈလၢႆႈလႆႈငၢႆႈ လႄႈ ၶႂ်ႈဢဝ်ၵၢၼ်ႁဵတ်းလၢႆလၢႆမဵဝ်း မႃးလေႃးၵၼ် (မိူၼ်ၼင်ႇ ၵူၼ်းလဵၼ်ႈၵဵမ်း ဢၼ်ပဵၼ်လႆႈတင်း ၵူၼ်းယိုဝ်း လႄႈ ၵူၼ်းႁဵတ်းယႃ)။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 22)

* **Inheritance**: လီတႃႇသၢင်ႈပၵ်းပိူင်လူင် (Taxonomy)။
* **Composition**: လီတႃႇသၢင်ႈၵၢၼ်ႁဵတ်းဢၼ်လႅတ်းသႅဝ်း (Plug-and-play behavior)။
* **Rule of Thumb**: "Favor object composition over class inheritance" (လိူၵ်ႈၸႂ်ႉ Composition ဢွၼ်တၢင်း Inheritance သင်ပဵၼ်လႆႈ)။

---