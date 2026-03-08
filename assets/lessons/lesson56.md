## **Java Basic 56**

#### **ANONYMOUS CLASS AND EVENT LISTENER IMPLEMENTATION**

Link - <https://youtu.be/8jnFVJKlCwE>

**4) Anonymous Inner class**

Anonymous class ၼႆႉပဵၼ် class ဢၼ်ႁဝ်း ဢမ်ႇၸႂ်ႉတိုဝ်း class keyword သေ ၶူင်သၢင်ႈယဝ်ႉ။ မၼ်းပဵၼ် class တႃႇၸႂ်ႉတိုဝ်း ပွၵ်ႈလဵဝ်ၵူၺ်း။

Anonymous class ၵေႃႈ ပဵၼ်ဢၼ်ၸႂ်ႉတိုဝ်းၵၼ် ၼမ်ဝႆႉဢၼ်ၼိုင်ႈၼင်ႇၵဝ်ႇ။ တီႈၵျႃႇပႃးတေႉ ၵမ်ႈၼမ် ႁဝ်းမႃးၸႂ်ႉတိုဝ်းၸွမ်း Event Listener ယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
public static void main(String[] args) {
    Animal dog = new Animal() {
        @Override
        public void makeSound() {
            System.out.println("Woof Woof");
        }
    };

    speak(dog);
}

public static void speak(Animal animal) {
    animal.makeSound();
}
```

**Functional Interface and Lambda Expression**

သင်ၸိူဝ်ႉ interface ႁဝ်း မီးဝႆႉ abstract method ဢၼ်ၼိုင်ႈၵူၺ်းၼႆ ႁဝ်းႁွင်ႉမၼ်းဝႃႈ Functional Interface ၼႆသေ ႁဝ်းတေၸႂ်ႉၸွမ်း Lambda Expression လႆႈဢိူဝ်ႈ။ Lambda expression ဢၼ်ဝႃႈၼႆႉ ပဵၼ်လၢႆးငၢႆႊ၊ လၢႆးပွတ်း တႃႇၸႂ်ႉတိုဝ်း Anonymous class ၵူၺ်းၼင်ႇၵဝ်ႇ။ ၵွပ်ႈၼႆ code တီႈၼိူဝ် ဢၼ်ၶူင်သၢင်ႈ dog object ဝႆႉၼၼ်ႉ ႁဝ်းႁဵတ်ႉၼႆ တႅမ်ႈလႆႈဢိူဝ်ႈ။
```
Animal dog = () -> System.out.println("Woof Woof");
```

တူင်ႇမူၼ်းမူၼ်းၼႆႉ ပဵၼ် parameter ဢၼ်မီးဝႆႉ တီႈၼႂ်း abstract method ။ ၵူၺ်း method ႁဝ်းၼႆႉသမ်ႉ ဢမ်ႇမီး parameter သင်ၼႆလႄႈ ၸင်ႇပဵၼ်ဝႆႉ တူင်ႇမူၼ်းပဝ်ႇယဝ်ႉ။
