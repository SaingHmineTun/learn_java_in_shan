import '../utils/quiz.dart';
import '../utils/utils.dart';

const Map<int, String> cssTopics = {
  1: "Foundations of Style",
  2: "The Box Model",
  3: "Shan Typography & Color",
  4: "Positioning & Flexbox",
  5: "Grid Master",
  6: "Responsive Design",
  7: "Animations & Effects",
};
const Map<int, Map<int, String>> cssModules = {
  1: {
    1: "CSS Anatomy", // Selectors, Properties, and Values.
    2: "Linking Methods", // Inline, Internal, and External Stylesheets.
    3: "Selectors & ID/Class", // Targeting elements with precision.
    4: "The Cascade", // Specificity and Inheritance logic.
  },
  2: {
    5: "Box Model Core",
    // Content, Padding, Border, and Margin.
    6: "Box Sizing",
    // Content-box vs. Border-box (The "Broken" vs. "Fixed" box).
    7: "Display Property",
    // Block, Inline, and Inline-block behaviors.
    8: "Units of Measurement",
    // Fixed (px) vs. Relative (em, rem, %) sizing.
  },
  3: {
    9: "Web Fonts for Shan", // Importing Unicode fonts (NamKhone, PangLong).
    10: "Shan Text Styling", // Line-height, Letter-spacing, and Alignment.
    11: "Color Theory & Systems", // Hex, RGB, HSL and choosing "Shan" palettes.
    12: "Backgrounds & Gradients", // Solid colors vs. smooth transitions.
  },
  4: {
    13: "Static vs. Relative",
    // Staying in the flow vs. slight nudges.
    14: "Absolute & Fixed",
    // Breaking free from the flow and "sticky" elements.
    15: "Flexbox Basics",
    // The Parent (Flex Container) and its children.
    16: "Flex Alignment",
    // Centering everything perfectly (The Holy Grail).
  },
  5: {
    17: "Grid Fundamentals", // Defining the Grid (Rows & Columns).
    18: "Fractional Units (fr)", // The magic unit for flexible layouts.
    19: "Grid Areas", // Naming areas like 'header', 'sidebar', 'footer'.
    20: "Gap & Alignment", // Managing spacing and item placement.
  },
  6: {
    21: "The Viewport Meta Tag", // Telling the phone how to behave.
    22: "Media Query Syntax", // The "If" statement of CSS.
    23: "Mobile-First Design", // Building for the small screen first.
    24: "Breakpoints & Strategy", // Deciding when the layout should change.
  },
  7: {
    25: "CSS Transitions", // Smooth changes (hover effects).
    26: "Transforms (2D & 3D)", // Rotating, Scaling, and Moving.
    27: "Keyframe Animations", // Creating custom loops and movements.
    28: "Shadows & Glassmorphism", // Depth, blur, and modern visual flair.
  },
};
final Map<int, Lesson> cssLessons = {
  1: Lesson(1, 1),
  2: Lesson(1, 2),
  3: Lesson(1, 3),
  4: Lesson(1, 4),
  5: Lesson(2, 5),
  6: Lesson(2, 6),
  7: Lesson(2, 7),
  8: Lesson(2, 8),
  9: Lesson(3, 9),
  10: Lesson(3, 10),
  11: Lesson(3, 11),
  12: Lesson(3, 12),
  13: Lesson(4, 13),
  14: Lesson(4, 14),
  15: Lesson(4, 15),
  16: Lesson(4, 16),
  17: Lesson(5, 17),
  18: Lesson(5, 18),
  19: Lesson(5, 19),
  20: Lesson(5, 20),
  21: Lesson(6, 21),
  22: Lesson(6, 22),
  23: Lesson(6, 23),
  24: Lesson(6, 24),
  25: Lesson(7, 25),
  26: Lesson(7, 26),
  27: Lesson(7, 27),
  28: Lesson(7, 28),
};

