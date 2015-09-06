class UserController < UIViewController
  include BW::KVO

  attr_accessor :user

  def viewDidLoad
    super

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
        observe(self.user, attr) do |old_value, new_value|
          v.text = new_value
        end
        v.sizeToFit
      end
      self.view.addSubview(value)

    end
  end

  def increment_padding
    @padding += 35
  end

  def initWithUser(user)
    self.init
    self.user = user
    self.edgesForExtendedLayout = UIRectEdgeNone
    self
  end
end
