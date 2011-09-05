base = "http://whyso.co.nz/"
style = method("Add style sheet link in place.", location,
  ''link(rel: "stylesheet", type: "text/css", href: "#{`location}")
)
condcom = dmacro("Conditionally comment some html, relative to a browser",
  [>browser, content]
  ''(("<!--[if #{`browser}]>\n"). `content. "\n<![endif]-->"))
''(
`doctype("xml")
`doctype("xhtml")
html(xmlns: "http://www.w3.org/1999/xhtml", lang: "en") (head
  (title "#{`data[:title]}")
  meta(charset: "utf-8")
  `style("#{`base}reset.css")
  `style("#{`base}960.css")
  `style("#{`base}style.css")
  link(rel: "shortcut icon", href: "#{`base}qq.png", type: "image/png")
  `condcom("IE 6", `style("#{`base}ie6.css"))
  `condcom("IE 7", `style("#{`base}ie7.css"))
  `rem(''link(href: "#{`base}atom.xml", type: "application/atom+xml", rel: "alternate", title: "Blog Atom Feed")))
  (body
    (div(class: "container")
      (div(class: "container_12")
        (div(class: "grid_8") h1(class: "title t2") ("#{`data[:header]}"))
        (div(class: "grid_4") (form(class: "sf", role: "search", onsubmit: "window.location.href = 'http://google.com/search?q=site%3Awhyso.co.nz%20' + document.getElementById('s').value; return false;") (input(type: "text", name: "s", id: "s")) (input(type: "submit", value: "Search"))))
        div(class: "clear")
        (div(class: "grid_12") (nav(class: "navigation") "#{`data[:nav]}"))
        div(class: "clear"))
    (div(class: "container_12") div(class: "grid_12") (
      `if(data[:slideshow] == nil,
        ''(div(class: "blob") (div(class: "prefix_1 grid_10 suffix_1") div(class: "blobp") ("#{`data[:blob]}")) div(class: "clear")),
        ''(div(class: "blob") (div(class: "grid_5") (div(class: "blobp") ("#{`data[:blob]}"))) (div(class: "grid_7") ("#{`data[:slideshow]}")) div(class: "clear"))
      )
    )))
    div(class: "clear")
    (div(class: "container_12", style: "margin-top:20px;") (div(class: "grid_8") "#{`data[:rest]}"))))
