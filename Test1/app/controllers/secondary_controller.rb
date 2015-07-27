class SecondaryController < UIViewController
  def viewDidLoad
    super
    view.backgroundColor = UIColor.blueColor
    self.title = 'Secondary'    

    label = UILabel.alloc.initWithFrame(CGRectZero)
    label.text = 'Secondary Controller'
    label.font = UIFont.systemFontOfSize(32)
    label.color = UIColor.whiteColor
    label.sizeToFit
    label.center = [view.frame.size.width / 2, view.frame.size.height / 2]
    view.addSubview(label)
  end
end
