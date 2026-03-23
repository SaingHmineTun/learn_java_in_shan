# Lesson 96: "Encapsulation Basics (public/private)"

**Encapsulation** ပွင်ႇဝႃႈ ၵၢၼ်ႁေႃႇ (Bundle) ၶေႃႈမုၼ်း လႄႈ Code ဝႆႉႁူမ်ႈၵၼ် သေယဝ်ႉ "လပ်ႉသိူင်ႇ" (Hide) တွၼ်ႈဢၼ် ဢမ်ႇလူဝ်ႇၼႄၼၼ်ႉဝႆႉၶႃႈ။

### 1. Public vs Private (သုၼ်ႇၶဝ်ႈထိုင်)
ႁဝ်းၸႂ်ႉ **Access Modifiers** တႃႇမၵ်းမၼ်ႈ လွင်ႈႁၼ်လႆႈ/ၸႂ်ႉတိုဝ်းလႆႈ (Visibility) ၶွင် Members ၼႂ်း Class ၶႃႈ။

* **`public` (ပိုတ်ႇၽုၺ်ႇ):** Class ၵူႈဢၼ်, Object ၵူႈဢၼ် ၸၢင်ႈႁၼ် လႄႈ ၸၢင်ႈမႄးၶေႃႈမုၼ်းလႆႈၵမ်းလဵဝ်။
* **`private` (လပ်ႉသိူင်ႇ):** ၸၢင်ႈႁၼ် လႄႈ ၸၢင်ႈၸႂ်ႉလႆႈ **ၼႂ်း Class ၼၼ်ႉၵူၺ်း**။ ၵေႃႉၼွၵ်ႈတေႁၼ်ဝႃႈ မၼ်းဢမ်ႇမီး ဝႆႉၼႆၶႃႈ။



### 2. ႁဵတ်းသင်ၸင်ႇၸႂ်ႉ `private`?
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းတႅမ်ႈ Class `Student` သေမီး Field `age`။ သင်မၼ်းပဵၼ် `public`... ၵေႃႉလႂ်ၵေႃႈမႃးမႄးလႆႈၸိူင်ႉၼႆၶႃႈ:
`s1.age = -500;` (ဢႃႇယုပဵၼ် -500 ၼႆႉ မၼ်းဢမ်ႇထုၵ်ႇမႅၼ်ႈ ၸွမ်းပိူင်တႄႉၶႃႈ)။

သင်ႁဝ်းႁဵတ်းပဵၼ် `private` ႁဝ်းၸၢင်ႈၵုမ်းထိင်းလႆႈ:
```csharp
class Student {
    private int age; // လပ်ႉဝႆႉ ဢမ်ႇပၼ်ၵေႃႉၼွၵ်ႈမႄးၵမ်းလဵဝ်

    public void SetAge(int newAge) {
        if (newAge > 0) { // ၵူတ်ႇထတ်း (Validation) ဢွၼ်တၢင်း
            age = newAge;
        } else {
            Console.WriteLine("Invalid age!");
        }
    }
}
```

### 3. ပိူင်ၵၢၼ် (Golden Rule)
* **Fields:** ၵႆႉႁဵတ်းပဵၼ် **`private`** တႃႇသေႇ (တႃႇၵႅတ်ႇၶႄ Data)။
* **Methods:** ၵႆႉႁဵတ်းပဵၼ် **`public`** (တႃႇပၼ်ၵေႃႉၼွၵ်ႈႁွင်ႉၸႂ်ႉ)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Encapsulation:** ၵၢၼ်ႁေႃႇၶေႃႈမုၼ်း လႄႈ ၵၢၼ်ၵုမ်းထိင်း ၶေႃႈမုၼ်းႁႂ်ႈၸွမ်းပိူင် (Data Hiding)။
* **Access Modifier:** ၶေႃႈၵႂၢမ်း (public, private) ဢၼ်မၵ်းမၼ်ႈ Visibility။
* **Visibility:** ပိုၼ်ႉတီႈဢၼ် Code ၽၢႆႇၼွၵ်ႈ ၸၢင်ႈႁၼ် Members ၼႂ်း Class။
* **Information Hiding:** လွၵ်းလၢႆးလပ်ႉသိူင်ႇ Implementation Detail ဢၼ်သုၵ်ႉယုင်ႈဝႆႉ။

---