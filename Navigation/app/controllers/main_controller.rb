class MainController < UIViewController
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor

    label = UILabel.alloc.initWithFrame(CGRectZero)
    label.text = 'Hello iOS'
    label.font = UIFont.systemFontOfSize(30)
    label.sizeToFit
    label.center = [self.view.frame.size.width / 2, self.view.frame.size.height / 2]
    self.view.addSubview(label)
  end
end
