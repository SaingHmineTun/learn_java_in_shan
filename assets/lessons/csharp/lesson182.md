# Lesson 182: "Dictionary Operations"

တႃႇတေတႅမ်ႈ Code ႁႂ်ႈမၼ်ႈၼိမ် (Robust)... ႁဝ်းလူဝ်ႇၸႂ်ႉ Method ၸိူဝ်းၼႆႉ တႃႇၵူတ်ႇထတ်းၶေႃႈမုၼ်းဢွၼ်တၢင်းၶႃႈ။

### 1\. ၵၢၼ်ၵူတ်ႇထတ်း Key (ContainsKey)

ဢွၼ်တၢင်းတေဢဝ် Value ဢွၵ်ႇမႃးၸႂ်ႉ... ႁဝ်းထုၵ်ႇလီထတ်းတူၺ်းဝႃႈ "မီး Key ၼႆႉယူႇႁႃႉ?" ၼႆၶႃႈ။

```csharp
Dictionary<string, int> scores = new Dictionary<string, int> { { "Sai Mao", 100 } };

if (scores.ContainsKey("Nang Mo")) {
    Console.WriteLine(scores["Nang Mo"]);
} else {
    Console.WriteLine("Key not found!");
}
```

### 2\. လၢႆးႁႃဢၼ်လွတ်ႈၽေး (TryGetValue)

ၼႆႉပဵၼ်လၢႆးဢၼ် Professional ၶဝ်ၸႂ်ႉၼမ်သုတ်းၶႃႈ။ မၼ်းတေ "ၸၢမ်းႁႃ" ၵမ်းလဵဝ်။ သင်ႁၼ်... မၼ်းတေသူင်ႇ Value ဢွၵ်ႇမႃး၊ သင်ဢမ်ႇႁၼ်... မၼ်းတေဢမ်ႇ Crash ၶႃႈ။

```csharp
if (scores.TryGetValue("Sai Mao", out int result)) {
    Console.WriteLine($"Score is: {result}");
}
```

### 3\. ၵၢၼ် Loop တူၺ်း Keys လႄႈ Values

မၢင်ပွၵ်ႈႁဝ်းလူဝ်ႇဢဝ် "ၸိုဝ်ႈ Key တင်းမူတ်း" ဢမ်ႇၼၼ် "ၵႃႈၶၼ် Value တင်းမူတ်း" မႃးၼႄၶႃႈ။

* **`.Keys`**: သူင်ႇဢွၵ်ႇမႃးပဵၼ်သဵၼ်ႈမၢႆ Keys တင်းမူတ်း။
* **`.Values`**: သူင်ႇဢွၵ်ႇမႃးပဵၼ်သဵၼ်ႈမၢႆ Values တင်းမူတ်း။

<!-- end list -->

```csharp
// Loop တူၺ်း Keys တင်းမူတ်း
foreach (string name in scores.Keys) {
    Console.WriteLine($"Name: {name}");
}

// Loop တူၺ်း Values တင်းမူတ်း
foreach (int score in scores.Values) {
    Console.WriteLine($"Score: {score}");
}
```

### 4\. ၵၢၼ်လူတ်ႇပႅတ်ႈ (Remove)

ႁဝ်းၸႂ်ႉ **`.Remove(key)`** တႃႇလူတ်ႇပႅတ်ႈ Data ဢၼ်ၵွင်ႉၵၢႆႇတင်း Key ၼၼ်ႉၶႃႈ။

```csharp
scores.Remove("Sai Mao"); // လူတ်ႇပႅတ်ႈတင်း Key လႄႈ Value
```

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **KeyNotFoundException:** Error ဢၼ်ဢွၵ်ႇမႃး မိူဝ်ႈႁဝ်းႁွင်ႉ Key ဢၼ်ဢမ်ႇမီးဝႆႉ။
* **Output Parameter (`out`):** Keyword ဢၼ်ၸႂ်ႉတႃႇသူင်ႇၵႃႈၶၼ်ဢွၵ်ႇမႃးလုၵ်ႉတီႈ Method (`TryGetValue`)။
* **Collection View:** ၵၢၼ်တူၺ်းၶေႃႈမုၼ်း ၸႅၵ်ႇပဵၼ်ၸုမ်း (မိူၼ်ၼင်ႇ .Keys ဢမ်ႇၼၼ် .Values)။
* **Robustness:** လွင်ႈမၼ်ႈၼိမ်ၶွင် Code ဢၼ်ႁႄႉၵၢင်ႈ Error လႆႈလီ။

-----