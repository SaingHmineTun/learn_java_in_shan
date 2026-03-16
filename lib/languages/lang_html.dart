import '../utils/quiz.dart';
import '../utils/utils.dart';

const Map<int, String> htmlTopics = {
  1: "The Skeleton", // Structure: <!DOCTYPE>, <html>, <head>, <body>
  2: "The Semantics", // Meaning: <header>, <nav>, <main>, <section>, <footer>
  3: "The Scribe", // Text: Typography, Headings, <p>, <strong>, <em>
  4: "The Navigator", // Links: Hyperlinks <a> and Navigation Logic
  5: "The Collector", // Data: Lists <ul>, <ol> and Tables <table>
  6: "The Input", // Interaction: Forms <form>, <input>, and Labels
  7: "The Publisher", // Deployment: GitHub & Vercel
};

const Map<int, Map<int, String>> htmlModules = {
  1: {
    1: "The Doctype: Declaring the Version",
    2: "The HTML Tag: The Root and Lang Attributes",
    3: "The Head: The Invisible Brain of the Page",
    4: "The Meta Charset: Unlocking Shan Script (UTF-8)",
    5: "The Title: Giving Your Book a Name",
    6: "The Body: Where the Content Lives",
    7: "Comments: Leaving Notes for the Scribe",
    8: "The Meta Viewport: Making it Mobile-Ready",
  },
  2: {
    9: "Semantic Layout: Using Header and Nav",
    10: "Main and Section: Organizing Chapters",
    11: "Articles: Independent Pieces of Content",
    12: "Aside: Adding Marginalia and Notes",
    13: "Footer: The Colophon and Copyright",
    14: "The Div Tag: The Generic Container",
    15: "The Span Tag: Targeting Small Text Segments",
  },
  3: {
    16: "Hierarchy: H1 through H6",
    17: "The Paragraph: Writing in Shan Blocks",
    18: "Strong vs. Bold: Importance vs. Appearance",
    19: "Em vs. Italic: Stress vs. Style",
    20: "Underline and Strikethrough Tags",
    21: "Line Breaks and Horizontal Rules",
    22: "Preformatted Text and Code Snippets",
    23: "Blockquotes: Citing External Wisdom",
    24: "Superscript and Subscript",
  },
  4: {
    25: "The Anchor Tag: Creating Hyperlinks",
    26: "Relative vs. Absolute Paths (Linking Modules)",
    27: "The Target Attribute: Control How Links Open",
    28: "ID Attributes: Linking to Sections on One Page",
    29: "The Download Attribute: Sharing Files",
    30: "Email and Phone Links (mailto and tel)",
    31: "Building a Navigation Menu in Pure HTML",
  },
  5: {
    32: "The Image Tag: src, alt, and title",
    33: "Image Sizing and Aspect Ratios",
    34: "The Video Tag: Bringing the Page to Life",
    35: "The Audio Tag: Adding Music and Voices",
    36: "Figure and Figcaption: Labeling Media",
    37: "The Picture Element: Responsive Image Sources",
    38: "Embedding Iframes: Maps and External Content",
  },
  6: {
    39: "Unordered Lists: Creating Bullet Points",
    40: "Ordered Lists: Step-by-Step Instructions",
    41: "Description Lists: Terms and Definitions",
    42: "Tables: Rows, Headers, and Data Cells",
    43: "Table Caption, Thread, Tbody, and Tfoot",
    44: "Forms: Creating the Input Field",
    45: "Labels, Fieldsets, and Legends",
    46: "Input Types: Text, Password, and Email",
    47: "The Textarea: For Long Shan Descriptions",
  },
  7: {
    48: "W3C Validation: Checking for Broken Ink",
    49: "The Favicon: Adding a Digital Seal to the Tab",
    50: "SEO Basics: Meta Descriptions and Open Graph",
    51: "GitHub: Uploading the Manuscript Folder",
    52: "Vercel: Connecting and Zero-Config Deploy",
    53: "Custom Domains: Naming Your Digital Library",
    54: "Performance Check: Optimizing Assets for Speed",
  },
};

final Map<int, Lesson> htmlLessons = {
  1: Lesson(1, 1),
  2: Lesson(1, 2),
  3: Lesson(1, 3),
  4: Lesson(1, 4),
  5: Lesson(1, 5),
  6: Lesson(1, 6),
  7: Lesson(1, 7),
  8: Lesson(1, 8),
  9: Lesson(2, 9),
  10: Lesson(2, 10),
  11: Lesson(2, 11),
  12: Lesson(2, 12),
  13: Lesson(2, 13),
  14: Lesson(2, 14),
  15: Lesson(2, 15),
  16: Lesson(3, 16),
  17: Lesson(3, 17),
  18: Lesson(3, 18),
  19: Lesson(3, 19),
  20: Lesson(3, 20),
  21: Lesson(3, 21),
  22: Lesson(3, 22),
  23: Lesson(3, 23),
  24: Lesson(3, 24),
  25: Lesson(4, 25),
  26: Lesson(4, 26),
  27: Lesson(4, 27),
  28: Lesson(4, 28),
  29: Lesson(4, 29),
  30: Lesson(4, 30),
  31: Lesson(4, 31),
  32: Lesson(5, 32),
  33: Lesson(5, 33),
  34: Lesson(5, 34),
  35: Lesson(5, 35),
  36: Lesson(5, 36),
  37: Lesson(5, 37),
  38: Lesson(5, 38),
  39: Lesson(6, 39),
  40: Lesson(6, 40),
  41: Lesson(6, 41),
  42: Lesson(6, 42),
  43: Lesson(6, 43),
  44: Lesson(6, 44),
  45: Lesson(6, 45),
  46: Lesson(6, 46),
  47: Lesson(6, 47),
  48: Lesson(7, 48),
  49: Lesson(7, 49),
  50: Lesson(7, 50),
  51: Lesson(7, 51),
  52: Lesson(7, 52),
  53: Lesson(7, 53),
  54: Lesson(7, 54),
};

// QUIZ SECTION

