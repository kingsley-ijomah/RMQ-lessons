class UserController < UIViewController
  attr_accessor :user

  def init
    if super
      self.user = User.read
      self.edgesForExtendedLayout = UIRectEdgeNone
    end
    self
  end

  def viewDidLoad
    super

    self.navigationItem.tap do |nav|
      nav.rightBarButtonItem = UIBarButtonItem.alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemEdit, target: self, action: 'edit_form')
    end
  end

  def viewDidAppear(animated)
    self.user = User.read
    @padding = 0

    User::ATTRIBUTES.each do |attr|
      label = UILabel.alloc.initWithFrame(CGRectZero).tap do |l|
        l.frame = [[10, increment_padding], l.frame.size]
        l.text = "#{attr} :"
        l.sizeToFit
      end
      self.view.addSubview(label)

      value = UILabel.alloc.initWithFrame(CGRectZero).tap do |v|
        v.frame = [[label.frame.origin.x + label.frame.size.width + 10, label.frame.origin.y], v.frame.size]
        v.text = self.user.send(attr)
        v.sizeToFit
      end
      self.view.addSubview(value)
    end
  end

  def edit_form
    self.navigationController.pushViewController(EditUserController.alloc.init, animated:true)
  end

  def increment_padding
    @padding += 35
  end
end
