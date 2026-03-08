
## **Java Basic 38**

#### **GLOBAL VS LOCAL VARIABLE**

Link - <https://youtu.be/UJ-NQPXxv1k>

မိူဝ်ႈၽွင်းႁဝ်းတေႁဵတ်း variable ၼၼ်ႉ ယူႇတီႈ ႁွင်ႈဢၼ်ႁဝ်းဝႆႉဝၢင်းသေ မၼ်းတေပိူင်ႈၵၼ် တီႈဢၼ်ႁဝ်း ႁွင်ႉၸႂ်ႉမၼ်းလႆႈၼၼ်ႉယူႇယဝ်ႉ။ မိူၼ်ၼင်ႇ ပေႃးႁဝ်း ၶူင်သၢင်ႈ variable တီႈၼႂ်း method ၊ constructor ဢမ်ႇၼၼ်ၵေႃႈ block သေဢၼ်ဢၼ်ၼႆၸိုင် ႁဝ်းတေႁွင်ႉၸႂ်ႉလႆႈ တီႈၼႂ်းမၼ်းၵူၺ်း။ ၼႆႉႁဝ်းႁွင်ႉဝႃႈ **Local Variable** ၼႆယဝ်ႉ။ သင်ၸိူဝ်ႉ ႁဝ်းသမ်ႉဢဝ် variable ႁဝ်းၼၼ်ႉ ဝႆႉၼႂ်း class ဢမ်ႇၸႂ်ၼႂ်း method လႄႈ constructor ၼၼ်ႉ ႁဝ်းၶိုၼ်းႁွင်ႉဝႃႈ **Global Variable** ၼႆယူႇယဝ်ႉ။ လွင်ႈလီမၼ်းၼၼ်ႉတေႉ ႁဝ်းတေၸၢင်ႊႁွင်ႉၸႂ်ႉလႆႈ ၵူႊတီႈ တီႈၼႂ်း class ႁဝ်းယူႇယဝ်ႉ။

**Default value for global variables**

လွင်ႈလၢၵ်ႇလၢႆးထႅင်ႈဢၼ်ၼိုင်ႈ တီႈ global လႄႈ local variable ၼႆႉ global variable ၼႆႉ မၼ်းမီး default value ဢိူဝ်ႈ။ ပွင်ႇဝႃႈ သင်ႁဝ်းၶူင်မၼ်းယဝ်ႉသေ ဢမ်ႇသႂ်ႇ ၵႃႊၶၼ်သင် ပၼ်မၼ်းဝႆႉၼႆၸိုင် မၼ်းတေ ၼႄပၼ်ႁဝ်း default value ယဝ်ႉ။ Local variable ၼႆႉသင်ၶူင်ယဝ်ႉ ဢမ်ႇသႂ်ႇဝႆႉ ၵႃႊၶၼ်သင်ၼႆ ႁဝ်းတေႁွင်ႉၸႂ်ႉဢမ်ႇလႆႈ။

Default value ၼႆႉၵေႃႈ တွင်းငၢႆႊယူႇ။ byte, short, int, long, float, double ၸိူဝ်းၼႆႉ ၶဝ်တေမီးဝႆႉ 0 ၊ char သမ်ႉတေမီးဝႆႉ \\u0000 သေ boolean သမ်ႉပဵၼ်ဝႆႉ false ယဝ်ႉ။ Non-primitive တင်းမူတ်းတေႉ ၶဝ်တေမီးဝႆႉ null ။

###### လၢႆးၶူင်သၢင်ႈ

```
public class Test {
    String name = "Sai Mao"; // Global variable
    int age; // Global variable with default value - 0
    
    public void printName(String name) {
    // Method local variable is invisible to other methods and constructors
    int age = 18;
    if (age > 18) {
        // Block local variable is inaccessible outside of this block
        // this.age shows default value for int data type that is 0
        String string = age + " vs " + this.age;
        }
    }
    
    public Test() {
        // Constructor local variable
        int number = 100;
        // Access global variable - name
        System.out.println("My name is " + name);
    }
}