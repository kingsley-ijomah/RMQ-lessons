class SecondTableController < UIViewController
  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemContacts, tag:1)
    end
    self
  end

  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor
  end
end
