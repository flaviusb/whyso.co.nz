base = "http://whyso.co.nz/newlook/"
style = method("Add style sheet link in place.", location,
  ''link(rel: "stylesheet", type: "text/css", href: "#{`location}")
)
condcom = dmacro("Conditionally comment some html, relative to a browser",
  [>browser, content]
  ''(("<!--[if #{`browser}]>\n"). `content. "\n<![endif]-->"))
makeimages = method("Take an array of image names, unroll them into a blob of image tags in the format coinslider expects.", images,
  the_blob = (images flatMap(img, XML render(''(a(href: "#{`base}picturetags") (img(src: "#{`base}#{`img}", alt: "Picturetags in action", class: "cont")) //(span "PictureTags in action")))))
  ''("#{`the_blob}")
)
''(
`doctype("xml")
`doctype("xhtml")
html(xmlns: "http://www.w3.org/1999/xhtml", lang: "en") 
  (head
    (title "#{`data[:title]}")
    meta(charset: "utf-8")
    link(rel: "shortcut icon", href: "#{`base}qq.png", type: "image/png")
    `style("#{`base}reset.css")
    `style("#{`base}960.css")
    `style("#{`base}skin.css")
    `style("#{`base}coin-slider-styles.css")
    `(if(data[:slideshow] == nil,
        '(""),
        ''((script(src: "http://code.jquery.com/jquery-1.4.2.min.js", type: "text/javascript") " ")
           (script(src: "#{`base}coin-slider.min.js", type: "text/javascript") " ")))))
  (body
    (header
      (h1 a(href: "#{`base}") "Why So Limited?")
      (nav
        (ul(class: "ul-links")
          li a(href: "#{`base}about")      "About"
          li a(href: "#{`base}apps")       "Apps"
          li a(href: "#{`base}blog")       "Blog"
          li a(href: "#{`base}opensource") "Open Source"
          li a(href: "#{`base}contact")    "Contact Us")
        (form(class: "sf", role: "search", onsubmit: "window.location.href = 'http://google.com/search?q=site%3Awhyso.co.nz%20' + document.getElementById('s').value; return false;") (input(type: "text", name: "s", id: "s")) (input(type: "submit", value: "Search")))
      ))
    (section(class: "blob"))
    (section(class: "rest"))
    (footer
      (ul(class: "ul-links")
        li a(href: "#{`base}about")      "About"
        li a(href: "#{`base}toc")        "Terms and Conditions"
        li a(href: "#{`base}privacy")    "Privacy Policy"
        li a(href: "#{`base}contact")    "Contact Us"))
))