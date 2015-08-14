class FirstTableController < UITableViewController
  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemFavorites, tag:1)
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

  CELLID = 'CellIdentifier'
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
    cell.textLabel.text = @data[indexPath.row]
    cell
  end

  def sections
    @data.keys.sort
  end

  def rows_for_section(section)
    @data[self.sections[section]]
  end

  def row_for_index_path(index_path)
    rows_for_section(index_path.section)[index_path.row]
  end
end





