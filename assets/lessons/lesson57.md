
## **Java Basic 57**

#### **JAVA RECORD**

Link - <https://youtu.be/Z6kVChio0TQ>

Java class ၼႆႉ လွင်ႈၸႂ်ႉတိုဝ်း မီးယူႇသွင်လွင်ႈ

- **ၸႂ်ႉတိုဝ်းတႃႇႁဵတ်ႉၵၢၼ်**
- **ၸႂ်ႉတိုဝ်းတႃႇသိမ်းဝႆႉ ၶေႃႈမုၼ်း (User, Person)**

class မၢႆသွင်ၼႆႉ ႁဝ်းႁွင်ႉဝႃႈ Data Class ၼႆယဝ်ႉ။ လွင်ႈယိူင်းဢၢၼ်းမၼ်းတေႉ တႃႇႁဝ်း သႂ်ႇဝႆႉ ၶေႃႈမုၼ်း ဢၼ်ၵဵဝ်ႇၵပ်ႉၵၼ်ဝႆႉၵူၺ်း။ မိူၼ်ၼင်ႇၼႂ်း Person class ၼႆႉ ႁဝ်းၶူင်ဝႆႉ name, age ၸိူဝ်းၼႆႉယဝ်ႉ။

သင်ၸိူဝ်ႉ ႁဝ်းသမ်ႉ ၶႆႈၶူင် immutable class ၼႆၸိုင် တီႈ Java မၼ်းဢမ်ႇငၢႆႊ။ ႁဝ်းတေလႆႈတႅမ်ႈ ၶူတ်ႉၼမ်ဝႃႈၼမ်။

Immutable class ၼႆႉ ပဵၼ် class ဢၼ်ႁဝ်းပၼ် ၵႃႊၶၼ်ယဝ်ႉ၊ တေမူၼ်ႉမႄးၶိုၼ်း ဢမ်ႇလႆႈၼႆယဝ်ႉ။ တႃႇတေ ၶူင်သၢင်ႈ immutable class ၸႂ်ႉတိုဝ်း class ၼႆၸိုင်

- တေလႆႈၸွမ်းပိူင်ႈ Encapsulation တႃႇႁူမ်ႇလူမ်ႈ (implement getter, constructor)
- တေလႄႈထုၵ်ႈဢွၵ်ႇပၼ် json ဢမ်ႇၸႂ် memory address (override toString)
- တေလႆႈ တႅၵ်ႈလိူင်းၵၼ်လႆႈ ဝႃႈၶေႃႈမုၼ်းမၼ်းၸွင်ႇမိူၼ်ၵၼ်ႁိုဝ် (override equals and hash)

လွင်ႈၸိူဝ်းၼႆႉ တၢင်းသဵင်ႈ ပေႃးႁဝ်းၸႂ်ႉ record ၼႆ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ code ယၢဝ်းမိူၼ် class လႄႈ ႁဝ်းတေၸႂ်ႉလႆႈဢိူဝ်ႈ။ မၼ်းပဵၼ် လွင်ႈငၢႆႊလူမ်ၸႂ်ႁဝ်းဝႆႉယဝ်ႉ။

သင်ႁဝ်းတေၶူင် record ၼႆ ဝၢႆးသေ တႅမ်ႈပၼ် ၸိုဝ်ႈယဝ်ႉၼႆၸိုင် ႁဝ်းတေလႆႈသႂ်ႇပၼ် constructor မၼ်းၵူၺ်းယဝ်ႉ။ တၢင်ႇလွင်ႈၼႆႉ Java မၼ်းၶိုၼ်းတေ ႁဵတ်ႉပၼ်ႁဝ်း မူတ်းယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ record

```
public record UserRecord(String name, int age) { }
```

###### လၢႆးၸႂ်ႉတိုဝ်း record

```
UserRecord user1 = new UserRecord("Sai", 18);
System.out.println(user1.name());
System.out.println(user1.age());
```