
## **Java Basic 53**

NESTED INNER CLASS

Link - <https://youtu.be/Bofvx8qUFuA>

Inner Class ၼႆႉပွင်ႇဝႃႈ ႁဝ်းၶူင်သၢင်ႈ class တီႈၼႂ်း class ၼႆယဝ်ႉ။ မၼ်းၵေႃႈ တေမိူၼ်ၵၼ်တၢင်း nested if, nested for loop ၸိူင်ႉၼၼ်ယူႇ။

တီႈ Java ၼႆႉ inner class မီးဝႆႉယူႇ (4) လွင်ႈ

- _Nested Inner Class_
- _Static Inner Class_
- _Method Local Inner Class_
- _Anonymous Inner class_

**1) Nested Inner Class**

class ဢၼ်ၶူင်သၢင်ႈဝႆႉၼႂ်း class ထႅင်ႈဢၼ်ၼိုင်ႈၼႆႉ ႁဝ်းႁွင်ႉဝႃႈ inner class ၼႆယဝ်ႉ။ class ယႂ်ႇမၼ်း ႁဝ်းႁွင်ႉဝႃႈ Outer class ၼႆသေ သင်ႁဝ်း ၶူင်သၢင်ႈ inner class လူၺ်ႈ ဢမ်ႇၸႂ်ႉတိုဝ်း static ၼႆ ႁဝ်းႁွင်ႉမၼ်းဝႃႈ normal inner class ၼႆယဝ်ႉ။

Normal inner class ၼႆႉ ၵွပ်ႈမၼ်း ယူႇဝႆႉၼႂ်း outer class ၼႆလႄႈ မၼ်းႁွင်ႉၸႂ်ႉလႆႈ global member ဢၼ်ယူႇဝႆႉၼႂ်း outer class ယဝ်ႉ။ တႃႇတေၶူင်သၢင်ႈ inner class instance ၼႆႉသမ်ႉ ႁဝ်းတေလႆႈမီး outer class instance ၸင်ႇတေ ႁွင်ႉၸႂ်ႉမၼ်းလႆႈ။

လၢႆးၶူင်သၢင်ႈ

**public class Computer {**

**private String brand;**

**public String getBrand() {**

**return brand;**

**}**

**public void setBrand(String brand) {**

**this.brand = brand;**

**}**

**_// Nested inner class_**

**public class Cpu {**

**String processor;**

**public void printCpuInfo() {**

**System._out_.printf("Computer Brand - %s%n", brand);**

**System._out_.printf("CPU Processor - %s%s", processor);**

**}**

**}**

**}**

လၢႆးၸႂ်ႉတိုဝ်း

**Computer computer = new Computer();**

**computer.setBrand("Lenovo G50-30");**

**_// Create inner class's object_**

**Computer.Cpu cpu = computer.new Cpu();**

**cpu.processor = "Intel Pentium";**

**cpu.printCpuInfo();**