final List<Quiz> htmlQuizM1 = [
  // --- Lesson 1: The Doctype ---
  Quiz(1, "What does <!DOCTYPE html> define?", [
    "It declares the document is HTML5",
    "It creates a header for the page",
    "It is a tag to close the HTML document",
    "It sets the background color"
  ]),
  Quiz(2, "Where should the <!DOCTYPE html> be placed?", [
    "At the very top of the file",
    "Inside the <head> tag",
    "Inside the <body> tag",
    "At the bottom after </html>"
  ]),
  Quiz(3, "Is <!DOCTYPE html> a tag or a declaration?", [
    "A declaration",
    "A standard HTML tag",
    "A meta tag",
    "A closing tag"
  ]),
  Quiz(4, "What happens if you omit <!DOCTYPE html>?", [
    "The browser might enter 'Quirks Mode'",
    "The website will not open",
    "The Shan script will not display",
    "The browser displays an error message"
  ]),

  // --- Lesson 2: The HTML Tag ---
  Quiz(5, "Which tag is known as the 'Root' element of an HTML page?", [
    "<html>",
    "<head>",
    "<body>",
    "<!DOCTYPE>"
  ]),
  Quiz(6, "What is the purpose of the 'lang' attribute in <html>?", [
    "To specify the language of the content",
    "To set the width of the webpage",
    "To change the font color",
    "To link to a CSS file"
  ]),
  Quiz(7, "What is the correct language code for Shan in the 'lang' attribute?", [
    "shn",
    "th",
    "my",
    "sh"
  ]),
  Quiz(8, "Where does the </html> tag go?", [
    "At the very end of the document",
    "At the top of the document",
    "Before the <body> tag",
    "Inside the <head> tag"
  ]),

  // --- Lesson 3: The Head ---
  Quiz(9, "What kind of data does the <head> tag store?", [
    "Metadata (Information not visible on the page)",
    "Visible text for the user",
    "All the images on the site",
    "The main content of the article"
  ]),
  Quiz(10, "Which tag must always be placed inside the <head>?", [
    "<title>",
    "<h1>",
    "<p>",
    "<img>"
  ]),
  Quiz(11, "Is the content inside the <head> visible on the webpage body?", [
    "No",
    "Yes",
    "Only if it is a title",
    "Only on mobile devices"
  ]),

  // --- Lesson 4: Meta Charset (Shan Script) ---
  Quiz(12, "Which encoding allows Shan script to be read correctly?", [
    "UTF-8",
    "ASCII",
    "ISO-8859-1",
    "UTF-16"
  ]),
  Quiz(13, "Where is the <meta charset='UTF-8'> tag placed?", [
    "Inside the <head>",
    "Inside the <body>",
    "Before the <html> tag",
    "Inside the <footer>"
  ]),
  Quiz(14, "What does 'UTF-8' stand for?", [
    "Universal Character Set Transformation Format 8-bit",
    "Universal Text Font 8-bit",
    "Unicode Text File 8",
    "User Template Format 8"
  ]),
  Quiz(15, "Why is UTF-8 critical for Shan developers?", [
    "It supports Shan Unicode characters",
    "It makes the website load faster",
    "It is required for mobile apps",
    "It automatically translates text"
  ]),

  // --- Lesson 5: The Title ---
  Quiz(16, "Where is the <title> text displayed?", [
    "On the browser tab",
    "Inside the main body of the page",
    "In the search engine results only",
    "At the footer of the site"
  ]),
  Quiz(17, "How many <title> tags should a page have?", [
    "Exactly one",
    "At least two",
    "None",
    "As many as needed"
  ]),
  Quiz(18, "Which tag correctly defines the page title?", [
    "<title>My Page</title>",
    "<head>My Page</head>",
    "<meta title='My Page'>",
    "<header>My Page</header>"
  ]),

  // --- Lesson 6: The Body ---
  Quiz(19, "Which tag contains all visible content like text and images?", [
    "<body>",
    "<head>",
    "<html>",
    "<section>"
  ]),
  Quiz(20, "Where should the <body> tag be placed?", [
    "After the </head> tag",
    "Inside the <head> tag",
    "Before the <html> tag",
    "Inside the <title> tag"
  ]),
  Quiz(21, "Can you have multiple <body> tags in one HTML file?", [
    "No",
    "Yes",
    "Yes, if it's a long page",
    "Only for Shan script pages"
  ]),

  // --- Lesson 7: Comments ---
  Quiz(22, "What is the correct syntax for an HTML comment?", [
    "",
    "// Comment",
    "/* Comment */",
    "# Comment"
  ]),
  Quiz(23, "Are HTML comments visible to the user in the browser window?", [
    "No",
    "Yes",
    "Only if they inspect the page",
    "Only on desktop computers"
  ]),
  Quiz(24, "Why use comments in your HTML code?", [
    "To leave notes for yourself or other developers",
    "To hide sensitive passwords",
    "To make the code run faster",
    "To add styles to the page"
  ]),

  // --- Lesson 8: Meta Viewport ---
  Quiz(25, "What is the primary use of the meta viewport tag?", [
    "To make the website mobile-responsive",
    "To set the page background color",
    "To translate the page into Shan",
    "To secure the website"
  ]),
  Quiz(26, "What does 'width=device-width' mean in the viewport tag?", [
    "The page width follows the screen width of the device",
    "The page will always be 1000 pixels wide",
    "The device must be a computer",
    "The text will be large"
  ]),
  Quiz(27, "Is the viewport tag placed in the <head> or <body>?", [
    "<head>",
    "<body>",
    "<footer>",
    "<html>"
  ]),

  // --- General HTML Structure ---
  Quiz(28, "What does HTML stand for?", [
    "HyperText Markup Language",
    "Hyperlinks Text Mark Language",
    "Home Tool Markup Language",
    "High Text Machine Language"
  ]),
  Quiz(29, "Which of these is a 'Closing Tag'?", [
    "</html>",
    "<html>",
    "<html/>",
    "!html"
  ]),
  Quiz(30, "What is an attribute in HTML?", [
    "Extra information provided inside a start tag",
    "A way to close a tag",
    "A type of HTML comment",
    "The text between tags"
  ]),
  Quiz(31, "Which character is used to indicate an end tag?", [
    "/",
    "<",
    "*",
    "^"
  ]),
  Quiz(32, "Which tag is used for the largest heading?", [
    "<h1>",
    "<h6>",
    "<head>",
    "<header>"
  ]),
  Quiz(33, "Which tag is used for a paragraph?", [
    "<p>",
    "<para>",
    "<text>",
    "<b>"
  ]),
  Quiz(34, "What is a 'Semantic' tag?", [
    "A tag that describes its meaning to the browser",
    "A tag used only for Shan script",
    "A tag that has no content",
    "A hidden tag"
  ]),
  Quiz(35, "Which tag is used for a line break?", [
    "<br>",
    "<break>",
    "<lb>",
    "<hr>"
  ]),
  Quiz(36, "What is an 'Empty Tag'?", [
    "A tag with no closing tag (like <br>)",
    "A tag with no content",
    "A tag that is not used anymore",
    "A tag that only contains spaces"
  ]),
  Quiz(37, "Which tag is used to create a horizontal line?", [
    "<hr>",
    "<line>",
    "<br>",
    "<border>"
  ]),
  Quiz(38, "Which attribute is used to provide a unique ID to an element?", [
    "id",
    "class",
    "name",
    "key"
  ]),
  Quiz(39, "Which attribute is used to provide a group name to elements?", [
    "class",
    "id",
    "type",
    "group"
  ]),
  Quiz(40, "Which tag is used to define a link?", [
    "<a>",
    "<link>",
    "<url>",
    "<href>"
  ]),
  Quiz(41, "What attribute does the <a> tag use to specify the URL?", [
    "href",
    "src",
    "link",
    "url"
  ]),
  Quiz(42, "How do you open a link in a new tab?", [
    "target='_blank'",
    "target='new'",
    "tab='new'",
    "open='new'"
  ]),
  Quiz(43, "Which tag is used to display an image?", [
    "<img>",
    "<image>",
    "<pic>",
    "<src>"
  ]),
  Quiz(44, "Which attribute is used to specify the path to an image?", [
    "src",
    "href",
    "alt",
    "link"
  ]),
  Quiz(45, "What is the 'alt' attribute in <img> used for?", [
    "Alternative text if the image fails to load",
    "The title of the image",
    "The size of the image",
    "The link of the image"
  ]),
  Quiz(46, "Which tag defines an unordered list?", [
    "<ul>",
    "<ol>",
    "<li>",
    "<list>"
  ]),
  Quiz(47, "Which tag defines an ordered list?", [
    "<ol>",
    "<ul>",
    "<li>",
    "<order>"
  ]),
  Quiz(48, "Which tag defines a list item?", [
    "<li>",
    "<item>",
    "<list>",
    "<ul>"
  ]),
  Quiz(49, "Which tag defines a table?", [
    "<table>",
    "<tab>",
    "<thead>",
    "<row>"
  ]),
  Quiz(50, "Which tag defines a table row?", [
    "<tr>",
    "<td>",
    "<th>",
    "<row>"
  ]),
  Quiz(51, "Which tag defines table data/cell?", [
    "<td>",
    "<tr>",
    "<th>",
    "<cell>"
  ]),
  Quiz(52, "Which tag defines a table header?", [
    "<th>",
    "<td>",
    "<head>",
    "<thead>"
  ]),
  Quiz(53, "Which tag is used to collect user input?", [
    "<form>",
    "<input>",
    "<select>",
    "<button>"
  ]),
  Quiz(54, "Which attribute makes an input field mandatory?", [
    "required",
    "validate",
    "check",
    "needed"
  ]),
  Quiz(55, "Which tag is used for a multi-line text input?", [
    "<textarea>",
    "<input type='text'>",
    "<text>",
    "<input type='area'>"
  ]),
  Quiz(56, "Which input type is used for passwords?", [
    "type='password'",
    "type='secret'",
    "type='hidden'",
    "type='lock'"
  ]),
  Quiz(57, "Which tag creates a dropdown list?", [
    "<select>",
    "<dropdown>",
    "<input type='list'>",
    "<option>"
  ]),
  Quiz(58, "Which tag defines an option in a dropdown list?", [
    "<option>",
    "<item>",
    "<list>",
    "<choice>"
  ]),
  Quiz(59, "Which tag is used for a button?", [
    "<button>",
    "<input type='btn'>",
    "<click>",
    "<a>"
  ]),
  Quiz(60, "Which attribute specifies the type of button?", [
    "type",
    "name",
    "value",
    "id"
  ]),
  Quiz(61, "Which tag defines a navigation section?", [
    "<nav>",
    "<menu>",
    "<links>",
    "<header>"
  ]),
  Quiz(62, "Which tag defines a footer for a document?", [
    "<footer>",
    "<bottom>",
    "<end>",
    "<section>"
  ]),
  Quiz(63, "Which tag defines a generic container for styling?", [
    "<div>",
    "<span>",
    "<section>",
    "<container>"
  ]),
  Quiz(64, "Which tag defines an inline container for styling?", [
    "<span>",
    "<div>",
    "<text>",
    "<a>"
  ]),
  Quiz(65, "What is the correct way to link an external CSS file?", [
    "<link rel='stylesheet' href='style.css'>",
    "<style src='style.css'>",
    "<css href='style.css'>",
    "<link src='style.css'>"
  ]),
  Quiz(66, "Which tag is used for internal CSS?", [
    "<style>",
    "<css>",
    "<script>",
    "<link>"
  ]),
  Quiz(67, "Which tag is used for JavaScript?", [
    "<script>",
    "<js>",
    "<java>",
    "<link>"
  ]),
  Quiz(68, "What does the 'id' attribute do?", [
    "Identifies a single unique element",
    "Groups multiple elements",
    "Links a file",
    "Sets the language"
  ]),
  Quiz(69, "What does the 'class' attribute do?", [
    "Identifies a group of elements",
    "Identifies a unique element",
    "Links a script",
    "Defines the font"
  ]),
  Quiz(70, "Which HTML version is <!DOCTYPE html> referring to?", [
    "HTML5",
    "HTML 4.01",
    "XHTML",
    "HTML 1.0"
  ]),
  Quiz(71, "Can you nest a <div> inside another <div>?", [
    "Yes",
    "No",
    "Only for Shan content",
    "Only in the <body>"
  ]),
  Quiz(72, "Which tag is used to emphasize text (italics)?", [
    "<em>",
    "<i>",
    "<b>",
    "<strong>"
  ]),
  Quiz(73, "Which tag is used for important text (bold)?", [
    "<strong>",
    "<b>",
    "<em>",
    "<big>"
  ]),
  Quiz(74, "Which tag defines an independent article?", [
    "<article>",
    "<section>",
    "<aside>",
    "<div>"
  ]),
  Quiz(75, "Which tag defines a sidebar or related content?", [
    "<aside>",
    "<section>",
    "<nav>",
    "<article>"
  ]),
  Quiz(76, "What is the purpose of the <main> tag?", [
    "Specifies the main content of the document",
    "Acts as the root tag",
    "Stores navigation links",
    "Displays the title"
  ]),
  Quiz(77, "Which tag is used for small text like copyright?", [
    "<small>",
    "<tiny>",
    "<sub>",
    "<span>"
  ]),
  Quiz(78, "Which tag is used for subscript text?", [
    "<sub>",
    "<sup>",
    "<small>",
    "<below>"
  ]),
  Quiz(79, "Which tag is used for superscript text?", [
    "<sup>",
    "<sub>",
    "<above>",
    "<top>"
  ]),
  Quiz(80, "Which tag defines a thematic grouping of content?", [
    "<section>",
    "<div>",
    "<span>",
    "<article>"
  ]),
  Quiz(81, "What does the 'src' attribute stand for?", [
    "Source",
    "Search",
    "Script",
    "Screen"
  ]),
  Quiz(82, "What does the 'href' attribute stand for?", [
    "Hypertext Reference",
    "Header Reference",
    "Host Reference",
    "Hyperlink File"
  ]),
  Quiz(83, "Which tag is used for an image caption?", [
    "<figcaption>",
    "<caption>",
    "<text>",
    "<alt>"
  ]),
  Quiz(84, "Which tag wraps around an image and its caption?", [
    "<figure>",
    "<img>",
    "<picture>",
    "<section>"
  ]),
  Quiz(85, "Which tag is used for preformatted text?", [
    "<pre>",
    "<code>",
    "<text>",
    "<format>"
  ]),
  Quiz(86, "Which tag is used for code snippets?", [
    "<code>",
    "<pre>",
    "<script>",
    "<var>"
  ]),
  Quiz(87, "Which tag defines a short quotation?", [
    "<q>",
    "<blockquote>",
    "<cite>",
    "<quote>"
  ]),
  Quiz(88, "Which tag defines a long quotation section?", [
    "<blockquote>",
    "<q>",
    "<section>",
    "<cite>"
  ]),
  Quiz(89, "Which attribute specifies where to send form data?", [
    "action",
    "method",
    "target",
    "href"
  ]),
  Quiz(90, "Which attribute specifies the HTTP method (GET/POST)?", [
    "method",
    "action",
    "type",
    "send"
  ]),
  Quiz(91, "Which input type is used for a checkbox?", [
    "type='checkbox'",
    "type='check'",
    "type='box'",
    "type='multiple'"
  ]),
  Quiz(92, "Which input type is used for a single selection (circle)?", [
    "type='radio'",
    "type='circle'",
    "type='check'",
    "type='single'"
  ]),
  Quiz(93, "Which input type is used to upload files?", [
    "type='file'",
    "type='upload'",
    "type='folder'",
    "type='attach'"
  ]),
  Quiz(94, "Which tag defines a label for an input?", [
    "<label>",
    "<text>",
    "<span>",
    "<input>"
  ]),
  Quiz(95, "Which attribute connects a label to an input ID?", [
    "for",
    "id",
    "name",
    "connect"
  ]),
  Quiz(96, "Which tag is used for audio content?", [
    "<audio>",
    "<sound>",
    "<music>",
    "<media>"
  ]),
  Quiz(97, "Which tag is used for video content?", [
    "<video>",
    "<movie>",
    "<media>",
    "<screen>"
  ]),
  Quiz(98, "What does the 'controls' attribute do in <video>?", [
    "Adds play, pause, and volume buttons",
    "Plays the video automatically",
    "Mutes the video",
    "Stops the video"
  ]),
  Quiz(99, "Which tag defines the beginning of an HTML document?", [
    "<html>",
    "<!DOCTYPE>",
    "<head>",
    "<body>"
  ]),
  Quiz(100, "What is the best way to learn HTML in Shan?", [
    "By following the Gemini AI HTML course",
    "By reading English books only",
    "By not practicing at all",
    "By memorizing without coding"
  ]),
];
final List<Quiz> htmlQuizM2 = [
  // --- Lesson 9: Semantic Layout: Header and Nav ---
  Quiz(101, "What is the primary purpose of Semantic HTML?", [
    "To give meaning to the structure for browsers and search engines",
    "To make the website load faster",
    "To add colors and styles to the page",
    "To hide content from the user"
  ]),
  Quiz(102, "Which tag is used to define the introductory content or navigation links at the top of a page?", [
    "<header>",
    "<head>",
    "<top>",
    "<section>"
  ]),
  Quiz(103, "Where can the <header> tag be used?", [
    "At the start of the page or within an article/section",
    "Only at the very top of the <html> tag",
    "Only inside the <head> tag",
    "Only in the footer"
  ]),
  Quiz(104, "Which tag is specifically used for a set of navigation links?", [
    "<nav>",
    "<menu>",
    "<links>",
    "<ul>"
  ]),
  Quiz(105, "Is it mandatory to put every link inside a <nav> tag?", [
    "No, it is intended for major navigation blocks",
    "Yes, all links must be inside <nav>",
    "No, only external links go in <nav>",
    "Yes, otherwise the links won't work"
  ]),

  // --- Lesson 10: Main and Section: Organizing Chapters ---
  Quiz(106, "Which tag defines the dominant content of the <body>?", [
    "<main>",
    "<section>",
    "<div>",
    "<content>"
  ]),
  Quiz(107, "How many <main> tags should exist per page?", [
    "Only one",
    "Two (top and bottom)",
    "As many as there are sections",
    "None, it is optional"
  ]),
  Quiz(108, "Which tag is used to group related content into a thematic 'chapter'?", [
    "<section>",
    "<div>",
    "<span>",
    "<aside>"
  ]),
  Quiz(109, "Should a <section> ideally have a heading (h1-h6)?", [
    "Yes, to define the theme of the section",
    "No, sections should never have headings",
    "Only if it is the first section",
    "No, only the <header> has headings"
  ]),
  Quiz(110, "Which is more semantic for a 'Contact Us' area: <div> or <section>?", [
    "<section>",
    "<div>",
    "<span>",
    "<footer>"
  ]),

  // --- Lesson 11: Articles: Independent Content ---
  Quiz(111, "What is the main characteristic of the <article> tag?", [
    "It contains content that can be independently distributed or reused",
    "It is only used for news websites",
    "It must be placed inside a <nav> tag",
    "It automatically bolds all the text inside it"
  ]),
  Quiz(112, "Which of these is a good use case for an <article> tag?", [
    "A blog post or forum comment",
    "A website logo",
    "A group of navigation links",
    "The page copyright notice"
  ]),
  Quiz(113, "Can you nest a <section> inside an <article>?", [
    "Yes, to organize different parts of the article",
    "No, only <div> can be inside <article>",
    "No, an article cannot have sections",
    "Only if the article is very long"
  ]),
  Quiz(114, "If content makes sense even if removed from the rest of the site, use:", [
    "<article>",
    "<aside>",
    "<span>",
    "<div>"
  ]),

  // --- Lesson 12: Aside: Marginalia and Notes ---
  Quiz(115, "What is the <aside> tag used for?", [
    "Content indirectly related to the main content (like a sidebar)",
    "Content that should be hidden from mobile users",
    "The main navigation menu",
    "The main heading of the page"
  ]),
  Quiz(116, "Where is an <aside> usually placed visually?", [
    "In a sidebar or as call-out boxes",
    "Always at the very bottom of the page",
    "Inside the <head> section",
    "Between the <title> and <body>"
  ]),
  Quiz(117, "If you want to add a 'Recommended Articles' list next to a blog post, use:", [
    "<aside>",
    "<main>",
    "<footer>",
    "<nav>"
  ]),
  Quiz(118, "Does <aside> have to be physically on the side of the screen?", [
    "No, it defines the relationship of the content, not the position",
    "Yes, it only works if it's on the right side",
    "Yes, CSS requires it to be on the left",
    "No, it's a hidden tag"
  ]),

  // --- Lesson 13: Footer: The Colophon and Copyright ---
  Quiz(119, "Which tag defines a footer for its nearest sectioning content?", [
    "<footer>",
    "<bottom>",
    "<end>",
    "<colophon>"
  ]),
  Quiz(120, "What information is commonly found in a <footer>?", [
    "Copyright info, contact links, and sitemaps",
    "The main title of the website",
    "Primary navigation links only",
    "The meta charset declaration"
  ]),
  Quiz(121, "Can a <section> or <article> have its own <footer>?", [
    "Yes, it is perfectly valid",
    "No, there can only be one footer per page",
    "Only if it's a Shan language website",
    "Only if it contains a signature"
  ]),
  Quiz(122, "Which tag would you use for 'Author Bio' at the end of a post?", [
    "<footer>",
    "<header>",
    "<nav>",
    "<main>"
  ]),

  // --- Lesson 14: The Div Tag: Generic Container ---
  Quiz(123, "What does <div> stand for?", [
    "Division",
    "Diversity",
    "Direct Video",
    "Digital View"
  ]),
  Quiz(124, "When should you use a <div> tag?", [
    "When no semantic tag fits the purpose, purely for styling",
    "For every single piece of text",
    "Instead of <main> for better SEO",
    "To define a navigation bar"
  ]),
  Quiz(125, "Is <div> a block-level or inline-level element?", [
    "Block-level (takes up the full width)",
    "Inline-level (only takes up content width)",
    "It depends on the browser",
    "It is hidden by default"
  ]),
  Quiz(126, "Why is overusing <div> (Div-itis) considered bad practice?", [
    "It makes the code harder to read and worse for SEO",
    "It causes the browser to crash",
    "It is not supported in HTML5",
    "It prevents Shan Unicode from displaying"
  ]),

  // --- Lesson 15: The Span Tag: Targeted Text ---
  Quiz(127, "What is the <span> tag used for?", [
    "To target and style a small part of text or inline content",
    "To create a new paragraph",
    "To define a large section of the page",
    "To add a line break"
  ]),
  Quiz(128, "Is <span> a block-level or inline-level element?", [
    "Inline-level",
    "Block-level",
    "Neither",
    "Both"
  ]),
  Quiz(129, "If you want to color only one word in a sentence, which tag is best?", [
    "<span>",
    "<div>",
    "<p>",
    "<section>"
  ]),
  Quiz(130, "What is the main difference between <div> and <span>?", [
    "Div is block-level; Span is inline-level",
    "Div is for text; Span is for images",
    "Div is semantic; Span is not",
    "There is no difference"
  ]),

  // --- Semantic Layout Review ---
  Quiz(131, "Which layout is more SEO-friendly?", [
    "Using <header>, <main>, <footer>",
    "Using only <div> for everything",
    "Using <table> for layout",
    "Using only <span> tags"
  ]),

  Quiz(132, "Which tag is best for a sidebar containing ads?", [
    "<aside>",
    "<nav>",
    "<section>",
    "<footer>"
  ]),
  Quiz(133, "Which tag should contain the site's main H1 heading usually?", [
    "<header>",
    "<nav>",
    "<aside>",
    "<footer>"
  ]),
  Quiz(134, "Can a <header> contain a <nav>?", [
    "Yes, it is a common pattern",
    "No, <nav> must be separate",
    "Only if using CSS",
    "Only on desktop sites"
  ]),
  Quiz(135, "Does using Semantic tags change how the page looks to the user?", [
    "No, it changes the meaning, not the default style",
    "Yes, it adds colors automatically",
    "Yes, it centers the text",
    "Yes, it adds borders"
  ]),

  // --- Block vs Inline ---
  Quiz(136, "Which of these is a block-level element?", [
    "<section>",
    "<a>",
    "<span>",
    "<img>"
  ]),
  Quiz(137, "Which of these is an inline-level element?", [
    "<a>",
    "<div>",
    "<p>",
    "<h1>"
  ]),
  Quiz(138, "A block-level element always starts on a...", [
    "New line",
    "New page",
    "The same line",
    "The footer"
  ]),
  Quiz(139, "Can an inline element like <span> contain a block element like <div>?", [
    "No, it is invalid HTML",
    "Yes, always",
    "Only if the Div is empty",
    "Only in HTML5"
  ]),

  // --- Combining Module 1 & 2 Concepts ---
  Quiz(140, "Which tag would you use for a copyright notice in a <footer>?", [
    "<small>",
    "<h1>",
    "<header>",
    "<main>"
  ]),
  Quiz(141, "To group a blog post title, author, and date, use:", [
    "<header>",
    "<aside>",
    "<span>",
    "<nav>"
  ]),
  Quiz(142, "Semantic tags help screen readers for which purpose?", [
    "Accessibility",
    "Background color",
    "Image loading",
    "Browser history"
  ]),
  Quiz(143, "Which element defines an introductory area?", [
    "<header>",
    "<footer>",
    "<main>",
    "<aside>"
  ]),
  Quiz(144, "Which tag is a generic container with NO semantic meaning?", [
    "<div>",
    "<section>",
    "<article>",
    "<aside>"
  ]),
  Quiz(145, "Which tag is used for the site's primary menu?", [
    "<nav>",
    "<header>",
    "<main>",
    "<aside>"
  ]),
  Quiz(146, "Is <main> allowed inside an <article>?", [
    "No, <main> must be a direct child of <body>",
    "Yes, always",
    "Only if the article is the main one",
    "Only on mobile"
  ]),
  Quiz(147, "Which tag is used for a group of forum posts?", [
    "<section>",
    "<nav>",
    "<header>",
    "<aside>"
  ]),
  Quiz(148, "Which tag represents a single forum post?", [
    "<article>",
    "<section>",
    "<main>",
    "<div>"
  ]),
  Quiz(149, "Which tag is best for a sidebar navigation?", [
    "<nav>",
    "<aside>",
    "<header>",
    "<footer>"
  ]),
  Quiz(150, "What is the default width of a block-level element?", [
    "100% of the parent container",
    "As wide as the text",
    "50% of the screen",
    "0 pixels"
  ]),

  // --- Advanced Module 2 Questions ---
  Quiz(151, "Which attribute can be used with <div> to identify it for CSS?", [
    "class or id",
    "type",
    "href",
    "src"
  ]),
  Quiz(152, "Can a <footer> contain a <nav>?", [
    "Yes, often used for footer links",
    "No, nav is only for the header",
    "Only if using HTML4",
    "Only in Shan language sites"
  ]),
  Quiz(153, "What happens if you use <section> instead of <div>?", [
    "The code becomes more semantic and SEO-friendly",
    "The text becomes bold",
    "The background turns gray",
    "Nothing changes for SEO"
  ]),
  Quiz(154, "Which tag is used for a list of links in the footer?", [
    "<ul> inside <footer>",
    "<li> inside <header>",
    "<p> inside <main>",
    "<div> inside <aside>"
  ]),
  Quiz(155, "Which semantic tag is best for a 'Breaking News' ticker?", [
    "<section> or <aside>",
    "<footer>",
    "<nav>",
    "<main>"
  ]),
  Quiz(156, "Can an <article> have multiple <section> tags?", [
    "Yes",
    "No",
    "Only if the article is in the sidebar",
    "No, a section must contain an article"
  ]),
  Quiz(157, "The <nav> tag should be used for:", [
    "Major navigation blocks",
    "Every single link on the page",
    "Social media icons only",
    "Internal page links only"
  ]),
  Quiz(158, "Is <main> required for a valid HTML5 document?", [
    "No, but it is highly recommended for accessibility",
    "Yes, it won't load without it",
    "Yes, for Shan script only",
    "No, only <body> is required"
  ]),
  Quiz(159, "Which tag acts as a container for 'Marginalia'?", [
    "<aside>",
    "<article>",
    "<section>",
    "<footer>"
  ]),
  Quiz(160, "Which element is used to highlight a specific part of text for style?", [
    "<span>",
    "<div>",
    "<main>",
    "<header>"
  ]),

  // --- Identifying Tags ---
  Quiz(161, "Which is NOT a semantic tag?", [
    "<div>",
    "<article>",
    "<header>",
    "<nav>"
  ]),
  Quiz(162, "Which is a block element?", [
    "<h1>",
    "<a>",
    "<span>",
    "<img>"
  ]),
  Quiz(163, "Which is an inline element?", [
    "<img>",
    "<div>",
    "<p>",
    "<ul>"
  ]),
  Quiz(164, "Where should sitemap links go?", [
    "<footer>",
    "<header>",
    "<aside>",
    "<main>"
  ]),
  Quiz(165, "A 'Search' form usually belongs in which semantic tag?", [
    "<header> or <aside>",
    "<footer>",
    "<article>",
    "<main>"
  ]),
  Quiz(166, "Which tag describes a standalone piece of content?", [
    "<article>",
    "<div>",
    "<span>",
    "<nav>"
  ]),
  Quiz(167, "Is <header> the same as <head>?", [
    "No, <head> is for metadata; <header> is for visible layout",
    "Yes, they are identical",
    "Yes, in modern browsers",
    "No, <header> is only for mobile"
  ]),
  Quiz(168, "Which tag contains the visible title of a blog post?", [
    "<h1> inside <header>",
    "<title> inside <head>",
    "<span> inside <footer>",
    "<div> inside <nav>"
  ]),
  Quiz(169, "If you want to wrap a whole website layout, which tag is best for the outer container?", [
    "<div>",
    "<span>",
    "<nav>",
    "<aside>"
  ]),
  Quiz(170, "Which tag is best for a 'Back to Top' link at the bottom?", [
    "<footer>",
    "<header>",
    "<main>",
    "<nav>"
  ]),

  // --- Practical Layout Questions ---
  Quiz(171, "To separate the navigation from the content, use:", [
    "<nav> and <main>",
    "<header> and <footer>",
    "<div> and <span>",
    "<aside> and <aside>"
  ]),
  Quiz(172, "Semantic tags were introduced in which HTML version?", [
    "HTML5",
    "HTML4",
    "XHTML",
    "HTML3"
  ]),
  Quiz(173, "Which tag is used for a pull-quote next to an article?", [
    "<aside>",
    "<header>",
    "<main>",
    "<nav>"
  ]),
  Quiz(174, "Can you have multiple <header> tags on one page?", [
    "Yes, one for the page and others for articles/sections",
    "No, only one per page",
    "Only if using different classes",
    "Only on mobile apps"
  ]),
  Quiz(175, "Does a <div> have any visual style by default?", [
    "No, it has no default styling (no borders, colors)",
    "Yes, it has a black border",
    "Yes, it adds a gray background",
    "Yes, it centers text"
  ]),
  Quiz(176, "What happens to text inside <span> if no CSS is applied?", [
    "It looks like normal text",
    "It becomes bold",
    "It changes color",
    "It moves to a new line"
  ]),
  Quiz(177, "Which tag is a 'Self-Contained' piece of content?", [
    "<article>",
    "<section>",
    "<div>",
    "<nav>"
  ]),
  Quiz(178, "Which tag is used for a list of social media links in the sidebar?", [
    "<ul> inside <aside>",
    "<ol> inside <main>",
    "<li> inside <header>",
    "<nav> inside <footer>"
  ]),
  Quiz(179, "Which tag is used for the author's contact information?", [
    "<address> (usually inside <footer>)",
    "<nav>",
    "<aside>",
    "<header>"
  ]),
  Quiz(180, "Which is a valid nested structure?", [
    "<main><section><article></article></section></main>",
    "<head><body></body></head>",
    "<nav><footer></footer></nav>",
    "<span><div></div></span>"
  ]),

  // --- Final Module 2 Review ---
  Quiz(181, "What is the best tag for a website's slogan?", [
    "<header>",
    "<nav>",
    "<aside>",
    "<footer>"
  ]),
  Quiz(182, "Which tag is used for a copyright symbol and year?", [
    "<footer>",
    "<main>",
    "<aside>",
    "<header>"
  ]),
  Quiz(183, "Which tag helps screen readers skip to the content?", [
    "<main>",
    "<nav>",
    "<aside>",
    "<footer>"
  ]),
  Quiz(184, "If you want to style a specific letter in a logo, use:", [
    "<span>",
    "<div>",
    "<h1>",
    "<section>"
  ]),
  Quiz(185, "Which is a block-level element?", [
    "<p>",
    "<a>",
    "<span>",
    "<b>"
  ]),
  Quiz(186, "Which tag is used for a group of related images in an article?", [
    "<section>",
    "<nav>",
    "<aside>",
    "<footer>"
  ]),
  Quiz(187, "Which tag is best for a table of contents?", [
    "<nav>",
    "<header>",
    "<footer>",
    "<aside>"
  ]),
  Quiz(188, "Can a <nav> exist outside of a <header>?", [
    "Yes, absolutely",
    "No, it must be inside",
    "Only if it's in the footer",
    "Only for desktop sites"
  ]),
  Quiz(189, "Which attribute is used to group divs for CSS?", [
    "class",
    "id",
    "name",
    "value"
  ]),
  Quiz(190, "Which semantic tag is used for a legal disclaimer?", [
    "<footer>",
    "<header>",
    "<nav>",
    "<main>"
  ]),
  Quiz(191, "Does a <span> tag cause a line break?", [
    "No, it is an inline element",
    "Yes, it is a block element",
    "Only if it's inside a div",
    "Yes, always"
  ]),
  Quiz(192, "Does a <div> tag cause a line break?", [
    "Yes, it is a block element",
    "No, it is an inline element",
    "Only if it contains text",
    "No, never"
  ]),
  Quiz(193, "Which tag is best for a blog sidebar?", [
    "<aside>",
    "<section>",
    "<article>",
    "<nav>"
  ]),
  Quiz(194, "Which tag is used for a horizontal navigation menu?", [
    "<nav>",
    "<header>",
    "<aside>",
    "<footer>"
  ]),
  Quiz(195, "Which tag should contain the main logo?", [
    "<header>",
    "<main>",
    "<nav>",
    "<aside>"
  ]),
  Quiz(196, "Is <article> only for text-based content?", [
    "No, it can contain images, videos, and tables too",
    "Yes, it is only for paragraphs",
    "Yes, only for Shan script",
    "No, it is only for links"
  ]),
  Quiz(197, "Which tag is used to wrap a single blog post?", [
    "<article>",
    "<section>",
    "<div>",
    "<main>"
  ]),
  Quiz(198, "Which tag should you use for a website sitemap page?", [
    "<main>",
    "<header>",
    "<aside>",
    "<footer>"
  ]),
  Quiz(199, "Which is the correct closing tag for a division?", [
    "</div>",
    "</division>",
    "</divs>",
    "</span>"
  ]),
  Quiz(200, "Great job! Which module is next after Semantic Layout?", [
    "Module 3: Text Formatting and Media",
    "Module 1: The Basics",
    "Module 7: Deployment",
    "CSS Styling"
  ]),
];
final List<Quiz> htmlQuizM3 = [
  // --- Lesson 16: Hierarchy: H1 through H6 ---
  Quiz(201, "How many levels of HTML headings are there?", [
    "6",
    "5",
    "10",
    "3"
  ]),
  Quiz(202, "Which heading tag represents the highest level of importance?", [
    "<h1>",
    "<h6>",
    "<head>",
    "<header>"
  ]),
  Quiz(203, "Which heading tag is the smallest and least important?", [
    "<h6>",
    "<h1>",
    "<h3>",
    "<small>"
  ]),
  Quiz(204, "Should you use heading tags to make text look big or bold?", [
    "No, use them for document structure and hierarchy",
    "Yes, it is the best way to resize text",
    "Only if you don't know CSS",
    "Yes, but only H1 and H2"
  ]),
  Quiz(205, "Is it recommended to skip heading levels (e.g., going from H1 to H3)?", [
    "No, they should follow a logical descending order",
    "Yes, it doesn't matter",
    "Yes, if you want smaller text faster",
    "No, H1 must always be followed by H6"
  ]),

  // --- Lesson 17: The Paragraph: Writing in Shan Blocks ---
  Quiz(206, "Which tag is used to define a paragraph?", [
    "<p>",
    "<para>",
    "<text>",
    "<div>"
  ]),
  Quiz(207, "Does the <p> tag start on a new line by default?", [
    "Yes, it is a block-level element",
    "No, it stays on the same line",
    "Only if it contains Shan script",
    "Only in modern browsers"
  ]),
  Quiz(208, "What happens if you put several spaces inside a <p> tag in your code?", [
    "The browser collapses them into a single space",
    "The browser shows all the spaces",
    "The browser creates a line break",
    "The browser displays an error"
  ]),

  // --- Lesson 18: Strong vs. Bold ---
  Quiz(209, "Which tag is used to indicate that text has 'Strong Importance'?", [
    "<strong>",
    "<b>",
    "<em>",
    "<bold>"
  ]),
  Quiz(210, "Which tag is used to make text bold purely for visual style?", [
    "<b>",
    "<strong>",
    "<i>",
    "<style>"
  ]),
  Quiz(211, "Which tag is better for Accessibility (Screen Readers)?", [
    "<strong>",
    "<b>",
    "<span>",
    "<div>"
  ]),

  // --- Lesson 19: Em vs. Italic ---
  Quiz(212, "Which tag is used to add 'Emphasized Stress' to a word?", [
    "<em>",
    "<i>",
    "<strong>",
    "<cite>"
  ]),
  Quiz(213, "Which tag is used to make text italic purely for appearance?", [
    "<i>",
    "<em>",
    "<s>",
    "<u>"
  ]),
  Quiz(214, "What is the default visual effect of the <em> tag?", [
    "Italicized text",
    "Bold text",
    "Underlined text",
    "Highlighted text"
  ]),

  // --- Lesson 20: Underline and Strikethrough ---
  Quiz(215, "Which tag is used to underline text?", [
    "<u>",
    "<ins>",
    "<line>",
    "<under>"
  ]),
  Quiz(216, "Which tag represents text that is no longer correct (Strikethrough)?", [
    "<s>",
    "<del>",
    "<strike>",
    "<u>"
  ]),
  Quiz(217, "Which tag is often used to show deleted text in a document update?", [
    "<del>",
    "<s>",
    "<u>",
    "<br>"
  ]),

  // --- Lesson 21: Line Breaks and Horizontal Rules ---
  Quiz(218, "Which tag is used to create a single line break?", [
    "<br>",
    "<break>",
    "<lb>",
    "<hr>"
  ]),
  Quiz(219, "Which tag creates a horizontal line to separate content?", [
    "<hr>",
    "<line>",
    "<br>",
    "<border>"
  ]),
  Quiz(220, "Is <br> an empty tag (no closing tag required)?", [
    "Yes",
    "No",
    "Only in HTML5",
    "Only in Shan script"
  ]),

  // --- Lesson 22: Preformatted Text and Code Snippets ---
  Quiz(221, "Which tag preserves both spaces and line breaks exactly as written?", [
    "<pre>",
    "<code>",
    "<p>",
    "<span>"
  ]),
  Quiz(222, "Which tag is used to define a short piece of computer code?", [
    "<code>",
    "<pre>",
    "<var>",
    "<script>"
  ]),
  Quiz(223, "Which font is typically used by browsers for <pre> and <code>?", [
    "Monospace",
    "Serif",
    "Sans-serif",
    "Cursive"
  ]),

  // --- Lesson 23: Blockquotes ---
  Quiz(224, "Which tag is used for a long section of quoted content?", [
    "<blockquote>",
    "<q>",
    "<cite>",
    "<quote>"
  ]),
  Quiz(225, "Which tag is used for short, inline quotations?", [
    "<q>",
    "<blockquote>",
    "<cite>",
    "<i>"
  ]),
  Quiz(226, "Which attribute can be used in <blockquote> to link to the source?", [
    "cite",
    "href",
    "src",
    "link"
  ]),

  // --- Lesson 24: Superscript and Subscript ---
  Quiz(227, "Which tag is used to create Superscript (like \$2^{nd}\$)?", [
    "<sup>",
    "<sub>",
    "<top>",
    "<up>"
  ]),
  Quiz(228, "Which tag is used for Subscript (like \$H_{2}O\$)?", [
    "<sub>",
    "<sup>",
    "<low>",
    "<down>"
  ]),

  // --- General Module 3 Mixed Questions ---
  Quiz(229, "How many H1 tags should you ideally have on one page?", [
    "1",
    "As many as you want",
    "0",
    "10"
  ]),
  Quiz(230, "Which element is used to represent a thematic shift in a story?", [
    "<hr>",
    "<br>",
    "<p>",
    "<div>"
  ]),
  Quiz(231, "Which tag should wrap a computer code block for best results?", [
    "<pre> containing a <code> tag",
    "<code> containing a <pre> tag",
    "<p> containing a <code> tag",
    "<div> containing a <script> tag"
  ]),
  Quiz(232, "Which tag would you use to show '25% OFF' with a line through it?", [
    "<s>",
    "<u>",
    "<em>",
    "<strong>"
  ]),
  Quiz(233, "Which tag is for a person's name mentioned as a reference in a quote?", [
    "<cite>",
    "<q>",
    "<blockquote>",
    "<b>"
  ]),
  Quiz(234, "What does the <mark> tag do?", [
    "Highlights text with a yellow background",
    "Makes text bold",
    "Underlines text",
    "Adds a comment"
  ]),
  Quiz(235, "Which heading level is the default for most site titles?", [
    "h1",
    "h3",
    "h6",
    "head"
  ]),
  Quiz(236, "Can you put a <p> tag inside an <h1> tag?", [
    "No, it is invalid HTML",
    "Yes, always",
    "Only if using CSS",
    "Only in the header"
  ]),
  Quiz(237, "Which tag is a 'Self-Closing' tag?", [
    "<hr>",
    "<p>",
    "<h1>",
    "<blockquote>"
  ]),
  Quiz(238, "Which tag is used for 'Keyboard Input' display?", [
    "<kbd>",
    "<code>",
    "<pre>",
    "<var>"
  ]),
  Quiz(239, "Which tag defines an abbreviation or acronym?", [
    "<abbr>",
    "<acro>",
    "<span>",
    "<small>"
  ]),
  Quiz(240, "Which attribute provides the full version of an abbreviation?", [
    "title",
    "alt",
    "href",
    "name"
  ]),
  Quiz(241, "Which tag is used to define the direction of text?", [
    "<bdo>",
    "<dir>",
    "<span>",
    "<p>"
  ]),
  Quiz(242, "Which tag is used for a contact address?", [
    "<address>",
    "<footer>",
    "<aside>",
    "<p>"
  ]),
  Quiz(243, "Which tag defines work title (like a book or movie name)?", [
    "<cite>",
    "<q>",
    "<em>",
    "<strong>"
  ]),
  Quiz(244, "What is the visual difference between <strong> and <b>?", [
    "None, they both usually appear bold",
    "Strong is bigger",
    "Bold is darker",
    "Strong is red"
  ]),
  Quiz(245, "What is the visual difference between <em> and <i>?", [
    "None, they both usually appear italicized",
    "Em is larger",
    "Italic is more slanted",
    "Em is underlined"
  ]),
  Quiz(246, "Is <p> a block element?", [
    "Yes",
    "No",
    "Only in Module 3",
    "Only for Shan script"
  ]),
  Quiz(247, "Which heading is usually used for sub-sections?", [
    "h2 or h3",
    "h1",
    "h6",
    "head"
  ]),
  Quiz(248, "Which tag would you use for a chemical formula like \$CO_{2}\$?", [
    "<sub>",
    "<sup>",
    "<small>",
    "<ins>"
  ]),
  Quiz(249, "Which tag would you use for a math power like \$10^{2}\$?", [
    "<sup>",
    "<sub>",
    "<big>",
    "<mark>"
  ]),
  Quiz(250, "If you want to write a letter exactly as it looks on paper, use:", [
    "<pre>",
    "<p>",
    "<div>",
    "<span>"
  ]),
  Quiz(251, "Which tag is used to highlight text?", [
    "<mark>",
    "<strong>",
    "<u>",
    "<ins>"
  ]),
  Quiz(252, "Which tag is for a line break in a poem?", [
    "<br>",
    "<hr>",
    "<p>",
    "<div>"
  ]),
  Quiz(253, "Which tag is for a code variable?", [
    "<var>",
    "<code>",
    "<pre>",
    "<kbd>"
  ]),
  Quiz(254, "Which tag is for 'Deleted' text?", [
    "<del>",
    "<ins>",
    "<s>",
    "<u>"
  ]),
  Quiz(255, "Which tag is for 'Inserted' text (underlined)?", [
    "<ins>",
    "<del>",
    "<u>",
    "<b>"
  ]),
  Quiz(256, "Which tag is for a 'Sample' output from a computer program?", [
    "<samp>",
    "<code>",
    "<var>",
    "<kbd>"
  ]),
  Quiz(257, "Which tag defines a term in a definition list?", [
    "<dt>",
    "<dd>",
    "<dl>",
    "<li>"
  ]),
  Quiz(258, "Which tag defines the description of a term in a list?", [
    "<dd>",
    "<dt>",
    "<dl>",
    "<li>"
  ]),
  Quiz(259, "Can <blockquote> contain other tags like <p> and <h1>?", [
    "Yes",
    "No",
    "Only <p>",
    "Only <footer>"
  ]),
  Quiz(260, "Which tag is used for smaller print (like legal notes)?", [
    "<small>",
    "<sub>",
    "<span>",
    "<p>"
  ]),
  Quiz(261, "Which tag represents text that is styled differently (like a misspelled word)?", [
    "<u>",
    "<i>",
    "<b>",
    "<s>"
  ]),
  Quiz(262, "Which attribute of <bdo> is required?", [
    "dir",
    "lang",
    "cite",
    "id"
  ]),
  Quiz(263, "Which direction value makes text go right-to-left?", [
    "rtl",
    "ltr",
    "auto",
    "reverse"
  ]),
  Quiz(264, "What is the result of <p>Hello<br>World</p>?", [
    "Hello and World on two separate lines",
    "Hello World on one line",
    "Hello and World in two paragraphs",
    "An error"
  ]),
  Quiz(265, "What is the result of <p>Line 1</p><hr><p>Line 2</p>?", [
    "Two lines of text with a horizontal line in between",
    "Two lines of text on the same line",
    "A box with text inside",
    "A line break"
  ]),
  Quiz(266, "Which tag is best for a technical manual?", [
    "<code>",
    "<em>",
    "<u>",
    "<s>"
  ]),
  Quiz(267, "Which tag is used to wrap a multi-line poem to keep its format?", [
    "<pre>",
    "<p>",
    "<blockquote>",
    "<div>"
  ]),
  Quiz(268, "Can you use <h1> multiple times if they are in different <section> tags?", [
    "Yes, it is common in modern semantic HTML",
    "No, it will break the website",
    "Only on mobile devices",
    "No, Google will ban you"
  ]),
  Quiz(269, "Which is a 'Phrase Tag' used for highlighting?", [
    "<em>",
    "<hr>",
    "<br>",
    "<p>"
  ]),
  Quiz(270, "What does the <cite> tag usually look like in a browser?", [
    "Italicized",
    "Bold",
    "Underlined",
    "Normal"
  ]),
  Quiz(271, "Which tag is used to show text as 'Sample Output'?", [
    "<samp>",
    "<kbd>",
    "<code>",
    "<pre>"
  ]),
  Quiz(272, "Does <hr> require a closing </hr> tag?", [
    "No",
    "Yes",
    "Only in older versions",
    "Only for horizontal lines"
  ]),
  Quiz(273, "Which tag would you use for a citation in a paper?", [
    "<cite>",
    "<b>",
    "<u>",
    "<s>"
  ]),
  Quiz(274, "Which tag makes text look like a typewriter?", [
    "<pre> or <code>",
    "<p>",
    "<b>",
    "<i>"
  ]),
  Quiz(275, "Which is a semantic heading tag?", [
    "<h2>",
    "<head>",
    "<header>",
    "<heading>"
  ]),
  Quiz(276, "Which is NOT a text formatting tag?", [
    "<div>",
    "<strong>",
    "<em>",
    "<sub>"
  ]),
  Quiz(277, "Which tag is for important text?", [
    "<strong>",
    "<i>",
    "<u>",
    "<s>"
  ]),
  Quiz(278, "Which tag is for stressed emphasis?", [
    "<em>",
    "<b>",
    "<del>",
    "<br>"
  ]),
  Quiz(279, "Which tag is for a quotation source?", [
    "<cite>",
    "<q>",
    "<blockquote>",
    "<footer>"
  ]),
  Quiz(280, "Which is a block-level text element?", [
    "<blockquote>",
    "<span>",
    "<a>",
    "<strong>"
  ]),
  Quiz(281, "Which tag is an inline text element?", [
    "<code>",
    "<div>",
    "<h1>",
    "<p>"
  ]),
  Quiz(282, "Which tag should contain the main title of a blog post?", [
    "<h1>",
    "<h4>",
    "<p>",
    "<strong>"
  ]),
  Quiz(283, "Which tag helps search engines understand the importance of a word?", [
    "<strong>",
    "<b>",
    "<i>",
    "<u>"
  ]),
  Quiz(284, "Which tag preserves white space?", [
    "<pre>",
    "<p>",
    "<div>",
    "<span>"
  ]),
  Quiz(285, "Which tag is for a short inline quote?", [
    "<q>",
    "<blockquote>",
    "<cite>",
    "<ins>"
  ]),
  Quiz(286, "Which tag is for computer code?", [
    "<code>",
    "<var>",
    "<kbd>",
    "<pre>"
  ]),
  Quiz(287, "Which tag is for a math formula variable?", [
    "<var>",
    "<code>",
    "<kbd>",
    "<samp>"
  ]),
  Quiz(288, "Which tag is for a thematic break?", [
    "<hr>",
    "<br>",
    "<p>",
    "<div>"
  ]),
  Quiz(289, "Which tag is for a paragraph of text?", [
    "<p>",
    "<div>",
    "<span>",
    "<a>"
  ]),
  Quiz(290, "Which tag is for a subtitle?", [
    "<h2>",
    "<h1>",
    "<h6>",
    "<p>"
  ]),
  Quiz(291, "Which heading is most likely to be used for footer sections?", [
    "h5 or h6",
    "h1",
    "h2",
    "h3"
  ]),
  Quiz(292, "Does <p> allow nesting other <p> tags?", [
    "No",
    "Yes",
    "Only in Module 3",
    "Only for Shan script"
  ]),
  Quiz(293, "Which tag can be used to indicate text that was struck out?", [
    "<s>",
    "<u>",
    "<i>",
    "<b>"
  ]),
  Quiz(294, "Which tag is used for an acronym?", [
    "<abbr>",
    "<span>",
    "<small>",
    "<p>"
  ]),
  Quiz(295, "Which character is used to indicate a space that shouldn't break a line?", [
    "&nbsp;",
    "<space>",
    "\n",
    "&space;"
  ]),
  Quiz(296, "What tag makes text appear as a superscript?", [
    "<sup>",
    "<sub>",
    "<up>",
    "<top>"
  ]),
  Quiz(297, "What tag makes text appear as a subscript?", [
    "<sub>",
    "<sup>",
    "<down>",
    "<low>"
  ]),
  Quiz(298, "Which tag preserves line breaks in your HTML source code?", [
    "<pre>",
    "<p>",
    "<div>",
    "<br>"
  ]),
  Quiz(299, "Which is the correct tag for italicized text with stress?", [
    "<em>",
    "<i>",
    "<b>",
    "<u>"
  ]),
  Quiz(300, "Module 3 focuses on which part of HTML?", [
    "Text Formatting and Structure",
    "Tables and Lists",
    "Forms and Inputs",
    "Deployment and SEO"
  ]),
];
final List<Quiz> htmlQuizM4 = [
  // --- Lesson 25: The Anchor Tag: Creating Hyperlinks ---
  Quiz(301, "Which HTML tag is used to create a hyperlink?", [
    "<a>",
    "<link>",
    "<href>",
    "<url>"
  ]),
  Quiz(302, "Which attribute is required for an anchor tag to function as a link?", [
    "href",
    "src",
    "link",
    "target"
  ]),
  Quiz(303, "What does the 'a' in the <a> tag stand for?", [
    "Anchor",
    "Address",
    "Arrow",
    "Article"
  ]),
  Quiz(304, "Which of the following is a valid hyperlink syntax?", [
    "<a href='https://google.com'>Visit Google</a>",
    "<a link='https://google.com'>Visit Google</a>",
    "<link href='https://google.com'>Visit Google</link>",
    "<a>https://google.com</a>"
  ]),

  // --- Lesson 26: Relative vs. Absolute Paths ---
  Quiz(305, "What is an Absolute Path?", [
    "A full URL that includes the protocol (e.g., https://site.com)",
    "A path that points to a file within the same folder",
    "A path that only works on your local computer",
    "A link to an ID on the same page"
  ]),
  Quiz(306, "What is a Relative Path?", [
    "A path that points to a file relative to the current folder",
    "A full URL starting with http://",
    "A link to a specific email address",
    "A path used only for images"
  ]),

  Quiz(307, "If you want to link to a page named 'about.html' in the same folder, what should you use?", [
    "href='about.html'",
    "href='/about.html'",
    "href='https://about.html'",
    "href='C:/users/about.html'"
  ]),
  Quiz(308, "What does the '../' notation in a relative path mean?", [
    "Move up one folder level",
    "Move down into a folder",
    "Reload the current page",
    "Link to an external website"
  ]),

  // --- Lesson 27: The Target Attribute ---
  Quiz(309, "Which attribute is used to control how a link opens?", [
    "target",
    "mode",
    "open",
    "window"
  ]),
  Quiz(310, "Which value for the target attribute opens a link in a new tab?", [
    "_blank",
    "_self",
    "_parent",
    "_top"
  ]),
  Quiz(311, "What is the default value of the target attribute?", [
    "_self",
    "_blank",
    "_new",
    "_parent"
  ]),
  Quiz(312, "Why is using target='_blank' useful?", [
    "It keeps users on your site while opening a new link elsewhere",
    "It makes the website load faster",
    "It is required for all external links by law",
    "It encrypts the link for security"
  ]),

  // --- Lesson 28: ID Attributes: Section Linking ---
  Quiz(313, "How do you link to a specific section on the same page?", [
    "Using the # symbol followed by the element's ID",
    "Using the @ symbol followed by the class name",
    "Using the ? symbol followed by the name",
    "It is impossible in pure HTML"
  ]),
  Quiz(314, "If an element has id='contact', how do you link to it?", [
    "href='#contact'",
    "href='contact'",
    "href='.contact'",
    "href='id:contact'"
  ]),
  Quiz(315, "Can multiple elements share the same ID attribute on one page?", [
    "No, IDs must be unique on a single page",
    "Yes, as long as they are different tags",
    "Yes, if they are in the same section",
    "Only if using Shan script"
  ]),
  Quiz(316, "What attribute is used to give an element a unique identifier?", [
    "id",
    "class",
    "name",
    "link-id"
  ]),

  // --- Lesson 29: The Download Attribute ---
  Quiz(317, "Which attribute prompts the browser to download a file instead of opening it?", [
    "download",
    "save",
    "file",
    "action"
  ]),
  Quiz(318, "How can you specify a new filename for a downloaded file in HTML?", [
    "By giving a value to the download attribute (e.g., download='mynewfile.pdf')",
    "By changing the href value",
    "HTML cannot rename files on download",
    "Using the title attribute"
  ]),
  Quiz(319, "Does the download attribute work for cross-origin (external) URLs in most modern browsers?", [
    "No, it usually works only for same-origin (internal) files",
    "Yes, it works for any link on the internet",
    "Only if the user allows it in settings",
    "Only for .exe files"
  ]),

  // --- Lesson 30: Email and Phone Links ---
  Quiz(320, "What prefix is used in the href to create an email link?", [
    "mailto:",
    "email:",
    "send:",
    "msg:"
  ]),
  Quiz(321, "What prefix is used in the href to create a phone call link?", [
    "tel:",
    "call:",
    "phone:",
    "mobile:"
  ]),
  Quiz(322, "Which syntax is correct for a phone link?", [
    "<a href='tel:+123456789'>Call Us</a>",
    "<a call='+123456789'>Call Us</a>",
    "<link href='tel:+123456789'>Call Us</link>",
    "<a href='phone:+123456789'>Call Us</a>"
  ]),
  Quiz(323, "Which syntax is correct for an email link?", [
    "<a href='mailto:info@site.com'>Email Us</a>",
    "<a email='info@site.com'>Email Us</a>",
    "<a>mailto:info@site.com</a>",
    "<a href='send:info@site.com'>Email Us</a>"
  ]),

  // --- Lesson 31: Building a Navigation Menu ---
  Quiz(324, "What is the most common semantic way to structure a navigation menu?", [
    "A <ul> inside a <nav> tag",
    "A series of <div> tags",
    "A <table> with links",
    "A <footer> with buttons"
  ]),

  Quiz(325, "Which tag should wrap a group of primary navigation links?", [
    "<nav>",
    "<menu>",
    "<header>",
    "<aside>"
  ]),
  Quiz(326, "Why is a <ul> used for navigation menus?", [
    "It provides a clean, list-based structure that screen readers understand",
    "It automatically centers the links",
    "It makes the links turn blue",
    "It is the only way to make links work horizontally"
  ]),

  // --- General Anchor Tag Review ---
  Quiz(327, "Which attribute is used to provide a tooltip when hovering over a link?", [
    "title",
    "alt",
    "name",
    "hover"
  ]),
  Quiz(328, "Can an image be turned into a link?", [
    "Yes, by wrapping the <img> tag inside an <a> tag",
    "No, only text can be links",
    "Only if using CSS",
    "Yes, by adding href to the <img> tag"
  ]),
  Quiz(329, "What happens if you use href='#'?", [
    "It scrolls the user back to the top of the current page",
    "It opens the Google homepage",
    "It breaks the website",
    "It downloads the current HTML file"
  ]),
  Quiz(330, "What is the 'active' state of a link?", [
    "The moment the link is being clicked",
    "A link that has already been visited",
    "A link that is currently being hovered over",
    "A link that points to a secure site"
  ]),
  Quiz(331, "How do you link to a file in a folder named 'docs'?", [
    "href='docs/file.pdf'",
    "href='folder:docs/file.pdf'",
    "href='docs.file.pdf'",
    "href='/file.pdf'"
  ]),
  Quiz(332, "Which protocol is used for secure links?", [
    "https://",
    "http://",
    "ftp://",
    "mailto:"
  ]),
  Quiz(333, "Which attribute should you add for security when using target='_blank'?", [
    "rel='noopener'",
    "type='secure'",
    "security='high'",
    "rel='external'"
  ]),
  Quiz(334, "Can you link to a CSS file using the <a> tag?", [
    "No, <a> is for navigation; use <link> for CSS",
    "Yes, it is the standard way",
    "Only if the CSS is in the same folder",
    "Only if you want the user to download the CSS"
  ]),
  Quiz(335, "What is a 'Broken Link'?", [
    "A link that points to a page that doesn't exist (404 Error)",
    "A link that has no color",
    "A link that opens in a new tab",
    "A link to a virus"
  ]),
  Quiz(336, "Which attribute can be used to describe the relationship between the current page and the linked page?", [
    "rel",
    "link-type",
    "related",
    "type"
  ]),
  Quiz(337, "If you want to link to your home page, which is usually the 'index.html', what is the best practice?", [
    "href='index.html'",
    "href='home.html'",
    "href='main.html'",
    "href='start.html'"
  ]),
  Quiz(338, "Which tag is used for the individual items in a navigation menu?", [
    "<li>",
    "<nav-item>",
    "<link-item>",
    "<item>"
  ]),
  Quiz(339, "How do you link to the top of the page without using a specific ID?", [
    "href='#'",
    "href='top'",
    "href='_top'",
    "href='0'"
  ]),
  Quiz(340, "Which of these is NOT a valid value for the target attribute?", [
    "_open",
    "_self",
    "_blank",
    "_top"
  ]),
  Quiz(341, "Can you nest an <a> tag inside another <a> tag?", [
    "No, it is invalid HTML",
    "Yes, always",
    "Only if they point to different sites",
    "Only in headers"
  ]),
  Quiz(342, "What is the best way to link to an external site like Facebook?", [
    "Absolute Path",
    "Relative Path",
    "ID Link",
    "Download Link"
  ]),
  Quiz(343, "What attribute defines the name of a document to use in a script or to identify a form?", [
    "name",
    "id",
    "href",
    "class"
  ]),
  Quiz(344, "Which tag is used to create a link to an internal style sheet?", [
    "<style>",
    "<link>",
    "<a>",
    "<script>"
  ]),
  Quiz(345, "What is the 'visited' state of a link?", [
    "A link the user has clicked on before",
    "A link that is currently active",
    "A link that is broken",
    "A link that is external"
  ]),
  Quiz(346, "How do you create a link that automatically opens the user's SMS app?", [
    "sms:+123456789",
    "msg:+123456789",
    "tel:+123456789",
    "text:+123456789"
  ]),
  Quiz(347, "Which attribute can be used to set the subject of a 'mailto' link?", [
    "?subject=",
    "&subject=",
    "subject:",
    "/subject"
  ]),
  Quiz(348, "Which of these is a valid mailto link with a subject?", [
    "href='mailto:info@site.com?subject=Hello'",
    "href='mailto:info@site.com&subject=Hello'",
    "href='mailto:info@site.com/subject=Hello'",
    "href='email:info@site.com?subject=Hello'"
  ]),
  Quiz(349, "When linking to a different section on a DIFFERENT page, what is the syntax?", [
    "href='page.html#section-id'",
    "href='page.html/section-id'",
    "href='page.html?section-id'",
    "href='#section-id/page.html'"
  ]),
  Quiz(350, "What is the standard color of an unvisited link in most browsers?", [
    "Blue",
    "Purple",
    "Red",
    "Green"
  ]),
  Quiz(351, "What is the standard color of a visited link in most browsers?", [
    "Purple",
    "Blue",
    "Red",
    "Black"
  ]),
  Quiz(352, "Can you link to a PDF file?", [
    "Yes, using the <a> tag with the path to the .pdf",
    "No, HTML only links to .html files",
    "Only if you use the <pdf> tag",
    "Only if you use a script"
  ]),
  Quiz(353, "Which attribute is used to specify the language of the linked document?", [
    "hreflang",
    "lang",
    "target-lang",
    "charset"
  ]),
  Quiz(354, "What is the purpose of the 'rel' attribute value 'nofollow'?", [
    "It tells search engines not to follow or pass authority to the link",
    "It makes the link unclickable",
    "It hides the link from the user",
    "It opens the link in a background tab"
  ]),
  Quiz(355, "Which character is used to start the query string in a URL?", [
    "?",
    "#",
    "&",
    "!"
  ]),
  Quiz(356, "Which character is used to separate multiple parameters in a query string?", [
    "&",
    "?",
    "#",
    ";"
  ]),
  Quiz(357, "If your URL is 'mysite.com/contact', is this an absolute or relative path?", [
    "Relative (it lacks the protocol/domain root)",
    "Absolute",
    "External",
    "Broken"
  ]),
  Quiz(358, "What is the root relative path?", [
    "A path starting with '/' that starts from the website root folder",
    "A path that starts with '../'",
    "A path that links to a parent directory",
    "A path to an external server"
  ]),
  Quiz(359, "How do you specify a link that does nothing when clicked (often used with JS)?", [
    "href='javascript:void(0)'",
    "href='stop'",
    "href='none'",
    "href='null'"
  ]),
  Quiz(360, "Which element is commonly used to create 'Breadcrumb' navigation?", [
    "An ordered or unordered list of links",
    "A single <p> tag",
    "A series of <header> tags",
    "A <table>"
  ]),
  Quiz(361, "Which attribute specifies where the linked document will be opened if the target is a frame?", [
    "target",
    "frame",
    "src",
    "rel"
  ]),
  Quiz(362, "Is the 'target' attribute still used in modern web development?", [
    "Yes, especially for external links",
    "No, it was removed in HTML5",
    "Only for internal links",
    "Only in framesets"
  ]),
  Quiz(363, "Can <a> tags contain <div> tags in HTML5?", [
    "Yes, you can wrap a link around a block-level element",
    "No, only text and images",
    "Only if using a specific ID",
    "Only in the <footer>"
  ]),
  Quiz(364, "Which tag is used to create a link to a specific phone number?", [
    "<a href='tel:...'>",
    "<a href='phone:...'>",
    "<call>",
    "<link tel='...'>"
  ]),
  Quiz(365, "What is the best way to handle 'Jump Links' for accessibility?", [
    "Use meaningful IDs and ensure focus moves to the section",
    "Use target='_blank'",
    "Only use links at the top of the page",
    "Hide the links from screen readers"
  ]),
  Quiz(366, "What does the attribute rel='prev' signify?", [
    "The link points to the previous document in a series",
    "The link is a preview of the next page",
    "The link is a private link",
    "The link is broken"
  ]),
  Quiz(367, "What does the attribute rel='next' signify?", [
    "The link points to the next document in a series",
    "The link will open automatically",
    "The link points to a navigation menu",
    "The link is external"
  ]),
  Quiz(368, "How do you link to an external FTP server?", [
    "href='ftp://server.com'",
    "href='http://server.com'",
    "href='file://server.com'",
    "href='mailto:server.com'"
  ]),
  Quiz(369, "If you want to link to a file named 'main.js' in a folder named 'js', what is the path?", [
    "js/main.js",
    "js:main.js",
    "main.js/js",
    "folder/js/main.js"
  ]),
  Quiz(370, "What is the protocol part of 'https://www.shan-dev.com'?", [
    "https",
    "www",
    "shan-dev",
    "com"
  ]),
  Quiz(371, "What is the domain part of 'https://www.shan-dev.com'?", [
    "shan-dev.com",
    "https",
    "www",
    "index.html"
  ]),
  Quiz(372, "Can an anchor tag link to a video file?", [
    "Yes, it will either play it in the browser or offer a download",
    "No, only the <video> tag works",
    "Only if the video is on YouTube",
    "Only if the download attribute is present"
  ]),
  Quiz(373, "Which value for 'target' opens the document in the full body of the window?", [
    "_top",
    "_self",
    "_parent",
    "_blank"
  ]),
  Quiz(374, "How many target values start with an underscore (_)?", [
    "4",
    "2",
    "1",
    "0"
  ]),
  Quiz(375, "What happens if the href attribute is empty?", [
    "The link usually reloads the current page",
    "The link disappears",
    "The browser crashes",
    "The user is sent to Google"
  ]),
  Quiz(376, "Can you link to an image and have it open in a new tab?", [
    "Yes, wrap the text/image in <a> and use target='_blank'",
    "No, images can only open in the same tab",
    "Only if using a specific plugin",
    "Only for .png files"
  ]),
  Quiz(377, "Which tag is used for the link to a website's 'Favicon'?", [
    "<link>",
    "<a>",
    "<img>",
    "<meta>"
  ]),
  Quiz(380, "Which is a more modern way to identify elements for links, id or name?", [
    "id",
    "name",
    "href",
    "class"
  ]),
  Quiz(381, "What is a 'Slug' in a URL?", [
    "The part of the URL that identifies a specific page in a human-readable format",
    "The protocol",
    "The domain name",
    "A broken link"
  ]),
  Quiz(382, "Which tag is used to create a link that runs a JavaScript function?", [
    "<a> with href='javascript:...' ",
    "<js-link>",
    "<script href='...'>",
    "<link action='...'>"
  ]),
  Quiz(383, "What attribute defines the media type of the linked document?", [
    "type",
    "rel",
    "media",
    "charset"
  ]),
  Quiz(384, "Can you use <a> tags inside a <p> tag?", [
    "Yes, links are inline elements",
    "No, links must be in divs",
    "Only if it's the first word",
    "Only in headers"
  ]),
  Quiz(385, "What is an 'Internal Link'?", [
    "A link to another page on the same website",
    "A link to a specific ID on the same page",
    "A link to a local file on your PC",
    "A link to a hidden page"
  ]),
  Quiz(386, "What is an 'External Link'?", [
    "A link to a different website/domain",
    "A link that opens a new tab",
    "A link to a download file",
    "A link to an email"
  ]),
  Quiz(387, "Which tag would you use for a 'Logo' that links to the home page?", [
    "<a> wrapping an <img>",
    "<img> with an href",
    "<div> with an href",
    "<nav> wrapping a <span>"
  ]),
  Quiz(388, "Does 'tel:' links work on desktop computers?", [
    "Yes, if they have an app like Skype or FaceTime installed",
    "No, only on mobile phones",
    "Only if a SIM card is inserted",
    "Only in Google Chrome"
  ]),
  Quiz(389, "What is the attribute to link to a different part of the same document?", [
    "href='#ID'",
    "src='#ID'",
    "target='#ID'",
    "to='#ID'"
  ]),
  Quiz(390, "Which protocol is used to link to a file on a local network?", [
    "file://",
    "http://",
    "local://",
    "net://"
  ]),
  Quiz(391, "How do you create a link that has no underline by default?", [
    "Using CSS (text-decoration: none)",
    "Using <a no-underline>",
    "Using <u> around the link",
    "It is impossible"
  ]),
  Quiz(392, "Which attribute of <a> is used to specify the character encoding of the linked document?", [
    "charset",
    "type",
    "lang",
    "encoding"
  ]),
  Quiz(393, "In a URL, what does 'index.html' typically represent?", [
    "The default home page of a directory",
    "A hidden file",
    "An image file",
    "A script file"
  ]),
  Quiz(394, "Can an <a> tag be styled as a button using CSS?", [
    "Yes, very common for Call to Action buttons",
    "No, use the <button> tag only",
    "Only if it's in a form",
    "Only if the target is _blank"
  ]),
  Quiz(395, "Which character replaces spaces in a URL?", [
    "%20 (or +)",
    "_",
    "-",
    "&"
  ]),
  Quiz(396, "What is 'URL Encoding'?", [
    "Converting characters into a format that can be transmitted over the Internet",
    "Changing the color of a link",
    "Hiding the URL from the user",
    "Shortening a link"
  ]),
  Quiz(397, "What tag defines a client-side image-map?", [
    "<map>",
    "<area>",
    "<img>",
    "<a>"
  ]),
  Quiz(398, "Which tag defines an area inside an image-map?", [
    "<area>",
    "<map>",
    "<li>",
    "<a>"
  ]),
  Quiz(399, "Can a single <a> tag link to two URLs at once?", [
    "No",
    "Yes, using a comma",
    "Yes, using a semicolon",
    "Only with a specific attribute"
  ]),
  Quiz(400, "Great job! You finished Module 4. What was the focus?", [
    "Hyperlinks and Navigation",
    "Semantic Layout",
    "Text Formatting",
    "Images and Media"
  ]),
];
final List<Quiz> htmlQuizM5 = [
  // --- Lesson 32: The Image Tag: src, alt, and title ---
  Quiz(401, "Which tag is used to embed an image in an HTML page?", [
    "<img>",
    "<image>",
    "<pic>",
    "<src>"
  ]),
  Quiz(402, "Which attribute is used to specify the path to the image file?", [
    "src",
    "href",
    "link",
    "url"
  ]),
  Quiz(403, "What is the purpose of the 'alt' attribute?", [
    "To provide alternative text for screen readers or if the image fails to load",
    "To change the alignment of the image",
    "To provide a title for the hover tooltip",
    "To set the background color of the image"
  ]),
  Quiz(404, "Which attribute creates a tooltip when you hover over an image?", [
    "title",
    "alt",
    "name",
    "caption"
  ]),
  Quiz(405, "Is <img> an empty (self-closing) tag?", [
    "Yes",
    "No",
    "Only in HTML4",
    "Only if it has no alt attribute"
  ]),

  // --- Lesson 33: Image Sizing and Aspect Ratios ---
  Quiz(406, "Which attributes are used to set the dimensions of an image in HTML?", [
    "width and height",
    "size and length",
    "x and y",
    "scale"
  ]),
  Quiz(407, "What is the default unit for width and height in HTML attributes?", [
    "Pixels (px)",
    "Percentage (%)",
    "Em",
    "Inches"
  ]),
  Quiz(408, "What happens if you set only the width of an image and leave the height out?", [
    "The browser scales the height automatically to maintain the aspect ratio",
    "The image becomes a square",
    "The image disappears",
    "The image stretches to full screen"
  ]),

  Quiz(409, "Why is it important to include width and height attributes?", [
    "To prevent layout shifts while the image is loading",
    "To make the image load faster from the server",
    "To make the image high-definition",
    "To link the image to another page"
  ]),

  // --- Lesson 34: The Video Tag ---
  Quiz(410, "Which tag is used to embed video files?", [
    "<video>",
    "<movie>",
    "<media>",
    "<embed>"
  ]),
  Quiz(411, "Which attribute must be added to show play/pause and volume buttons?", [
    "controls",
    "buttons",
    "play",
    "ui"
  ]),
  Quiz(412, "How do you make a video start playing as soon as the page loads?", [
    "autoplay",
    "start",
    "loop",
    "onload"
  ]),
  Quiz(413, "Which attribute ensures a video starts over once it finishes?", [
    "loop",
    "repeat",
    "restart",
    "infinite"
  ]),
  Quiz(414, "Which attribute should usually be paired with 'autoplay' to prevent annoying users?", [
    "muted",
    "controls",
    "poster",
    "preload"
  ]),
  Quiz(415, "Which attribute defines an image to show before the video starts playing?", [
    "poster",
    "thumbnail",
    "preview",
    "cover"
  ]),

  // --- Lesson 35: The Audio Tag ---
  Quiz(416, "Which tag is used to embed sound or music?", [
    "<audio>",
    "<sound>",
    "<music>",
    "<mp3>"
  ]),
  Quiz(417, "What happens if you use <audio src='song.mp3'></audio> without the 'controls' attribute?", [
    "The audio is loaded but the user cannot see or play it",
    "The audio plays automatically",
    "The browser shows an error",
    "The audio player appears transparent"
  ]),
  Quiz(418, "Which tag is used inside <audio> or <video> to specify multiple file formats?", [
    "<source>",
    "<file>",
    "<src>",
    "<link>"
  ]),
  Quiz(419, "Why should you provide multiple <source> tags?", [
    "To support different browsers that only play specific formats (like .mp3 vs .ogg)",
    "To play multiple songs at once",
    "To make the audio louder",
    "To increase the download speed"
  ]),

  // --- Lesson 36: Figure and Figcaption ---
  Quiz(420, "Which semantic tag is used to group an image and its label?", [
    "<figure>",
    "<section>",
    "<div>",
    "<aside>"
  ]),
  Quiz(421, "Which tag is used to provide a visible caption for a <figure>?", [
    "<figcaption>",
    "<caption>",
    "<label>",
    "<title>"
  ]),

  Quiz(422, "Can <figure> be used for content other than images, like code snippets?", [
    "Yes, it is used for any self-contained content with a caption",
    "No, it is strictly for images",
    "Only if using Shan script",
    "Only in the <footer>"
  ]),

  // --- Lesson 37: The Picture Element ---
  Quiz(423, "Which tag provides multiple image versions for different screen sizes (Responsive Images)?", [
    "<picture>",
    "<image-set>",
    "<responsive>",
    "<source>"
  ]),
  Quiz(424, "What is the primary benefit of the <picture> element?", [
    "It saves bandwidth by loading smaller images for mobile devices",
    "It makes images 3D",
    "It adds a frame to the image",
    "It converts JPG to PNG automatically"
  ]),
  Quiz(425, "Inside <picture>, which attribute in the <source> tag defines the screen width?", [
    "media",
    "srcset",
    "sizes",
    "type"
  ]),
  Quiz(426, "Inside <picture>, which attribute specifies the image path?", [
    "srcset",
    "src",
    "href",
    "url"
  ]),

  // --- Lesson 38: Embedding Iframes ---
  Quiz(427, "Which tag is used to embed another webpage, like a Google Map or YouTube video?", [
    "<iframe>",
    "<embed>",
    "<object>",
    "<frame>"
  ]),
  Quiz(428, "What does 'iframe' stand for?", [
    "Inline Frame",
    "Internal Frame",
    "Interactive Frame",
    "Internet Frame"
  ]),
  Quiz(429, "Which attribute defines the URL of the page to embed in an iframe?", [
    "src",
    "href",
    "data",
    "link"
  ]),
  Quiz(430, "Which attribute helps secure an iframe by restricting its capabilities?", [
    "sandbox",
    "security",
    "lock",
    "private"
  ]),

  // --- General Media Review ---
  Quiz(431, "Which image format is best for simple icons with transparency?", [
    "PNG",
    "JPG",
    "BMP",
    "TIFF"
  ]),
  Quiz(432, "Which image format is generally best for high-detail photographs?", [
    "JPG",
    "GIF",
    "PNG",
    "SVG"
  ]),
  Quiz(433, "Which image format is 'vector-based' and doesn't lose quality when resized?", [
    "SVG",
    "PNG",
    "JPG",
    "GIF"
  ]),
  Quiz(434, "Which video format is the most widely supported in HTML5?", [
    "MP4",
    "AVI",
    "WMV",
    "FLV"
  ]),
  Quiz(435, "What does the 'preload' attribute do in a video tag?", [
    "It hints to the browser how much of the video to download when the page loads",
    "It makes the video play before the user clicks",
    "It checks for viruses in the video",
    "It translates the video subtitles"
  ]),
  Quiz(436, "Which 'preload' value downloads the whole video file immediately?", [
    "auto",
    "metadata",
    "none",
    "start"
  ]),
  Quiz(437, "Which attribute allows an iframe to go full-screen?", [
    "allowfullscreen",
    "fullscreen",
    "expand",
    "maximize"
  ]),
  Quiz(438, "Can you use a relative path for an iframe 'src'?", [
    "Yes, you can embed pages from your own website",
    "No, it must be a full https:// link",
    "Only if the page is in the same folder",
    "Only for maps"
  ]),
  Quiz(439, "Which tag is used for subtitles or captions inside a <video>?", [
    "<track>",
    "<caption>",
    "<label>",
    "<text>"
  ]),
  Quiz(440, "What is the 'kind' attribute used for in a <track> tag?", [
    "To specify if it is subtitles, captions, or descriptions",
    "To set the language of the video",
    "To set the font size of the text",
    "To link to the video source"
  ]),
  Quiz(441, "Which attribute of <img> helps with 'lazy loading' for performance?", [
    "loading='lazy'",
    "preload='none'",
    "speed='slow'",
    "defer"
  ]),
  Quiz(442, "If an image is purely decorative, what should the 'alt' attribute contain?", [
    "An empty string (alt='')",
    "The word 'Image'",
    "The filename",
    "Decorative"
  ]),
  Quiz(443, "What happens if you provide a width but the 'src' link is broken?", [
    "The browser shows an empty box of that size with the alt text",
    "The whole page fails to load",
    "The box disappears completely",
    "The browser downloads the image anyway"
  ]),
  Quiz(444, "Which attribute makes an audio clip play over and over?", [
    "loop",
    "autoplay",
    "repeat",
    "controls"
  ]),
  Quiz(445, "Which is a valid video source tag?", [
    "<source src='video.mp4' type='video/mp4'>",
    "<src src='video.mp4' type='video/mp4'>",
    "<video src='video.mp4'>",
    "<link href='video.mp4'>"
  ]),
  Quiz(446, "What is the 'poster' attribute equivalent to on YouTube?", [
    "Thumbnail",
    "Title",
    "Description",
    "End screen"
  ]),
  Quiz(447, "Which attribute can disable an iframe's border?", [
    "frameborder='0'",
    "border='none'",
    "outline='0'",
    "style='hidden'"
  ]),
  Quiz(448, "Can you nest <iframe> tags inside each other?", [
    "Yes, but it is rarely recommended",
    "No, it crashes the browser",
    "Only if they are from the same domain",
    "Only in Module 5"
  ]),
  Quiz(449, "Which is the modern replacement for the <object> and <embed> tags for video?", [
    "<video>",
    "<iframe>",
    "<picture>",
    "<canvas>"
  ]),
  Quiz(450, "What does 'OGG' refer to in web media?", [
    "A free, open-source container format for audio and video",
    "A type of image compression",
    "A programming language for music",
    "Old Generation Graphics"
  ]),
  Quiz(451, "How do you display an image that is in a subfolder named 'images'?", [
    "src='images/photo.jpg'",
    "src='photo.jpg/images'",
    "href='images/photo.jpg'",
    "src='images:photo.jpg'"
  ]),
  Quiz(452, "What does the 'srcset' attribute do?", [
    "It allows you to list multiple image files for different display resolutions",
    "It sets the color of the image",
    "It links the image to a script",
    "It defines the image's source folder"
  ]),
  Quiz(453, "Which tag is used for the main root of a set of responsive images?", [
    "<picture>",
    "<img>",
    "<source>",
    "<media>"
  ]),
  Quiz(454, "What attribute defines the MIME type in a <source> tag?", [
    "type",
    "media",
    "srcset",
    "src"
  ]),
  Quiz(455, "Which unit is used in 'srcset' to define pixel density?", [
    "x (e.g., 2x)",
    "px",
    "dpi",
    "pt"
  ]),
  Quiz(456, "Which unit is used in 'srcset' to define image width?", [
    "w (e.g., 500w)",
    "px",
    "width",
    "%"
  ]),
  Quiz(457, "If the browser doesn't support <video>, what will it show?", [
    "The text written between the <video> and </video> tags",
    "A blue screen",
    "A download link automatically",
    "Nothing at all"
  ]),
  Quiz(458, "What is 'MIME type'?", [
    "A standard way to classify file types on the internet (e.g., audio/mpeg)",
    "A way to animate images",
    "A compression technique",
    "A type of HTML tag"
  ]),
  Quiz(459, "Which tag is used for captions on a table (not media)?", [
    "<caption>",
    "<figcaption>",
    "<title>",
    "<label>"
  ]),
  Quiz(460, "Is it possible to use a YouTube link directly in a <video> tag?", [
    "No, you must use an <iframe> provided by YouTube",
    "Yes, it works perfectly",
    "Only if you have a Pro account",
    "Only if the video is public"
  ]),
  Quiz(461, "What is the primary tag for a 2D drawing area in HTML?", [
    "<canvas>",
    "<img>",
    "<svg>",
    "<draw>"
  ]),
  Quiz(462, "Which attribute of <iframe> allows it to receive data from the parent page?", [
    "name",
    "id",
    "src",
    "target"
  ]),
  Quiz(463, "Which is more semantic for an image gallery, <div> or <figure>?", [
    "<figure>",
    "<div>",
    "<section>",
    "<article>"
  ]),
  Quiz(464, "Can an <img> tag be inside a <p> tag?", [
    "Yes, it is an inline-block element",
    "No, it must be in a div",
    "Only if the image is small",
    "Only if it has a title"
  ]),
  Quiz(465, "What is a 'Broken Image Icon'?", [
    "An icon the browser shows when it cannot find the image file",
    "A special filter in CSS",
    "A button to delete an image",
    "An SVG icon"
  ]),
  Quiz(466, "How do you mute a video by default?", [
    "muted",
    "volume='0'",
    "silent",
    "quiet"
  ]),
  Quiz(467, "Which attribute specifies a keyboard shortcut to access an element?", [
    "accesskey",
    "shortcut",
    "key",
    "id"
  ]),
  Quiz(468, "What does SVG stand for?", [
    "Scalable Vector Graphics",
    "Simple Video Graphics",
    "Standard Visual Graph",
    "Scaled Vector Grade"
  ]),
  Quiz(469, "Which tag is used to embed an SVG directly in HTML?", [
    "<svg>",
    "<img>",
    "<embed>",
    "<i>"
  ]),
  Quiz(470, "Which image type is best for an animated loading icon?", [
    "GIF or SVG",
    "JPG",
    "PNG",
    "WebP"
  ]),
  Quiz(471, "Which modern image format developed by Google offers better compression than JPG?", [
    "WebP",
    "WebM",
    "PNG",
    "SVG"
  ]),
  Quiz(472, "What is the default width of an iframe if not specified?", [
    "300 pixels",
    "100%",
    "500 pixels",
    "0 pixels"
  ]),
  Quiz(473, "What is the default height of an iframe if not specified?", [
    "150 pixels",
    "100 pixels",
    "Auto",
    "100%"
  ]),
  Quiz(474, "Which tag is used to provide extra information about an image in a tooltip-like way?", [
    "title",
    "alt",
    "desc",
    "caption"
  ]),
  Quiz(475, "Does <figcaption> have to be at the bottom of the <figure>?", [
    "No, it can be at the top or the bottom",
    "Yes, it must be at the bottom",
    "No, it must be at the top",
    "It can be anywhere on the page"
  ]),
  Quiz(476, "Can an <a> tag wrap a <figure> tag?", [
    "Yes, it makes the whole figure (image and caption) a link",
    "No, <a> only wraps text",
    "No, only images can be inside <a>",
    "Only if using a specific class"
  ]),
  Quiz(477, "Which attribute identifies the track's language?", [
    "srclang",
    "lang",
    "language",
    "src"
  ]),
  Quiz(478, "What is the file extension for WebVTT subtitle files used in <track>?", [
    ".vtt",
    ".srt",
    ".txt",
    ".sub"
  ]),
  Quiz(479, "Which attribute of <audio> is a boolean attribute?", [
    "controls",
    "src",
    "preload",
    "type"
  ]),
  Quiz(480, "What is a 'Boolean Attribute' in HTML?", [
    "An attribute that is true if present and false if absent (no value needed)",
    "An attribute that only accepts 0 or 1",
    "An attribute that is written in all caps",
    "An attribute used for math"
  ]),
  Quiz(481, "Which of these is a boolean attribute for video?", [
    "muted",
    "poster",
    "width",
    "src"
  ]),
  Quiz(482, "Which tag is best for embedding a PDF file?", [
    "<iframe> or <embed>",
    "<img>",
    "<video>",
    "<audio>"
  ]),
  Quiz(483, "Which attribute defines the space around an image in older HTML (obsolete)?", [
    "hspace and vspace",
    "margin",
    "padding",
    "border"
  ]),
  Quiz(484, "What is the 'object-fit' property used for in CSS (related to <img>)?", [
    "To control how an image should be resized to fit its container",
    "To change the image source",
    "To add a shadow",
    "To rotate the image"
  ]),
  Quiz(485, "Which tag defines an area for graphics via scripting (usually JavaScript)?", [
    "<canvas>",
    "<svg>",
    "<img>",
    "<script>"
  ]),
  Quiz(486, "Which attribute identifies the URL of the resource used by <object>?", [
    "data",
    "src",
    "href",
    "url"
  ]),
  Quiz(487, "Which tag is used to embed a Java applet (now obsolete)?", [
    "<applet>",
    "<object>",
    "<embed>",
    "<java>"
  ]),
  Quiz(488, "Can you play a video from your local computer files in a browser?", [
    "Yes, by using the file path in the 'src' attribute",
    "No, it must be uploaded to a server",
    "Only if you have the YouTube app",
    "Only if it is a .gif"
  ]),
  Quiz(489, "Which is a valid MIME type for an audio file?", [
    "audio/mpeg",
    "sound/mp3",
    "audio/file",
    "music/ogg"
  ]),
  Quiz(490, "Which tag would you use for a logo that never changes quality?", [
    "<svg>",
    "<jpg>",
    "<png>",
    "<gif>"
  ]),
  Quiz(491, "How many <source> tags can you have inside a <video>?", [
    "As many as you want",
    "Exactly one",
    "Exactly two",
    "Zero"
  ]),
  Quiz(492, "Does the <img> tag require a closing </img> tag?", [
    "No",
    "Yes",
    "Only in XHTML",
    "Only in Shan script"
  ]),
  Quiz(493, "Which tag would you use to group a chart and its description?", [
    "<figure>",
    "<div>",
    "<section>",
    "<aside>"
  ]),
  Quiz(494, "Which tag allows you to provide high-resolution images for Retina displays?", [
    "<img> with 'srcset'",
    "<img> with 'alt'",
    "<img> with 'title'",
    "<video>"
  ]),
  Quiz(495, "What does the 'controlslist' attribute do in Chrome?", [
    "It allows you to hide specific buttons like 'download' from the video player",
    "It lists all the video files",
    "It changes the color of the buttons",
    "It creates a playlist"
  ]),
  Quiz(496, "What is the standard aspect ratio of most modern videos (Widescreen)?", [
    "16:9",
    "4:3",
    "1:1",
    "21:9"
  ]),
  Quiz(497, "Which attribute of <track> makes it the default choice?", [
    "default",
    "start",
    "auto",
    "on"
  ]),
  Quiz(498, "Which attribute defines the relationship between an iframe and the site?", [
    "referrerpolicy",
    "rel",
    "target",
    "name"
  ]),
  Quiz(499, "Can you embed a website that has security settings against iframing (X-Frame-Options)?", [
    "No, the browser will block it for security",
    "Yes, always",
    "Only if you use the sandbox attribute",
    "Only if you use a script"
  ]),
  Quiz(500, "Excellent! You completed 500 questions. What was Module 5 about?", [
    "Images and Media",
    "Hyperlinks",
    "Semantic Layout",
    "Forms and Input"
  ]),
];
final List<Quiz> htmlQuizM6 = [
  // --- Lesson 39: Unordered Lists: Bullet Points ---
  Quiz(501, "Which tag is used to create an unordered (bulleted) list?", [
    "<ul>",
    "<ol>",
    "<li>",
    "<list>"
  ]),
  Quiz(502, "Which tag is used to define an individual item within a list?", [
    "<li>",
    "<ul>",
    "<ol>",
    "<item>"
  ]),
  Quiz(503, "What is the default bullet style for an unordered list?", [
    "Disc (solid circle)",
    "Square",
    "Circle (hollow)",
    "Numbers"
  ]),
  Quiz(504, "Can you nest a <ul> inside an <li>?", [
    "Yes, this is how you create sub-lists",
    "No, lists cannot be nested",
    "Only if you use CSS",
    "Only in Module 6"
  ]),

  // --- Lesson 40: Ordered Lists: Step-by-Step ---
  Quiz(505, "Which tag is used to create an ordered (numbered) list?", [
    "<ol>",
    "<ul>",
    "<li>",
    "<num>"
  ]),
  Quiz(506, "Which attribute changes the numbering type (e.g., A, B, C or I, II, III)?", [
    "type",
    "start",
    "value",
    "format"
  ]),
  Quiz(507, "Which attribute allows you to start an ordered list from a specific number like 5?", [
    "start",
    "begin",
    "index",
    "type"
  ]),
  Quiz(508, "Which attribute makes the list count backwards?", [
    "reversed",
    "backward",
    "flip",
    "descending"
  ]),

  // --- Lesson 41: Description Lists ---
  Quiz(509, "Which tag is used to define a description list?", [
    "<dl>",
    "<dd>",
    "<dt>",
    "<ul>"
  ]),
  Quiz(510, "Which tag represents the term in a description list?", [
    "<dt>",
    "<dd>",
    "<li>",
    "<term>"
  ]),
  Quiz(511, "Which tag represents the definition or description of the term?", [
    "<dd>",
    "<dt>",
    "<li>",
    "<desc>"
  ]),

  // --- Lesson 42: Tables: Rows, Headers, and Data ---
  Quiz(512, "Which tag is the main container for a table?", [
    "<table>",
    "<tr>",
    "<td>",
    "<thead>"
  ]),
  Quiz(513, "Which tag is used to create a row in a table?", [
    "<tr>",
    "<td>",
    "<th>",
    "<row>"
  ]),
  Quiz(514, "Which tag is used for standard data cells in a table?", [
    "<td>",
    "<th>",
    "<tr>",
    "<cell>"
  ]),
  Quiz(515, "Which tag is used for table header cells (usually bold and centered)?", [
    "<th>",
    "<td>",
    "<thead>",
    "<header>"
  ]),
  Quiz(516, "Which attribute is used to make a cell span across multiple columns?", [
    "colspan",
    "rowspan",
    "width",
    "scope"
  ]),
  Quiz(517, "Which attribute is used to make a cell span across multiple rows?", [
    "rowspan",
    "colspan",
    "height",
    "scope"
  ]),

  // --- Lesson 43: Table Caption, Thead, Tbody, and Tfoot ---
  Quiz(518, "Which tag provides a title or description for the whole table?", [
    "<caption>",
    "<title>",
    "<figcaption>",
    "<thead>"
  ]),

  Quiz(519, "Which tag groups the header content of a table?", [
    "<thead>",
    "<th>",
    "<header>",
    "<tbody>"
  ]),
  Quiz(520, "Which tag groups the main body content of a table?", [
    "<tbody>",
    "<tr>",
    "<td>",
    "<main>"
  ]),
  Quiz(521, "Which tag groups the footer content (like totals) of a table?", [
    "<tfoot>",
    "<bottom>",
    "<tbody>",
    "<tr>"
  ]),

  // --- Lesson 44: Forms: Creating the Input Field ---
  Quiz(522, "Which tag is used to create a container for user input?", [
    "<form>",
    "<input>",
    "<label>",
    "<fieldset>"
  ]),
  Quiz(523, "What does the 'action' attribute in a <form> do?", [
    "It specifies the URL where the form data should be sent",
    "It defines the animation of the form",
    "It sets the color of the submit button",
    "It clears the form after clicking"
  ]),
  Quiz(524, "What does the 'method' attribute in a <form> do?", [
    "It specifies the HTTP method (GET or POST) used to send data",
    "It sets the language of the form",
    "It defines the font style",
    "It locks the form"
  ]),
  Quiz(525, "Which HTTP method is more secure for sending passwords?", [
    "POST",
    "GET",
    "PUT",
    "SEND"
  ]),

  // --- Lesson 45: Labels, Fieldsets, and Legends ---
  Quiz(526, "Which tag is used to define a caption for an <input> element?", [
    "<label>",
    "<caption>",
    "<span>",
    "<p>"
  ]),
  Quiz(527, "Which attribute connects a <label> to an <input>'s ID?", [
    "for",
    "id",
    "to",
    "connect"
  ]),

  Quiz(528, "Which tag is used to group related elements within a form?", [
    "<fieldset>",
    "<div>",
    "<section>",
    "<legend>"
  ]),
  Quiz(529, "Which tag provides a title for a <fieldset>?", [
    "<legend>",
    "<title>",
    "<caption>",
    "<header>"
  ]),

  // --- Lesson 46: Input Types: Text, Password, Email ---
  Quiz(530, "Which tag is used to create a one-line text field?", [
    "<input type='text'>",
    "<textarea>",
    "<text>",
    "<input type='string'>"
  ]),
  Quiz(531, "Which input type masks the characters for security?", [
    "password",
    "hidden",
    "mask",
    "secret"
  ]),
  Quiz(532, "Which input type checks for a valid email address format?", [
    "email",
    "text",
    "url",
    "address"
  ]),
  Quiz(533, "Which attribute provides a hint inside the input field about what to enter?", [
    "placeholder",
    "value",
    "hint",
    "title"
  ]),
  Quiz(534, "Which attribute prevents a form from being submitted if the field is empty?", [
    "required",
    "mandatory",
    "validate",
    "stop"
  ]),
  Quiz(535, "Which attribute sets a pre-filled value in an input field?", [
    "value",
    "placeholder",
    "text",
    "content"
  ]),

  // --- Lesson 47: The Textarea ---
  Quiz(536, "Which tag is used for multi-line text input (like long descriptions)?", [
    "<textarea>",
    "<input type='text'>",
    "<input type='area'>",
    "<textbox>"
  ]),
  Quiz(537, "How do you set the visible width of a <textarea> in HTML?", [
    "Using the 'cols' attribute",
    "Using the 'width' attribute",
    "Using the 'size' attribute",
    "Using the 'length' attribute"
  ]),
  Quiz(538, "How do you set the visible number of lines in a <textarea>?", [
    "Using the 'rows' attribute",
    "Using the 'height' attribute",
    "Using the 'line' attribute",
    "Using the 'size' attribute"
  ]),

  // --- General Form & List Review ---
  Quiz(539, "Which input type creates a 'Submit' button?", [
    "type='submit'",
    "type='button'",
    "type='action'",
    "type='reset'"
  ]),
  Quiz(540, "Which input type allows selecting multiple options from a list of checkboxes?", [
    "type='checkbox'",
    "type='radio'",
    "type='check'",
    "type='select'"
  ]),
  Quiz(541, "Which input type allows selecting only one option from a group (circle)?", [
    "type='radio'",
    "type='checkbox'",
    "type='single'",
    "type='round'"
  ]),
  Quiz(542, "How do you group radio buttons so only one can be selected?", [
    "Give them all the same 'name' attribute",
    "Give them all the same 'id' attribute",
    "Put them in the same <div>",
    "Use the 'required' attribute"
  ]),
  Quiz(543, "Which tag is used to create a drop-down selection list?", [
    "<select>",
    "<dropdown>",
    "<input type='list'>",
    "<list>"
  ]),
  Quiz(544, "Which tag represents an individual option in a <select> drop-down?", [
    "<option>",
    "<item>",
    "<list-item>",
    "<choice>"
  ]),
  Quiz(545, "Which attribute in an <option> tag pre-selects a value?", [
    "selected",
    "checked",
    "active",
    "value"
  ]),
  Quiz(546, "Which attribute in a checkbox or radio button pre-selects it?", [
    "checked",
    "selected",
    "active",
    "on"
  ]),
  Quiz(547, "Which input type allows the user to upload a file?", [
    "type='file'",
    "type='upload'",
    "type='attach'",
    "type='image'"
  ]),
  Quiz(548, "Which attribute specifies that an input field should be read-only?", [
    "readonly",
    "disabled",
    "locked",
    "static"
  ]),
  Quiz(549, "Which attribute disables an input field completely?", [
    "disabled",
    "readonly",
    "off",
    "hidden"
  ]),
  Quiz(550, "What is the result of <input type='reset'>?", [
    "It clears all values in the form to their defaults",
    "It reloads the page",
    "It deletes the user account",
    "It submits the form data"
  ]),

  // --- Table Deep Dive ---
  Quiz(551, "Which attribute defines the space between cells (obsolete in HTML5)?", [
    "cellspacing",
    "cellpadding",
    "border",
    "gap"
  ]),
  Quiz(552, "Which attribute defines the space inside a cell (obsolete in HTML5)?", [
    "cellpadding",
    "cellspacing",
    "margin",
    "padding"
  ]),
  Quiz(553, "Which tag is used to wrap a group of columns for formatting?", [
    "<colgroup>",
    "<col>",
    "<table-cols>",
    "<thead>"
  ]),
  Quiz(554, "What does the 'scope' attribute in <th> help with?", [
    "Accessibility for screen readers",
    "Changing the color of the header",
    "Setting the width",
    "Sorting the table"
  ]),
  Quiz(555, "Which value for 'scope' relates a header to a full column?", [
    "col",
    "row",
    "group",
    "all"
  ]),

  // --- Advanced Forms ---
  Quiz(556, "Which input type is used for a hidden piece of data (like a token)?", [
    "type='hidden'",
    "type='secret'",
    "type='private'",
    "type='invisible'"
  ]),
  Quiz(557, "Which input type is used to pick a color?", [
    "type='color'",
    "type='palette'",
    "type='rgb'",
    "type='hex'"
  ]),
  Quiz(558, "Which input type provides a slider control?", [
    "type='range'",
    "type='slider'",
    "type='number'",
    "type='scale'"
  ]),
  Quiz(559, "Which input type allows picking a date from a calendar?", [
    "type='date'",
    "type='calendar'",
    "type='time'",
    "type='day'"
  ]),
  Quiz(560, "Which input type allows picking a number with up/down arrows?", [
    "type='number'",
    "type='range'",
    "type='digit'",
    "type='count'"
  ]),
  Quiz(561, "Which attributes set the limits for a number input?", [
    "min and max",
    "start and end",
    "low and high",
    "range"
  ]),
  Quiz(562, "Which attribute defines the increment value for a range or number input?", [
    "step",
    "increase",
    "jump",
    "val"
  ]),
  Quiz(563, "Which tag is used to create a list of pre-defined options for an input?", [
    "<datalist>",
    "<select>",
    "<list>",
    "<options>"
  ]),
  Quiz(564, "How do you link an <input> to a <datalist>?", [
    "Using the 'list' attribute on the input and 'id' on the datalist",
    "Using the 'for' attribute",
    "Using the 'src' attribute",
    "They link automatically"
  ]),
  Quiz(565, "Which tag represents the result of a calculation in a form?", [
    "<output>",
    "<result>",
    "<span>",
    "<label>"
  ]),

  // --- Semantic & Misc ---
  Quiz(566, "Which is more semantic for a list of ingredients in a recipe?", [
    "<ul>",
    "<ol>",
    "<dl>",
    "<div>"
  ]),
  Quiz(567, "Which is more semantic for top 10 movies?", [
    "<ol>",
    "<ul>",
    "<dl>",
    "<div>"
  ]),
  Quiz(568, "What does the attribute 'autocomplete' do?", [
    "Allows the browser to suggest values based on previous entries",
    "Automatically submits the form",
    "Corrects spelling mistakes",
    "Translates the text"
  ]),
  Quiz(569, "Which attribute allows an input field to focus automatically on page load?", [
    "autofocus",
    "focus",
    "active",
    "start"
  ]),
  Quiz(570, "Which attribute of <form> specifies the character encoding?", [
    "accept-charset",
    "encoding",
    "charset",
    "type"
  ]),
  Quiz(571, "Which attribute of <form> is required for file uploads?", [
    "enctype='multipart/form-data'",
    "method='GET'",
    "action='upload'",
    "type='file'"
  ]),
  Quiz(572, "What is the result of <button type='button'> inside a form?", [
    "It does nothing unless JavaScript is added",
    "It submits the form",
    "It resets the form",
    "It closes the window"
  ]),
  Quiz(573, "Which input type is best for searching the website?", [
    "type='search'",
    "type='text'",
    "type='find'",
    "type='url'"
  ]),
  Quiz(574, "Which input type is specifically for URLs?", [
    "type='url'",
    "type='link'",
    "type='web'",
    "type='site'"
  ]),
  Quiz(575, "Which tag is used to group options inside a <select> element?", [
    "<optgroup>",
    "<group>",
    "<label>",
    "<section>"
  ]),
  Quiz(576, "What is the default value for the 'method' attribute in a <form>?", [
    "GET",
    "POST",
    "PUT",
    "DELETE"
  ]),
  Quiz(577, "In a GET request, where is the form data visible?", [
    "In the URL address bar",
    "In the HTTP body (hidden)",
    "In the browser console",
    "It is encrypted"
  ]),
  Quiz(578, "When should you use POST instead of GET?", [
    "When sending sensitive data like passwords or long text",
    "When searching for something public",
    "When you want the user to bookmark the result",
    "Always"
  ]),
  Quiz(579, "Which attribute can be used with <input type='file'> to allow multiple files?", [
    "multiple",
    "many",
    "array",
    "list"
  ]),
  Quiz(580, "Which attribute limits the file types allowed in a file upload?", [
    "accept",
    "type",
    "ext",
    "limit"
  ]),
  Quiz(581, "What does <label for='user'> connect to?", [
    "<input id='user'>",
    "<input name='user'>",
    "<input class='user'>",
    "<input value='user'>"
  ]),
  Quiz(582, "Which tag is used to create a clickable button without using <input>?", [
    "<button>",
    "<a>",
    "<click>",
    "<input>"
  ]),
  Quiz(583, "What is the default type of a <button> element?", [
    "submit",
    "button",
    "reset",
    "action"
  ]),
  Quiz(584, "Which attribute defines a regex pattern for input validation?", [
    "pattern",
    "regex",
    "format",
    "validate"
  ]),
  Quiz(585, "Which input type is used for picking a month and year?", [
    "type='month'",
    "type='date'",
    "type='calendar'",
    "type='time'"
  ]),
  Quiz(586, "Which input type is used for picking a specific time?", [
    "type='time'",
    "type='date'",
    "type='clock'",
    "type='hour'"
  ]),
  Quiz(587, "Which input type is used for picking a week and year?", [
    "type='week'",
    "type='date'",
    "type='time'",
    "type='month'"
  ]),
  Quiz(588, "Can a <textarea> have a placeholder?", [
    "Yes",
    "No",
    "Only if it is empty",
    "Only with JavaScript"
  ]),
  Quiz(589, "Where do you put the default text for a <textarea>?", [
    "Between the start and end tags",
    "In the value attribute",
    "In the placeholder attribute",
    "In the src attribute"
  ]),
  Quiz(590, "Which attribute makes a table cell span 3 rows?", [
    "rowspan='3'",
    "colspan='3'",
    "rows='3'",
    "size='3'"
  ]),
  Quiz(591, "Which attribute makes a table cell span 2 columns?", [
    "colspan='2'",
    "rowspan='2'",
    "cols='2'",
    "width='2'"
  ]),
  Quiz(592, "Is it possible to have a <thead> without a <tbody>?", [
    "Yes, but it's not recommended for valid structure",
    "No, they must come together",
    "Only in tables with 1 row",
    "Only if using CSS"
  ]),
  Quiz(593, "Which tag is used for list markers in a description list term?", [
    "None, <dt> doesn't use bullets by default",
    "<ul>",
    "<li>",
    "<ol>"
  ]),
  Quiz(594, "Which tag is the best for a 'Contact Us' form?", [
    "<form>",
    "<table>",
    "<div>",
    "<section>"
  ]),
  Quiz(595, "Which input type allows the user to pick a telephone number?", [
    "type='tel'",
    "type='phone'",
    "type='number'",
    "type='call'"
  ]),
  Quiz(596, "Which attribute limits the number of characters in a text input?", [
    "maxlength",
    "size",
    "limit",
    "length"
  ]),
  Quiz(597, "Which attribute defines the minimum number of characters in a text input?", [
    "minlength",
    "size",
    "start",
    "limit"
  ]),
  Quiz(598, "What does the 'novalidate' attribute in <form> do?", [
    "It prevents the browser from performing automatic validation",
    "It ignores all CSS",
    "It stops the form from submitting",
    "It deletes the data"
  ]),
  Quiz(599, "Which tag is used to display a progress bar?", [
    "<progress>",
    "<meter>",
    "<div>",
    "<range>"
  ]),
  Quiz(600, "Excellent! You finished 600 questions. What was Module 6 about?", [
    "Lists, Tables, and Forms",
    "Images and Videos",
    "Hyperlinks",
    "Semantic Layout"
  ]),
];
final List<Quiz> htmlQuizM7 = [
  // --- Lesson 48: W3C Validation ---
  Quiz(601, "What does W3C stand for?", [
    "World Wide Web Consortium",
    "Web 3 Compliance",
    "World Wide Website Control",
    "Western Web Code"
  ]),
  Quiz(602, "What is the primary purpose of the W3C Markup Validation Service?", [
    "To check HTML code for syntax errors and compliance with standards",
    "To make the website look better on mobile",
    "To host the website for free",
    "To check for spelling mistakes in the text"
  ]),
  Quiz(603, "Why should you fix validation errors?", [
    "To ensure cross-browser compatibility and better SEO",
    "To change the background color of the site",
    "Because the website won't load otherwise",
    "To increase the internet speed of the user"
  ]),
  Quiz(604, "Which of these would cause a W3C validation error?", [
    "An unclosed <div> tag",
    "Using a yellow background",
    "Having only one <h1> tag",
    "Using Shan Unicode"
  ]),

  // --- Lesson 49: The Favicon ---
  Quiz(605, "What is a Favicon?", [
    "A small icon displayed in the browser tab next to the page title",
    "A type of video format",
    "The main logo in the header",
    "A hidden meta tag for search engines"
  ]),
  Quiz(606, "Where do you place the <link> tag for a favicon?", [
    "Inside the <head> section",
    "At the bottom of the <body>",
    "Inside the <footer>",
    "In a separate CSS file"
  ]),

  Quiz(607, "Which attribute defines the relationship for a favicon?", [
    "rel='icon'",
    "rel='favicon'",
    "rel='image'",
    "type='icon'"
  ]),
  Quiz(608, "What is the traditional file format for a favicon?", [
    ".ico",
    ".png",
    ".jpg",
    ".svg"
  ]),

  // --- Lesson 50: SEO Basics: Meta and Open Graph ---
  Quiz(609, "What does SEO stand for?", [
    "Search Engine Optimization",
    "Site Entry Operation",
    "System Electronic Output",
    "Search Element Order"
  ]),
  Quiz(610, "Which meta tag is used to describe the page content in search results?", [
    "<meta name='description' content='...'>",
    "<meta name='keywords' content='...'>",
    "<meta name='title' content='...'>",
    "<meta name='abstract'>"
  ]),
  Quiz(611, "What is the purpose of Open Graph (og:) tags?", [
    "To control how your website looks when shared on social media",
    "To make the website load faster on Google",
    "To protect the website from hackers",
    "To allow users to log in with Facebook"
  ]),
  Quiz(612, "Which prefix is used for Open Graph meta tags?", [
    "og:",
    "fb:",
    "seo:",
    "meta:"
  ]),
  Quiz(613, "Which meta tag tells search engines which version of a URL is the 'master' copy?", [
    "rel='canonical'",
    "rel='main'",
    "rel='master'",
    "rel='index'"
  ]),

  // --- Lesson 51: GitHub: Uploading the Folder ---
  Quiz(614, "What is GitHub primarily used for?", [
    "Version control and hosting code repositories",
    "Editing images online",
    "Buying domain names",
    "Writing blog posts"
  ]),
  Quiz(615, "What is a 'Repository' on GitHub?", [
    "A project folder containing all your code and files",
    "A type of programming language",
    "A user's profile picture",
    "A secure password"
  ]),
  Quiz(616, "What is a 'Commit' in Git?", [
    "A snapshot of changes made to the code",
    "Deleting a project",
    "A message sent to another user",
    "Connecting a domain"
  ]),
  Quiz(617, "Which command is used to upload local changes to GitHub?", [
    "git push",
    "git pull",
    "git commit",
    "git upload"
  ]),

  // --- Lesson 52: Vercel: Zero-Config Deploy ---
  Quiz(618, "What is Vercel used for?", [
    "Deploying and hosting web applications easily",
    "Writing HTML code",
    "Managing databases",
    "Designing logos"
  ]),
  Quiz(619, "What does 'Deployment' mean in web development?", [
    "Making your website live and accessible on the internet",
    "Saving your code to a hard drive",
    "Drawing a wireframe",
    "Sending an email to a client"
  ]),
  Quiz(620, "Vercel can automatically deploy your site whenever you...", [
    "Push changes to your GitHub repository",
    "Open your computer",
    "Change your password",
    "Refresh the browser"
  ]),

  // --- Lesson 53: Custom Domains ---
  Quiz(621, "What is a Domain Name?", [
    "A human-readable address for a website (e.g., mysite.com)",
    "The IP address of the server",
    "The name of the HTML file",
    "A specific type of <div> tag"
  ]),
  Quiz(622, "Where do you typically point your domain's DNS settings for hosting?", [
    "To the records provided by your hosting provider (like Vercel)",
    "To your home IP address",
    "To Google.com",
    "To the GitHub repository URL"
  ]),
  Quiz(623, "Which DNS record is commonly used to point a domain to a server IP?", [
    "A Record",
    "CNAME Record",
    "MX Record",
    "TXT Record"
  ]),
  Quiz(624, "Which DNS record is used to alias one domain name to another?", [
    "CNAME",
    "A",
    "MX",
    "NS"
  ]),

  // --- Lesson 54: Performance Check ---
  Quiz(625, "Why should you optimize assets (images/videos) before deployment?", [
    "To reduce load times and improve user experience",
    "To make the code look cleaner",
    "To increase the price of the website",
    "To hide the images from hackers"
  ]),
  Quiz(626, "What tool can you use to check your website's performance and SEO score?", [
    "Google Lighthouse",
    "Microsoft Word",
    "W3C Validator",
    "File Explorer"
  ]),

  Quiz(627, "What is 'Minification' in web development?", [
    "Removing unnecessary characters (like spaces) from code to reduce file size",
    "Making the font size smaller",
    "Resizing images to thumbnails",
    "Deleting old files"
  ]),

  // --- General Module 7 & Comprehensive Review ---
  Quiz(628, "What is 'Production' environment?", [
    "The live version of the site that users visit",
    "The code on your personal computer",
    "A testing server",
    "The design phase"
  ]),
  Quiz(629, "What does HTTPS provide that HTTP does not?", [
    "Encryption and security",
    "Faster speed",
    "Better images",
    "More storage"
  ]),
  Quiz(630, "What is an SSL Certificate?", [
    "A digital certificate that enables an encrypted connection (HTTPS)",
    "A license to sell products",
    "A diploma for web developers",
    "A backup of the website"
  ]),
  Quiz(631, "Which file tells search engine bots which pages to crawl or ignore?", [
    "robots.txt",
    "index.html",
    "sitemap.xml",
    "meta.txt"
  ]),
  Quiz(632, "Which file provides a map of all pages on your site for search engines?", [
    "sitemap.xml",
    "robots.txt",
    "map.html",
    "links.txt"
  ]),
  Quiz(633, "Which meta tag is crucial for mobile responsiveness?", [
    "<meta name='viewport' content='width=device-width, initial-scale=1.0'>",
    "<meta name='mobile' content='true'>",
    "<meta name='handheld' content='yes'>",
    "<meta charset='UTF-8'>"
  ]),
  Quiz(634, "What is the 'Headless' approach in deployment?", [
    "Separating the frontend from the backend/content management",
    "Deploying without a title tag",
    "Hosting a site with no images",
    "Building a site without a CSS file"
  ]),
  Quiz(635, "What is 'Caching'?", [
    "Storing parts of your site in the user's browser for faster subsequent loads",
    "Deleting old files from the server",
    "Hiding the source code",
    "Charging users for access"
  ]),
  Quiz(636, "What is a 'CDN' (Content Delivery Network)?", [
    "A system of distributed servers that deliver web content based on user location",
    "A type of internet cable",
    "A software to write code",
    "A group of web designers"
  ]),
  Quiz(637, "Which attribute in a link tag is used for the Sitemap?", [
    "rel='sitemap'",
    "href='sitemap'",
    "type='xml'",
    "name='map'"
  ]),
  Quiz(638, "What does 'alt' text contribute to SEO?", [
    "It helps search engines understand what is in an image",
    "It makes images load faster",
    "It adds a caption below the image",
    "It changes the image resolution"
  ]),
  Quiz(639, "How do you specify the character encoding for a website?", [
    "<meta charset='UTF-8'>",
    "<encoding type='UTF-8'>",
    "<meta lang='en'>",
    "<head charset='UTF-8'>"
  ]),
  Quiz(640, "Which tag is used for the main title that appears in Google search results?", [
    "<title>",
    "<h1>",
    "<meta name='title'>",
    "<header>"
  ]),
  Quiz(641, "How many characters should a Meta Description ideally be?", [
    "Around 150-160 characters",
    "Over 500 characters",
    "Exactly 10 characters",
    "As long as possible"
  ]),
  Quiz(642, "What is a '404 error'?", [
    "Page Not Found",
    "Server Error",
    "Permission Denied",
    "Connection Timed Out"
  ]),
  Quiz(643, "What is a '301 redirect'?", [
    "A permanent move of a URL to a new location",
    "An error page",
    "A type of image compression",
    "A security warning"
  ]),
  Quiz(644, "Which tool is best for checking how your site looks on social media before posting?", [
    "Social Media Debuggers (like Facebook Sharing Debugger)",
    "W3C Validator",
    "GitHub",
    "Photoshop"
  ]),
  Quiz(645, "What is 'Lazy Loading'?", [
    "Loading images only when they are about to enter the viewport",
    "A slow internet connection",
    "When a developer takes a break",
    "An error in the <img> tag"
  ]),
  Quiz(646, "Which attribute is used to implement lazy loading for images?", [
    "loading='lazy'",
    "preload='none'",
    "async",
    "defer"
  ]),
  Quiz(647, "What is the 'Initial Scale' in a viewport meta tag?", [
    "The default zoom level when the page first loads",
    "The width of the screen in pixels",
    "The number of images on the page",
    "The font size of the H1"
  ]),
  Quiz(648, "Which of these is a popular domain registrar?", [
    "Namecheap / GoDaddy",
    "Vercel",
    "GitHub",
    "Google Lighthouse"
  ]),
  Quiz(649, "What is 'Version Control'?", [
    "A system that records changes to files over time (like Git)",
    "Controlling the volume of a video",
    "Updating your browser",
    "The height and width of a table"
  ]),
  Quiz(650, "What is 'Localhost'?", [
    "A way to view your website on your own computer before deploying",
    "A hosting company",
    "A type of server in the cloud",
    "A public URL for everyone"
  ]),
  Quiz(651, "Which meta tag helps prevent other sites from framing your content (clickjacking)?", [
    "X-Frame-Options",
    "Content-Type",
    "Description",
    "Keywords"
  ]),
  Quiz(652, "What is 'Continuous Deployment'?", [
    "Automatically deploying every change that passes tests to production",
    "Manual uploading of files via FTP",
    "A website that never goes offline",
    "A type of CSS animation"
  ]),
  Quiz(653, "What does it mean if a website is 'Mobile First'?", [
    "It is designed for small screens first, then scaled up",
    "It only works on mobile phones",
    "It has no desktop version",
    "It is an app, not a website"
  ]),
  Quiz(654, "Which tag is used for high-quality, scalable icons in modern web dev?", [
    "<svg>",
    "<img>",
    "<icon>",
    "<b>"
  ]),
  Quiz(655, "What is an 'Asset' in web development?", [
    "Any file used by the site like images, scripts, and stylesheets",
    "The profit made from the site",
    "The <body> tag only",
    "A user's credit card info"
  ]),
  Quiz(656, "What is 'Schema Markup'?", [
    "Code added to help search engines provide more informative results (Rich Snippets)",
    "A type of background pattern",
    "A way to encrypt passwords",
    "A list of all HTML tags"
  ]),
  Quiz(657, "Which tag is used to specify a favicon for iOS devices?", [
    "<link rel='apple-touch-icon' ...>",
    "<meta name='apple-icon'>",
    "<link rel='iphone-icon'>",
    "<apple-icon>"
  ]),
  Quiz(658, "What does 'DNS' stand for?", [
    "Domain Name System",
    "Digital Network Service",
    "Data Node Site",
    "Direct Name Source"
  ]),
  Quiz(659, "What is 'Proprietary Code'?", [
    "Code that is owned by an individual or company and not open source",
    "Code that is free for everyone",
    "Code used in Module 7",
    "HTML5 code"
  ]),
  Quiz(660, "What is 'Open Source'?", [
    "Code that is publicly available for anyone to use and modify",
    "Code that is hidden in the <footer>",
    "A website with no password",
    "A link to GitHub"
  ]),
  Quiz(661, "What happens to your site on Vercel if you delete the GitHub repository?", [
    "The site stays live but won't update anymore",
    "The site is deleted immediately",
    "Vercel asks for money",
    "Nothing happens at all"
  ]),
  Quiz(662, "What is a 'Pull Request' on GitHub?", [
    "A request to merge code changes from one branch to another",
    "Downloading a file",
    "Deleting a comment",
    "Changing your username"
  ]),
  Quiz(663, "Which meta tag is used to specify the author of a page?", [
    "<meta name='author' content='...'>",
    "<meta name='creator'>",
    "<link rel='author'>",
    "<p class='author'>"
  ]),
  Quiz(664, "Which tag is used for adding 'Breadcrumbs' for better SEO?", [
    "<nav>",
    "<aside>",
    "<header>",
    "<footer>"
  ]),
  Quiz(665, "What is 'Page Speed'?", [
    "The time it takes for a user to see the content of a page",
    "How fast the user scrolls",
    "The speed of the internet connection",
    "How fast the developer types"
  ]),
  Quiz(666, "What is 'Responsive Design'?", [
    "A site that adjusts its layout for different screen sizes",
    "A site that answers user questions",
    "A site that loads in 1 second",
    "A site with many buttons"
  ]),
  Quiz(667, "What is 'Accessibility' (a11y)?", [
    "Ensuring everyone, including people with disabilities, can use the site",
    "Making the site public",
    "Allowing users to download files",
    "The password to the server"
  ]),
  Quiz(668, "Which attribute improves accessibility for decorative images?", [
    "alt='' (Empty Alt)",
    "alt='Image'",
    "role='none'",
    "title='none'"
  ]),
  Quiz(669, "What is 'Structured Data'?", [
    "Data organized in a way that search engines can easily process (like JSON-LD)",
    "A table with many rows",
    "A well-organized <div> structure",
    "A list of images"
  ]),
  Quiz(670, "Which file extension is commonly used for structured data?", [
    ".json",
    ".html",
    ".css",
    ".txt"
  ]),
  Quiz(671, "What does 'Time to First Byte' (TTFB) measure?", [
    "The responsiveness of a web server",
    "The size of an image",
    "The length of the URL",
    "The number of tags in HTML"
  ]),
  Quiz(672, "What is a 'Favicon Generator'?", [
    "An online tool to create all sizes of icons from one image",
    "A script that changes the tab color",
    "A type of CSS animation",
    "A GitHub feature"
  ]),
  Quiz(673, "Which tag is used for the site's logo in the browser tab?", [
    "<link rel='icon'>",
    "<img src='favicon.ico'>",
    "<meta name='icon'>",
    "<title icon='...'>"
  ]),
  Quiz(674, "How do you define the language of your HTML document for SEO?", [
    "<html lang='en'>",
    "<meta lang='en'>",
    "<body lang='en'>",
    "<header lang='en'>"
  ]),
  Quiz(675, "What is 'Meta Keywords'?", [
    "An old meta tag that search engines mostly ignore now",
    "The most important tag in SEO",
    "A way to link to other sites",
    "A description of images"
  ]),
  Quiz(676, "What does 'Keywords' mean in SEO?", [
    "Terms that users type into search engines to find your content",
    "Special tags in HTML",
    "The names of the files",
    "The IDs of the divs"
  ]),
  Quiz(677, "What is 'Organic Search'?", [
    "Non-paid search results based on relevance",
    "Search results for farming websites",
    "Using a search bar in the site",
    "Searching on a local computer"
  ]),
  Quiz(678, "What is 'Bounce Rate'?", [
    "The percentage of users who leave after viewing only one page",
    "The speed of a loading animation",
    "The number of times a link is clicked",
    "The size of the header"
  ]),
  Quiz(679, "Which tool shows you how many people visit your site?", [
    "Google Analytics",
    "Google Lighthouse",
    "W3C Validator",
    "GitHub"
  ]),
  Quiz(680, "What is 'Web Hosting'?", [
    "A service that provides space on a server for your website files",
    "A program to write HTML",
    "A type of internet browser",
    "A way to design logos"
  ]),
  Quiz(681, "What is a 'Subdomain'?", [
    "An additional part to your main domain (e.g., blog.mysite.com)",
    "The .com part",
    "The http part",
    "The index.html file"
  ]),
  Quiz(682, "What is 'TLD'?", [
    "Top-Level Domain (e.g., .com, .org, .net)",
    "The first line of HTML",
    "The title of the page",
    "A type of link"
  ]),
  Quiz(683, "What does 'Git' do?", [
    "Tracks changes in files and coordinates work among multiple people",
    "Deploys sites to the cloud",
    "Validates HTML code",
    "Compresses images"
  ]),
  Quiz(684, "What is a 'Branch' in Git?", [
    "A parallel version of the repository for testing features",
    "A link to another site",
    "A folder in the directory",
    "A line of code"
  ]),
  Quiz(685, "What is 'CLI'?", [
    "Command Line Interface",
    "Code Link Interface",
    "Common Layout Index",
    "Client Login Info"
  ]),
  Quiz(686, "Which Vercel feature allows you to see a preview of your site for every commit?", [
    "Preview Deployments",
    "Production Builds",
    "Custom Domains",
    "Analytics"
  ]),
  Quiz(687, "What is 'Server-Side Rendering' (SSR)?", [
    "Generating the full HTML for a page on the server for every request",
    "Downloading code to the browser",
    "Using a local host",
    "A type of CSS styling"
  ]),
  Quiz(688, "What is 'Static Site Generation' (SSG)?", [
    "Pre-rendering pages into HTML files at build time",
    "A site that doesn't change color",
    "A site with no JavaScript",
    "A manual deployment"
  ]),
  Quiz(689, "Which tag is used for the site's favicon in modern browsers?", [
    "<link rel='icon' type='image/png' ...>",
    "<favicon>",
    "<meta icon='...'>",
    "<img src='favicon'>"
  ]),
  Quiz(690, "What does 'Self-Closing' mean for tags like <meta>?", [
    "They do not require a separate </meta> tag",
    "They close the browser window",
    "They only work once",
    "They are hidden"
  ]),
  Quiz(691, "What is a 'Heading Structure' (H1-H6) important for?", [
    "Both accessibility and SEO",
    "Only for font size",
    "Only for colors",
    "Only for images"
  ]),
  Quiz(692, "Should you use multiple H1 tags on a single page?", [
    "No, it is best practice to have only one main H1 for SEO",
    "Yes, as many as you want",
    "Only in the footer",
    "Only on mobile"
  ]),
  Quiz(693, "What is 'Alt text' for a link called?", [
    "There is no alt for links, use descriptive text between the tags",
    "Link title",
    "Link alt",
    "Link description"
  ]),
  Quiz(694, "Which meta tag is used to tell browsers not to translate your page?", [
    "<meta name='google' content='notranslate'>",
    "<meta translate='no'>",
    "<html translate='no'>",
    "<body no-translate>"
  ]),
  Quiz(695, "What is 'White Hat SEO'?", [
    "Ethical SEO practices following search engine guidelines",
    "Cheating the system",
    "Hosting a site for free",
    "Using white backgrounds"
  ]),
  Quiz(696, "What is 'Black Hat SEO'?", [
    "Unethical practices to trick search engines (can get you banned)",
    "Using dark mode",
    "Private hosting",
    "Using Shan script"
  ]),
  Quiz(697, "What is the 'Viewport'?", [
    "The visible area of a web page on a user's device",
    "A type of meta tag",
    "The server's location",
    "The folder where HTML is kept"
  ]),
  Quiz(698, "Why is 'og:image' important?", [
    "It sets the image that appears when your link is shared on Facebook/Twitter",
    "It makes the image look better",
    "It is a mandatory tag for images",
    "It speeds up image loading"
  ]),
  Quiz(699, "What is 'Semantic Markup'?", [
    "Using HTML tags that describe the meaning of the content",
    "Adding colors to code",
    "Translating code to English",
    "Using <div> for everything"
  ]),
  Quiz(700, "Final Question: You have completed the HTML Curriculum! What comes after HTML?", [
    "CSS (Cascading Style Sheets) for styling",
    "Nothing, I am done",
    "Hardware Engineering",
    "Learning to type faster"
  ]),
];
final List<List<Quiz>> htmlQuizzes = [
  htmlQuizM1,
  htmlQuizM2,
  htmlQuizM3,
  htmlQuizM4,
  htmlQuizM5,
  htmlQuizM6,
  htmlQuizM7,
];

