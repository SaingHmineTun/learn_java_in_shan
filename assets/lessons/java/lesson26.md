
## **Java Basic 26**

#### **NESTED IF**

Link - <https://youtu.be/XR32hyhoqhw>

Nested If ဢၼ်ဝႃႈၼႆႉ ပွင်ႇဝႃႈ တီႈၼႂ်း If Block ၼႆႉ ႁဝ်းမႃးႁွင်ႉၸႂ်ႉၶိုၼ်း If ထႅင်ႈၼႆဢိူဝ်ႈ။ Code တီႈတႂ်ႈၼႆႉ သင်ၸိူဝ်ႉ result ပဵၼ်ၼႂ်းၵႄႈ 0 လႄႈ 100 ၸင်ႇႁဵတ်းၵၢၼ်၊ ၼႂ်း body မၼ်းၼၼ်ႉသမ်ႉ ႁဝ်းၶိုၼ်းၸႅတ်ႈတူၺ်းထႅင်ႈဝႃႈ result ၼႆႉလဵၵ်ႉသေ 40 ႁ၊ ယႂ်ႇသေ 40 သေတႃႉ လဵၵ်ႉသေ 75 ႁ၊ ဢမ်ႇၼၼ်ၵေႃႈ ပိူၼ်ႉလိူဝ် 75 ႁ ၼႆယူႇ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
if (result >= 0 && result <= 100) {
    if (result < 40) {
        System.out.println("တူၵ်ႉလိၵ်ႈ");
    } else if (result >= 40 && result < 75) {
        System.out.println("ဢွင်ႇယူဝ်းယူဝ်း");
    } else if (result >= 75){
        System.out.println("ဢွင်ႇလူၺ်ႈလၢဝ်ၸွင်ႈ");
    }
}
