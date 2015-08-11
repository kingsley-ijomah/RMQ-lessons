class SecondTableController < UIViewController
  def viewDidLoad
    super
    @table = UITableView.alloc.initWithFrame(self.view.bounds)
    self.view.addSubview(@table)
  end
end

