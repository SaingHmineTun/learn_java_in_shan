
## **Java Basic 59**

SINGLETON OBJECT

Link - <https://youtu.be/tuXdw2wQ3Yc>

Singleton object ၼႆႉ ပွင်ႇဝႃႈ ႁဝ်းတေၶူင်လႆႈ object ဢၼ်ၼိုင်ႈၵူၺ်းၼႆယဝ်ႉ။ တီႈ Java ၼႆႉ ပေႃးႁဝ်းမီး class ၼႆ ႁဝ်းတေၶူင်လႆႈ object တၢင်းၼမ်ၼႆ ၵူႊၵေႃႉၵေႃႈ တေႁူႉယူႇ။ ၵူၺ်းၵႃႊ Singleton တေႉ ပဵၼ် pattern ဢၼ်တေ ႁႂ်ႈႁဝ်း ၶူင်လႆႈ object ဢၼ်ၼိုင်ႈၵူၺ်း။ တႃႇတေၸႂ်ႉတိုဝ်း singleton ၼႆ တီႈ Java ၼႆႉ ဢမ်ႇပၼ်သင်ဝႆႉၼင်ႇၵဝ်ႇ။ ပဵၼ်ဢၼ်ႁဝ်း ႁဵတ်ႉဢဝ်ႁင်းၶေႃၵူၺ်း။ တႃႇတေၶူင်သၢင်ႈ Singleton ၼႆ တေလႆႈၸွမ်းပိူင် 2 လွင်ႈၼႆႉ

- တေလႆႈ ႁၢမ်ႈသီး ယႃႇႁႂ်ႈပိူၼ်ႈ ၸႂ်ႉ constructor လႆႈ
- တေလႆႈ ပၼ်ၶႂၢင်ႉ ႁႂ်ႈၶူင် object လူၺ်ႈ static method ၵူၺ်း

လၢႆးၶူင်သၢင်ႈ

**public class Person {**

**private static Person _person_;**

**public static Person getInstance() {**

**if (_person_ \== null) _person_ \= new Person();**

**return _person_;**

**}**

**String name;**

**int age;**

**private Person() {**

**}**

**}**

လၢႆးၸႂ်ႉတိုဝ်း

**Person one = Person._getInstance_();**