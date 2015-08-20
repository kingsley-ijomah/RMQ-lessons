class ContactsController < UITableViewController
  def viewDidLoad
    super
    @data = ('A'..'Z').to_a
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @data.count
  end

  CELLID = 'CELLid'
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
    end
    cell.textLabel.text = @data[indexPath.row]
    cell
  end
end
