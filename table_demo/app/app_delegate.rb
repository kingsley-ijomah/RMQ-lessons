class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    tabBar = UITabBarController.alloc.init
    tabBar.viewControllers = [UINavigationController.alloc.initWithRootViewController(FirstTableController.alloc.init), 
                              UINavigationController.alloc.initWithRootViewController(SecondTableController.alloc.init)]

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = tabBar
    @window.makeKeyAndVisible

    true
  end
end
