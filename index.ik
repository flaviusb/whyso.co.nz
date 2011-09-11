base = "http://whyso.co.nz/"
style = method("Add style sheet link in place.", location,
  ''link(rel: "stylesheet", type: "text/css", href: "#{`location}")
)
condcom = dmacro("Conditionally comment some html, relative to a browser",
  [>browser, content]
  ''(("<!--[if #{`browser}]>\n"). `content. "\n<![endif]-->"))
makeimages = method("Take an array of image names, unroll them into a blob of image tags in the format coinslider expects.", images,
  the_blob = (images flatMap(img, XML render(''(a(href: "#{`base}picturetags") (img(src: "#{`base}#{`img}", alt: "Picturetags in action", class: "cont")) //(span "Picturetags in action")))))
  ''("#{`the_blob}")
)
''(
`doctype("xml")
`doctype("xhtml")
html(xmlns: "http://www.w3.org/1999/xhtml", lang: "en") (head
  (title "#{`data[:title]}")
  meta(charset: "utf-8")
  link(rel: "shortcut icon", href: "#{`base}qq.png", type: "image/png")
  `style("#{`base}reset.css")
  `style("#{`base}960.css")
  `style("#{`base}style.css")
  `style("#{`base}coin-slider-styles.css")
  script(src: "http://code.jquery.com/jquery-1.4.2.min.js", type: "text/javascript")
  script(src: "#{`base}coin-slider.min.js", type: "text/javascript")
  `condcom("IE 6", `style("#{`base}ie6.css"))
  `condcom("IE 7", `style("#{`base}ie7.css"))
  `rem(''link(href: "#{`base}atom.xml", type: "application/atom+xml", rel: "alternate", title: "Blog Atom Feed")))
  (body
    (div(class: "container")
      (div(class: "top")
        (div(class: "container_12")
          (div(class: "grid_8") h1(class: "title t2") ("#{`data[:header]}"))
          (div(class: "grid_4") (form(class: "sf", role: "search", onsubmit: "window.location.href = 'http://google.com/search?q=site%3Awhyso.co.nz%20' + document.getElementById('s').value; return false;") (input(type: "text", name: "s", id: "s")) (input(type: "submit", value: "Search"))))
          //(div(class: "clear"))
          (div(class: "grid_12") (nav(class: "navigation") "#{`data[:nav]}"))
          div(class: "clear"))
      (div(class: "container_12") div(class: "grid_12") (
        `if(data[:slideshow] == nil,
          ''(div(class: "blob") (div(class: "prefix_1 grid_10 suffix_1") div(class: "blobp") ("#{`data[:blob]}")) div(class: "clear")),
          ''(div(class: "blob") (div(class: "grid_5") (div(class: "blobp") ("#{`data[:blob]}"))) (div(class: "grid_7 omega") (div(class: "gallery") 
              (div(id: "coin-slider", class: "imgcont") `makeimages(data[:slideshow])))) div(class: "clear"))
        )
      )))
      div(class: "clear")
      (div(class: "container_12", style: "margin-top:20px;") (div(class: "grid_8") "#{`data[:rest]}"))
      div(class: "footergap"))
    (div(class: "footer"))
    `(if(data[:slideshow] == nil,
      "",
      '((script(type: "text/javascript")  "$(document).ready(function() {
          $('#coin-slider').coinslider({width: 240, height: 400, delay: 3000, effect: 'straight'});
        });"))))
))
