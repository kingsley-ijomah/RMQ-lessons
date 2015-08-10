class MainController < UITableViewController
  def viewDidLoad
    super
    view.dataSource = view.delegate = self
    @data = ("A".."Z").to_a
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @data.count
  end

  CELLID = 'CellIdentifier'
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleSubtitle, reuseIdentifier:CELLID)
    end
    cell.textLabel.text = @data[indexPath.row]
    cell
  end

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
    tableView.deselectRowAtIndexPath(indexPath, animated:true)
    controller = UIViewController.alloc.init
    controller.view.backgroundColor = UIColor.whiteColor
    self.navigationController.pushViewController(controller, animated:true)
  end
end
