
## **Java Basic 68**

#### **THREAD SYNCHRONIZATION**

Link - <https://youtu.be/CUPjT97h-0o>

သင်ၸိူဝ်ႉ ႁဝ်းမီး Thread ဝႆႉတၢင်းၼမ်ႁေ Thread ၸိူဝ်းၼၼ်ႉသမ်ႉ မူၼ်ႉမႄး resource ဢၼ်လဵဝ်ၵူၺ်းၼႆၸိုင် ၵွပ်ႈ Thread ၸိူဝ်းၼၼ်ႉ ဢၼ်ယဝ်ႉဢၼ် ၶဝ်ဢမ်ႇႁူႉၵၼ်ၼႆလႄႈ တေၸၢင်ႊမီး လွင်ႈဢၼ်ဝႃႈ Unsync error ၼႆယဝ်ႉ။ လွင်ႈၼႆႉ ႁဝ်းၸႂ်ႉတိုဝ်း Synchronization သေ ၵႄႈလိတ်ႈလႆႈဢိူဝ်ႈ။

တႃႇၸႂ်ႉတိုဝ်း Synchronization ၼႆႉ မၼ်းတေမီးဝႆႉယူႇ 2 လၢႆး

- **ၸႂ်ႉတိုဝ်း synchronized method**
- **ၸႂ်ႉတိုဝ်း synchronized block ယဝ်ႉ။**

**1\. synchronized method**

ၼႆႉသမ်ႉ ႁဝ်းဢဝ် method တၢင်းဢၼ် ႁဵတ်ႉပဵၼ် sync ပႅတ်ႈယဝ်ႉ။

**2\. synchronized block**

ၼႆႉသမ်ႉ ႁဝ်းဢဝ် ၶူတ်ႉဢၼ်တႅမ်ႈဝႆႉ တီႈၼႂ်း block မၼ်းၵူၺ်း ႁဵတ်ႉပဵၼ် sync

တီႈတေႉ ပေႃးသမ်ႉ ႁဝ်းဢဝ် code ၵူႊထႅဝ် ႁဵတ်ႉပဵၼ် sync ၼႆ မၼ်းတေႁႂ်ႈ Performance ပရူဝ်ႇၵရမ်ႇႁဝ်းၼၼ်ႉ ထိူင်းၵႂႃႇဢိူဝ်ႈ။ လၢႆးႁဵတ်ႉၵၢၼ် synchronized ၼႆႉ ပေႃးႁဝ်းႁွင်ႉၸႂ်ႉ ၶူတ်ႉမၼ်းၼႆ မၼ်းတေ Lock ပႅတ်ႈယဝ်ႉ၊ ပွင်ႇဝႃႈ Thread တၢင်ႇဢၼ် တေဢမ်ႇၸၢင်ႊ ၶဝ်ႈမူၼ်ႉမႄးလႆႈယဝ်ႉ။ သင်မၼ်းႁဵတ်ႉ update ယဝ်ႉ ၸင်ႇ unlock ၶိုၼ်းယဝ်ႉ။ Thread ဢၼ်ယဝ်ႉဢၼ် မၼ်းမိူၼ်ၼင်ႇဝႃႈ ပႂ်ႉၵၼ်ဝႆႉယဝ်ႉ။ ၵွပ်ႈၼႆလႄႈ ပေႃးတႅၵ်ႈလိူင်းၵၼ်တၢင်း method ယူဝ်းယူဝ်းၼႆၸိုင် မၼ်းလႆႈႁဵတ်ႉၵၢၼ် ၼမ်တိူဝ်းဝႆႉၼႆလႄႈ ၸင်ႇဝႃႈ Performance မၼ်းၼၼ်ႉ ထိူင်းၵႂႃႇယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
int counter = 0;
// Using synchronized method
private synchronized void increaseCounter() {
    counter++;
}

// Using synchronized block
private void incCounter() {
    synchronized (this) {
        counter++;
    }
}
```