class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu
    buildWindow
    show_classes
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless
  end

  def show_classes
    class_names = Kernel.constants.select {|cn| cn.match(/mark/i) }.sort
    out = cmark_markdown_to_html(mdstring, mdstring.length, 0)
    puts "output: '#{out}'"
  end

  def mdstring
    "# hello world"
  end
end
