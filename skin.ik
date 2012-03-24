bggradient = method("Generate background gradient css from start and end colours", start, end, 
"
  background: ##{start}; /* Old browsers */
  background: -moz-linear-gradient(top, ##{start} 0%, ##{end} 100%); /* FF3.6+ */
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,##{start}), color-stop(100%,##{end})); /* Chrome,Safari4+ */
  background: -webkit-linear-gradient(top, ##{start} 0%,##{end} 100%); /* Chrome10+,Safari5.1+ */
  background: -o-linear-gradient(top, ##{start} 0%,##{end} 100%); /* Opera11.10+ */
  background: -ms-linear-gradient(top, ##{start} 0%,##{end} 100%); /* IE10+ */
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='##{start}', endColorstr='##{end}',GradientType=0 ); /* IE6-9 */
  background: linear-gradient(top, ##{start} 0%,##{end} 100%); /* W3C */
")

bg = bggradient("e3e8ed", "c6ccda")
sectionbg = bggradient("2d3648", "424e64")

''(
body {
  "#{`bg}"
}

$blob {
  "#{`sectionbg}"
}
$rest {
  background: "#fafafa"
}

section {
   "-moz-border-radius"    => "10px",
   "-webkit-border-radius" => "10px",
   "-o-border-radius"      => "10px",
   "border-radius"         => "10px"
}

html | body {
  height: "100%"
}

header {
  "margin-bottom" => "20px",
  "margin-top"    => "20px",
  "line-height"   => "40px"
}

header h1 {
  font: "28px Georgia,Times,Times New Roman,serif",
  "word-spacing" => "0.2em",
  float: "left"
}
header h1 a {
  "text-decoration" => :none,
  color: "#000000",
  "text-shadow" => "1px 1px 1px #222"
}

section ul {
  ^listStyleType :disc,
  ^listStylePosition :inside
}

nav ul {
  ^listStyleType :none
}

nav {
  float: "right",
  display: "inline"
}

$ullinks {
  ^listStyleType :none
  ^fontFamily     "Verdana, serif",
  "line-height" => "30px",
  "font-size"          => "80%"
}

$ullinks li {
  ^marginRight "10px",
  ^marginLeft  "10px",
  display: :inline
}
)
