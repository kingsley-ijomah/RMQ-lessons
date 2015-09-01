class UserController < UIViewController
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
        v.sizeToFit
      end
      self.view.addSubview(value)
    end

    @db = NSUserDefaults.standardUserDefaults
    @db['User'] = User.new(id:'123', name:'kingsley ijomah', email:'king@example.com')
 
    puts @db['User']
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
