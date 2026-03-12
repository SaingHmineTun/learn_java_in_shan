
## 29) Match Case Statements

လုၵ်ႉတီႈ python 3.1 သေၵေႃႈ ၸင်ႇမီးမႃး match - case statement ၼႆႉယဝ်ႉ။ မၼ်းၵေႃႈပဵၼ် conditional statement ၼင်ႇၵဝ်ႇ။ ၵူၺ်းမၼ်းတေ ဢမ်ႇၸႂ်ဝႃႈ ႁဵတ်ႉၵၢၼ်ၸွမ်း boolean လၢႆလၢႆ။ လၢႆးႁဵတ်ႉၵၢၼ်မၼ်းတေႉၵေႃႈ မၼ်းတေတႅၵ်ႊလိူင်း ၵႃႊၶၼ်ၵမ်းဢၼ်ဢၼ်သေ သင်ထုၵ်ႇမႅၼ်ႈၵေႃႈ ၶဝ်ႈႁဵတ်ႉၵၢၼ် ယဝ်ႉ။ တီႈ if ၼႆႉ သင်ၸိူဝ်ႉ statements တီႈၼိူဝ် ဢမ်ႇထုၵ်ႇမႅၼ်ႈသေဢၼ်ၼႆ မၼ်းတေမီးဝႆႉ "else" လႄႈ တီႈ match ၼႆႉသမ်ႉ မၼ်းတေမီးဝႆႉ case _ ယဝ်ႉ။ တီႈၼႆႈ ႁဝ်းၸႂ်ႉတိုဝ်း underscore ဢိူဝ်ႈ။

```
num = int(input("Enter a number between 1 and 3: "))
match num:
    case 1:
        print("One")
    case 2:
        print("Two")
    case 3:
        print("Three")
    case _:
        print("Number not between 1 and 3")
```

**Match Case with OR**

သင်ႁဝ်း ၶႆႈၸႅတ်ႈတူၺ်း ၵႃႊၶၼ် လၢႆလၢႆဢၼ် တီႈ case ဢၼ်လဵဝ်ၵူၺ်းၼႆ ႁဝ်းၸႂ်ႉလႆႈ | operator ယဝ်ႉ။

```
match num:
    case 1 | 2:
        print("One or Two")
    case 3 | 4:
        print("Three or Four")
    case 5 | 6:
        print("Five or Six")
    case _:
        print("Number not between 1 and 6")
```