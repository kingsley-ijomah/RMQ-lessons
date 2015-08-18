class FirstTableController < UITableViewController
  def initWithStyle(style)
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemContacts, tag:1)
    end
    self
  end

  def viewDidLoad
    super
    @data = ('A'..'Z').to_a
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @data.count
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:nil).tap do |c|
      c.textLabel.text = @data[indexPath.row]
    end
  end
end
