# Lesson 298: "CollectionView and High-Performance Lists"

### 1. CollectionView ပဵၼ်သင်?
**CollectionView** ပဵၼ် Control ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇၼႄသဵၼ်ႈမၢႆၶေႃႈမုၼ်း။ 
မၼ်းၵတ်ႉၶႅၼ်ႇလိူဝ် ListView (တူဝ်ၵဝ်ႇ) ယွၼ်ႉမၼ်းမီးပိူင်သၢင်ႈဢၼ် "ယိုတ်ႈလႆႈယွမ်းလႆႈ" (Flexible) လႄႈ ဝႆးလိူဝ်ၶႃႈ။

* **Virtualization:** မၼ်းတေ "သၢင်ႈ" (Render) Items ဢၼ် User တိုၵ်ႉႁၼ်ၼိူဝ်ၼႃႈၸေႃးၵူၺ်းၶႃႈ။ Items ဢၼ်ယူႇၽၢႆႇတႂ်ႈ ဢၼ်တိုၵ်ႉလူဝ်ႇပၼ်ႇ (Scroll) လူင်းၵႂႃႇၼၼ်ႉ မၼ်းတေဢမ်ႇပႆႇသၢင်ႈလႄႈ ၼႆႉႁဵတ်းႁႂ်ႈ App ဢမ်ႇၵိၼ် RAM ၼမ်ၶႃႈ။



### 2. သုၼ်ႇလမ်ႇလွင်ႈၶွင် CollectionView
တွၼ်ႈတႃႇၸႂ်ႉ CollectionView ႁဝ်းလူဝ်ႇႁူႉၸၵ်း 2 ပိူင်ၼႆႉၶႃႈ:
* **ItemsSource:** တီႈၵွင်ႉၸူး List ၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ `List<Student>`)။
* **ItemTemplate:** တီႈမၵ်းမၼ်ႈ "ႁၢင်ႈၽၢင်" ၶွင် Item ၼိုင်ႈဢၼ် (မိူၼ်ၼင်ႇ ၼႄႁၢင်ႈလုၵ်ႈႁဵၼ်းဝႆႉၽၢႆႇသၢႆႉ သေၼႄၸိုဝ်ႈဝႆႉၽၢႆႇၶႂႃ)။

**တူဝ်ယင်ႇ Code ၼႂ်း XAML:**
```xml
<CollectionView ItemsSource="{Binding Students}">
    <CollectionView.ItemTemplate>
        <DataTemplate>
            <Grid Padding="10">
                <Label Text="{Binding Name}" FontSize="18" FontAttributes="Bold" />
                <Label Text="{Binding Grade}" HorizontalOptions="End" />
            </Grid>
        </DataTemplate>
    </CollectionView.ItemTemplate>
</CollectionView>
```

### 3. Layout Styles (ၵၢၼ်ၼႄႁၢင်ႈလၢႆပိူင်)
CollectionView ဢမ်ႇၸႂ်ဝႃႈ ၸႂ်ႉလႆႈ တွၼ်ႈတႃႇထႅဝ်တင်ႈ (Vertical) ၵူၺ်းၶႃး။ မၼ်းၸၢင်ႈၼႄလႆႈ လၢႆလၢႆလၢႆးၶႃႈ:
* **Linear Items Layout:** ၼႄပဵၼ်ထႅဝ်တင်ႈ ဢမ်ႇၼၼ် ထႅဝ်ၼွၼ်း။
* **Grid Items Layout:** ၼႄပဵၼ်လွၵ်း (မိူၼ်ၼင်ႇ ၼႄၶႅပ်းႁၢင်ႈပဵၼ် 2-3 လွၵ်း ၼႂ်းၼႃႈၸေႃးလဵဝ်)။

---

### 4. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇ CollectionView?
1. **Performance:** App တေဢမ်ႇထိူင်း မိူဝ်ႈမီး Data ၼမ်။
2. **EmptyView:** သင်သဵၼ်ႈမၢႆဢမ်ႇမီး Data သင်ၼႆ ႁဝ်းၸၢင်ႈၼႄလိၵ်ႈဝႃႈ "ဢမ်ႇႁၼ်ၶေႃႈမုၼ်းၶႃႈ" ႁင်းၵူၺ်းမၼ်းလႆႈငၢႆႈငၢႆႈ။
3. **Selection:** ၸတ်းၵၢၼ်မိူဝ်ႈ User ၼဵၵ်း (Tap) လိူၵ်ႈ Item လႆႈငၢႆႈ (Single/Multiple Selection)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Virtualization:** ၵၢၼ်သၢင်ႈ UI သုၼ်ႇဢၼ် User ႁၼ်ၵူၺ်း တႃႇလူတ်းၵၢၼ်ၸႂ်ႉ RAM။
* **DataTemplate:** ပိူင်သၢင်ႈဢၼ်မၵ်းမၼ်ႈဝႃႈ Data ၼိုင်ႈဢၼ် တေၼႄႁၢင်ႈၸိူင်ႉႁိုဝ်။
* **Binding Context:** ၵၢၼ်ၵွင်ႉ Data လုၵ်ႉတီႈ Object တႄႉတႄႉ ၶဝ်ႈမႃးၼႂ်း UI။
* **EmptyView:** ၼႃႈတႃ UI ဢၼ်တေၼႄ မိူဝ်ႈ ItemsSource ပဝ်ႇဝႆႉ (ဢမ်ႇမီး Data)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈၼႄသဵၼ်ႈမၢႆ "ၶၢဝ်ႇတႆး" 1,000 ၶေႃႈလႄႈ ႁႂ်ႈ App လႅၼ်ႈဝႆးလီၼႆ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Controlသင်?
2. **ItemTemplate** ၼႂ်း CollectionView မီးၼႃႈၵၢၼ်သင်?