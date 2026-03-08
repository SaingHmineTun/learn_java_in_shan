
## **Java Basic 49**

#### **STATIC**

Link - <https://youtu.be/zjkeM-7fx_A>

static ၼႆႉၵေႃႈပဵၼ် Java Keyword ဢၼ်ၼိုင်ႈယဝ်ႉ။ တီႈတေႉ static ၼႆႉ ႁဝ်းပေႃးယၢမ်ႈႁၼ်မႃး တီႈတွၼ်ႈသွၼ်ၼိုင်ႈ ၼင်ႇၵဝ်ႇ။ main method ႁဝ်းၼႆႉ ပဵၼ် static method ယဝ်ႉ။

static ၼႆႉ ၶဝ်ႈၼႂ်း Non-access modifier လႄႈ ႁဝ်းတေၸႂ်ႉမၼ်းလႆႈ ၼိူဝ် class ၊ ၼိူဝ် method လႄႈ ၼိူဝ် global variable ယဝ်ႉ။

**ၼိူဝ် class**

လွင်ႈၼႆႉတေႉ Java ပၼ်ၸႂ်ႉၼိူဝ် inner class ၵူၺ်းလႄႈ ပေႃးသွၼ်ထိုင်လွင်ႈ inner class ၶႃႈၸင်ႇ သပ်ႉလႅင်းၼႄ။ class ထမ်ႇမတႃႇ ဢၼ်ႁဝ်းၶူင်ၼႆႉ ဢမ်ႇၸႂ်ႉလႆႈ။

**ၼိူဝ် method**

static method ၼႆႉပဵၼ် method ဢၼ်ႁဝ်း ဢမ်ႇလူဝ် ၶူင်သၢင်ႈ object သေႁွင်ႉၸႂ်ႉလႆႈ ငၢႆႊငၢႆႊယဝ်ႉ။

တီႈၼႂ်းမၼ်းၼၼ်ႉ ႁဝ်းတေႁွင်ႉၸႂ်ႉလႆႈ static variable ၵူၺ်း။ ႁဝ်းတေႁွင်ႉၸႂ်ႉ instance variable ဢမ်ႇလႆႈ။

**ၼိူဝ် variable**

မၼ်းၵေႃႈ မိူၼ် static method ၼင်ႇၵဝ်ႇ။ ႁဝ်းဢမ်ႇလူဝ်ႇ ၶူင်သၢင်ႈ object တႃႇႁွင်ႉၸႂ်ႉမၼ်း။

**static members** (variable and method) ၼႆႉ ပဵၼ်ၶွင် class လႄႈ ဢမ်ႇၵဵဝ်ႇၵၼ်တၢင်း object လႃးလႃး။ instance variable ၼႆႉ object ဢၼ်လႄႈဢၼ် ၵႃႊၶၼ်မၼ်း ဢမ်ႇမိူၼ်ၵၼ် သေတႃႉ static variable ၼႆႉသမ်ႉ object တၢင်းမူတ်း မီး static variable ဢၼ်လဵဝ်ၵူၺ်းလႄႈ ၵႃႊၶၼ်ၶဝ်ၵေႃႈ တေမိူၼ်ၵၼ်မူတ်းယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ static variable လႄႈ static method

```
public class Person {
    public static String name;
    public static void printName() {
        System.out.println("My name is " + name);
    }
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
Person.name = "Sai Mao";
Person.printName();
```