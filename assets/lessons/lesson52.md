
## **Java Basic 52**

SEALED CLASS

Link - <https://youtu.be/ZvMoZ8Buz7g>

Sealed Class ၼႆႉတေႉ မၼ်းတေႁမ်ႉငၢႆးၵၼ်တၢင်း final class ယူႇ။ ပွင်ႇဝႃႈ ႁဝ်းတေႁဵတ်ႉ inherit မၼ်းဢမ်ႇလႆႈ။ ၵူၺ်းၵႃႊ တီႈ sealed class ၼႆႉ ႁဝ်းၶိုၼ်းမႃးၸႂ်ႉလႆႈ permits သေ class ဢၼ်ႁဝ်း ၶႆႈႁႂ်ႈ inherit ၼၼ်ႉ ႁဝ်းတႅမ်ႈပၼ်လႆႈယဝ်ႉ။

လိူဝ်သေ class ဢၼ်ပၼ်ၶႂၢင်ႉ permit ဝႆႉၼၼ်ႉ class တၢင်ႇဢၼ် တေမႃးႁဵတ်ႉ inherit ဢမ်ႇလႆႈ။ sealed class ၼႆႉ ၵိုၵ်းပႃးမႃးၸွမ်း JDK 17 လႄႈ တႃႇတေၸႂ်ႉတိုဝ်းမၼ်းၼၼ်ႉ ႁဝ်းတေလႆႈမီး JDK 17 ဢမ်ႇၼၼ် သုင်သေမၼ်းယဝ်ႉ။

sealed ၼႆႉ ၸႂ်ႉလႆႈၼိူဝ် class လၢႆလၢႆၵူၺ်း၊ ဢမ်ႇၸႂ်ႉလႆႈၼိူဝ် method လႄႈ global variable ။ ယဝ်ႉၵေႃႈ class ဢၼ်တေႁဵတ်ႉ extends sealed class ၼႆႉ တေလႆႈပဵၼ် final class ယဝ်ႉ။

လၢႆးၶူင်သၢင်ႈ Sealed Class

**public sealed class Parent permits Child { }**

လၢႆးႁဵတ်ႉ inherit Sealed Class

**public final class Child extends Parent{ }**