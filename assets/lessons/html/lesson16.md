## Lesson 16: The Hierarchy of Headings

Think of headings like a nested outline for a book. Each level indicates how "deep" or specific a section is compared to the main topic.

* **`<h1>`**: The **Grand Title**. There should usually be only one per page.
* **`<h2>`**: Major **Chapters** or sections.
* **`<h3>`**: **Sub-sections** within an `<h2>`.
* **`<h4>`** to **`<h6>`**: Further **fine-grained details** within sub-sections.

### 1. Visual Comparison

By default, browsers render them in decreasing order of size and boldness:

```html
<h1>Heading 1 (The Largest)</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6 (The Smallest)</h6>

```

### 2. Why the Order Matters

While you *can* use all six, the order is crucial for two main reasons:

* **Accessibility:** People who use screen readers rely on these tags to navigate. If you jump from `<h1>` to `<h3>`, it confuses the software and the user.
* **SEO (Search Engines):** Google uses headings to understand the structure and importance of your content. `<h1>` is the most important "keyword" signal for the entire page.

### 3. Practical Example (Shan Language Context)

Here is how you would use them to organize a lesson about Shan culture:

```html
<h1>ၾိင်ႈထုင်းတႆး (Shan Culture)</h1> 
<h2>ပွႆးသွၼ်းၼမ်ႉ (Songkran Festival)</h2> 
<h3>လၢႆးႁၢင်ႈႁႅၼ်း (Preparation)</h3> 
<h4>ၵၢၼ်ႁဵတ်းၶဝ်ႈမုၼ်း (Making Snacks)</h4> 
<h2>လွင်ႈၼုင်ႈဝႆ (Traditional Dress)</h2> 
```

---

#### Pro Tip
Don't choose a heading tag just because of how it **looks** (e.g., choosing `<h4>` because you want small text). Use the tag for its **meaning**, and use **CSS** later to change the size or color to your liking.
---