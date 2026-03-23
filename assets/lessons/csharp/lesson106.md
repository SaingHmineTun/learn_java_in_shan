# Lesson 106: "The Life Cycle of an Object: Birth, Life, and Death"

ၼႂ်း C# ၼႆႉ Object ၵူႈတူဝ်မီးၶၢဝ်းယၢမ်းသၢႆၸႂ် (Life Cycle) ဢၼ်ၸႅၵ်ႇပဵၼ် 3 တွၼ်ႈလူင်ၶႃႈ။



### 1. တွၼ်ႈၵိူတ်ႇ (Birth - Allocation & Initialization)
မိူဝ်ႈႁဝ်းၸႂ်ႉ Keyword **`new`** ၼၼ်ႉ... ၼၼ်ႉပဵၼ်ၵၢၼ် "ၵိူတ်ႇ" ၶွင် Object ၶႃႈ။
* **Allocation:** System တေႁႃတီႈယူႇပဝ်ႇၼႂ်း **Heap Memory** သေ ပၼ်တီႈယူႇ (Space) တႃႇ Object ၼၼ်ႉ။
* **Initialization:** **Constructor** (Lesson ၼႃႈ) တေႁဵတ်းၵၢၼ် တႃႇပၼ်ၵႃႈၶၼ်တႄႇ ႁႂ်ႈ Object ၼၼ်ႉ ႁႅၼ်းတႃႇၸႂ်ႉၵၢၼ်လႆႈၶႃႈ။


### 2. တွၼ်ႈၸႂ်ႉၵၢၼ် (Life - Interaction)
ဝၢႆးသေၵိူတ်ႇယဝ်ႉ၊ Object တေယူႇဝႆႉၼႂ်း Heap သေ မီး Variable (Reference) ၸိၼႄၸူးမၼ်း။
* ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉ Methods, မႄးၵႃႈၶၼ် Fields လႄႈ ၸႂ်ႉမၼ်းႁဵတ်းၵၢၼ်လၢႆလၢႆယၢင်ႇ။
* တေႃႇပေႃးတိုၵ်ႉမီး "သၢႆၵွင်ႉ" (Reference) ၸိၼႄၸူးမၼ်းယူႇၼၼ်ႉ Object တေမီးသၢႆၸႂ်ယူႇတႃႇသေႇၶႃႈ။


### 3. တွၼ်ႈသုတ်းပၢႆ (Death - Destruction & GC)
မိူဝ်ႈႁဝ်းဢမ်ႇၸႂ်ႉ Object ၼၼ်ႉယဝ်ႉ (မိူၼ်ၼင်ႇ တႅမ်ႈ `s1 = null;` ဢမ်ႇၼၼ် Method ယဝ်ႉတူဝ်ႈၵႂႃႇ)။
* **Unreachable:** Object တူဝ်ၼၼ်ႉ တေဢမ်ႇမီးၽႂ်ၵွင်ႉၸူးယဝ်ႉ။
* **Garbage Collection:** **Garbage Collector (GC)** တေမႃးၵူတ်ႇထတ်းႁၼ် သေယဝ်ႉ "ယႃႉ" (Delete) မၼ်းပႅတ်ႈ တီႈၼႂ်း Memory တႃႇဢဝ်တီႈယူႇၼၼ်ႉ မႃးၸႂ်ႉၶိုၼ်းၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Object Life Cycle:** ၶၢဝ်းယၢမ်းသၢႆၸႂ် Object (တႄႇသၢင်ႈ -> ၸႂ်ႉၵၢၼ် -> သုတ်းသဵင်ႈ)။
* **Heap:** တီႈယူႇၼႂ်း RAM ဢၼ် Object သၢႆၸႂ်ယၢဝ်း ယူႇဝႆႉ။
* **Reference:** သၢႆၵွင်ႉ (Address) ဢၼ်ၸွႆးႁႂ်ႈ Object တိုၵ်ႉမီးသၢႆၸႂ်။
* **Garbage Collector (GC):** ပိူင်ၸတ်းၵၢၼ် Memory ႁင်းၵူၺ်း ဢၼ်မႃး "ၵဵပ်းၶီႈယဝ်ႉ" ၼႂ်း RAM။

---
