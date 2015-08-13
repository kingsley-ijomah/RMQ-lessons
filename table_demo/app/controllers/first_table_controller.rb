class FirstTableController < UITableViewController
  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemFavorites, tag:1)
    end
    self
  end
end
