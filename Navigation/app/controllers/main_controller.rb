class MainController < UIViewController
  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemDownloads, tag:1)
    end
    self
  end

  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor

    label = UILabel.alloc.initWithFrame(CGRectZero)
    label.text = 'Hello iOS'
    label.font = UIFont.systemFontOfSize(30)
    label.sizeToFit
    label.center = [self.view.frame.size.width / 2, self.view.frame.size.height / 2]
    self.view.addSubview(label)

    self.navigationItem.tap do |nav|
      nav.title = 'Main'
      nav.leftBarButtonItem = create_bar_button(UIBarButtonSystemItemSave, :left_button)
      nav.rightBarButtonItem = create_bar_button(UIBarButtonSystemItemAdd, :right_button)
    end
  end

  def create_bar_button(item, action)
    UIBarButtonItem.alloc.initWithBarButtonSystemItem(item, target: self, action: action)
  end

  def left_button
    puts 'left button clicked'
  end

  def right_button
    self.navigationController.pushViewController(SecondaryController.alloc.init, animated: true)
  end
end
