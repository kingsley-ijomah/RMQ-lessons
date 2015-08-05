class MainController < UIViewController
  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemHistory, tag:1)
    end
    self
  end

  def viewDidLoad
    super
  end
end
