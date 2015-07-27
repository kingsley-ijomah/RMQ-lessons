class MainController < UIViewController
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor
    set_nav

    self.view.addSubview(button)
  end

  def set_nav
    self.title = 'Demo'
    self.navigationItem.tap do |nav|
      nav.leftBarButtonItem = create_bar_button(UIBarButtonSystemItemSearch, :left_bar_btn)
      nav.rightBarButtonItem = create_bar_button(UIBarButtonSystemItemAdd, :right_bar_btn)
    end
  end

  def create_bar_button(type, action)
    UIBarButtonItem.alloc.initWithBarButtonSystemItem(type, target: self, action: action)
  end

  def left_bar_btn
    puts 'left bar button'
  end

  def right_bar_btn
    self.navigationController.pushViewController(UIViewController.new, animated: false)
  end
end
