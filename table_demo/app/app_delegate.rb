class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    tabBar = UITabBarController.alloc.init
    tabBar.viewControllers = [FirstTableController.alloc.init, SecondTableController.alloc.init]

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = tabBar
    @window.makeKeyAndVisible

    true
  end
end
