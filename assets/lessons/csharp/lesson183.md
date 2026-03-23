# Lesson 183: "The HashSet\<T\> Collection"

**`HashSet<T>`** ပဵၼ် Collection ဢၼ်သိမ်းၶေႃႈမုၼ်းပဵၼ်ၸုမ်း (Set)။ မၼ်းမီးပၵ်းၵၢၼ်ဢၼ်ၼိုင်ႈဝႃႈ: **"မၼ်းတေဢမ်ႇသိမ်းၶေႃႈမုၼ်း တူဝ်ဢၼ်မိူၼ်ၵၼ် (Duplicate) ဝႆႉသွင်ပွၵ်ႈၶႃႈ။"**

### 1\. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉ HashSet?

ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းမီးသဵၼ်ႈမၢႆ "မၢႆၾူၼ်း" 1,000 မၢႆ။ ၵူၺ်းၵႃႈ မၢင်မၢႆမၼ်းသမ်ႉမိူၼ်ၵၼ်။ သင်ၶူးၸႂ်ႉ `List<string>`... မၼ်းတေသိမ်းဝႆႉတင်းမူတ်း။ ၵူၺ်းၵႃႈ သင်ၶူးၸႂ်ႉ **`HashSet<string>`**... မၼ်းတေလိူၵ်ႈဢဝ် "မၢႆဢၼ်ပႅၵ်ႇၵၼ်" တူဝ်လဵဝ်ၵူၺ်းၶႃႈ။

### 2\. ၵၢၼ်သၢင်ႈ (Declaration)

```csharp
// သၢင်ႈ HashSet တႃႇသိမ်း ID လုၵ်ႈႁဵၼ်း (int)
HashSet<int> studentIds = new HashSet<int>();
```

### 3\. ၵၢၼ်ထႅမ်ၶေႃႈမုၼ်း (Adding Data)

မိူဝ်ႈႁဝ်းၸႂ်ႉ **`.Add()`**... HashSet တေသူင်ႇ `true` ဢွၵ်ႇမႃး သင်မၼ်းထႅမ်လႆႈ၊ သေတေသူင်ႇ `false` မႃး သင်ၶေႃႈမုၼ်းၼၼ်ႉမီးဝႆႉယဝ်ႉၶႃႈ။

```csharp
studentIds.Add(101); // true
studentIds.Add(102); // true
studentIds.Add(101); // false (ယွၼ်ႉ 101 မီးဝႆႉယဝ်ႉ၊ မၼ်းတေဢမ်ႇထႅမ်ၶဝ်ႈ)
```

### 4\. လွင်ႈပႅၵ်ႇပိူင် ၼႂ်းၵႄႈ List လႄႈ HashSet

| Feature | List\<T\> | HashSet\<T\> |
| :--- | :--- | :--- |
| **Duplicates** | ပၼ်မီးလႆႈ (Allowed) | **ဢမ်ႇပၼ်မီး** (Not Allowed) |
| **Order** | ၸွမ်းၼင်ႇဢၼ်ထႅမ်ၶဝ်ႈ (Ordered) | **ဢမ်ႇမၼ်ႈၼိမ်** (Unordered) |
| **Search Speed** | ၸႃႉ (Linear Search) | **ဝႆးၼႃႇ** (Hash-based Search) |
| **Access** | ၸႂ်ႉ Index `[0]` လႆႈ | **ၸႂ်ႉ Index ဢမ်ႇလႆႈ** |

### 5\. Mathematical Set Operations

HashSet ၼႆႉ Powerful ၼႃႇ ယွၼ်ႉမၼ်းႁဵတ်းၼႃႈတီႈ "Set" ၼႂ်းပၢႆးၼပ်ႉ (Mathematics) လႆႈၶႃႈ:

* **`UnionWith`**: ဢဝ်သွင်ၸုမ်းမႃးႁူမ်ႈၵၼ် (ဢမ်ႇဢဝ်တူဝ်မိူၼ်)။
* **`IntersectWith`**: ဢဝ်ၵူၺ်း "တူဝ်ဢၼ်မိူၼ်ၵၼ်" တင်းသွင်ၸုမ်း။
* **`ExceptWith`**: လူတ်ႇပႅတ်ႈတူဝ်ဢၼ်မီးၼႂ်းထႅင်ႈၸုမ်းၼိုင်ႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Duplicate:** ၶေႃႈမုၼ်း ဢၼ်မိူၼ်ၵၼ်။
* **Uniqueness:** လွင်ႈပႅၵ်ႇပိူင် ဢၼ်မီးတူဝ်လဵဝ်ၵူၺ်း။
* **Unordered:** ဢမ်ႇမီးလွင်ႈၸၼ်ထႅဝ် ၸွမ်းၼင်ႇ Index။
* **High Performance:** ၵၢၼ်ႁဵတ်းၵၢၼ် ဢၼ်ဝႆး (ယွၼ်ႉမၼ်းၸႂ်ႉ Hashing algorithm)။

-----