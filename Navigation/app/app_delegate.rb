class AppDelegate
  def application(application, didFinishLaunchingWithOptions: launchOption)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
    true
  end
end

