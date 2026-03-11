
## **Java Basic 58**

#### **ENUMERATION**

Link - <https://youtu.be/7Qt4OI8rW4A>

Enumeration ၼႆႉ ပဵၼ် Special Data Type ဢၼ်ၼိုင်ႈ ဢၼ်ၵိုၵ်းပႃးမႃးၸွမ်း JDK 5 ဝႆႉယဝ်ႉ။ တီႈၼႂ်းမၼ်း ႁဝ်းတေသိမ်းလႆႈ constant variable ဝႆႉၵူၺ်း။ Enum ၼႆႉ ႁဝ်းၸႂ်ႉတိုဝ်း မိူဝ်ႈၽွင်းႁဝ်းၶႆႈယွၼ်း ၶေႃႈမုၼ်း ဢၼ်မီးပုင်ႇတၢႆဝႆႉယဝ်ႉ။ မိူၼ်ၼင်ႇ ၸိုဝ်ႈလိူၼ်ၼႆႉ မၼ်းၵေႃႈ မီး​လႆႈ 12 လိူၼ် (လိူၼ်ၸၼ်ႇၼဝႃႇရီႇတေႃႇ လိူၼ်တီႇသိၼ်ႇပႃႇ) ၵူၺ်း။

Enum ၼႆႉ ႁဝ်းတေၸႂ်ႉတိုဝ်း new keyword သေ ၶူင် object ဢမ်ႇလႆႈ။ ႁဝ်းတေလႆႈၸႂ်ႉ constant ဢၼ်မီးၼႂ်းမၼ်းသေ ၶူင်ၵူၺ်း။

###### လၢႆးၶူင်သၢင်ႈ Enum

```
public enum Priority {
    HIGH, MEDIUM, LOW
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း Enum
```
Priority low = Priority.HIGH;
```

ၼႂ်း enum ၼႆႉ ႁဝ်းတႅမ်ႈ global variable, instance method မိူၼ်ၼင်ႇ class ၵေႃႈလႆႈယူႇ။ Constructor ၵေႃႈ ႁဝ်းပၼ်လႆႈၵွၼ်ႇ။ ၵူၺ်း constructor ၼၼ်ႉ ဢမ်ႇၸႂ်ႈတႃႇပိူၼ်ႈႁွင်ႉၸႂ်ႉ၊ ပဵၼ်တႃႇ constant ႁွင်ႉၸႂ်ႉၶိုၼ်းၵူၺ်း။

###### လၢႆးၶူင်သၢင်ႈ Enum သႂ်ႇပႃး variable, method လႄႈ constructor

```
public enum Priority {
    HIGH("High"), MEDIUM("Medium"), LOW("Low");
    private String name;
    Priority(String name) {
        this.name = name;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
}
```

###### လၢႆးႁွင်ႉၸႂ်ႉ Enum ဢၼ်ၵိုၵ်းပႃးဝႆႉ variable, method လႄႈ constructor

```
Priority low = Priority.HIGH;
low.setName("Lower");
System.out.println(low.getName()); // Lower
```
