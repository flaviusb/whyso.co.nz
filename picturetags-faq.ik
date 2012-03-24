box = method(title, text, class,
 ''(section(class: "#{`class}")
     (h2 "#{`title}")
     (p "#{`text}")))
''(section
    (a(href: "http://market.android.com/details?id=net.flaviusb.picturetags", class: "cntrlol") img(src: "http://www.android.com/images/brand/60_avail_market_logo2.png", alt: "Available in Android Market"))
    (h1 "Frequently Asked Questions")
    hr
    `box(
      "Q: How do I tag an image",
      "A: If you long click on an image, a context menu will pop up. Select the item 'Edit image tags'. Alternatively, you can select an image, and then press the menu key and pick the menu item 'Edit picture tags'. You will be taken to a screen where you can create new tags and select existing tags to add to or remove from the image.",
      "lbox")
    `box(
      "Q: How do I tag a tag",
      "A: Select the tag to tag, and then press the menu key and select 'Edit Tag'. You will be taken to a new screen where you can create new tags and select existing tags to add to or remove from the image.",
      "rbox")
    hr
    `box(
      "Q: How do I search for tags inside PictureTags",
      "A: Just press the search button anywhere inside the app.",
      "lbox")
    `box(
      "Q: How do I search for tags outside of PictureTags",
      "A: You need to enable searching through PictureTags data in your phone's search settings first. You can do this by pressing the search button, then the menu button, the selecting 'Search Settings'. The setting is under the 'Searchable items' section. Once you have enabled searching through PictureTags data, you can search through tags even when you are not in PictureTags",
      "rbox")
    hr
  )
