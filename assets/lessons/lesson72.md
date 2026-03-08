
## **Java Basic 72**

#### **VECTOR**

Link - <https://youtu.be/uUKoZot1H_0>

Vector ၼႆႉ မၼ်းၵေႃႈ မိူၼ်ၵၼ်တၢင်း ArrayList ဝႆႉ ၵမ်ႈၼမ်ယဝ်ႉ။ ၵူၺ်းၵႃႊ မၼ်းၸႂ်ႉတိုဝ်းဝႆႉ Synchronization ဝႆႉဢိူဝ်ႈ။ ၵွပ်ႈၼႆ သင်ၸိူဝ်ႉ ႁဝ်းသမ်ႉ ၶႆႈႁဵတ်းၵၢၼ်ၸွမ်း Thread တၢင်းၼမ်ၼႆ ၸႂ်ႉတိုဝ်း Vector ၼႆႉ လီလိူဝ်ယူႇ။ ၵူၺ်းၵႃႊ သင်ႁဝ်းသမ်ႉမီး Thread ယူႇ ဢၼ်ၼိုင်ႈၵူၺ်းၼႆတေႉ ႁဝ်းထုၵ်ႇလီ ၸႂ်ႉတိုဝ်း ArrayList ၵူၺ်း။ ၵွပ်ႈဝႃႈ synchronized ၼႆႉ ႁဵတ်းႁႂ်ႉ Thread safe သေတႃႉၵေႃႈ မၼ်းႁႂ်ႈ performance ယုပ်ႈယွမ်းဢိူဝ်ႈ။

methods ၵမ်ႈၽွင်ႈ ဢၼ်မီးဝႆႉတီႈ Vector ၵူၺ်းၼႆႉတေႉ

- addElement(E e)
- insertElementAt(E e, int index)
- elementAt(int index)
- firstElement()
- lastElement()
- elements()
- setElementAt(E e, int index)
- removeElement(Object o)
- removeElementAt(int index)

###### လၢႆးၶူင်သၢင်ႈ

```
List<String> vector = new Vector<>(); // Upcasting
Vector<String> list = (Vector<String>) vector; // Down-casting
```

###### လၢႆးသႂ်ႇၵႃႊၶၼ်မႂ်ႇ

```
list.addElement("Sai");
list.add("Mao");
list.insertElementAt(",", 2);
```

###### လၢႆးဢဝ်ၵႃႊၶၼ်

```
System.out.println("Index 2 : " + list.elementAt(2));
System.out.println("Last index : " + list.getLast());
```

###### လၢႆးမူၼ်ႉမႄးၵႃႊၶၼ်

```
list.setElementAt("Mu-se", list.size() - 1);
```

###### လၢႆးထွၼ်ၵႃႊၶၼ်ၵဝ်ႇ

```
list.removeElementAt(2); // Remove with index
list.removeElement("Saii"); // Remove with element
```