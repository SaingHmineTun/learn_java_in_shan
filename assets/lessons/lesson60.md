
## **Java Basic 60**

#### **JAVA EXCEPTIONS**

Link - <https://youtu.be/RC6ExYJJdFI>

Exceptions ၼႆႉ ပွင်ႇဝႃႈ ပဵၼ်လွင်ႈယုပ်ႈယွမ်း ဢမ်ႇၼၼ် ပဵၼ်လွင်ႈၽိတ်း တီႈပရူဝ်ႇၵရမ်ႇ ၼႆယဝ်ႉ။

တီႈ Java ၼႆႉ သင်ၵဵဝ်ႇၵပ်းလူၺ်ႈ လွင်ႈယုပ်ႈယွမ်းၼႆ မၼ်းတေမီးဝႆႉယူႇ 2 လွင်ႈ။

**1\. Exceptions**

Exceptions ၼႆႉပဵၼ် တီႈယုပ်ႈယွမ်း၊ ဢမ်ႇၼၼ် တီႈၽိတ်း ဢၼ်ႁဝ်းတေ ၵႄႈလိတ်ႈလႆႈယဝ်ႉ။

**2\. Error**

Error ၼႆႉသမ်ႉ ပဵၼ်တီႈၽိတ်း ဢၼ်ၵႄႈလိတ်ႈယၢပ်ႇ မိူၼ်ၼင်ႇ StackOverFlow ဢမ်ႇၼၼ် Insufficient Memory ၼၼ်ႉယဝ်ႉ။

**Exceptions ၼႆႉၵေႃႈမီးယူႇဝႆႉ 2 လွင်ႈ**

- **Compile time exception (Checked exception)**
- **Runtime exception (Unchecked exception)**

**1\. Compile time exception**

ၼႆႉသမ်ႉ ပဵၼ်တီႈ မိူဝ်ႈႁဝ်း တေႁဵတ်ႉ compile ပရူဝ်ႇၵရမ်ႇႁဝ်းယဝ်ႉ။ Exception ၼႆႉတေႉ IDE ဢၼ်ၶိုၵ်ႉ ၸၢင်ႊႁႃပၼ်လႆႈလႄႈ ဢမ်ႇပေႃးမီး တီႈႁူဝ်ၶႆႈ၊ ပေႃးၼႄၵေႃႈ ၵႄႈလိတ်ႈပၼ်သေယဝ်ႉ။ Compile time exception ၼႆႉတေႉ မၢင်ၸိူဝ်း ၵေႃးလၢတ်ႈဝႃႈ IO Exception ၼႆယဝ်ႉ၊ ၵွပ်ႈဝႃႈ မၼ်းပဵၼ်ၵွပ်ႈ IO ၵမ်ႈၼမ်ယဝ်ႉ။ မိူၼ်ၼင်ႇ File Not Found ယဝ်ႉ။

**2\. Runtime exception**

ၼႆႉသမ်ႉ ပဵၼ်တီႈ မိူဝ်ႈႁဝ်း run ၼႆလႄႈ IDE ၵေႃႈ ဢမ်ႇၸွႆႈႁႃပၼ်လႆႈ၊ တေႃႉတႄႉ ၸၢင်ႊၼႄပၼ် Warning ၸိူင်ႉၼႆၵူၺ်း။ မိူၼ်ၼင်ႇ Index out of bounds, Null Pointer, Divide by zero ၸိူဝ်းၼႆႉယဝ်ႉ။

###### Code ဢၼ်မီးဝႆႉ exceptions

```
private void init() {
    Thread.sleep(1000); // Compile time exception or Checked exception
    int z = 10 / 0; // Runtime exception or Unchecked exception
}
```