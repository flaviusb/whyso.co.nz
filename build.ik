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
  blob:        GenX fromMD("appblob.md"),
  slideshow: ["picturetags_screenshot_sightseeing.png", "picturetags_screenshot_sightseeing_edit.png", "picturetags_screenshot_sightseeing_menu.png", "picturetags_screenshot_starred.png", "picturetags_screenshot_starred2.png"],
  rest:        XML render(XML fromQuotedFile("apps.ik", context: XML mimic with(data: {}))),
  modified:    fileModified("apps.ik")
}
pt_data = {
  title:    "PictureTags",
  header:   header,
  nav:      nav,
  blob:     GenX fromMD("picturetags.md"),
  rest:     GenX fromMD("picturetags-faq.md"),
  modified: fileModified("picturetags.md")
}
ptnew_data = {
  title:    "PictureTags",
  header:   header,
  nav:      nav,
  blob:     GenX fromMD("picturetags.md"),
  rest:     XML render(XML fromQuotedFile("picturetags-faq.ik", context: XML mimic with(data: {}))),
  modified: fileModified("picturetags.md")
}
oss_data = {
  title:    "Open Source Projects",
  header:   header,
  nav:      nav,
  blob:     GenX fromMD("opensource.md"),
  rest:     "",
  modified: fileModified("opensource.md")
}
contact_data = {
  title:    "Contact Us",
  header:   header,
  nav:      nav,
  blob:     GenX fromMD("contact.md"),
  rest:     "",
  modified: fileModified("contact.md")
}

; This context variable stops unneccesary shelling out when we don't care about a files modification date
nomod = {
  modified: ""
}
base = "/var/www/whyso.co.nz/htdocs/"
;base = ""
GenX baseURI = "http://whyso.co.nz/"
GenX build(base: base,
  (index_data    => "index.html")         => "index.ik",
  (about_data    => "about.html")         => "index.ik",
  (apps_data     => "apps.html")          => "index.ik",
  (pt_data       => "picturetags.html")   => "index.ik",
  (oss_data      => "opensource.html")    => "index.ik",
  (contact_data  => "contact.html")       => "index.ik",
  (nomod         => "reset.css")          => "reset.ik",
  (nomod         => "style.css")          => "style.ik")

GenX deployRaw(base: base,
  "*.png",
  "google5b823ca43536a9b1.html",
  "css/*.css",
  "coin-slider.min.js")

GenX sitemap(base: base)

; Build out the newlook site
GenX build(base: "/var/www/whyso.co.nz/htdocs/newlook/",
  (index_data    => "index.html")         => "skeleton.ik",
  (about_data    => "about.html")         => "skeleton.ik",
  (apps_data     => "apps.html")          => "skeleton.ik",
  (ptnew_data    => "picturetags.html")   => "skeleton.ik",
  (oss_data      => "opensource.html")    => "skeleton.ik",
  (contact_data  => "contact.html")       => "skeleton.ik",
  (nomod         => "reset.css")          => "reset.ik",  
  (nomod         => "skin.css")           => "skin.ik")

GenX deployRaw(base: "/var/www/whyso.co.nz/htdocs/newlook/",
  "*.png",
  "css/*.css",
  "coin-slider.min.js")
