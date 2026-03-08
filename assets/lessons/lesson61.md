
## **Java Basic 61**

#### **EXCEPTION HANDLING WITH TRY - CATCH**

Link - <https://youtu.be/auHAau0OsSg>

ၶူတ်ႉဢၼ်မီးဝႆႉ Exception ၼၼ်ႉ ႁဝ်းၸႂ်ႉ 2 လၢႆးၼႆႉသေ ၵႄႈလိတ်ႈလႆႈဢိူဝ်ႈ။

- **Try - catch**
- **Throws**

**1\. Try - catch**

ၼႆႉတေႉ ပဵၼ်လွင်ႈ ဢၼ်ႁဝ်းဢဝ် ၶူတ်ႉဢၼ်ၸၢင်ႊမီး Exception ၼၼ်ႉသေ သႂ်ႇဝႆႉၼႂ်း try block ယဝ်ႉ။ Exception ဢၼ်ၸၢင်ႊပဵၼ်မႃးၼၼ်ႉ ၶိုၼ်းၸႂ်ႉ catch သေ ၺွပ်ႉဝႆႉၼၼ်ႉယဝ်ႉ။

Runtime, Compile time exceptions ၸိူဝ်းၼႆႉ တီႈတေႉ ၶဝ်ၵူၺ်းလုၵ်ႉတီႈ Exception မႃးၵူၺ်းၼႆလႄႈ တေလႆႈဝႃႈ Exception တၢင်းမူတ်းၼႆႉ ဢဝ် Exception class သေ ၺွပ်ႉဝႆႉၵေႃႈလႆႈယူႇ။ ၵူၺ်းၵႃႊ မၢင်ပွၵ်ႈ သင်ႁဝ်းၶႆႈႁူႉဝႃး ပဵၼ်ၵွပ်ႈ Exception သင်ၼႆၼၼ်ႉ ႁဝ်းထုၵ်ႇလီၸႂ်ႉတိုဝ်း Child Class မၼ်းၼၼ်ႉယူႇ။

**finally**

ၼႆႉတေႉ ၶူတ်ႉႁဝ်း မီးလွင်ႈၽိတ်း၊ ဢမ်ႇမီးလွင်ႈၽိတ်းၵေႃႈယဝ်ႉ၊ မၼ်းတေ ႁဵတ်းၵၢၼ်ၵႂႃႇယဝ်ႉ။ ၵမ်ႈၼမ်တေႉ ၸႂ်ႉတိုဝ်းၸွမ်း File handling ဢိူဝ်ႈ။ သင်ၸိူဝ်ႉ ႁဝ်းၽုၺ်ႇ ၾၢႆႇဢၼ်ႁဝ်း ၶႆႈလူ၊ ၶႆႈတႅမ်ႈယဝ်ႉၼႆ ႁဝ်းၶိုၼ်း မႃးပိၵ်ႉဢိုပ်းပၼ်ၶိုၼ်းယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း try - catch - finally

```
try {
    Thread.sleep(1000); // 1000 milliseconds = 1 second
    int num = 10 / 0;
} catch (InterruptedException e) {
    System.out.println("Cannot sleep");
} catch (ArithmeticException e) {
    System.out.println("Cannot divide by zero");
} finally {
    System.out.println("After sleep");
}
```

ၼႆႉသမ်ႉ ၵွပ်ႈၶႆႈႁူႉဝႃႈ ပဵၼ်ၵွပ်ႈ Thread.sleep() ႁ ဢမ်ႇၼၼ် ၵွပ်ႈ 10/0 ႁ ၼႆလႄႈ ၸင်ႇလႆႈၸႂ်ႉ Specific class သေ catch ဝႆႉယဝ်ႉ။ သင်ဢမ်ႇၶဝ်ႈၸႂ် ပဵၼ်ၵွပ်ႈသင်ၼႆ တီႈတေႉ ၸႂ်ႉတိုဝ်း Exception class ၼႆၵေႃႈလႆႈယူႇ။
