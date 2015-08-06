class AppDelegate
  def application(application, didFinishLaunchingWithOptions: launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    tabBar = UITabBarController.alloc.init
    tabBar.viewControllers = [
      UINavigationController.alloc.initWithRootViewController(MainController.alloc.init),
      UINavigationController.alloc.initWithRootViewController(SecondaryController.alloc.init)]
 
    @window.rootViewController = tabBar 
  end
end
