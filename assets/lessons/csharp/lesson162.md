# Lesson 162: "Abstract Class vs. Interface"

လၢႆးတူၺ်းငၢႆႈๆ ၵေႃႈပဵၼ်:
* **Abstract Class** ပဵၼ်လွင်ႈ **"Identity"** (မၼ်းပဵၼ်သင်? - Is-A)
* **Interface** ပဵၼ်လွင်ႈ **"Ability"** (မၼ်းႁဵတ်းသင်လႆႈ? - Can-Do)



### 1. လွင်ႈပႅၵ်ႇပိူင် ဢၼ်လမ်ႇလွင်ႈ (Key Differences)

| Feature | Abstract Class | Interface |
| :--- | :--- | :--- |
| **Inheritance** | သိုပ်ႇလႆႈ **တူဝ်လဵဝ်** ၵူၺ်း | Implement လႆႈ **လၢႆလၢႆဢၼ်** |
| **Fields** | မီး Variable (Fields) လႆႈ | **ဢမ်ႇပၼ်မီး** Variable |
| **Methods** | မီးတင်း Abstract လႄႈ Regular | ၵႆႉပဵၼ် Pure Contract (မီး Default လႆႈ) |
| **Access Modifiers** | မီး public, private, protected | ၵူႈဢၼ်ပဵၼ် public တႃႇသေႇ |
| **Purpose** | ဝၢင်းပိုၼ်ႉထၢၼ် ၸိူဝ်ႉၶိူဝ်းလဵဝ်ၵၼ် | မၵ်းမၼ်ႈ ၼႃႈတီႈ (Plugin) |

---

### 2. မိူဝ်ႈလႂ်တေၸႂ်ႉ Abstract Class?
ၸႂ်ႉမိူဝ်ႈၶူးၶႂ်ႈသၢင်ႈ **"ပိုၼ်ႉထၢၼ်"** ဢၼ်မီးလွင်ႈၵွင်ႉၵၢႆႇၵၼ်တႄႉတႄႉ (Strong Relationship)။
* **တူဝ်ယင်ႇ:** `Teacher` လႄႈ `Student` တင်းသွင်ဢၼ်ၼႆႉ ပဵၼ် `Person` မိူၼ်ၵၼ်။ ႁဝ်းၸင်ႇၸႂ်ႉ **Abstract Class `Person`** တႃႇသိမ်း `Name`, `Age` ဝႆႉတီႈလဵဝ်ၵၼ်ၶႃႈ။

### 3. မိူဝ်ႈလႂ်တေၸႂ်ႉ Interface?
ၸႂ်ႉမိူဝ်ႈၶူးၶႂ်ႈထႅမ် **"ၼႃႈတီႈဝိသဵတ်ႇ"** ပၼ် Object ဢၼ်ဢမ်ႇၵွင်ႉၵၢႆႇၵၼ် (Loose Relationship)။
* **တူဝ်ယင်ႇ:** `Car` (လူတ်ႉ) လႄႈ `Radio` (ရေႇတီႇယူဝ်ႇ) တင်းသွင်ဢၼ်ၼႆႉ ပဵၼ် `IBluetooth` (ၵွင်ႉ Bluetooth လႆႈ) မိူၼ်ၵၼ်။ ႁဝ်းဢမ်ႇၸၢင်ႈသၢင်ႈ Abstract Class ႁူမ်ႈၵၼ်လႆႈ (ယွၼ်ႉလူတ်ႉ ဢမ်ႇၸႂ်ႈရေႇတီႇယူဝ်ႇ)၊ ႁဝ်းၸင်ႇၸႂ်ႉ **Interface `IBluetooth`** ၶႃႈ။

---

### 4. တူဝ်ယင်ႇ ၵၢၼ်လိူၵ်ႈၸႂ်ႉ (The Shan App Context)

ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းတႅမ်ႈ App **`ShanDictionary`** လႄႈ **`ShanCalendar`**။
* **Abstract Class `ShanApp`:** သိမ်း `AppID`, `Version`, လႄႈ Method `Start()` (ယွၼ်ႉတင်းသွင်ဢၼ် ပဵၼ် App မိူၼ်ၵၼ်)။
* **Interface `IShareable`:** မၵ်းမၼ်ႈ Method `ShareToSocial()` (ယွၼ်ႉ Dictionary ၸၢင်ႈ Share လိၵ်ႈလႆႈ၊ ၵူၺ်းၵႃႈ Calendar မၢင်ဢၼ် ဢမ်ႇလူဝ်ႇ Share ၵေႃႈလႆႈ)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Is-A Relationship:** ၵၢၼ်သိုပ်ႇၸိူဝ်ႉၶိူဝ်း တႅတ်ႉတေႃး (Abstract Class)။
* **Can-Do Relationship:** ၵၢၼ်မီးၼႃႈတီႈ (Interface)။
* **Base Implementation:** ၵၢၼ်ပၼ် Code ပိုၼ်ႉထၢၼ် ႁႂ်ႈလုၵ်ႈလၢၼ်ၸႂ်ႉၶိုၼ်း (Abstract Class)။
* **Decoupling:** ၵၢၼ်ႁဵတ်းႁႂ်ႈ Code ႁဝ်း ဢမ်ႇၵွင်ႉၵၢႆႇၵၼ်ၼမ်လိူဝ်ပူၼ်ႉတီႈ (Interface)။

---