
## **Java Basic 47**

INTERFACE

Link - <https://youtu.be/fL9Iy0U-bdg>

Interface ၵေႃႈ ပဵၼ် Abstraction ဢၼ်ၼိုင်ႈယဝ်ႉ။ သင်ၸိူဝ်ႉ ႁဝ်းၶႆႈၶူင် interface ၼႆၸိုင် ႁဝ်းဢမ်ႇၸႂ်ႉ class သေ ႁဝ်းမႃးၸႂ်ႉ interface ယဝ်ႉ။ တီႈ interface ႁဝ်းၼႆႉ method ဢၼ်ႁဝ်း တႅမ်ႈတၢင်းမူတ်းၼၼ်ႉ Java မၵ်းမၼ်ႈပဵၼ် abstract method ဝႆႉယဝ်ႉၼႆလႄႈ ၶဝ်တေဢမ်ႇလႆႈမီး method body ။ ၵူၺ်းၵႃႊ သင်ၸိူဝ်ႉ ႁဝ်းၶႆႈၶူင်သၢင်ႈ method ဢၼ်မီး body ၼႆၸိုင် ႁဝ်းၸႂ်ႉလႆႈ **default** method သေၶူင်လႆႈဢိူဝ်ႈ။ default method ၼႆႉႁဝ်းၶူင်လႆႈတီႈၼႂ်း interface လၢႆလၢႆၵူၺ်း။

interface ႁဝ်းၼႆႉ ဢၼ်တေႃႇဢၼ် တေႁဵတ်ႉ **extends** လႆႈယဝ်ႉ။ ပေႃးၶႆႈဢဝ် class ႁဝ်းသေ inherit မၼ်းၼႆ ႁဝ်းတေလႆႈၸႂ်ႉ **implements** ယဝ်ႉ။ လၢႆးႁဵတ်ႉၵၢၼ်မၼ်းတေႉ မိူၼ်ၵၼ်တင်း extends ၵူၺ်းၼင်ႇၵဝ်ႇ။

child class -> parent class = extends

child interface -> parent interface = extends

child class -> parent interface = implement

လၢႆးၶူင်သၢင်ႈ interface

**public interface Animal {**

**void makeSound(); _// This is abstract method_**

**default void print() { _// This is normal method_**

**System._out_.println("I'm animal");**

**}**

**}**

လၢႆးႁဵတ်ႉ inherit interface

**public class Dog implements Animal {**

**public void makeSound() {**

**System._out_.println("Woof Woof");**

**}**

**}**

လၢႆးၸႂ်ႉတိုဝ်း

**Animal dog = new Dog();**

**dog.makeSound();**