class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(MainController.new)
    true
  end
end
