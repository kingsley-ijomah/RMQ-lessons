class UserController < UIViewController
  include BubbleWrap::KVO
  attr_accessor :user

  def viewDidLoad
    super

    @padding_increments = 25
    @top_padding = 0

    User::ATTRIBUTES.each do |attr|
      label = UILabel.alloc.initWithFrame(CGRectZero).tap do |l|
        l.frame = [[10, increment_top_padding], l.frame.size]
        l.text = "#{attr.capitalize} :"
        l.sizeToFit
      end
      self.view.addSubview(label)

      value = UILabel.alloc.initWithFrame(CGRectZero).tap do |v|
        v.frame = [[label.frame.origin.x + label.frame.size.width + 10, label.frame.origin.y], v.frame.size]
        v.text = self.user.send(attr)
        observe(self.user, attr) do |old_value, new_value|
          v.text = new_value
          v.sizeToFit
        end
        v.sizeToFit
      end
      self.view.addSubview(value)
    end
    self.title = self.user.name
  end

  def increment_top_padding
    @top_padding += @padding_increments
  end

  def initWithUser(user)
    self.init
    self.user = user
    self.edgesForExtendedLayout = UIRectEdgeNone
    self
  end  
end
