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
  height: "80px",
  "background-color" => "rgba(206,209,227, 0.75)"
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
  ^marginRight "20px",
  ^marginLeft "20px"
}
h2 {
  ^paddingTop  "0.75em"
}
nav ul {
  ^listStyleType :none,
  ^textAlign :center
}
nav ul li {
  ^marginRight "20px",
  display: :inline
}
nav ul li a | h1 a {
  ^textDecoration :none,
  color: :black
}
a:hover { ^textDecoration :underline, color: :blue }
)
