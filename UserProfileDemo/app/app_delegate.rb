class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @user = User.new(id:'123', name:'Kingsley', email:'kingsley@example.com')
    rootViewController = UserController.alloc.initWithUser(@user)
    rootViewController.title = 'UserProfileDemo'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