final List<Quiz> cssQuizM1 = [
  // --- Topic 1: CSS Anatomy ---
  Quiz(1, "In the CSS rule 'h1 { color: red; }', which part is the selector?", [
    "h1",
    "color",
    "red",
    "{ color: red; }",
  ]),
  Quiz(2, "What is the combination of a property and a value called in CSS?", [
    "A declaration",
    "A selector",
    "A rule set",
    "An attribute",
  ]),
  Quiz(3, "Which character is used to separate a property from its value?", [
    ": (colon)",
    "; (semicolon)",
    ". (dot)",
    ", (comma)",
  ]),
  Quiz(4, "Which character is used to terminate a CSS declaration?", [
    "; (semicolon)",
    ": (colon)",
    "! (exclamation)",
    ". (period)",
  ]),
  Quiz(5, "In 'font-size: 16px;', what is '16px' known as?", [
    "Value",
    "Property",
    "Selector",
    "Declaration",
  ]),
  Quiz(6, "What surrounds a CSS declaration block?", [
    "Curly braces {}",
    "Parentheses ()",
    "Square brackets []",
    "Angle brackets <>",
  ]),
  Quiz(
    7,
    "Which part of the CSS anatomy points to the HTML element you want to style?",
    ["Selector", "Property", "Value", "Declaration"],
  ),
  Quiz(8, "Is CSS property case-sensitive by standard definition?", [
    "No",
    "Yes",
    "Only for colors",
    "Only for font names",
  ]),
  Quiz(9, "Which of the following is a valid CSS declaration?", [
    "color: blue;",
    "color = blue;",
    "color {blue}",
    "blue: color;",
  ]),
  Quiz(10, "What is the primary purpose of CSS?", [
    "To define the presentation and layout of a webpage",
    "To define the structure of a webpage",
    "To handle server-side logic",
    "To manage database connections",
  ]),

  // --- Topic 2: Linking Methods ---
  Quiz(
    11,
    "Which method involves placing CSS inside the 'style' attribute of an HTML element?",
    ["Inline CSS", "Internal CSS", "External CSS", "Imported CSS"],
  ),
  Quiz(12, "Where is the <style> tag typically placed for Internal CSS?", [
    "Inside the <head> section",
    "Inside the <body> section",
    "Before the <html> tag",
    "At the very end of the HTML file",
  ]),
  Quiz(13, "Which HTML tag is used to link an External CSS file?", [
    "<link>",
    "<style>",
    "<script>",
    "<css>",
  ]),
  Quiz(
    14,
    "What is the correct 'rel' attribute value when linking an external stylesheet?",
    ["stylesheet", "css", "style", "link"],
  ),
  Quiz(
    15,
    "Which linking method is best for maintaining a consistent look across multiple pages?",
    ["External CSS", "Inline CSS", "Internal CSS", "Attribute CSS"],
  ),
  Quiz(16, "What is the file extension for an external CSS file?", [
    ".css",
    ".html",
    ".style",
    ".js",
  ]),
  Quiz(17, "Does an external CSS file require <style> tags inside it?", [
    "No",
    "Yes",
    "Only if using variables",
    "Only for media queries",
  ]),
  Quiz(
    18,
    "Which attribute of the <link> tag specifies the path to the CSS file?",
    ["href", "src", "rel", "path"],
  ),
  Quiz(
    19,
    "Which method has the highest priority/specificity among the three main linking methods?",
    ["Inline CSS", "Internal CSS", "External CSS", "All have equal priority"],
  ),
  Quiz(20, "What is a disadvantage of using Inline CSS?", [
    "It makes HTML code messy and harder to maintain",
    "It is faster to load",
    "It cannot change colors",
    "Browsers do not support it",
  ]),

  // --- Topic 3: Selectors & ID/Class ---
  Quiz(21, "Which symbol is used to target a class in CSS?", [
    ". (dot)",
    "# (hash)",
    "* (asterisk)",
    "& (ampersand)",
  ]),
  Quiz(22, "Which symbol is used to target an ID in CSS?", [
    "# (hash)",
    ". (dot)",
    "! (exclamation)",
    "@ (at)",
  ]),
  Quiz(23, "Can a single HTML element have multiple classes?", [
    "Yes",
    "No",
    "Only if they are inside a div",
    "Only in CSS3",
  ]),
  Quiz(
    24,
    "How many times should a specific ID be used on a single HTML page?",
    ["Once", "Multiple times", "As many as needed", "Never"],
  ),
  Quiz(25, "Which selector targets all elements on a page?", [
    "* (universal selector)",
    "body",
    "html",
    "all",
  ]),
  Quiz(26, "How do you apply a class named 'highlight' to a <p> tag?", [
    "<p class='highlight'>",
    "<p id='highlight'>",
    "<p class='.highlight'>",
    "<p highlight>",
  ]),
  Quiz(
    27,
    "Which selector is more specific: a class selector or a tag selector?",
    [
      "Class selector",
      "Tag selector",
      "They are equal",
      "Depends on the browser",
    ],
  ),
  Quiz(
    28,
    "What happens if two different classes on the same element define the same property?",
    [
      "The one defined later in the CSS file wins",
      "The one defined first in the HTML attribute wins",
      "The browser crashes",
      "Neither style is applied",
    ],
  ),
  Quiz(29, "How do you select an element with ID 'header' in CSS?", [
    "#header",
    ".header",
    "header",
    "*header",
  ]),
  Quiz(30, "What is the purpose of a grouping selector (comma separated)?", [
    "To apply the same styles to multiple selectors at once",
    "To create a parent-child relationship",
    "To increase specificity",
    "To link external files",
  ]),

  // --- Topic 4: The Cascade & Specificity ---
  Quiz(31, "What does the 'C' in CSS stand for?", [
    "Cascading",
    "Creative",
    "Common",
    "Complex",
  ]),
  Quiz(32, "Which selector has the highest specificity score?", [
    "ID selector",
    "Class selector",
    "Tag selector",
    "Universal selector",
  ]),
  Quiz(33, "If two rules have the same specificity, which one is applied?", [
    "The one defined last in the CSS",
    "The one defined first in the CSS",
    "The one with the shorter name",
    "Neither",
  ]),
  Quiz(34, "What is the 'Cascade' in CSS?", [
    "The process of resolving conflicts between different CSS rules",
    "A type of layout model",
    "A way to animate images",
    "The way HTML tags are nested",
  ]),
  Quiz(
    35,
    "Which keyword can be used to force a CSS property to take precedence?",
    ["!important", "!priority", "!force", "!override"],
  ),
  Quiz(36, "What is Inheritance in CSS?", [
    "The process by which child elements take some property values from their parents",
    "The ability to copy CSS files",
    "A way to use JavaScript in CSS",
    "The specificity of an ID selector",
  ]),
  Quiz(
    37,
    "Which of these properties is typically inherited by child elements?",
    ["color", "border", "margin", "padding"],
  ),
  Quiz(
    38,
    "What is the specificity weight usually assigned to a tag (element) selector?",
    ["0,0,0,1", "0,0,1,0", "0,1,0,0", "1,0,0,0"],
  ),
  Quiz(
    39,
    "What is the specificity weight usually assigned to a class selector?",
    ["0,0,1,0", "0,0,0,1", "0,1,0,0", "1,0,0,0"],
  ),
  Quiz(
    40,
    "What is the specificity weight usually assigned to an ID selector?",
    ["0,1,0,0", "0,0,1,0", "0,0,0,1", "1,0,0,0"],
  ),

  // --- Topic 5: General Review ---
  Quiz(41, "How do you select all <p> elements inside a <div>?", [
    "div p",
    "div.p",
    "div+p",
    "div > p",
  ]),
  Quiz(42, "Which selector targets only the direct children of an element?", [
    "> (child selector)",
    " (descendant selector)",
    "+ (adjacent sibling)",
    "~ (general sibling)",
  ]),
  Quiz(43, "What is the correct way to write a CSS comment?", [
    "/* comment */",
    "// comment",
    "",
    "# comment",
  ]),
  Quiz(44, "Which of these is NOT a valid way to link CSS?", [
    "Through a <script> tag",
    "Using <link> in <head>",
    "Using <style> in <head>",
    "Using the style attribute on an element",
  ]),
  Quiz(45, "What happens if a property is not supported by a browser?", [
    "The browser ignores that specific declaration",
    "The entire stylesheet is ignored",
    "The browser displays an error message",
    "The website fails to load",
  ]),
  Quiz(
    46,
    "How can you apply a style to elements with both class 'btn' and class 'large'?",
    [".btn.large", ".btn .large", ".btn, .large", ".btn+large"],
  ),
  Quiz(
    47,
    "Which selector selects an element that is being hovered by the mouse?",
    [":hover", ":active", ":focus", ":visited"],
  ),
  Quiz(48, "What is the specificity of the universal selector (*)?", [
    "0,0,0,0",
    "0,0,0,1",
    "0,0,1,0",
    "0,1,0,0",
  ]),
  Quiz(49, "Specificity is calculated based on what?", [
    "The types and number of selectors used in a rule",
    "The file size of the CSS",
    "The speed of the internet connection",
    "The order of HTML tags",
  ]),
  Quiz(50, "Why is !important generally discouraged in CSS?", [
    "It makes debugging and overriding styles very difficult",
    "It is not supported by Chrome",
    "It makes the file size too large",
    "It changes the font to Comic Sans",
  ]),
];
final List<Quiz> cssQuizM2 = [
  // --- Topic 5: Box Model Core (Content, Padding, Border, Margin) ---
  Quiz(
    51,
    "Which part of the CSS Box Model is the innermost layer where text and images appear?",
    ["Content", "Padding", "Border", "Margin"],
  ),
  Quiz(
    52,
    "Which property creates space inside an element, between the content and the border?",
    ["Padding", "Margin", "Outline", "Spacing"],
  ),
  Quiz(
    53,
    "Which property creates space outside of an element's border, pushing other elements away?",
    ["Margin", "Padding", "Border", "Gap"],
  ),
  Quiz(
    54,
    "If you set a background color on an element, which areas of the box model will it cover?",
    [
      "Content and Padding",
      "Content only",
      "Content, Padding, and Margin",
      "Margin only",
    ],
  ),
  Quiz(
    55,
    "Which of the following shorthand values sets the margin for Top: 10px, Right: 20px, Bottom: 30px, and Left: 40px?",
    [
      "margin: 10px 20px 30px 40px;",
      "margin: 10px 40px 30px 20px;",
      "margin: 40px 30px 20px 10px;",
      "margin: 10px 20px;",
    ],
  ),
  Quiz(
    56,
    "What happens when the top margin of one element and the bottom margin of another meet?",
    [
      "Margin Collapse (they merge into the larger of the two)",
      "Margin Addition (they add together)",
      "The browser ignores both margins",
      "The elements overlap completely",
    ],
  ),
  Quiz(
    57,
    "Which property allows you to specify the thickness, style, and color of an element's edge?",
    ["border", "outline", "stroke", "padding-style"],
  ),
  Quiz(
    58,
    "In the shorthand 'padding: 10px 20px;', what does the '20px' represent?",
    [
      "Left and Right padding",
      "Top and Bottom padding",
      "Right padding only",
      "All four sides",
    ],
  ),
  Quiz(59, "Can a margin have a negative value?", [
    "Yes",
    "No",
    "Only if the display is flex",
    "Only for the top margin",
  ]),
  Quiz(
    60,
    "Which box model layer is situated between the padding and the margin?",
    ["Border", "Content", "Outline", "Shadow"],
  ),

  // --- Topic 6: Box Sizing (Content-box vs. Border-box) ---
  Quiz(61, "What is the default 'box-sizing' value in CSS?", [
    "content-box",
    "border-box",
    "padding-box",
    "margin-box",
  ]),
  Quiz(
    62,
    "In 'content-box', if a box has a width of 100px and 20px of padding, what is its total rendered width?",
    ["140px (100 + 20 left + 20 right)", "100px", "120px", "80px"],
  ),
  Quiz(
    63,
    "Which 'box-sizing' value includes padding and border within the element's specified width and height?",
    ["border-box", "content-box", "inherit", "initial"],
  ),
  Quiz(
    64,
    "Why do developers often apply 'box-sizing: border-box' to all elements using the '*' selector?",
    [
      "To make layout sizing more intuitive and predictable",
      "To speed up browser rendering",
      "To prevent margins from collapsing",
      "To enable Flexbox automatically",
    ],
  ),
  Quiz(
    65,
    "In 'border-box' mode, if an element is 200px wide and you add 10px of border, how wide is the total box?",
    ["200px", "210px", "220px", "190px"],
  ),
  Quiz(
    66,
    "Which part of the box is NOT included in the width calculation even when using 'border-box'?",
    ["Margin", "Padding", "Border", "Content"],
  ),
  Quiz(
    67,
    "Which property is often called the 'Fixed' box model by developers?",
    ["border-box", "content-box", "standard-box", "fluid-box"],
  ),
  Quiz(
    68,
    "What property is used to change the box model calculation method?",
    ["box-sizing", "display", "sizing-mode", "model-type"],
  ),
  Quiz(
    69,
    "In the 'content-box' model, adding a 1px border to a 100% width element will likely cause what?",
    [
      "Horizontal scrollbars or overflow",
      "The border to appear inside the box",
      "The element to shrink",
      "The border to be invisible",
    ],
  ),
  Quiz(
    70,
    "True or False: 'border-box' is the modern standard for responsive web design.",
    ["True", "False", "Only for mobile devices", "Only for Safari browsers"],
  ),

  // --- Topic 7: Display Property ---
  Quiz(
    71,
    "Which 'display' value makes an element take up the full width of its container and start on a new line?",
    ["block", "inline", "inline-block", "none"],
  ),
  Quiz(
    72,
    "Which 'display' value allows elements to sit side-by-side but does NOT respect width or height properties?",
    ["inline", "block", "inline-block", "flex"],
  ),
  Quiz(
    73,
    "Which 'display' value allows elements to sit side-by-side AND respects width/height settings?",
    ["inline-block", "inline", "block", "list-item"],
  ),
  Quiz(74, "What happens to an element when you set 'display: none;'?", [
    "It is removed from the layout and takes up no space",
    "It becomes invisible but still takes up space",
    "It becomes transparent",
    "It moves to the top of the page",
  ]),
  Quiz(75, "Which of these elements is a 'block' element by default?", [
    "<div>",
    "<span>",
    "<a>",
    "<img>",
  ]),
  Quiz(76, "Which of these elements is an 'inline' element by default?", [
    "<span>",
    "<h1>",
    "<p>",
    "<ul>",
  ]),
  Quiz(
    77,
    "How do you make a vertical list (<li>) appear horizontally in a row using the display property?",
    [
      "display: inline;",
      "display: block;",
      "display: list-item;",
      "display: inherit;",
    ],
  ),
  Quiz(
    78,
    "What is the difference between 'display: none' and 'visibility: hidden'?",
    [
      "display: none removes the space; visibility: hidden keeps the space",
      "visibility: hidden removes the space; display: none keeps the space",
      "They are identical",
      "display: none only works on images",
    ],
  ),
  Quiz(
    79,
    "Which display property is the foundation for 1-dimensional layouts?",
    ["flex", "grid", "block", "table"],
  ),
  Quiz(80, "Can you set vertical margins on a standard 'inline' element?", [
    "No (it is ignored)",
    "Yes",
    "Only if it has a border",
    "Only in Internet Explorer",
  ]),

  // --- Topic 8: Units of Measurement ---
  Quiz(
    81,
    "Which unit is considered 'absolute' and does not change based on other elements?",
    ["px (pixels)", "em", "rem", "%"],
  ),
  Quiz(82, "The 'em' unit is relative to the font size of what?", [
    "The parent element",
    "The root (html) element",
    "The viewport width",
    "The browser default",
  ]),
  Quiz(83, "The 'rem' unit is relative to the font size of what?", [
    "The root (html) element",
    "The parent element",
    "The immediate container",
    "The screen resolution",
  ]),
  Quiz(84, "If the root font size is 16px, how many pixels is 2rem?", [
    "32px",
    "18px",
    "20px",
    "16px",
  ]),
  Quiz(85, "Which unit is relative to 1% of the width of the browser window?", [
    "vw",
    "vh",
    "vmin",
    "vmax",
  ]),
  Quiz(
    86,
    "Which unit is relative to 1% of the height of the browser window?",
    ["vh", "vw", "%", "em"],
  ),
  Quiz(87, "When using 'width: 50%;', what is the size relative to?", [
    "The width of the parent container",
    "The width of the screen",
    "The height of the parent",
    "The length of the text",
  ]),
  Quiz(
    88,
    "Which unit is best for accessibility, allowing font sizes to scale with user browser settings?",
    ["rem", "px", "cm", "pt"],
  ),
  Quiz(89, "What is '100vh' equal to?", [
    "The full height of the viewport",
    "100 pixels",
    "The full height of the parent",
    "The height of the document",
  ]),
  Quiz(90, "Which of these is a 'Relative' unit?", ["%", "in", "mm", "px"]),

  // --- Topic 9: General Module Review ---
  Quiz(
    91,
    "How do you center a block element horizontally within its parent?",
    [
      "margin: 0 auto;",
      "padding: center;",
      "display: center;",
      "align: middle;",
    ],
  ),
  Quiz(
    92,
    "Which property is used to prevent content from leaking out of its box?",
    ["overflow", "clip", "box-sizing", "display"],
  ),
  Quiz(
    93,
    "In the value 'padding: 5px 10px 15px;', what is the left padding?",
    ["10px (matches the right)", "5px", "15px", "0px"],
  ),
  Quiz(
    94,
    "True or False: An inline-block element can have a width and height.",
    ["True", "False", "Only if it contains text", "Only if it has no padding"],
  ),
  Quiz(
    95,
    "Which unit would you use to make a square that is always half the width of the screen?",
    ["50vw", "50vh", "50%", "50em"],
  ),
  Quiz(
    96,
    "What is the result of 'margin-top: 20px; margin-bottom: 20px;' on an 'inline' element?",
    [
      "No vertical space is created",
      "40px of vertical space",
      "20px of vertical space",
      "The element moves 20px up",
    ],
  ),
  Quiz(
    97,
    "Which property should you change to hide an element but keep its space in the layout?",
    ["visibility: hidden;", "display: none;", "opacity: 1;", "sizing: zero;"],
  ),
  Quiz(
    98,
    "If an element has 'width: 100px; padding: 10px; border: 5px solid; box-sizing: content-box;', what is its total width?",
    ["130px", "100px", "115px", "120px"],
  ),
  Quiz(99, "What is the main benefit of using 'rem' over 'px'?", [
    "Scalability and Accessibility",
    "It is easier to calculate",
    "It is supported by older browsers like IE6",
    "It makes colors brighter",
  ]),
  Quiz(
    100,
    "Which property defines the space between the content and the border?",
    ["padding", "margin", "outline", "gap"],
  ),
];
final List<Quiz> cssQuizM3 = [
  // --- Topic 9: Web Fonts for Shan ---
  Quiz(
    101,
    "Which CSS rule is used to import a custom font file like 'NamKhone.ttf'?",
    ["@font-face", "@import-font", "@web-font", "font-style: custom;"],
  ),
  Quiz(
    102,
    "When using Google Fonts, where is the <link> tag usually placed?",
    [
      "Inside the <head> section",
      "At the bottom of the <body>",
      "Inside the CSS file",
      "After the <html> tag",
    ],
  ),
  Quiz(103, "What is a 'fallback font' in a font-family list?", [
    "The font used if the primary font fails to load",
    "A font used only for bold text",
    "A font used for mobile devices only",
    "The default browser font",
  ]),
  Quiz(
    104,
    "Which property is used to apply a specific font name to an element?",
    ["font-family", "font-name", "font-type", "font-style"],
  ),
  Quiz(105, "Why is Unicode important for Shan web fonts like PangLong?", [
    "It ensures characters are displayed correctly across different devices",
    "It makes the font file size smaller",
    "It automatically translates text into English",
    "It is required for bold text",
  ]),
  Quiz(
    106,
    "Which font-family category is best for Shan script to ensure clean, modern looks?",
    ["sans-serif", "serif", "monospace", "cursive"],
  ),
  Quiz(107, "What does the 'src' attribute inside @font-face specify?", [
    "The URL or path to the font file",
    "The size of the font",
    "The name of the font",
    "The weight of the font",
  ]),
  Quiz(108, "What is a common web-safe font stack?", [
    "Arial, Helvetica, sans-serif",
    "NamKhone, PangLong, ttf",
    "Google, Web, Fonts",
    "Custom-Font, sans",
  ]),
  Quiz(109, "Which format is widely supported for web fonts?", [
    "woff2",
    "exe",
    "png",
    "mp3",
  ]),
  Quiz(110, "What happens if a font name has spaces, like 'Nam Khone'?", [
    "It must be wrapped in quotation marks",
    "It must be written as one word",
    "It cannot be used in CSS",
    "The spaces must be replaced with dots",
  ]),

  // --- Topic 10: Shan Text Styling ---
  Quiz(
    111,
    "Which property is most critical to prevent Shan 'tone marks' from overlapping between lines?",
    ["line-height", "letter-spacing", "text-align", "font-weight"],
  ),
  Quiz(
    112,
    "What is the recommended line-height for Shan script to ensure readability?",
    ["1.5 or 1.6", "1.0", "0.8", "5.0"],
  ),
  Quiz(113, "Which property adds space between individual characters?", [
    "letter-spacing",
    "word-spacing",
    "text-indent",
    "line-gap",
  ]),
  Quiz(
    114,
    "How do you make Shan text appear in the center of its container?",
    [
      "text-align: center;",
      "align-items: middle;",
      "font-align: center;",
      "margin: center;",
    ],
  ),
  Quiz(115, "Which property makes text bold?", [
    "font-weight",
    "text-style",
    "font-bold",
    "text-decoration",
  ]),
  Quiz(116, "How do you underline a piece of text?", [
    "text-decoration: underline;",
    "font-style: underline;",
    "text-underline: true;",
    "border-bottom: underline;",
  ]),
  Quiz(
    117,
    "Which property allows you to change text to all uppercase (English) or capitalize words?",
    ["text-transform", "text-variant", "font-case", "text-style"],
  ),
  Quiz(118, "What does 'font-style: italic;' do to text?", [
    "Slants the text to the right",
    "Makes the text thicker",
    "Underlines the text",
    "Changes the text color",
  ]),
  Quiz(
    119,
    "Which value of 'text-align' stretches text to align with both left and right margins?",
    ["justify", "center", "stretch", "full"],
  ),
  Quiz(120, "Which property is used to add a shadow to text elements?", [
    "text-shadow",
    "box-shadow",
    "font-glow",
    "drop-shadow",
  ]),

  // --- Topic 11: Color Theory & Systems ---
  Quiz(
    121,
    "What does the Hex code #AA0000 typically represent in a Shan palette?",
    ["Red (Shan Flag color)", "Yellow", "Green", "White"],
  ),
  Quiz(122, "In RGB color 'rgb(255, 255, 255)', what color is produced?", [
    "White",
    "Black",
    "Red",
    "Blue",
  ]),
  Quiz(123, "What does the 'A' in RGBA stand for?", [
    "Alpha (Transparency)",
    "Alignment",
    "Achromatic",
    "Accuracy",
  ]),
  Quiz(124, "Which color system uses Hue, Saturation, and Lightness?", [
    "HSL",
    "RGB",
    "CMYK",
    "Hex",
  ]),
  Quiz(125, "Which Hex code represents the color Black?", [
    "#000000",
    "#FFFFFF",
    "#FF0000",
    "#CCCCCC",
  ]),
  Quiz(126, "How many digits are in a standard Hexadecimal color code?", [
    "6",
    "4",
    "8",
    "10",
  ]),
  Quiz(127, "In HSL, what is the range for the Hue value?", [
    "0 to 360",
    "0 to 100",
    "0 to 255",
    "1 to 10",
  ]),
  Quiz(128, "Which property changes the color of the text?", [
    "color",
    "background-color",
    "font-color",
    "text-style",
  ]),
  Quiz(129, "What is the transparency range for the Alpha channel in RGBA?", [
    "0.0 to 1.0",
    "0 to 100",
    "0 to 255",
    "1 to 10",
  ]),
  Quiz(130, "What is a 'Complementary' color scheme?", [
    "Colors that are opposite each other on the color wheel",
    "Different shades of the same color",
    "Colors that are next to each other",
    "Black and White only",
  ]),

  // --- Topic 12: Backgrounds & Gradients ---
  Quiz(131, "Which property is used to set a solid color behind an element?", [
    "background-color",
    "color",
    "bg-fill",
    "surface-color",
  ]),
  Quiz(132, "How do you add an image as a background in CSS?", [
    "background-image: url('image.jpg');",
    "background-src: 'image.jpg';",
    "img-background: url('image.jpg');",
    "background-file: 'image.jpg';",
  ]),
  Quiz(133, "Which property prevents a background image from repeating?", [
    "background-repeat: no-repeat;",
    "background-stop: repeat;",
    "image-repeat: none;",
    "background-fix: true;",
  ]),
  Quiz(
    134,
    "Which property ensures a background image covers the entire container?",
    [
      "background-size: cover;",
      "background-fit: full;",
      "background-width: 100%;",
      "background-stretch: all;",
    ],
  ),
  Quiz(135, "What type of gradient transitions colors in a straight line?", [
    "linear-gradient",
    "radial-gradient",
    "conic-gradient",
    "mesh-gradient",
  ]),
  Quiz(136, "What is the correct syntax for a simple linear gradient?", [
    "background: linear-gradient(red, yellow);",
    "background: gradient(red to yellow);",
    "background-color: linear(red, yellow);",
    "gradient: linear-gradient(red, yellow);",
  ]),
  Quiz(137, "Which property keeps a background image fixed while scrolling?", [
    "background-attachment: fixed;",
    "background-scroll: none;",
    "background-position: static;",
    "background-sticky: true;",
  ]),
  Quiz(
    138,
    "Which gradient type starts from a central point and radiates outward?",
    ["radial-gradient", "linear-gradient", "box-gradient", "circle-gradient"],
  ),
  Quiz(139, "How do you center a background image within an element?", [
    "background-position: center;",
    "background-align: center;",
    "background-image: center;",
    "image-align: center;",
  ]),
  Quiz(
    140,
    "Which property is used to set multiple background values at once?",
    ["background", "bg-all", "background-style", "multi-background"],
  ),

  // --- Topic 13: General Review ---
  Quiz(141, "What does 'font-size: 2rem;' mean?", [
    "The font is 2 times the root element size",
    "The font is 2 times the parent element size",
    "The font is exactly 20 pixels",
    "The font is 2% of the screen width",
  ]),
  Quiz(142, "Which property handles the space between lines of text?", [
    "line-height",
    "letter-spacing",
    "word-spacing",
    "text-indent",
  ]),
  Quiz(143, "How do you make text appear in all lowercase?", [
    "text-transform: lowercase;",
    "font-case: lower;",
    "text-style: small;",
    "font-variant: lowercase;",
  ]),
  Quiz(144, "What is the Hex code for the color White?", [
    "#FFFFFF",
    "#000000",
    "#ABCDEF",
    "#F0F0F0",
  ]),
  Quiz(
    145,
    "Which CSS unit is relative to the width of the character '0' (zero)?",
    ["ch", "ex", "em", "rem"],
  ),
  Quiz(
    146,
    "Which background property allows you to use shorthand like 'no-repeat center cover'?",
    [
      "background",
      "background-style",
      "background-image",
      "background-settings",
    ],
  ),
  Quiz(
    147,
    "If you want a 50% transparent blue background, which is correct?",
    [
      "rgba(0, 0, 255, 0.5)",
      "rgb(0, 0, 255, 50%)",
      "hex(#0000FF, 0.5)",
      "blue(0.5)",
    ],
  ),
  Quiz(148, "Which property changes the thickness of characters?", [
    "font-weight",
    "font-size",
    "text-thickness",
    "font-boldness",
  ]),
  Quiz(150, "What does 'text-align: right;' do?", [
    "Aligns the text to the right side of the container",
    "Moves the container to the right",
    "Rotates the text to the right",
    "Adds a margin to the right",
  ]),
  Quiz(
    149,
    "Which rule is used to import Google Fonts directly into a CSS file?",
    ["@import", "@link", "@font", "@google-font"],
  ),
];
final List<Quiz> cssQuizM4 = [
  // --- Topic 13: Static vs. Relative Positioning ---
  Quiz(151, "What is the default 'position' value for all HTML elements?", [
    "static",
    "relative",
    "absolute",
    "fixed",
  ]),
  Quiz(
    152,
    "In 'position: static', do properties like 'top', 'left', or 'z-index' have any effect?",
    ["No", "Yes", "Only 'top' works", "Only if the element is a <div>"],
  ),
  Quiz(
    153,
    "Which position value allows you to move an element relative to its original position without affecting surrounding elements?",
    ["relative", "static", "absolute", "fixed"],
  ),
  Quiz(
    154,
    "When an element is set to 'position: relative', does it still occupy its original space in the document flow?",
    ["Yes", "No", "Only if 'top' is 0", "Only in Flexbox containers"],
  ),
  Quiz(
    155,
    "Which property is used to control the stacking order of positioned elements?",
    ["z-index", "stack-order", "layer", "position-index"],
  ),
  Quiz(
    156,
    "If you set 'top: 20px' on a 'position: relative' element, which way does it move?",
    ["Down 20 pixels", "Up 20 pixels", "Right 20 pixels", "It stays in place"],
  ),
  Quiz(157, "Which value of 'position' is required for 'z-index' to work?", [
    "Any value other than static",
    "Only absolute",
    "Only fixed",
    "Only relative",
  ]),
  Quiz(
    158,
    "Does 'position: relative' break the element out of the normal document flow?",
    ["No", "Yes", "Only if 'left' is used", "Only for block elements"],
  ),
  Quiz(
    159,
    "What is the primary use of 'position: relative' when working with absolute children?",
    [
      "To act as a reference container for the absolute child",
      "To center the child automatically",
      "To make the child invisible",
      "To speed up rendering",
    ],
  ),
  Quiz(
    160,
    "What happens to the surrounding elements when a 'relative' element is moved using 'top' or 'left'?",
    [
      "Nothing, they stay in their original places",
      "They shift to fill the gap",
      "They move in the same direction",
      "They disappear",
    ],
  ),

  // --- Topic 14: Absolute & Fixed Positioning ---
  Quiz(
    161,
    "Which position value removes an element from the normal document flow and positions it relative to its nearest positioned ancestor?",
    ["absolute", "relative", "fixed", "sticky"],
  ),
  Quiz(
    162,
    "If an 'absolute' element has no positioned ancestors, what is it relative to?",
    [
      "The <html> or body element (the viewport)",
      "Its immediate parent",
      "The previous sibling",
      "The center of the page",
    ],
  ),
  Quiz(
    163,
    "Which position value keeps an element in the same spot on the screen even when the page is scrolled?",
    ["fixed", "absolute", "relative", "static"],
  ),
  Quiz(
    164,
    "When an element is 'position: absolute', what happens to the space it originally occupied?",
    [
      "The space is closed up by other elements",
      "The space remains empty",
      "The space grows larger",
      "The space is filled with the background color",
    ],
  ),
  Quiz(165, "What is 'position: sticky' a hybrid of?", [
    "Relative and Fixed",
    "Absolute and Static",
    "Block and Inline",
    "Flex and Grid",
  ]),
  Quiz(
    166,
    "How do you make a navigation bar stay at the top of the browser window at all times?",
    [
      "position: fixed; top: 0;",
      "position: absolute; top: 0;",
      "position: relative; top: 0;",
      "display: block; top: 0;",
    ],
  ),
  Quiz(
    167,
    "To use 'top: 0; right: 0;' to put an icon in the corner of a card, the card must have which position?",
    [
      "position: relative (or any non-static value)",
      "position: static",
      "display: flex",
      "float: right",
    ],
  ),
  Quiz(168, "Which of these is a common use for 'position: fixed'?", [
    "Back-to-top buttons",
    "Paragraph text",
    "Normal image galleries",
    "Table rows",
  ]),
  Quiz(169, "Can an absolute element be wider than its parent container?", [
    "Yes",
    "No",
    "Only in Grid",
    "Only if display is inline",
  ]),
  Quiz(
    170,
    "What property is often used with 'sticky' to define when the element should start 'sticking'?",
    ["top (or bottom/left/right)", "z-index", "float", "clear"],
  ),

  // --- Topic 15: Flexbox Basics (The Parent/Container) ---
  Quiz(
    171,
    "Which property is used to turn an element into a Flex Container?",
    ["display: flex;", "flex: enable;", "position: flex;", "layout: flexbox;"],
  ),
  Quiz(172, "What is the default direction of items in a Flex Container?", [
    "row (horizontal)",
    "column (vertical)",
    "grid",
    "stacked",
  ]),
  Quiz(
    173,
    "Which property is used to change the direction of flex items to vertical?",
    [
      "flex-direction: column;",
      "flex-align: vertical;",
      "orientation: column;",
      "display: block;",
    ],
  ),
  Quiz(
    174,
    "Which property determines if flex items should move to a new line if there is not enough space?",
    ["flex-wrap", "flex-flow", "flex-grow", "line-break"],
  ),
  Quiz(175, "What does 'flex-direction: row-reverse;' do?", [
    "Items are horizontal but start from the right side",
    "Items are vertical but start from the bottom",
    "Items are horizontal and upside down",
    "Items disappear",
  ]),
  Quiz(
    176,
    "Which shorthand property combines 'flex-direction' and 'flex-wrap'?",
    ["flex-flow", "flex-container", "flex-setup", "flex-box"],
  ),
  Quiz(177, "By default, do flex items shrink to fit the container?", [
    "Yes (flex-shrink is 1 by default)",
    "No",
    "Only if they are images",
    "Only if width is 100%",
  ]),
  Quiz(178, "What are the elements directly inside a Flex Container called?", [
    "Flex Items",
    "Flex Children",
    "Flex Blocks",
    "Flex Nodes",
  ]),
  Quiz(
    179,
    "Which axis is the 'Main Axis' when 'flex-direction' is set to 'row'?",
    [
      "Horizontal (left to right)",
      "Vertical (top to bottom)",
      "Diagonal",
      "The Z-axis",
    ],
  ),
  Quiz(
    180,
    "Which axis is the 'Cross Axis' when 'flex-direction' is set to 'row'?",
    [
      "Vertical (top to bottom)",
      "Horizontal (left to right)",
      "The X-axis",
      "The depth axis",
    ],
  ),

  // --- Topic 16: Flex Alignment (The Holy Grail) ---
  Quiz(181, "Which property is used to align flex items along the Main Axis?", [
    "justify-content",
    "align-items",
    "align-content",
    "text-align",
  ]),
  Quiz(
    182,
    "Which property is used to align flex items along the Cross Axis (inside a single line)?",
    ["align-items", "justify-content", "vertical-align", "align-self"],
  ),
  Quiz(
    183,
    "Which value of 'justify-content' puts equal space between items, with no space at the ends?",
    ["space-between", "space-around", "space-evenly", "center"],
  ),
  Quiz(
    184,
    "How do you perfectly center a flex item both horizontally and vertically?",
    [
      "justify-content: center; align-items: center;",
      "text-align: center; vertical-align: middle;",
      "margin: auto; display: block;",
      "align-content: center; justify-items: center;",
    ],
  ),
  Quiz(
    185,
    "Which property allows an individual flex item to have a different alignment than the rest?",
    ["align-self", "justify-self", "flex-align", "item-align"],
  ),
  Quiz(
    186,
    "What does 'justify-content: flex-end;' do in a default row layout?",
    [
      "Pushes all items to the right side of the container",
      "Pushes all items to the bottom of the container",
      "Reverses the order of the items",
      "Puts space between the items",
    ],
  ),
  Quiz(
    187,
    "Which property controls the space between items in a flex container (modern browsers)?",
    ["gap", "spacing", "margin-between", "flex-gap"],
  ),
  Quiz(188, "What is the effect of 'align-items: stretch;' (the default)?", [
    "Items grow to fill the full height of the container",
    "Items grow to fill the full width of the container",
    "Items become as thin as possible",
    "Items are centered",
  ]),
  Quiz(
    189,
    "Which 'justify-content' value gives items equal space around them, including the ends?",
    ["space-around", "space-between", "flex-start", "stretch"],
  ),
  Quiz(
    190,
    "When 'flex-direction' is 'column', 'justify-content' controls alignment in which direction?",
    [
      "Vertical (Top to Bottom)",
      "Horizontal (Left to Right)",
      "Both directions",
      "It stops working",
    ],
  ),

  // --- Topic 17: General Module Review ---
  Quiz(
    191,
    "Which property allows a flex item to grow and take up remaining space?",
    ["flex-grow", "flex-shrink", "flex-basis", "flex-fill"],
  ),
  Quiz(192, "What is 'flex-basis'?", [
    "The initial size of a flex item before space is distributed",
    "The maximum size an item can be",
    "The space between flex items",
    "The alignment of the flex axis",
  ]),
  Quiz(
    193,
    "How do you change the order of a flex item without changing the HTML?",
    [
      "order property",
      "z-index property",
      "flex-index property",
      "sort property",
    ],
  ),
  Quiz(194, "What is the shorthand 'flex: 1;' usually short for?", [
    "flex: 1 1 0%;",
    "flex: 1 0 auto;",
    "flex: 0 1 auto;",
    "flex: 1 1 auto;",
  ]),
  Quiz(
    195,
    "Which property aligns multiple lines of flex items when there is extra space in the cross axis?",
    ["align-content", "align-items", "justify-content", "flex-wrap"],
  ),
  Quiz(196, "In 'position: absolute', what do 'top: 50%; left: 50%;' do?", [
    "Move the top-left corner of the element to the center of the container",
    "Perfectly center the entire element",
    "Move the element to the bottom right",
    "Scale the element to half size",
  ]),
  Quiz(
    197,
    "If a container is 'display: flex', can you still use 'float' on its children?",
    [
      "No (float has no effect on flex items)",
      "Yes",
      "Only if flex-wrap is on",
      "Only in Firefox",
    ],
  ),
  Quiz(
    198,
    "Which 'align-items' value aligns items based on their text's bottom line?",
    ["baseline", "center", "flex-end", "stretch"],
  ),
  Quiz(
    199,
    "What is the best tool for simple 1D layouts (a single row or column)?",
    ["Flexbox", "Grid", "Floats", "Absolute Positioning"],
  ),
  Quiz(
    200,
    "If you set 'position: fixed', what happens to the element's width if it was 100%?",
    [
      "It becomes relative to the viewport width",
      "It stays relative to the parent container",
      "It collapses to 0",
      "It doubles in size",
    ],
  ),
];
final List<Quiz> cssQuizM5 = [
  // --- Topic 17: Grid Fundamentals (Rows & Columns) ---
  Quiz(
    201,
    "Which property is used to define an element as a Grid Container?",
    ["display: grid;", "layout: grid;", "grid: active;", "display: flex-grid;"],
  ),
  Quiz(
    202,
    "Which property is used to define the number and width of vertical columns in a grid?",
    [
      "grid-template-columns",
      "grid-template-rows",
      "grid-columns-count",
      "grid-width-columns",
    ],
  ),
  Quiz(
    203,
    "Which property is used to define the number and height of horizontal rows in a grid?",
    [
      "grid-template-rows",
      "grid-template-columns",
      "grid-row-size",
      "grid-height-rows",
    ],
  ),
  Quiz(204, "How do you create a grid with 3 columns of exactly 100px each?", [
    "grid-template-columns: 100px 100px 100px;",
    "grid-template-columns: repeat(3, 100px);",
    "grid-columns: 100px * 3;",
    "grid-template-columns: 300px / 3;",
  ]),
  Quiz(205, "What is the purpose of the 'repeat()' function in CSS Grid?", [
    "To avoid manually typing out repeating track sizes",
    "To make the grid loop infinitely",
    "To repeat a background image across the grid",
    "To create duplicate grid items",
  ]),
  Quiz(
    206,
    "Which property allows a grid item to span across multiple columns?",
    ["grid-column", "grid-span-column", "column-stretch", "grid-area-width"],
  ),
  Quiz(207, "What does 'grid-column: 1 / 3;' mean for a grid item?", [
    "The item starts at grid line 1 and ends at grid line 3 (spans 2 columns)",
    "The item takes up 1/3 of the total width",
    "The item is placed in row 1, column 3",
    "The item is duplicated 3 times",
  ]),
  Quiz(208, "How are 'grid lines' numbered in a CSS grid?", [
    "Starting from 1 at the edge",
    "Starting from 0 at the edge",
    "By the name of the content",
    "Alphabetically (A, B, C...)",
  ]),
  Quiz(
    209,
    "Which property is a shorthand for defining both rows and columns at once?",
    ["grid-template", "grid-setup", "grid-layout", "grid-all"],
  ),
  Quiz(210, "What is the direct child of a grid container called?", [
    "Grid Item",
    "Grid Cell",
    "Grid Block",
    "Grid Node",
  ]),

  // --- Topic 18: Fractional Units (fr) ---
  Quiz(211, "What does 'fr' stand for in CSS Grid?", [
    "Fractional unit",
    "Fixed ratio",
    "Frame rate",
    "Frontal range",
  ]),
  Quiz(212, "What is the main benefit of using 'fr' units over percentages?", [
    "They automatically handle the 'gap' without causing overflow",
    "They are faster for the browser to render",
    "They only work on mobile devices",
    "They make the font size larger",
  ]),
  Quiz(
    213,
    "If a grid has 'grid-template-columns: 1fr 2fr;', how is the space divided?",
    [
      "The second column is twice as wide as the first",
      "The columns are equal",
      "The first column takes up 1 pixel",
      "The space is divided into 12 columns",
    ],
  ),
  Quiz(214, "Can you mix 'fr' units with fixed units like 'px'?", [
    "Yes (the 'fr' units will take up the remaining space)",
    "No",
    "Only if you use the calc() function",
    "Only in the 'grid-template-rows' property",
  ]),
  Quiz(
    215,
    "In 'grid-template-columns: 200px 1fr 1fr;', how much space does the first column take?",
    [
      "Exactly 200px",
      "200% of the screen",
      "It splits the space with the other columns",
      "It depends on the content",
    ],
  ),
  Quiz(
    216,
    "What function is used to set a track size to be at least a minimum size but grow to a maximum?",
    ["minmax()", "clamp()", "fit-content()", "range()"],
  ),
  Quiz(
    217,
    "What does 'grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));' do?",
    [
      "Creates a responsive layout that wraps columns automatically",
      "Makes all columns exactly 200px",
      "Forces only one column to appear",
      "Fixes the grid at 1fr width",
    ],
  ),
  Quiz(218, "How much space does '0fr' take up?", [
    "Zero space",
    "It defaults to 1fr",
    "The size of the content",
    "An equal share of the space",
  ]),
  Quiz(
    219,
    "Which unit is best for a truly flexible 'Shan' news layout grid?",
    ["fr", "px", "cm", "pt"],
  ),
  Quiz(
    220,
    "In '1fr 1fr 1fr', what percentage of the width is each column (assuming no gaps)?",
    ["33.33%", "50%", "25%", "100%"],
  ),

  // --- Topic 19: Grid Areas ---
  Quiz(
    221,
    "Which property allows you to 'draw' the layout using named areas in your CSS?",
    ["grid-template-areas", "grid-name-layout", "grid-area-map", "grid-draw"],
  ),
  Quiz(222, "How do you assign an element to a specific named grid area?", [
    "grid-area: [name];",
    "grid-name: [name];",
    "area-assign: [name];",
    "display: [name];",
  ]),
  Quiz(
    223,
    "In 'grid-template-areas', how do you represent an empty grid cell?",
    ["A period (.)", "The word 'null'", "A zero (0)", "Leave it blank"],
  ),
  Quiz(
    224,
    "When defining 'grid-template-areas', how are different rows separated in the code?",
    [
      "By putting each row inside quotation marks",
      "By commas",
      "By semicolons",
      "By parentheses",
    ],
  ),
  Quiz(225, "True or False: Grid area names can contain spaces.", [
    "False",
    "True",
    "Only if wrapped in brackets",
    "Only in Safari",
  ]),
  Quiz(
    226,
    "Which of the following is a valid 'grid-template-areas' definition?",
    [
      "\"header header\" \"sidebar main\"",
      "header header, sidebar main",
      "[header header] [sidebar main]",
      "grid-area: header;",
    ],
  ),
  Quiz(227, "Why are Grid Areas useful for Responsive Design?", [
    "You can easily rearrange the layout inside Media Queries",
    "They make images load faster",
    "They automatically resize fonts",
    "They remove the need for HTML tags",
  ]),
  Quiz(
    228,
    "Can a single element span multiple areas in 'grid-template-areas'?",
    [
      "Yes, by repeating the name in adjacent cells",
      "No, it can only occupy one cell",
      "Only if it is a <div>",
      "Only in a column",
    ],
  ),
  Quiz(
    229,
    "Does every cell in a grid need a name when using grid-template-areas?",
    [
      "No, you can use '.' for unnamed cells",
      "Yes",
      "Only if using 'fr' units",
      "Only the first row",
    ],
  ),
  Quiz(
    230,
    "What is the shorthand property that sets grid-template-rows, columns, and areas?",
    ["grid-template", "grid-layout", "grid-config", "grid-box"],
  ),

  // --- Topic 20: Gap & Alignment ---
  Quiz(
    231,
    "Which property sets the space between both rows and columns in a grid?",
    ["gap", "spacing", "grid-margin", "padding"],
  ),
  Quiz(232, "How do you set a gap only between columns?", [
    "column-gap",
    "row-gap",
    "grid-column-spacing",
    "horizontal-gap",
  ]),
  Quiz(
    233,
    "Which property aligns all grid items along the 'inline' (horizontal) axis?",
    ["justify-items", "align-items", "justify-content", "place-content"],
  ),
  Quiz(
    234,
    "Which property aligns all grid items along the 'block' (vertical) axis?",
    ["align-items", "justify-items", "align-content", "place-items"],
  ),
  Quiz(
    235,
    "What is the shorthand property to set both 'align-items' and 'justify-items'?",
    ["place-items", "grid-align", "item-position", "place-content"],
  ),
  Quiz(
    236,
    "Which property allows a specific grid item to override the container's alignment?",
    [
      "justify-self or align-self",
      "grid-override",
      "item-align-self",
      "self-position",
    ],
  ),
  Quiz(
    237,
    "What is the difference between 'justify-items' and 'justify-content'?",
    [
      "items aligns things inside cells; content aligns the tracks themselves",
      "content aligns things inside cells; items aligns the tracks",
      "There is no difference",
      "justify-content is for Flexbox only",
    ],
  ),
  Quiz(238, "Which 'gap' value is correct for 20px rows and 10px columns?", [
    "gap: 20px 10px;",
    "gap: 10px 20px;",
    "gap: 20px, 10px;",
    "gap-row-col: 20-10;",
  ]),
  Quiz(239, "What happens to the gap at the edges of the grid container?", [
    "There is no gap at the edges (only between items)",
    "It adds to the padding",
    "It doubles in size",
    "It disappears on mobile",
  ]),
  Quiz(
    240,
    "Which value for 'justify-items' makes items stretch to fill the width of the cell?",
    ["stretch", "center", "start", "end"],
  ),

  // --- Topic 21: General Module Review ---
  Quiz(
    241,
    "Which layout tool is better for 2D layouts (rows and columns simultaneously)?",
    ["CSS Grid", "Flexbox", "Floats", "Positioning"],
  ),
  Quiz(242, "Can an element be both a flex item and a grid container?", [
    "Yes",
    "No",
    "Only in Chrome",
    "Only if it has a fixed width",
  ]),
  Quiz(243, "What does 'grid-auto-rows' do?", [
    "Defines the height of rows that are created automatically",
    "Automatically deletes empty rows",
    "Sets the row gap to 0",
    "Forces all rows to be 1fr",
  ]),
  Quiz(
    244,
    "Which property controls the order of items in a grid without changing HTML?",
    ["order", "z-index", "grid-order", "sort"],
  ),
  Quiz(
    245,
    "What is the maximum number of columns you can have in a CSS Grid?",
    ["Virtually unlimited (depends on browser memory)", "12", "24", "100"],
  ),
  Quiz(
    246,
    "How do you make a grid item cover from column 1 to the very last column?",
    [
      "grid-column: 1 / -1;",
      "grid-column: 1 / last;",
      "grid-column: all;",
      "grid-column: 1 / 100%;",
    ],
  ),
  Quiz(
    247,
    "Which unit is relative to the size of the grid container's free space?",
    ["fr", "%", "em", "vw"],
  ),
  Quiz(248, "What does 'align-content: center;' do in a grid?", [
    "Centers the entire grid block vertically inside the container",
    "Centers text inside the cells",
    "Centers the items inside their cells",
    "Makes the rows invisible",
  ]),
  Quiz(
    249,
    "True or False: You can use Flexbox alignment properties (like justify-content) inside a Grid.",
    ["True", "False", "Only for rows", "Only if you import a library"],
  ),
  Quiz(
    250,
    "Which property is used to define the row gap and column gap at the same time?",
    ["gap", "grid-gap", "spacing", "margin"],
  ),
];
final List<Quiz> cssQuizM6 = [
  // --- Topic 21: The Viewport Meta Tag ---
  Quiz(
    251,
    "Where should the Viewport Meta Tag be placed in an HTML document?",
    [
      "Inside the <head> section",
      "Inside the <body> section",
      "At the very top of the CSS file",
      "Inside a <style> tag",
    ],
  ),
  Quiz(252, "What does 'width=device-width' do in the viewport meta tag?", [
    "Sets the width of the page to match the screen width of the device",
    "Forces the website to be 1920 pixels wide",
    "Prevents the user from scrolling horizontally",
    "Makes all images 100% wide",
  ]),
  Quiz(253, "What is the purpose of 'initial-scale=1.0'?", [
    "Sets the initial zoom level when the page first loads",
    "Limits the maximum zoom a user can perform",
    "Scales the font size to 1.0rem",
    "Resets all CSS margins to 1",
  ]),
  Quiz(
    254,
    "What happens if you omit the viewport meta tag on a mobile device?",
    [
      "The browser renders the page at a desktop width and shrinks it to fit",
      "The website will not load at all",
      "The font size becomes massive",
      "The images are automatically deleted",
    ],
  ),
  Quiz(
    255,
    "Which attribute in the viewport tag prevents users from zooming in/out?",
    ["user-scalable=no", "zoom=disabled", "fixed-scale=yes", "initial-scale=0"],
  ),
  Quiz(256, "Is the Viewport Meta Tag part of CSS or HTML?", [
    "HTML",
    "CSS",
    "JavaScript",
    "It is a browser setting",
  ]),
  Quiz(
    257,
    "Which value for 'initial-scale' is standard for a responsive site?",
    ["1.0", "0.0", "100", "auto"],
  ),
  Quiz(
    258,
    "Why is 'user-scalable=no' generally discouraged for accessibility?",
    [
      "It prevents visually impaired users from zooming in to read text",
      "It makes the website load slower",
      "It breaks the Flexbox layout",
      "It is not supported by iPhones",
    ],
  ),
  Quiz(259, "What is the correct 'name' attribute for the viewport meta tag?", [
    "viewport",
    "view-port",
    "screen-size",
    "mobile-optimize",
  ]),
  Quiz(260, "The viewport tag is primarily used to solve what problem?", [
    "The 'Mobile Gap' where desktop sites look tiny on phones",
    "Slow loading speeds on 4G",
    "Broken images",
    "Incorrect font rendering",
  ]),

  // --- Topic 22: Media Query Syntax ---
  Quiz(261, "Which @ rule is used to define a Media Query in CSS?", [
    "@media",
    "@query",
    "@responsive",
    "@device",
  ]),
  Quiz(
    262,
    "Which operator is used to combine multiple conditions in a media query?",
    ["and", "with", "plus", "&&"],
  ),
  Quiz(263, "What does '@media (max-width: 600px)' target?", [
    "Screens that are 600 pixels wide or smaller",
    "Screens that are exactly 600 pixels wide",
    "Screens that are 600 pixels wide or larger",
    "Only 600px monitors",
  ]),
  Quiz(
    264,
    "Which media type is used to target screens (as opposed to printed paper)?",
    ["screen", "print", "all", "speech"],
  ),
  Quiz(265, "What does '@media (min-width: 768px)' target?", [
    "Screens that are 768 pixels wide or larger",
    "Screens that are 768 pixels wide or smaller",
    "Only iPad devices",
    "Desktop computers only",
  ]),
  Quiz(266, "Where is the best place to put media queries in your CSS file?", [
    "At the bottom of the file",
    "At the very top of the file",
    "Inside the HTML tags",
    "In a separate file named media.js",
  ]),
  Quiz(
    267,
    "Can you use media queries to target screen orientation (landscape/portrait)?",
    ["Yes", "No", "Only on Android", "Only using JavaScript"],
  ),
  Quiz(
    268,
    "What is the correct syntax for a media query targeting screen and min-width?",
    [
      "@media screen and (min-width: 480px) { ... }",
      "@media (screen: min-width 480px) { ... }",
      "@media screen + min-width: 480px { ... }",
      "@query screen (min-width: 480px)",
    ],
  ),
  Quiz(
    269,
    "In a media query, do you need to rewrite all your CSS properties?",
    [
      "No, only the properties you want to change",
      "Yes, you must copy everything",
      "Only the font-family",
      "Only the colors",
    ],
  ),
  Quiz(270, "What does '@media print' allow you to do?", [
    "Style the page specifically for when it is printed on paper",
    "Send the CSS to a printer wirelessly",
    "Display a 'Print' button on the screen",
    "Make the background images invisible on screen",
  ]),

  // --- Topic 23: Mobile-First Design ---
  Quiz(271, "What is 'Mobile-First Design'?", [
    "Writing CSS for mobile screens first, then adding styles for larger screens",
    "Building an app before building a website",
    "Only allowing users to visit your site from a phone",
    "Putting the most important text at the top of the mobile screen",
  ]),
  Quiz(
    272,
    "In a mobile-first approach, which media query is used most often?",
    ["min-width", "max-width", "max-height", "device-pixel-ratio"],
  ),
  Quiz(273, "Why is Mobile-First considered a better strategy?", [
    "It simplifies the code and prioritizes essential content",
    "It makes the website load faster on desktops",
    "It prevents hackers from accessing the site",
    "It is required by Google Chrome",
  ]),
  Quiz(
    274,
    "In Mobile-First, what styles are written outside of any media query?",
    [
      "The base styles for the smallest screens",
      "The desktop styles",
      "The animations",
      "The background images",
    ],
  ),
  Quiz(
    275,
    "Which CSS unit is often used for widths in mobile-first layouts to ensure flexibility?",
    ["percentage (%)", "pixels (px)", "centimeters (cm)", "points (pt)"],
  ),
  Quiz(276, "What is a 'Fluid' layout?", [
    "A layout that uses percentages to resize content based on screen width",
    "A layout that uses water-themed colors",
    "A website that only contains videos",
    "A layout that changes colors every hour",
  ]),
  Quiz(
    277,
    "Which property is used to ensure an image never grows wider than its container?",
    [
      "max-width: 100%;",
      "width: auto;",
      "min-width: 100%;",
      "object-fit: scale-down;",
    ],
  ),
  Quiz(
    278,
    "Which layout tool is most helpful for creating mobile-first stacks of content?",
    ["Flexbox", "Floats", "Table", "Frameset"],
  ),
  Quiz(279, "Does Mobile-First mean you ignore desktop users?", [
    "No, it just changes the order in which you write your code",
    "Yes, mobile-first sites only work on phones",
    "Only if you use 'min-width'",
    "Only if the site is for a news app",
  ]),
  Quiz(
    280,
    "What is the common term for the smallest screen size in mobile-first design?",
    ["The base layer", "The root layer", "The phone zone", "The static state"],
  ),

  // --- Topic 24: Breakpoints & Strategy ---
  Quiz(281, "What is a 'Breakpoint' in responsive design?", [
    "The specific screen width where the layout changes via a media query",
    "When the website crashes on a mobile device",
    "A 15-minute break for the developer",
    "The end of a CSS file",
  ]),
  Quiz(
    282,
    "Which width is a common breakpoint for switching from mobile to tablet?",
    ["768px", "100px", "5000px", "10px"],
  ),
  Quiz(
    283,
    "Which width is a common breakpoint for switching from tablet to desktop?",
    ["1024px", "320px", "480px", "600px"],
  ),
  Quiz(
    284,
    "Should you choose breakpoints based on specific device models (like iPhone 14)?",
    [
      "No, you should base them on your content and layout needs",
      "Yes, it is the most accurate way",
      "Only if the client asks",
      "Only for Apple devices",
    ],
  ),
  Quiz(285, "What is a 'Micro-breakpoint'?", [
    "A breakpoint for small adjustments, like fixing a single overlapping word",
    "A breakpoint for smartwatches",
    "A breakpoint that only lasts for 1 second",
    "A breakpoint used only in JavaScript",
  ]),
  Quiz(286, "What is the 'Burguer Menu' usually used for?", [
    "Hiding navigation links on small screens to save space",
    "A link to a food delivery app",
    "A way to change the background to yellow",
    "A special type of CSS grid",
  ]),
  Quiz(
    287,
    "Which value is typically used for the smallest phone breakpoint?",
    ["320px", "0px", "1024px", "800px"],
  ),
  Quiz(
    288,
    "How can you test different breakpoints without buying many devices?",
    [
      "Use Browser Developer Tools (F12) and Responsive Design Mode",
      "Print the website and measure it with a ruler",
      "Squint your eyes while looking at the monitor",
      "There is no way to test it",
    ],
  ),
  Quiz(289, "What is 'Container Queries' (a newer CSS feature)?", [
    "Styling elements based on the size of their parent container instead of the whole screen",
    "A way to style HTML <div> containers only",
    "A method to query a database for containers",
    "A type of media query for <iframe> only",
  ]),
  Quiz(
    290,
    "In a 3-column desktop layout, what usually happens at the mobile breakpoint?",
    [
      "The columns stack vertically into 1 column",
      "The columns disappear",
      "The columns turn into a slideshow",
      "The columns grow 3 times larger",
    ],
  ),

  // --- Topic 25: General Module Review ---
  Quiz(291, "Which of these is NOT a responsive design technique?", [
    "Fixed-width pixel layouts",
    "Fluid grids",
    "Media queries",
    "Flexible images",
  ]),
  Quiz(
    292,
    "If you want a font size to be 5% of the screen width, which unit do you use?",
    ["5vw", "5vh", "5%", "5em"],
  ),
  Quiz(
    293,
    "What does 'em' stand for in a media query (e.g., @media (min-width: 40em))?",
    [
      "A unit relative to the browser's default font size",
      "Every Media",
      "Electronic Measurement",
      "External Meta",
    ],
  ),
  Quiz(
    294,
    "Which property can help hide specific sidebar content on mobile devices?",
    [
      "display: none;",
      "visibility: invisible;",
      "opacity: 0;",
      "margin-left: -9999px;",
    ],
  ),
  Quiz(
    295,
    "What happens to 'float' layouts on small screens if not managed with media queries?",
    [
      "They often break or cause horizontal scrolling",
      "They automatically become Flexbox",
      "They turn into a single column automatically",
      "Nothing, floats are naturally responsive",
    ],
  ),
  Quiz(
    296,
    "True or False: Media queries can be used to check for high-resolution (Retina) displays.",
    ["True", "False", "Only in CSS4", "Only for background images"],
  ),
  Quiz(
    297,
    "How do you link a separate CSS file only for screens larger than 800px?",
    [
      "<link rel='stylesheet' media='(min-width: 800px)' href='large.css'>",
      "<link rel='stylesheet' if-width='800px' href='large.css'>",
      "<style media='800px'> @import 'large.css'; </style>",
      "You can't; you must use one file",
    ],
  ),
  Quiz(
    298,
    "Which layout model is easiest to make responsive without many media queries?",
    [
      "CSS Grid (using auto-fit and minmax)",
      "Absolute Positioning",
      "HTML Tables",
      "Static Positioning",
    ],
  ),
  Quiz(299, "What is the 'Desktop-First' approach?", [
    "Writing CSS for large screens first and using max-width to shrink things",
    "Buying a desktop computer before a laptop",
    "Writing code in C++ first",
    "Putting a large image on the home page",
  ]),
  Quiz(300, "What is the ultimate goal of Responsive Design?", [
    "To provide an optimal viewing experience on any device or screen size",
    "To make the website look the same everywhere",
    "To use as many media queries as possible",
    "To rank #1 on Google for the word 'Mobile'",
  ]),
];
final List<Quiz> cssQuizM7 = [
  // --- Topic 25: CSS Transitions ---
  Quiz(
    301,
    "Which property allows you to change property values smoothly over a given duration?",
    ["transition", "transform", "animation", "smooth-move"],
  ),
  Quiz(
    302,
    "Which property defines how many seconds or milliseconds a transition takes to complete?",
    ["transition-duration", "transition-delay", "transition-time", "speed"],
  ),
  Quiz(303, "What is the default value for 'transition-timing-function'?", [
    "ease",
    "linear",
    "ease-in",
    "step-start",
  ]),
  Quiz(
    304,
    "How do you apply a transition only to the 'background-color' property?",
    [
      "transition: background-color 0.3s;",
      "transition: all 0.3s;",
      "transition-property: color;",
      "bg-transition: 0.3s;",
    ],
  ),
  Quiz(
    305,
    "Which timing function maintains a constant speed from start to finish?",
    ["linear", "ease-in-out", "ease", "cubic-bezier"],
  ),
  Quiz(306, "What does 'transition-delay' do?", [
    "Specifies a waiting period before the transition starts",
    "Makes the transition slower",
    "Makes the transition loop forever",
    "Pauses the transition halfway",
  ]),
  Quiz(
    307,
    "Can you transition the 'display' property from 'none' to 'block'?",
    [
      "No (transitions require numeric or color values)",
      "Yes",
      "Only in Chrome",
      "Only if using 'flex'",
    ],
  ),
  Quiz(308, "What is the shorthand order for the transition property?", [
    "property duration timing-function delay",
    "duration property delay timing-function",
    "delay duration property",
    "property delay duration",
  ]),
  Quiz(309, "What happens if you use 'transition: all 0.5s;'?", [
    "Every changeable CSS property will transition smoothly",
    "Only the width will transition",
    "The animation will play 5 times",
    "The transition will be disabled",
  ]),
  Quiz(
    310,
    "Which pseudo-class is most commonly used to trigger a transition?",
    [":hover", ":active", ":focus", ":visited"],
  ),

  // --- Topic 26: Transforms (2D & 3D) ---
  Quiz(311, "Which property is used to rotate, scale, or move an element?", [
    "transform",
    "transition",
    "change",
    "modify",
  ]),
  Quiz(
    312,
    "Which transform function is used to change the size of an element?",
    ["scale()", "resize()", "size()", "magnify()"],
  ),
  Quiz(313, "What does 'transform: rotate(45deg);' do?", [
    "Rotates the element 45 degrees clockwise",
    "Rotates the element 45 degrees counter-clockwise",
    "Tilts the element 45 pixels to the right",
    "Makes the element 45% smaller",
  ]),
  Quiz(
    314,
    "Which function moves an element from its current position without affecting others?",
    ["translate()", "move()", "position()", "shift()"],
  ),
  Quiz(315, "What is the default 'transform-origin' point of an element?", [
    "The center (50% 50%)",
    "The top-left corner (0% 0%)",
    "The bottom-right corner",
    "The top-right corner",
  ]),
  Quiz(316, "How do you flip an element horizontally?", [
    "transform: scaleX(-1);",
    "transform: rotateY(180deg);",
    "transform: flip-h;",
    "Both A and B are correct",
  ]),
  Quiz(
    317,
    "Which property is used to give a 3D element depth by defining the distance from the viewer?",
    ["perspective", "depth", "z-index", "3d-view"],
  ),
  Quiz(318, "What is 'transform: skew()'; used for?", [
    "Tilting or slanting an element along the X or Y axis",
    "Blurring the element",
    "Making the element circular",
    "Rotating it in 3D space",
  ]),
  Quiz(
    319,
    "Which value of 'transform-style' allows children to stay in 3D space rather than being flattened?",
    ["preserve-3d", "flat", "inherit", "3d-active"],
  ),
  Quiz(
    320,
    "Does 'transform' take up space in the document flow when it moves an element?",
    [
      "No (it is like relative positioning, the original space is preserved)",
      "Yes",
      "Only if using scale",
      "Only if it moves more than 100px",
    ],
  ),

  // --- Topic 27: Keyframe Animations ---
  Quiz(321, "Which @ rule is used to define a custom animation sequence?", [
    "@keyframes",
    "@animate",
    "@frames",
    "@steps",
  ]),
  Quiz(
    322,
    "How do you link a @keyframes animation named 'slide' to an element?",
    [
      "animation-name: slide;",
      "animation: active slide;",
      "keyframes-link: slide;",
      "font-family: slide;",
    ],
  ),
  Quiz(323, "Which property makes an animation loop infinitely?", [
    "animation-iteration-count: infinite;",
    "animation-loop: true;",
    "animation-repeat: always;",
    "animation-play-state: running;",
  ]),
  Quiz(324, "What are the two most basic keywords used inside @keyframes?", [
    "from and to",
    "start and end",
    "first and last",
    "0% and 50%",
  ]),
  Quiz(325, "Which property allows you to pause an animation?", [
    "animation-play-state",
    "animation-pause",
    "animation-stop",
    "animation-delay",
  ]),
  Quiz(326, "What does 'animation-direction: reverse;' do?", [
    "Plays the animation backwards",
    "Plays the animation then flips it",
    "Plays the animation at double speed",
    "Stops the animation at the end",
  ]),
  Quiz(
    327,
    "Which property determines what styles are applied before or after an animation plays?",
    [
      "animation-fill-mode",
      "animation-state",
      "animation-style",
      "animation-persistence",
    ],
  ),
  Quiz(
    328,
    "What value for 'animation-fill-mode' keeps the styles of the last keyframe after the animation ends?",
    ["forwards", "backwards", "both", "none"],
  ),
  Quiz(
    329,
    "How do you define progress points at 0%, 50%, and 100% in an animation?",
    [
      "Using percentage values inside @keyframes",
      "Using commas in the animation property",
      "It is not possible to have more than two points",
      "Using the delay property",
    ],
  ),
  Quiz(330, "Which shorthand property sets all animation properties at once?", [
    "animation",
    "animate",
    "transition-animation",
    "keyframe-all",
  ]),

  // --- Topic 28: Shadows & Glassmorphism ---
  Quiz(331, "Which property is used to add a shadow to a <div> or a box?", [
    "box-shadow",
    "text-shadow",
    "drop-shadow",
    "element-shadow",
  ]),
  Quiz(
    332,
    "In 'box-shadow: 10px 5px 2px black;', what does the '2px' represent?",
    ["Blur radius", "Horizontal offset", "Vertical offset", "Spread distance"],
  ),
  Quiz(333, "Which property is used to add a shadow specifically to letters?", [
    "text-shadow",
    "font-shadow",
    "letter-glow",
    "box-shadow",
  ]),
  Quiz(334, "How do you create an 'inset' shadow (a shadow inside the box)?", [
    "Add the 'inset' keyword to the box-shadow value",
    "Use a negative blur value",
    "Set the color to transparent",
    "Use 'position: relative'",
  ]),
  Quiz(335, "What is 'Glassmorphism' in modern web design?", [
    "A style using transparency and background blur to look like frosted glass",
    "A way to make images look like mirrors",
    "A technique for sharp, high-contrast borders",
    "A type of 3D font styling",
  ]),
  Quiz(
    336,
    "Which CSS property is the most important for creating the Glassmorphism blur effect?",
    [
      "backdrop-filter: blur();",
      "filter: blur();",
      "opacity: 0.5;",
      "background-blur: true;",
    ],
  ),
  Quiz(
    337,
    "What is the difference between 'filter: blur()' and 'backdrop-filter: blur()'?",
    [
      "filter blurs the element itself; backdrop-filter blurs what is behind it",
      "backdrop-filter blurs the element; filter blurs the background",
      "There is no difference",
      "filter is only for images",
    ],
  ),
  Quiz(
    338,
    "Which background color is typically used for a Glassmorphism card?",
    [
      "A semi-transparent white or light color (rgba)",
      "Solid black",
      "A linear gradient of 10 colors",
      "Transparent (no color at all)",
    ],
  ),
  Quiz(339, "How do you make a shadow look softer and more natural?", [
    "Increase the blur radius and lower the color opacity",
    "Set the blur to 0px",
    "Use a solid hex color like #000",
    "Increase the spread value",
  ]),
  Quiz(340, "Can you apply multiple shadows to a single element?", [
    "Yes (separated by commas)",
    "No",
    "Only in CSS Grid",
    "Only for text-shadow",
  ]),

  // --- Topic 29: General Final Review ---
  Quiz(
    341,
    "Which property would you use to create a 'glow' effect around a button?",
    ["box-shadow", "border-glow", "outline", "light-effect"],
  ),
  Quiz(
    342,
    "What happens to 'backdrop-filter' if the background is 100% opaque (not transparent)?",
    [
      "The effect is not visible because you cannot see through the element",
      "The element becomes transparent anyway",
      "The browser crashes",
      "The blur becomes twice as strong",
    ],
  ),
  Quiz(
    343,
    "Which CSS feature is best for a 'Loading Spinner' that rotates forever?",
    [
      "@keyframes with infinite iteration",
      "A 10-second transition",
      "A simple hover effect",
      "Static positioning",
    ],
  ),
  Quiz(344, "What does 'transform: translateX(50px);' do?", [
    "Moves the element 50 pixels to the right",
    "Makes the element 50 pixels wider",
    "Moves the element 50 pixels down",
    "Rotates the element 50 degrees",
  ]),
  Quiz(
    345,
    "Which timing function starts slow, speeds up in the middle, and ends slow?",
    ["ease-in-out", "linear", "ease-in", "ease-out"],
  ),
  Quiz(
    346,
    "True or False: CSS animations are generally better for performance than JavaScript animations.",
    ["True", "False", "Only on desktop", "Only for color changes"],
  ),
  Quiz(
    347,
    "Which property allows you to change the transparency of an entire element?",
    ["opacity", "visibility", "filter", "rgba"],
  ),
  Quiz(348, "What does 'scale(0)' do to an element?", [
    "Makes it disappear (size becomes zero)",
    "Resets it to its original size",
    "Makes it invisible but clickable",
    "Moves it to the top of the page",
  ]),
  Quiz(349, "Which unit is used for rotation in CSS transforms?", [
    "deg (degrees)",
    "px",
    "rem",
    "rad (radians)",
  ]),
  Quiz(
    350,
    "Congratulations! What is the final step to becoming a CSS master?",
    [
      "Practice building real projects every day",
      "Memorize every single property",
      "Stop using HTML",
      "Only use CSS from 1996",
    ],
  ),
];
final List<List<Quiz>> cssQuizzes = [
  cssQuizM1,
  cssQuizM2,
  cssQuizM3,
  cssQuizM4,
  cssQuizM5,
  cssQuizM6,
  cssQuizM7,
];
