class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    firstTableController = FirstTableController.alloc.initWithFrame(UITableViewStylePlain)
    secondTableController = SecondTableController.alloc.init

    firstTableNav = UINavigationController.alloc.initWithRootViewController(firstTableController)
    secondTableNav = UINavigationController.alloc.initWithRootViewController(secondTableController)

    navBar = UINavigationBarController.alloc.init
    navBar.viewControllers[firstTableController, secondTableController]

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navBar
    @window.makeKeyAndVisible

    true
  end
end
