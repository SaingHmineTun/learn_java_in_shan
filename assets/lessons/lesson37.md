
## **Java Basic 37**

#### **CONSTRUCTOR**

Link - <https://youtu.be/H9F3phdXxt0>

Constructor ၼႆႉ ႁဝ်းၸႂ်ႉတိုဝ်း မိူဝ်ႈၽွင်း ႁဝ်းတေၶူင်သၢင်ႈ object သေဢၼ်ဢၼ်ယဝ်ႉ။ တူင်ႇမူၼ်းမူၼ်း ဢၼ်ယူႇဝႆႉ တီႈၽၢႆႇလင် ၸိုဝ်ႈ class မိူဝ်ႈၶူင်သၢင်ႈ object မႂ်ႇၼႆႉ ပဵၼ်တႃႇႁဝ်းတေၸႂ်ႉၸွမ်း constructor ယဝ်ႉ။ Constructor ၼႆႉ သင်ႁဝ်း ဢမ်ႇႁဵတ်ႉဝႆႉသေဢၼ်ၼႆ Java တေႁဵတ်ႉပၼ်ႁဝ်းဢၼ်ၼိုင်ႈ ဢၼ်ဢမ်ႇမီးဝႆႉ parameter ႁွင်ႉဝႃႈ default constructor ၼႆယဝ်ႉ။ ၵူၺ်းၵႃႊ သင်ႁဝ်း ၶူင်သၢင်ႈ constructor သေဢၼ်ဢၼ်ၼႆၸိုင် default constructor ၼၼ်ႉၵေႃႈ မၼ်းတေ ဢမ်ႇၶူင်ပၼ်ႁဝ်းယဝ်ႉ။

လၢႆးတႅမ်ႈမၼ်း မိူၼ်ၵၼ်တၢင်း method သေတႃႉ မၼ်းၵေႃႈမီးလွင်ႈလၢၵ်ႇလၢႆးမၼ်းဝႆႉယူႇ

- Constructor ၼႆႉ ဢမ်ႇမီး Return Type
- ၸိုဝ်ႈမၼ်း တေလႆႈမိူၼ်ၵၼ်တၢင်း ၸိုဝ်ႈ class ႁဝ်းၵူၺ်း

လွင်ႈၼႆႉတေႉ ပဵၼ်လွင်ႈဢၼ်မိူၼ်ၵၼ်တၢင်း method ဝႆႉယူႇ

- Constructor ၵေႃႈမီး overloading မၼ်းဝႆႉ

###### လၢႆးၶူင်သၢင်ႈ

```
public class Person {
    String name;
    public Person() {}
    public Person(String name) {
        this.name = name;
    }
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
Person person = new Person();
Person person1 = new Person("Sai Mao");
```