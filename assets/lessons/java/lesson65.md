
## **Java Basic 65**

#### **EXTENDING THREAD CLASS**

Link - <https://youtu.be/TAmMb59xRSA>

တီႈ Java ၼႆႉ တႃႇၶူင်သၢင်ႈ Thread ၼႆၼၼ်ႉ ႁဝ်းၸႂ်ႉတိုဝ်းလႆႈ 2 လၢႆးၼႆႉဢိူဝ်ႈ

- **Extending Thread class**
- **Implementing Runnable interface**

**1\. Extending Thread class**

ၼႆႉတေႉၵေႃႈ ႁဝ်းၶူင်သၢင်ႈ class မႂ်ႇမႂ်ႇဢၼ်ၼိုင်ႈႁေ ၶိုၼ်းႁႂ်ႈမၼ်း extends Thread ၼၼ်ႉယဝ်ႉ။ ယဝ်ႉၵေႃႈ ၶိုၼ်း override ပၼ် run() method ဢၼ်မီးဝႆႉ တီႈၼႂ်းမၼ်းယဝ်ႉ။

သင်ႁဝ်း ၶူင်သၢင်ႈယဝ်ႉ Thread object ႁဝ်းၼႆၸိုင် ၶိုၼ်းႁွင်ႉပၼ် start() method မၼ်းၼႆၵေႃႈ လႆႈယဝ်ႉ။ တီႈၼႆႈ ဢၼ်ႁဝ်း ႁွင်ႉၸႂ်ႉ start() ၼႆႉ မၼ်းပွင်ႇဝႃႈ ႁဝ်းဢဝ် ၼႃႈၵၢၼ်ႁဝ်းၼၼ်ႉ ၶိုၼ်းယိုၼ်ႈဢၢပ်ႈပၼ် Thread မႂ်ႇမႂ်ႇႁဝ်းၼႆဢိူဝ်ႈ။ သင်ၵႂႃႇႁွင်ႉ run() method ၼႆတေႉ မၼ်းတေ ဢမ်ႇဢၢပ်ႈပၼ်ႁေ main thread ႁဝ်းၵူၺ်း တေႁဵတ်းၵၢၼ်ၵႂႃႇ။

###### လၢႆးၶူင်သၢင်ႈ

```
public class WorkerThread extends Thread {
    public void run() {
        for (int i = 0; i < 10; i ++) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
Thread th = new WorkerThread();
th.start();
```