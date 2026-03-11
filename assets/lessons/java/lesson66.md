
## **Java Basic 66**

#### **IMPLEMENTING RUNNABLE INTERFACE**

Link - <https://youtu.be/4Sea-\_ZErIc>

**2\. Implementing Runnable interface**

Runnable ၼႆႉမၼ်းဢမ်ႇၸႂ် Thread ။ မၼ်းပဵၼ် interface ဢၼ်ႁဝ်းတေ သူင်ႇပၼ်လႆႈတီႈ Thread constructor ၵူၺ်းဢိူဝ်ႈ။

###### လၢႆးၶူင်သၢင်ႈ

```
public class WorkerThread implements Runnable {
    public void run() {
        for (int i = 0; i < 10; i++) {
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
Thread thread = new Thread(new WorkerThread());
thread.start();
```

လွင်ႈလီ ဢၼ်ၸႂ်ႉတိုဝ်း Runnable interface တေႉၵေႃႈ ႁဝ်းတေႁွင်ႉၸႂ်ႉၸွမ်း Anonymous class ၵေႃႈလႆႈယဝ်ႉ။ ၵွပ်ႈမၼ်းပဵၼ် Functional Interface လႄႈ ႁဝ်းၸႂ်ႉၸွမ်း lambda expression ၵေႃႈလႆးဢိူဝ်ႈ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
Thread thread2 = new Thread(() -> {
    int i = 0;
    while (true) {
        try {
            Thread.sleep(1000);
            System.out.println(i++);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
});
thread2.start();
```