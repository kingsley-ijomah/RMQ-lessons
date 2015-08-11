class SecondTableController < UIViewController
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor
    self.title = 'Second Table'
    
    @data = ('A'..'Z').to_a
    @table = UITableView.alloc.initWithFrame(self.view.bounds)
    @table.dataSource = @table.delegate = self
    self.view.addSubview(@table)
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @data.count
  end

  CELLID = 'CellIdentifier'
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
    end
    cell.textLabel.text = @data[indexPath.row]
    cell
  end

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
    tableView.deselectRowAtIndexPath(indexPath, animated:true)
    self.navigationController.pushViewController(SecondTableController.alloc.init, animated:true)
  end
end

