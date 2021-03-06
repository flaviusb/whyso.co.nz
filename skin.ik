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
article {
  "font-family" => #["HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif],
  "font-weight" => "300",
  "#{`bg}",
  "min-height" => "100%",
  overflow: :auto
}

$blob {
  "#{`sectionbg}",
  color: "#fafafa"
}

$rest {
  color:      "#000000",
  background: "#fafafa"
}

$blob | $rest {
  "-moz-border-radius"    => "10px",
  "-webkit-border-radius" => "10px",
  "-o-border-radius"      => "10px",
  "border-radius"         => "10px",
  "margin"                => "20px",
  "padding"               => "80px"
}

$blob a {
  color: "#fafafa"
}
$rest a {
  color: "#000000"
}

header | footer {
  "margin"      => "20px",
  "line-height" => "40px"
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
  ^listStyleType   :none
  ^fontFamily      "Verdana, serif",
  "line-height" => "30px",
  "font-size"   => "80%",
  display:         :inline
}

$ullinks li {
  ^marginRight "10px",
  ^marginLeft  "10px",
  display: :inline
}

$ullinks li a {
  ^textDecoration :none,
  color: :black
}

$ullinks li a:hover { ^textDecoration :underline }

"/* search form */\n"

$sf {
  height: "26px",
  "-moz-border-radius"    => "12px",
  "-webkit-border-radius" => "12px",
  "-o-border-radius"      => "12px",
  "border-radius"         => "12px",
  border:                    "2px solid #8a8b8a",
  background:                "#FFFFFF",
  display:                   "inline"
}
".sf input[type=text]" {
  height: "16px",
  "font-size" => "12px",
  background: "#FFFFFF",
  border: "none",
  padding: "2px",
  "vertical-align" => "middle",
  "-moz-border-radius"    => "10px",
  "-webkit-border-radius" => "10px",
  "-o-border-radius"      => "10px",
  "border-radius"         => "10px"
}
".sf input[type=submit]" {
  height: "18px",
  padding: "2px",
  "font-size" => "12px",
  "-moz-border-radius"    => "10px",
  "-webkit-border-radius" => "10px",
  "-o-border-radius"      => "10px",
  "border-radius"         => "10px",
  border:                    "2px solid #8a8b8a",
  "vertical-align"        => "middle"  
}

$lbox {
  float: "left",
  width: "40%"
}

$rbox {
  float: "right",
  width: "40%"
}

section h1 {
  "font-size"     => "210%",
  "margin-bottom" => "0.8em"
}
section h2 {
  "font-size" => "180%",
  "margin-bottom" => "0.6em"
}
section h3 {
  "font-size" => "150%",
  "margin-bottom" => "0.6em"  
}
$smaller {
  "font-size" => "80%"
}
$bigger {
  "font-size" => "120%"
}
$third {
  "max-width" => "33%"
}
$quarter {
  "max-width" => "25%"
}
$col {
  "margin-left"  => "10px",
  "margin-right" => "10px"
}
)
