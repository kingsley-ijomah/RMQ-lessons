class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    tabBarController = UITabBarController.alloc.init
    tabBarController.viewControllers = [
      UINavigationController.alloc.initWithRootViewController(MainController.alloc.init),
      UINavigationController.alloc.initWithRootViewController(FavoritesController.alloc.init),
      UINavigationController.alloc.initWithRootViewController(DownloadsController.alloc.init)]

    @window.rootViewController = tabBarController
    true
  end
end
