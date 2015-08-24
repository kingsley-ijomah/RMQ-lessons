class ContactsController < UITableViewController
  def viewDidLoad
    super
    # @data = ('A'..'Z').to_a
    @data = {}
    ('A'..'Z').to_a.each do |letter|
      @data[letter] = []
      5.times do
        random_string = (0...4).map { 65.+(rand(25)).chr }.join
        @data[letter] << letter + random_string
      end
    end
  end

  def sections
    @data.keys.sort
  end

  def rows_for_section(section_index)
    @data[sections[section_index]]
  end

  def row_for_index_path(index_path)
    rows_for_section(index_path.section)[index_path.row]
  end

  def tableView(tableView, titleForHeaderInSection:section)
    sections[section]
  end

  def numberOfSectionsInTableView(tableView)
    sections.count
  end

  def tableView(tableView, numberOfRowsInSection:section)
    rows_for_section(section).count
  end

  CELLID = 'CELLid'
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
    UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
    end
    cell.textLabel.text = row_for_index_path(indexPath)
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton
    cell
  end

  def tableView(tableView, accessoryButtonTappedForRowWithIndexPath:indexPath)
    detailsController = DetailsController.alloc.initWithLetter(row_for_index_path(indexPath))
    self.navigationController.pushViewController(detailsController, animated:true)
  end
end
