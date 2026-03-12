
## 33) Raise an exception

သင်ၸိူဝ်ႉ ၶူတ်ႉႁဝ်း ဢမ်ႇမႃးမိူၼ် ၵၢင်ၸႂ် ဢၼ်ႁဝ်းတုၵ်ႉယွၼ်းဝႆႉၼႆၸိုင် ႁဝ်းဢွၵ်ႇၼႄပၼ် exception ၵေႃႈလႆႈၵွၼ်ႇ။ ၼႆႉႁဝ်းၸႂ်ႉတိုဝ်း raise keyword သေ ပိုတ်ႈပၼ် exception ဢၼ်ႁဝ်း ၶႆႈၼႄဢွၵ်ႇပၼ်ယဝ်ႉ။ ၶူတ်ႉတီႈတႂ်ႈၼႆႉ သင်ၵႃႊၶၼ်မၼ်း ဢမ်ႇၸႂ် int ၼႆ ႁဝ်းပိုတ်ႈပၼ် TypeError ၶိုၼ်းယဝ်ႉ။

```
x = "hello"  
if not type(x) is int:  
    raise TypeError("Only integers are allowed")
```