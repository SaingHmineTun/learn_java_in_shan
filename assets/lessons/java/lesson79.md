
## **Java Basic 75**

#### **READ FILE FROM TXT**

Link - <https://youtu.be/\_RiHF_JFJxw>

#### ထုၵ်ႇလီပဵၼ် 79 သေတႃႉ မိူဝ်ႈထႆႇဝီးတီးဢူဝ်းၼၼ်ႉ တူၵ်းလိုမ်းပႅတ်ႈလႄႈ ၸင်ႇဝႃႈပဵၼ်ဝႆ့ 75 ယဝ်ႉ။


လၢႆးလူလိၵ်ႈ ဢၼ်တႅမ်ႈဝႆႉတီႈ text file ၼႆႉ မီးတၢင်းၼမ်။ တီႈ Java ၵေႃႈ မီး Library တၢင်းၼမ်ယဝ်ႉ။ တီႈတွၼ်ႈၼႆႉ တေၸႂ်ႉ 2 လၢႆးၼႆႉသေ ၼႄပၼ်ၵႂႃႇ။

**1\. Buffered Reader**

သင်ၸႂ်ႉမၼ်းၼႆၸိုင် တီႈ constructor မၼ်းၼၼ်ႉ ဢမ်ႇႁပ်ႉၶၢမ်ႇ File ၊ မၼ်းၵူၺ်း ႁပ်ႉဝႆႉ Reader interface ၵူၺ်းဢိူဝ်ႈ။ ၵွပ်ႈၼႆ ႁဝ်းၶိုၼ်းတေလႆႈၶူင်ထႅင်ႈ File Reader တႃႇၸႂ်ႉၸွမ်းမၼ်းလႆႈယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String path = "input.txt";
File file = new File(path);
try {
    BufferedReader reader = new BufferedReader(new FileReader(file));
    String line;
    while ((line = reader.readLine()) != null) {
        System._out_.println(line);
    }
    reader.close();
} catch (FileNotFoundException e) {
    System._out_.println("Selected file not found");
} catch (IOException e) {
    System._out_.println("Cannot read line");
}
```

**2\. Scanner**

Scanner ၼႆႉတေႉ ၸႂ်ႉငၢႆႊလိူဝ်တိူဝ်းဢိူဝ်ႈ။ ၵွပ်ႈၼႂ်း constructor မၼ်းၼၼ်ႉ မီးဢၼ်ယွၼ်းဝႆႉ File ယဝ်ႉ။ ယဝ်ႉၵေႃႈ ႁဝ်းၶိုၼ်းႁွင်ႉ hasNextLine() တႃႇၸွပ်ႇဝႃႈ ၸွင်ႇမီးထႅင်ႈထႅဝ်ၼိုင်ႈႁေ ႁွင်ႉၸႂ်ႉ nextLine() တႃႇၼႄပၼ်လိၵ်ႈ ၵမ်းထႅဝ်ယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String path = "input.txt";
File file = new File(path);
Scanner scanner = new Scanner(file);
while (scanner.hasNextLine()) {
    System._out_.println(scanner.nextLine());
}
scanner.close();
```