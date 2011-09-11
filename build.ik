nav    = GenX fromMD("nav.md")
header = GenX fromMD("header.md")
fileModified = method("Shell out to get file modification timestamp.", fileName,
  time = ""
  mktime = fn(x, time = x)
  Shell out(printer: mktime, "stat", "-c", "%y", fileName)
  time replace(#/([0-9]{4}-[0-9][0-9]-[0-9][0-9]) (.*)\..*([-+Z].*)/, "$1T$2$3") replace(#/([0-9]{2})([0-9]{2})$/, "$1:$2")
)
index_data = {
  title:    "Why So Limited?",
  header:   header,
  nav:      nav,
  blob:     GenX fromMD("index.md"),
  rest:     "",
  modified: fileModified("index.md")
}
about_data = {
  title:    "About Why So Ltd",
  header:   header,
  nav:      nav,
  blob:     GenX fromMD("about.md"),
  rest:     "",
  modified: fileModified("about.md")
}
apps_data = {
  title:       "Apps",
  header:      header,
  nav:         nav,
  blob:        "Something something screenshots...",
  screenshots: ["picturetags_screenshot_sightseeing.png", "picturetags_screenshot_sightseeing_edit.png", "picturetags_screenshot_sightseeing_menu.png", "picturetags_screenshot_starred.png", "picturetags_screenshot_starred2.png"],
  rest:        XML render(XML fromQuotedFile("apps.ik", context: XML mimic with(data: {}))),
  modified:    fileModified("apps.ik")
}
pt_data = {
  title:    "PictureTags",
  header:   header,
  nav:      nav,
  blob:     GenX fromMD("picturetags.md"),
  rest:     "Put multicolumn faq here",
  modified: fileModified("picturetags.md")
}

; This context variable stops unneccesary shelling out when we don't care about a files modification date
nomod = {
  modified: ""
}
base = "/var/www/whyso.co.nz/htdocs/"
;base = ""
GenX baseURI = "http://byeloblog.net/"
GenX build(base: base,
  (index_data    => "index.html")         => "index.ik",
  (about_data    => "about.html")         => "index.ik",
  (apps_data     => "apps.html")          => "index.ik",
  (pt_data       => "picturetags.html")   => "index.ik",
  (nomod         => "reset.css")          => "reset.ik",
  (nomod         => "style.css")          => "style.ik")

GenX deployRaw(base: base,
  "*.png",
  "google5b823ca43536a9b1.html",
  "css/*.css",
  "coin-slider.min.js")

GenX sitemap(base: base)
