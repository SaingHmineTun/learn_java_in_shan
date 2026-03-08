
## **Java Basic 67**

#### **JOIN THREAD**

Link - <https://youtu.be/sGY7Gihzp0c>

ပေႃးၶူင်သၢင်ႈ Thread ၼႆ လွင်ႈလီမၼ်းၼႆႉ ပဵၼ်ဢၼ်ဝႃႈ ႁဝ်းဢမ်ႇလူဝ်ႇ ပႂ်ႉႁႂ်ႈ Thread ၼႆႉႁဵတ်ႉၵၢၼ်ယဝ်ႉ၊ တႃႇ Main thread တေ သိုပ်ႇႁဵတ်ႉၵၢၼ်။ မၢင်ပွၵ်ႈမၢင်လႂ် သင်ၸိူဝ်ႉ ႁဝ်းသမ်ႉ ၶႆႈပႂ်ႉႁႂ်ႈ Custom thread ႁဝ်း ႁဵတ်ႉၵၢၼ်ယဝ်ႉၼႆၸိုင် ႁဝ်းၸႂ်ႉလႆႈ join method ဢိူဝ်ႈ။ မၼ်းၵေႃႈ တေမီး Interrupted exception လႄႈ ၸႂ်ႉတိုဝ်းၸွမ်း try - catch ဢမ်ႇၼၼ် throws လႄႈ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
Thread th = new Thread(() -> {
    for (double d = 0.1; d < 1; d += .1) {
        System._out_.println("Downloading ... " + d);
    }
});
th.start();
th.join();
```
