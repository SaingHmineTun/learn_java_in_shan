
## **Java Basic 81**

#### **SET INTERFACE**

Link - <https://youtu.be/BjVkA3lGT5o>

#### ထုၵ်ႇလီပဵၼ် 78 သေတႃႉ မိူဝ်ႈထႆႇဝီးတီးဢူဝ်းၼၼ်ႉ တူၵ်းလိုမ်းပႅတ်ႈလႄႈ ၸင်ႇဝႃႈပဵၼ်ဝႆ့ 81 ယဝ်ႉ။


Set interface ၼႆႉၵေႃႈ ပဵၼ် Collection ဢၼ်ၼိုင်ႈၼင်ႇၵဝ်ႇ။ ၼႂ်းမၼ်းၼၼ်ႉ ႁဝ်းတေသိမ်းဝႆႉ ၵႃႊၶၼ်မိူၼ်ၵၼ် ဢမ်ႇလႆႈ။ ယဝ်ႉၵေႃႈ ၵွပ်ႈမၼ်း ဢမ်ႇၸႂ်ႉ indexing လႄႈ key ၼႆလႄႈ ၼႂ်းမၼ်းၼၼ်ႉ ႁဝ်းၶိုၼ်း တေဢဝ် ၵႃႊၶၼ်ၼိုင်ႈတူဝ်ၼႆႉ ဢမ်ႇလႆႈ။ class ဢၼ် extends ဝႆႉ Set interface ၼႆႉပဵၼ် 3 ဢၼ်ၼႆႉယဝ်ႉ။

- **Hash Set**
- **Linked Hash Set**
- **Tree Set**

methods ၵမ်ႈၽွင်ႈ ဢၼ်ႁဝ်းတေ ၸႂ်ႉတိုဝ်းၸွမ်း Set လႆႈၼၼ်ႉ

- add(E e)
- remove(E e)
- clear()
- contains(E e)
- iterator()
- size()
- addAll (Collection col)
- removeAll(Collection col)
- retainAll(Collection col)
- containsAll(Collection col)

ၵွပ်ႈပိူဝ်ႈ set တင်းသၢမ်ဢၼ် implements ဝႆႉ Set interface ၼႆလႄႈ method ၸိူဝ်းၼႆႉ တေၸႂ်ႉလႆႈၼႂ်း class တင်းသၢမ်ဢၼ်ယဝ်ႉ။

###### လၢႆးသႂ်ႇၵႃႊၶၼ်မႂ်ႇ

```
northernCities.add("muse");
```

###### လၢႆးထွၼ်ၵႃႊၶၼ်ၵဝ်ႇ
```
northernCities.add("muse");
```

###### လၢႆးႁဵတ်း union

```
northernCities.addAll(southernCities);
```

###### လၢႆးႁဵတ်း intersection

```
northernCities.retainAll(southernCities);
```

###### လၢႆးႁဵတ်း differentiation

```
northernCities.removeAll(southernCities);
```

**1\. Hash Set**

မၼ်းၵေႃႈ တေၸႂ်ႉ Hash value သေ သိမ်းပၼ် ၵႃႊၶၼ်လႄႈ ၼႂ်းမၼ်းၼၼ်ႉ ဢမ်ႇထိင်းပၼ်ဝႆႉ Sorting သင်။ ၵူၺ်းသင်ၶႆႈႁဵတ်း CRUD ၵူၺ်းၼႆတေႉ ၸႂ်ႉတိုဝ်း Hash Set z ၼႆႉ ၽႂ်းလိူဝ်ပိူၼ်ႈယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ

```
Set<String> northernCities = new HashSet<>();
```

**2\. Linked Hash Set**

မၼ်းတေ ၵွင်ႉပၼ် ၵႃႊၶၼ် ဢၼ်သိမ်းဝႆႉ ၽၢႆႇၼႃႈ၊ ၽၢႆႇလင် ၼႆလႄႈ ၼႂ်းမၼ်း တေသိမ်းပၼ်လူၺ်ႈ Insertion Order ယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ

```
Set<String> northernCities = new LinkedHashSet<>();
```

**3\. Tree Set**

ၵွပ်ႈၸႂ်ႉ Tree လႄႈ ၼႂ်း မၼ်းတေမီးဝႆႉ Ascending order ယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ

```
Set<String> northernCities = new TreeSet<>();
```
