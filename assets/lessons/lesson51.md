
## **Java Basic 51**

#### **FINAL KEYWORD**

Link - <https://youtu.be/Fl_Pzr7hJv0>

Final ၼႆႉၵေႃႈပဵၼ် Non-access modifier ဢၼ်ၼိုင်ႈၼင်ႇၵဝ်ႇ။ တီႈပွင်ႇတေႉၵေႃႈ လိုၼ်းသုတ်ႉ ၼႆယဝ်ႉ။ ႁဝ်းတေၸႂ်ႉတိုဝ်းမၼ်းလႆႈ ၼိူဝ်သၢမ်လွင်ႈၼႆႉ

**1) ၼိူဝ် class**

ပေႃးၸႂ်ႉ ၼိူဝ် class ၼႆ final class ၼၼ်ႉ ႁဝ်းတေႁဵတ်ႉ inherit ဢမ်ႇလႆႈယဝ်ႉ။ မိူၼ်ၼင်ႇ String class, Math class ၸိူဝ်းၼႆႉ ပဵၼ် final class လႄႈ ႁဝ်းႁဵတ်ႉ inherit မၼ်းဢမ်ႇလႆႈ။

###### လၢႆးၶူင်သၢင်ႈ

```
public final class FinalClass { } // Cannot extend this class
```

**2) ၼိူဝ် method**

final method ၼႆႉသမ်ႉ ပွင်ႇဝႃႈ ႁဝ်းတေႁဵတ်ႉ override မၼ်းဢမ်ႇလႆႈ။

###### လၢႆးၶူင်သၢင်ႈ

```
public class Parent {
    // In inheritance, cannot overwrite final method
    public final void print() {
        System.out.println("I'm parent");
    }
}
```

**3) ၼိူဝ် attribute (global variable)**

final variable ၼႆႉ ပေႃးပၼ်ၵႃႊၶၼ်မၼ်းယဝ်ႉ ႁဝ်းတေလၢႆႊၵႃႊၶၼ်မၼ်းဢမ်ႇလႆႈယဝ်ႉ။ final variable ၼႆႉ ၵမ်ႈၼမ် ႁဝ်းၶူင်သၢင်ႈသေ ပၼ်ၸိုဝ်ႈလူၺ်ႈ uppercase letter ယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ
```
private final String MY_IDENTIFIER = "13/masata(C)123456";
```
