class AppDelegate
  def application(app, didFinishLaunchingWithOptions: launchOptions)
    puts CGRectGetHeight(UIScreen.mainScreen.bounds)
    true
  end
end
