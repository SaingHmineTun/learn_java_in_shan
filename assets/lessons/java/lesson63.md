
## **Java Basic 63**

#### **THROW NEW EXCEPTION**

Link - <https://youtu.be/7-EDyeqHEo4>

throw ၼႆႉသမ်ႉ ႁဝ်းၸႂ်ႉတိုဝ်း မိူဝ်ႈၽွင်း ႁဝ်းၶႆႈႁႂ်ႈ ပရူဝ်ႇၵရမ်ႇႁဝ်းၼၼ်ႉ ထုၵ်ႈဢွၵ်ႇပၼ် Exception ယဝ်ႉ။ မီး Exception class ၵူၺ်း ဢၼ်ၸႂ်ႉၸွမ်း throw လႆႈ။

###### လၢႆးၸႂ်ႉတိုဝ်းၸွမ်း Exception class

```
int number = 5;
if (number < 1 || number > 6) {
    throw new Exception("Invalid number");
}
```

**Throw custom exception**

တီႈတေႉ ႁဝ်းၶူင်သၢင်ႈ Exception class ႁဝ်း ႁင်းၶေႃၵေႃႈ လႆႈဢိူဝ်ႈ။ ၵူၺ်း Exception class ႁဝ်းၼႆႉ တေလႆႈ extends ဝႆႉ Exception class သေဢၼ်ဢၼ် ၸင်ႇၸႂ်ႉလႆႈ။

###### လၢႆးၶူင်သၢင်ႈ Custom exception class

```
public class InvalidNumberException extends Exception {
    public InvalidNumberException(String str) {
        super(str);
    }
}
```

###### လၢႆး throw custom exception ႁဝ်း

```
int number = 5;
if (number < 1 || number > 6) {
    throw new InvalidNumberException("You entered invalid number");
}
```