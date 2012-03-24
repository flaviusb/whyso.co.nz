box = method(title, text, class,
 ''((section(class: "#{`class}")
     (h2 "#{`title}")
     (p "#{`text}"))))
secbreak = method(
  ''((div(class: "clear") "")
      hr))
     
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
    `secbreak
    `box(
      "Q: How do I search for tags inside PictureTags",
      "A: Just press the search button anywhere inside the app.",
      "lbox")
    `box(
      "Q: How do I search for tags outside of PictureTags",
      "A: You need to enable searching through PictureTags data in your phone's search settings first. You can do this by pressing the search button, then the menu button, the selecting 'Search Settings'. The setting is under the 'Searchable items' section. Once you have enabled searching through PictureTags data, you can search through tags even when you are not in PictureTags",
      "rbox")
    `secbreak
    `box(
      "Q: How do I make a shortcut straight to a tag",
      "A: Long press on a clear section of your Android Home Screen, select 'Shortcuts' from the add to home screen menu that will pop up, and select PictureTags. You will be taken to a list of tags. Press the one you want to create a shortcut to.",
      "lbox")
    `box(
      "Q: Can I import images from another app",
      "A: Yes, but only if that app has the ability to send images to another app. Most image handling apps should, as this is the standard way that Android apps interoperate each other. To import the images, send them to PictureTags from within the other app.",
      "rbox")
    `secbreak
    `box(
      "Q: Can I mass import images from other apps",
      "A: Yes, but only if that program has multiple selection and the 'send selected images to' functionality. For example, the default Android Gallery allows you to select multiple images or folders and then send them all to another app by entering selection mode, selecting the images that you want, pressing the menu button and choosing the 'Share' option, and then picking 'PictureTags' from the list of available apps to share with. Just as with importing, to do a mass import select all of the images you want to import from within the other app, and send them to PictureTags.",
      "lbox")
  )
