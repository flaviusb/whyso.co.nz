base = "http://whyso.co.nz/"
style = method("Add style sheet link in place.", location,
  ''link(rel: "stylesheet", type: "text/css", href: `location)
)
condcom = method("Conditionally comment some html, relative to a browser",
  browser, content,
  ''("<!--[if #{`browser}]>\n". `content. "\n<![endif]-->"))
''(
`doctype("xml")
`doctype("xhtml")
html(xmlns: "http://www.w3.org/1999/xhtml", lang: "en") (head
  (title "#{`data[:title]}")
  meta(charset: "utf-8")
  `style("#{`base}reset.css")
  `style("#{`base}css/960.css")
  `style("#{`base}style.css")
  link(rel: "shortcut icon", href: "#{`base}qq.png", type: "image/png")
  `condcom("IE 6", `style("#{`base}css/ie6.css"))
  `condcom("IE 7", `style("#{`base}css/ie7.css"))
  `rem(''link(href: "#{`base}atom.xml", type: "application/atom+xml", rel: "alternate", title: "Blog Atom Feed")))
  (body
    (div(class: "h")
      ("#{`data[:header]}")
      (nav "#{`data[:nav]}"))
    (div(class: "b") "#{`data[:body]}")))
