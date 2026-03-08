
## **Java Basic 46**

#### **ABSTRACTION AND ABSTRACT CLASS**

Link - <https://youtu.be/GRuATUQEjEE>

Abstraction ၼႆႉ ပွင်ႇဝႃႈ ႁဝ်းလပ်းဝႆႉ လွင်ႈဢၼ်ဢမ်ႇလွင်ႈယႂ်ႇသေ ၼႄပၼ်ပိူင်ယႂ်ႇမၼ်း ၼႆယဝ်ႉ။ လွင်ႈၼႆႉၵေႃႈ ပဵၼ်ပိူင်ယႂ်ႇဢၼ်ၼိုင်ႈ တီႈ OOP ယဝ်ႉ။ ပေႃးႁဝ်းၸွမ်းပိူင် abstraction ၼႆ တီႈၼႂ်းမၼ်းၼၼ်ႉ ႁဝ်းတေတႅမ်ႈလႆႈ abstract method ယဝ်ႉ။ Abstraction ၼႆႉ ႁဝ်းတေ ၶူင်သၢင်ႈ object မၼ်းဢမ်ႇလႆႈ။ ၵွပ်ႈၼႆ ႁဝ်းတေလႆႈ ၸႂ်ႉၸွမ်း inheritance ယဝ်ႉ။

**Abstract method**

Abstract method ၼႆႉပဵၼ် method ဢၼ်ဢမ်ႇမီး method body ဢိူဝ်ႈ။ body မၼ်းၼႆႉ ၵေႃႉဢၼ်ႁဵတ်း inherit မၼ်းၼၼ်ႉ တေလႆႈသႂ်ႇပၼ်ယဝ်ႉ။

တႃႇတေ ၸွမ်းပိူင် Abstraction ၼႆတီး Java မီးဝႆႉယူႇ 2 လၢႆး။

- Abstract class
- Interface

**1\. Abstract class**

Abstract class ၼႆႉ ပဵၼ် class ဢၼ်လႆႈဢဝ် abstract keyword သေ တႅမ်ႈဝႆႉၵူၺ်းဢိူဝ်ႈ။ ၼႂ်းမၼ်းၼၼ်ႉ ႁဝ်းၶိုၼ်းတေတႅမ်ႈလႆႈ abstract method ယဝ်ႉ။ ပေႃးဢမ်ႇၸႂ် abstract class ၼႆ ဢမ်ႇတႅမ်ႈ abstract method လႆႈ။ ၵွပ်ႈမၼ်းၸွမ်းပိူင် abstraction ၼႆလႄႈ ႁဝ်းတေၶူင်သၢင်ႈ object မၼ်းဢမ်ႇလႆႈ။

Child Class ဢၼ်ႁဵတ်း inherit Abstract class ဝႆႉၼၼ်ႉ တေလႆႈ override ပၼ် abstract method ဢၼ်မီးတီႈၼႂ်းမၼ်း ၵမ်းလဵဝ်ယဝ်ႉ၊ ပေႃးဢမ်ႇၼၼ် တေၼႄ Error ပၼ်ဝႆႉယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ Abstract Class

```
public abstract class Animal {
    abstract void makeSound(); // Abstract method
    
    public void print() { // Normal method
        System.out.println("I'm Animal");
    }
}
```

###### လၢႆးႁဵတ်း extend Abstract Class

```
public class Dog extends Animal {
    void makeSound() {
        System.out.println("Woof Woof");
    }
}

public class Cat extends Animal {
    void makeSound() {
        System.out.println("Meow Meow");
    }
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
public static void main(String[] args) {
    Animal dog = new Dog();
    makeSound(dog);
    makeSound(new Cat());
}

private static void makeSound(Animal animal) {
    animal.makeSound();
}
```