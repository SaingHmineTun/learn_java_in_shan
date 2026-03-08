
## **Java Basic 55**

#### **METHOD LOCAL INNER CLASS**

Link - <https://youtu.be/MVl4P13dEbI>

**3) Method Local Inner Class**

class ၼႆႉ တီႈၼႂ်း method ၵေႃႈ ႁဝ်းၶူင်သၢင်ႈလႆႈဢိူဝ်ႈ။ ပေႃးၶူင်သၢင်ႈ ၼႂ်းmethod ၼႆ မၼ်းတေမီး local scope ၵူၺ်းၼႆလႄႈ ယႃႇဝႃႈ class တၢင်ႇဢၼ်ၼႃႈ၊ တေႃႈၼင်ႇ method တၢင်ႇဢၼ်ၵေႃႈ ႁဝ်းတေႁွင်ႉၸႂ်ႉမၼ်း ဢမ်ႇလႆႈယဝ်ႉ။ class ဢၼ်ၼႆႉ ၵမ်ႈၼမ်ၼမ်တေႉ ႁဝ်းၸႂ်ႉတႃႇႁဵတ်ႉ inherit abstraction ၵူၺ်းဢိူဝ်ႈ။

###### လၢႆးၶူင်သၢင်ႈ interface တႃႇၸႂ်ႉတိုဝ်းတီႈ inner class

```
public interface Animal {
    void makeSound();
}
```

###### လၢႆးၶူင်သၢင်ႈ method local inner class

```
public static void main(String[] args) {
    class Cat implements Animal {
        public void makeSound() {
            System.out.println("Meow Meow");
        }
    }
    
    Cat cat = new Cat();
    speak(cat);
    speak(new Cat());
}
    
public static void speak(Animal animal) {
    animal.makeSound();
}
```
