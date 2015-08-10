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
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleSubtitle, reuseIdentifier:CELLID)
      cell
    end
    cell.textLabel.text = @data[indexPath.row]
    cell.detailTextLabel.text = 'Hello world!'
    cell
  end

  def tableView(tableView, accessoryButtonTappedForRowWithIndexPath:indexPath)
    alphabets = @data[indexPath.row]
  end
end
