class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu
    buildWindow
    parse_markdown
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless
  end

  def parse_markdown
    html_string = cmark_markdown_to_html(mdstring, mdstring.length, 0)
    puts "The html is: '#{html_string}'"
  end

  def mdstring
    "# hello world"
  end
end
