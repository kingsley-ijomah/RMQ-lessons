class FirstTableController < UITableViewController
  def initWithStyle(style)
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemFavorites, tag:1)
    end
    self
  end
end
