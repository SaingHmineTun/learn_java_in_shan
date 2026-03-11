
## **Java Basic 77**

#### **NOTEPAD PROJECT**

Link - <https://youtu.be/8Kb8vGFT1Hw>

#### ထုၵ်ႇလီပဵၼ် 81 သေတႃႉ မိူဝ်ႈထႆႇဝီးတီးဢူဝ်းၼၼ်ႉ တူၵ်းလိုမ်းပႅတ်ႈလႄႈ ၸင်ႇဝႃႈပဵၼ်ဝႆ့ 77 ယဝ်ႉ။


တီႈတွၼ်ႈၼႆႉ တေၸႂ်ႉတိုဝ်း BufferedReader လႄႈ BufferedWriter သေ တႅမ်ႈၼႄ Notepad ဢၼ်ၼိုင်ႈ။ ပရူဝ်ႇၵရမ်ႇႁဝ်းၼႆႉ ပေႃး run ၵႂႃႇၼႆ မၼ်းတေႁႂ်ႈႁဝ်းလိူၵ်ႈ 3 ဢၼ်ၼႆႉ။

- **လူလိၵ်ႈ**
- **တႅမ်ႈလိၵ်ႈ**
- **ဢွၵ်ႇ**

ပေႃးသႂ်ႇ 1 တီႈ console ၼႆ မၼ်းတေလူပၼ်လိၵ်ႈၵႂႃႇ။ ပေႃးသမ်ႉ သႂ်ႇ 2 ၼႆသမ်ႉ တေထၢမ် ႁႂ်ႈတႅမ်ႈလိၵ်ႈ တီႈ Console ယဝ်ႉ။ လူလိၵ်ႈယဝ်ႉၵေႃႈလီ၊ တႅမ်ႈလိၵ်ႈယဝ်ႉၵေႃႈလီ မၼ်းၶိုၼ်းတေမႃး ၼႄပၼ်ၶိုၼ်း 1, 2, 3 ၶိုၼ်းၵူၺ်းလႄႈ ပေႃးၼဵၵ်ႉပၼ် 3 မၼ်းၸင်ႇႁႂ်ႈ ပရူဝ်ႇၵရမ်ႇႁဝ်း ၵိုတ်ႉႁဵတ်းၵၢၼ်ယဝ်ႉ။

###### Code for Notepad Project

```
public class Main {
    public static void main(String[] args) {
        String message = """
            Please choose your action
            1. Read file
            2. Write file
            3. Exit
            """;
        Scanner scanner = new Scanner(System.in);
        boolean exit = false;
        while (!exit) {
            System.out.println(message);
            File file = new File("MyFile.txt");
            int num = scanner.nextInt();
            switch (num) {
                case 1 -> readFile(file);
                case 2 -> writeFile(file);
                case 3 -> exit = true;
                default -> System.out.println("Please enter valid number!");
            }
        }
    }

    private static void writeFile(File file) {
        try {
            BufferedWriter writer = new BufferedWriter(new FileWriter(file));
            System.out.println("Please write down your note here!");
            Scanner sc = new Scanner(System.in);
            String line = sc.nextLine();
            writer.append(line);
            writer.close();
        } catch (IOException e) {
            System.out.println("Cannot write file");
        }
    }

    private static void readFile(File file) {
        try {
            BufferedReader reader = new BufferedReader(new FileReader(file));
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
            reader.close();
        } catch (FileNotFoundException e) {
            System.out.println("File not found");
        } catch (IOException e) {
            System.out.println("Cannot read file");
        }
    }
}
```
