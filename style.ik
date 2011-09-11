; symbols are pseudoclasses
; $ is a class
; ? is (#)
; ^ is `uncamel
; | is , 

footerBorder = 6
footerHeight = 200
''(
$c {
  display: :table,
  margin: "10px auto"
}
$b {
  width: "80%",
  margin: "10px auto",
  padding: "20px",
  "border-radius" => "15px",
  "-moz-border-radius" => "15px",
  "background-color" => "rgba(246,249,237, 0.5)"
}
$h {
  width: "100%",
  "min-height" => "90px",
  "background-color" => "rgba(206,209,227, 0.75)"
}
$f | $u {
  "width"              => "180px",
  "height"             => "180px",
  "border-radius"      => "3px",
  "-moz-border-radius" => "3px",
  "text-align"         => "center",
  "font-size"          => "80%",
  "float"              => "left",
  "padding"            => "10px"
}
$e {
  clear: "right"
}
$cl {
  clear: "left"
}
$f {
  "border"             => "2px solid #00FFFF",
  "background-color"   => "rgba(167,250,247, 0.5)"
}
$u {
  "border"             => "2px solid #11EEEE",
  "background-color"   => "rgba(127,200,190, 0.25)"
}
a $f | $u {
  margin: "12px"
}
nav {
  ^fontFamily     "Verdana, serif",
  "line-height" => "30px"
}
nav ul {
  ^listStyleType :none
}
nav ul li {
  ^marginRight "10px",
  ^marginLeft  "10px",
  display: :inline
}
nav ul li a {
  ^textDecoration :none,
  color: "#EFEFEF"
}

a:hover { ^textDecoration :underline, color: :blue }

nav ul li a:hover {
  color: "#FFFFFF"
}

$top {
    background: "url(bg.png)",
    "background-repeat" => "repeat-x",
    "background-position" => "0 0px",
    "background-color" => "#f8f8f8"
}

$title {
  font: "28px Georgia,Times,Times New Roman,serif",
  "margin-bottom" => "20px",
  width: "450px",
  "word-spacing" => "0.2em"
}

$t2 {
  "margin-top" => "20px"
}
$title a {
  "text-decoration" => :none,
  color: "#EFEFEF",
  "text-shadow" => "1px 1px 1px #222"
}

$navigation {
  height: "30px",
  "-moz-border-radius-topleft" => "10px",
  "-webkit-border-top-left-radius" => "10px",
  "border-top-left-radius" => "10px",
  "background-color" => "#121212",
  color: "#FFFFFF",
  padding: "10px 25px 10px 10px"
}

"/* search form */\n"

$sf {
  height: "40px",
  "-moz-border-radius-topleft" => "10px",
  "-moz-border-radius-topright" => "10px",
  "-webkit-border-top-left-radius" => "10px",
  "-webkit-border-top-right-radius" => "10px",
  "border-top-left-radius" => "10px",
  "border-top-right-radius" => "10px",
  "background-color" => "#121212",
  "padding-top" => "10px",
  "padding-left" => "10px",
  "margin-top" => "30px"
}

".sf input[type=text]" {
  height: "25px",
  "font-size" => "16px",
  color: "#F2583E",
  padding: "3px 10px 3px 10px",
  width: "185px",
  border: "2px solid #D5E1DD",
  "vertical-align" => "middle"
}

".sf input[type=submit]" {
  height: "35px",
  "line-height" => "25px",
  "font-size" => "14px",
  color: "#2B3E42",
  padding: "3px",
  width: "70px",
  border: "2px solid #D5E1DD",
  "background-color" => "#F7F3E8",
  "margin-left" => "-5px",
  "vertical-align" => "middle"
}

$blob {
  "max-height" => "580px",
  "min-height" => "75px",
  width: "100%",
  "background-color" => "#555",
  "-moz-border-radius-bottomleft" => "10px",
  "-moz-border-radius-bottomright" => "10px",
  "-webkit-border-bottom-left-radius" => "10px",
  "-webkit-border-bottom-right-radius" => "10px",
  "border-bottom-left-radius" => "10px",
  "border-bottom-right-radius" => "10px",
  "margin-bottom" => "35px"
}

$blobp {
  margin: "35px 0px 25px 25px",
  color: "#FFF"
}

html | body {
  height: "100%"
}

$container {
  "min-height" => "100%",
  "margin-bottom" => "-#{`footerHeight + `footerBorder}px",
  position: "relative"
}

$footergap {
  height: "#{`footerHeight + `footerBorder}px",
  clear: "both"
}

$footer {
  height: "#{`footerHeight}px",
  position: "relative",
  color: "#444",
  "background-color" => "#d5e1e9",
  "border-top" => "#{`footerBorder}px solid #444"
}

$imgcont {
  margin: "15px",
  border: "3px solid #FFF",
  "margin-left" => "70px",
  "box-shadow" => "1px 1px 1px #222"
}

$cont {
  display: "none"
}

"#cs-buttons-coin-slider" {
    "margin-top" => "-10px",
    "margin-left" => "-50px"
}

$gallery {
  position: "relative"
}
)
