### **Lesson 52: Utility Types (Partial, Pick, and Omit)**

TypeScript မီး "ၶိူင်ႈၵျၢပ်ႈဝိသဵတ်ႇ" (Utility Types) ဢၼ်သၢင်ႈဝႆႉပၼ်ယဝ်ႉ (Built-in) တႃႇၸွႆးႁႂ်ႈႁဝ်း "မႄးလၢႆႈ" Interface ဢၼ်မီးဝႆႉယဝ်ႉ ႁႂ်ႈပဵၼ်ၸိူဝ်ႉမႂ်ႇ လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈမႂ်ႇတင်းသဵၼ်ႈၶႃႈ။ ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးတူၺ်း 3 တူဝ် ဢၼ်ၸႂ်ႉၼမ်သုတ်းၶႃႈ။

သမုၵ်ႉဝႃႈ ႁဝ်းမီး Interface ဢၼ်ပဵၼ် **Todo** ၼႆႉဝႆႉၶႃႈ:

```typescript
interface Todo {
  title: string;
  description: string;
  completed: boolean;
}
```

-----

#### **1. Partial\<T\>**

`Partial` တေလႅၵ်ႈ Property တင်းသဵၼ်ႈၼႂ်း Interface ႁႂ်ႈပဵၼ် **Optional** (`?`) တင်းသဵၼ်ႈၶႃႈ။ ၵႆႉၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈ "Update" ၶေႃႈမုၼ်းမၢင်တွၼ်ႈၵူၺ်းၶႃႈ။

```typescript
function updateTodo(todo: Todo, fieldsToUpdate: Partial<Todo>) {
  return { ...todo, ...fieldsToUpdate };
}

const myTodo: Todo = { title: "Learn TS", description: "Module 9", completed: false };

// ✅ OK: သူင်ႇၵႂႃႇၵူၺ်း title ၵေႃႈလႆႈ ယွၼ်ႉ Partial ႁဵတ်းႁႂ်ႈၵူႈတူဝ်ပဵၼ် Optional ယဝ်ႉ
updateTodo(myTodo, { title: "Master TS" });
```

-----

#### **2. Pick\<T, Keys\>**

`Pick` ၸွႆးႁႂ်ႈႁဝ်း "လိူၵ်ႈ" (Select) ဢဝ်ၵူၺ်း Property ဢၼ်ႁဝ်းၶႂ်ႈလႆႈ တီႈၼႂ်း Interface ဢၼ်ယႂ်ႇၼၼ်ႉၶႃႈ။

```typescript
// လိူၵ်ႈဢဝ်ၵူၺ်း title လႄႈ completed
type TodoPreview = Pick<Todo, "title" | "completed">;

const preview: TodoPreview = {
  title: "Clean Room",
  completed: false
  // description: "..." // ❌ Error: description ဢမ်ႇမီးၼႂ်း TodoPreview
};
```

-----

#### **3. Omit\<T, Keys\>**

`Omit` ပဵၼ်ၽၢႆႇသၢၼ်ၶတ်းတင်း Pick ၶႃႈ။ မၼ်းတေ "ထွၼ်ပႅတ်ႈ" (Remove) Property ဢၼ်ႁဝ်းဢမ်ႇၶႂ်ႈလႆႈ သေ ဢဝ်တူဝ်ဢၼ်ၵိုတ်းဝႆႉၼၼ်ႉ သၢင်ႈပဵၼ် Type မႂ်ႇၶႃႈ။

```typescript
// ထွၼ်ပႅတ်ႈ description (ဢဝ်ၵူၺ်း title လႄႈ completed)
type TodoWithoutDescription = Omit<Todo, "description">;

const todo: TodoWithoutDescription = {
  title: "Buy Milk",
  completed: true
};
```

-----

#### **4. Summary Checklist**

- [ ] ၸႂ်ႉ `Partial<T>` မိူဝ်ႈၶႂ်ႈႁႂ်ႈၵူႈ Property ပဵၼ် Optional (တွၼ်ႈတႃႇ Update)။
- [ ] ၸႂ်ႉ `Pick<T, "key1" | "key2">` မိူဝ်ႈၶႂ်ႈလိူၵ်ႈဢဝ်ၵူၺ်းမၢင်တူဝ်။
- [ ] ၸႂ်ႉ `Omit<T, "key1">` မိူဝ်ႈၶႂ်ႈထွၼ်ပႅတ်ႈမၢင်တူဝ် ဢၼ်ဢမ်ႇလူဝ်ႇၸႂ်ႉ။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Utility Types ၸွႆးႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Interface သမ်ႉၵၼ် (DRY - Don't Repeat Yourself)။

-----
