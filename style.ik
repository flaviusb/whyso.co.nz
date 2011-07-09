; symbols are pseudoclasses
; $ is a class
; ? is (#)
; ^ is `uncamel
; | is , 
''(
$c | h1 {
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
h1 {
  ^fontFamily "Georgia, Times, sans-serif",
  ^fontSize   "200%"
}
nav {
  ^fontFamily     "Verdana, serif",
  ^marginBottom   "1.75em",
  "border-radius" => "3px",
  "-moz-border-radius" => "3px",
  "background-color" => "rgba(246,249,237, 0.5)",
  display: :table,
  margin: "10px auto"
}
h2 {
  ^paddingTop  "0.75em"
}
nav ul {
  ^listStyleType :none,
  ^textAlign :center,
  margin: "10px"
}
nav ul li {
  ^marginRight "10px",
  ^marginLeft  "10px",
  display: :inline
}
nav ul li a | h1 a | $q {
  ^textDecoration :none,
  color: :black
}
a:hover { ^textDecoration :underline, color: :blue }
)
