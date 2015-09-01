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

    @defaults = NSUserDefaults.standardUserDefaults
    @user = User.new(id:'123', name:'kingsley ijomah', email:'king@example.com')
    archived = NSKeyedArchiver.archivedDataWithRootObject(@user)
    # @defaults['saved_user'] = archived

    @user =  NSKeyedUnarchiver.unarchiveObjectWithData(@defaults['saved_user'])
    puts @user.inspect
    
 
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
