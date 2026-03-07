
## **Java Basic 41**

#### **ENCAPSULATION**

Link - <https://youtu.be/sF1VA8ZJnD4>

Encapsulation ၼႆႉ ပဵၼ်လွင်ႈပိူင်ႈယႂ်ႇဢၼ်ၼိုင်ႈ တီႈၼႂ်း OOP ဝႆႉယူႇ။ သင်ၸိူဝ်ႉဝႃႈ OOP ၼႆ တေလႆႈၸွမ်း ပိူင် 4 ပိူင်ၼႆႉ

- **Encapsulation**
- **Inheritance**
- **Polymorphism**
- **Abstraction**

**Encapsulation**

ၼႆႉတေႉၵေႃႈ မိူဝ်ႈၽွင်းႁဝ်း ၶူင်သၢင်ႈ class ၼႆႉ ဢမ်ႇပၼ်ၶႂၢင်ႉ ႁႂ်ႈပိူၼ်ႈ မႃးၸႂ်ႉတိုဝ်း variable လူၺ်ႈ တႅမ်ႈၸွမ်း private ဝႆႉယဝ်ႉ။ သင်ၸိူဝ်ႉ ၶႆႈႁွင်ႉၸႂ်ႉၼႆ တေလႆႈၸႂ်ႉလူၺ်ႈ getter method။ သင်ၸိူဝ်ႉ ၶႆႈလၢႆႊ ၵႃႊၶၼ်ၼၼ်ႉသမ်ႉ တေလႆႈၸႂ်ႉလူၺ်ႈ setter method။ ၵွပ်ႈၼႆ မၢင်ၸိူဝ်းၵေႃႈ ႁွင်ႉမၼ်းဝႃႈ Getter/Setter ၼႆယဝ်ႉ။ မၢင်ပွၵ်ႈ ပေႃးႁဝ်းသႂ်ႇဝႆႉ ၵႃႊၶၼ်မၼ်းသေ ဢမ်ႇၶႆႈပၼ်ပိူၼ်ႈ မူၼ်ႉမႄးလႆႈၼၼ်ႉၵေႃႈ ၸႂ်ႉ encapsulation လႆႈလူၺ်ႈ သႂ်ႇပၼ် getter method ဢၼ်လဵဝ်ၵူၺ်း။ လွင်ႈၼႆႉ ႁွင်ႉဝႃႈ လွင်ႈၶူင်သၢင်ႈ immutable object ၼႆယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ

```
public class User {
    private String name;
    private boolean active;
    
    public boolean isActive() {
        return active;
    }
    
    public void setActive(boolean active) {
        this.active = active;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
User user = new User();
user.setName("Sai Mao"); // Set value
System.out.println(user.getName()); // Get value
```
