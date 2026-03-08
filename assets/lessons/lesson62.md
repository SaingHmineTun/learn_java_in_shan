
## **Java Basic 62**

#### **EXCEPTION HANDLING WITH THROWS**

Link - <https://youtu.be/Hmz_yiYos0Q>

**2\. Throws**

ၼႆႉတေႉ ဢမ်ႇၸႂ် ဢၼ်ႁဝ်း ၵႄႈလိတ်ႈ Exception တေႉတေႉ။ ပဵၼ်လွင်ႈ ဢၼ်ႁဝ်းဢဝ် Exception ၼၼ်ႉသေ သူင်ႇပၼ် method တၢင်ႇဢၼ်ဢိူဝ်ႈ။ ၵူၺ်းၵႃႊ သင်ၸိူဝ်ႉ ႁဝ်းဢမ်ႇၶဝ်ႈၸႂ်လွင်ႈ Exception ၸိူဝ်းၼၼ်ႉသေ ၶႆႈႁႂ်ႈ ၶူတ်ႉႁဝ်း ႁဵတ်ႉၵၢၼ်ၵူၺ်းၼႆတေႉ ႁဝ်းၵႂႃႇ throws တီႈ main method ၵေႃႈလႆႈယူႇ။ လွင်ႈယုပ်ႈယွမ်းတေႉၵေႃႈ ႁဝ်းတေ ဢမ်ႇၺွပ်ႉလႆႈဝႃႈ ပဵၼ်ၵွပ်ႈ Exception သင်ၼၼ်ႉယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်းႈ throws

```
public static void sleepFor1Sec() throws InterruptedException {
    Thread.sleep(1000);
}
```

Method sleepFor1Sec() ၼႆႉပဵၼ်ဢၼ် throws ဝႆႉ Exception ၼႆလႄႈ သင်ႁွင်ႉၸႂ်ႉမၼ်းၼႆၸိုင် မၼ်းၵေႃႈ တေမီးဝႆႉ Interrupted Exception ယဝ်ႉ။ ၵွပ်ႈၼႆ ႁဝ်းတေလႆႈၵႄႈလိတ်ႈပၼ် တီႈဢၼ်ႁွင်ႉၸႂ်ႉမၼ်းၼၼ်ႉယဝ်ႉ။ တီႈတေႉ Thread.sleep() ၼႆႉမၼ်း throws ဝႆႉ Exception လႄႈမိူဝ်ႈႁဝ်း ၸႂ်ႉတိုဝ်းမၼ်းၼၼ်ႉ ၸင်ႇပဵၼ်ဝႆႉ Error ယဝ်ႉဢိူဝ်ႈ။
