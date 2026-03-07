
## **Java Basic 27**

#### **NESTED FOR LOOP**

Link - <https://youtu.be/2QDhsVM_RS4>

Nested for loop ၼႆႉမၼ်းၵေႃႈတေမိူၼ် nested if ၵူၺ်းၼင်ႇၵဝ်ႇ။ ပွင်ႇဝႃႈ ႁဝ်းမႃးသႂ်ႇ for loop တီႈၼႂ်း for loop ထႅင်ႈ။ nested ၼႆႉ ဢမ်ႇၸႂ်ႈဝႃႈ ၸႂ်ႉတိုဝ်းၸွမ်းလႆႈ if လႄႈ for ၵူၺ်း၊ ႁဝ်းၶႆႈၸႂ်ႉၸွမ်း while, do-while, switch ၸိူဝ်းၼႆႉၵေႃႈလႆႈဢိူဝ်ႈ။ Code ဢၼ်ၼႄဝႆႉၼႆႉ ပဵၼ်လၢႆးဢၼ်ႁဝ်းပၼ်ႇ 2D Array သေ ဢွၵ်ႇၼႄပၼ်ၵႃႊၶၼ် ဢၼ်လႆႈသႂ်ႇဝႆႉၼႂ်းမၼ်းယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
int[][] table = {{1, 2, 3, 4, 5}, {10, 30, 50}, {20, 40, 60, 80}};
for (int i = 0; i < table.length; i++) {
    int[] row = table[i];
    for (int column: row) {
        System.out.print(column + " ");
    }
    System.out.println();
}
```