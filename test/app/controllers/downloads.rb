class DownloadsController < UIViewController
  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemDownloads, tag:1)
    end
    self
  end

  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.greenColor
  end
end
