''("/* Based on the Meyer Reset */"
html|body { height: "100%" }
html|body|div|span|applet|object|iframe|h1|h2|h3|h4|h5|h6|p|blockquote|pre|a|abbr|acronym|address|big|cite|code|del|dfn|em|font|img|ins|kbd|q|s|samp|small|strike|strong|sub|sup|tt|var|b|u|i|center|dl|dt|dd|ol|ul|li|fieldset|form|label|legend|table|caption|tbody|tfoot|thead|tr|th|td {
  margin:   0,
  padding:  0,
  border:   0,
  outline:  0,
  ^fontSize "100%",
  ^verticalAlign :baseline,
  background: :transparent,
}
article | aside | figure | footer | header | hgroup | menu | nav | section { display: :block }
body {
  "line-height" => 1
}
ol|ul {
  "list-style" => :none
}
blockquote|q {
  quotes: :none
}
blockquote:before|blockquote:after|q:before|q:after {
  :content => :'',
  content: :none
}
:focus {
  outline: 0
}
ins {
  "text-decoration" => :none
}
del {
  "text-decoration" => "line-through"
}
table {
  ^borderCollapse :collapse,
  ^borderSpacing 0
}
"/*-------------------------------------------------------------------------------------------*/
/* GENERAL STYLES */
/*-------------------------------------------------------------------------------------------*/

/* Floating & Alignment */\n"
$fl{float: :left}
$fr{float: :right}
$ac{"text-align" => "center"}
$ar{"text-align" => "right"}
$cntr{"margin-left" => "auto", "margin-right" => "auto"}

"/* Clear Floats */\n"

".col-full:after" {content: #["."], display: :block, height: "0", clear: :both, visibility: :hidden}

$fix {clear: :both, height: "1px", margin: "-1px 0 0", overflow: :hidden}

$clear {
	background: :none,
	border: "0",
	clear: :both,
	display: :block,
	float: :none,
	"font-size" => "0",
	"list-style" => :none,
	margin: "0",
	padding: "0",
	overflow: :hidden,
	visibility: :hidden,
	width: "0",
	height: "0",
} "/* http://sonspring.com/journal/clearing-floats */"
)
