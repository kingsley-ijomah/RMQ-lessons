class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @user = User.new(id:'123', name:'kingsley ijomah', email:'king@example.com')
    rootViewController = UserController.alloc.initWithUser(@user)
    rootViewController.title = 'UserProfile'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
