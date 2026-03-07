
## Java Basic 40**

#### **ACCESS MODIFIER**

Link - <https://youtu.be/XYsMx6HLMXc>

Access modifier ၼႆႉပဵၼ် keyword ဢၼ်ၼိုင်ႈ ဢၼ်ႁဝ်းတေၸႂ်ႉတိုဝ်းလႆႈၼိူဝ် class, global variable, constructor လႄႈ method သေ မၼ်းပဵၼ်လွင်ႈ ဢၼ်ႁၢမ်ႈသီး ယႃႇႁႂ်ႈ class တၢင်ႇဢၼ် ၸႂ်ႉတိုဝ်း object ႁဝ်းသေ ႁွင်ႉၸႂ်ႉလႆႈ ၸိူဝ်းၼၼ်ႉယဝ်ႉ။ ထိုင်ယၢမ်းလဵဝ် ႁဝ်းတိုၵ်ႉၸႂ်ႉတိုဝ်း public modifier ဝႆႉၵမ်ႈၼမ်ယူႇ။

Access Modifier မီးယူႇ 4 လွင်ႈ

- **public**

သင်ၸိူဝ်ႉဢဝ် public သေႁဵတ်ႉဝႆႉၼႆၸိုင် မၼ်းတေဢဝ်ႁွင်ႉၸႂ်ႉလႆႈ ၵူႊတီႈ

- **private**

ၼႆႉသမ်ႉ ၸႂ်ႉတိုဝ်း မိူဝ်ႈၽွင်းႁဝ်း ဢမ်ႇၶႆႈႁႂ်ႈပိူၼ်ႈ ၸႂ်ႉတိုဝ်း variable, method ဢမ်ႇၼၼ် constructor ႁဝ်းယဝ်ႉ။

- **default (package-private)**

ပေႃးယူႇၼႂ်း package မိူၼ်ၵၼ် တေႁွင်ႉၸႂ်ႉလႆႈ၊ သင်ဢမ်ႇၸႂ် ဢမ်ႇၸႂ်ႉလႆႈ။

- **protected**

မၼ်းၵေႃႈ တေမိူၼ်ၵၼ်တင်း default ။ ထႅင်ႈလွင်ႈၼိုင်ႈတေႉ ၵဵဝ်ႇၵပ်းၸွမ်း inheritance ဝႆႉယဝ်ႉ။ ပေႃးၽႅဝ် တွၼ်ႈသွၼ်ၼၼ်ႉမႃး တေမႃးသိုပ်ႇ သပ်းလႅင်းၼႄပၼ်။

###### လၢႆးၶူင်သၢင်ႈ

```
public class User {
    private String name; // Cannot access from outer classes
    public int age; // Accessible from anywhere
    char gender; // Accessible if in the same package, otherwise NO.
}
```