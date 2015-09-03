class EditUserController < UIViewController
  def viewDidLoad
    super
    self.view.BackgroundColor = UIColor.whiteColor
    self.title = "Edit User"

    id_field = UITextField.alloc.init.tap do |f|
      f.frame = [[20, 100], [335, 35]]
      f.borderStyle = UITextBorderStyleRoundedRect
      f.placeholder = "Enter ID"
      f.textAlignment = UITextAlignmentCenter
    end
    self.view.addSubview(id_field)

    name_field  = UITextField.alloc.init.tap do |f|
      f.frame = [[20, 150], [335, 35]]
      f.borderStyle = UITextBorderStyleRoundedRect
      f.placeholder = "Enter Full Name"
      f.textAlignment = UITextAlignmentCenter
    end
    self.view.addSubview(name_field)

    email_field  = UITextField.alloc.init.tap do |f|
      f.frame = [[20, 200], [335, 35]]
      f.borderStyle = UITextBorderStyleRoundedRect
      f.placeholder = "Enter Email Address"
      f.textAlignment = UITextAlignmentCenter
    end
    self.view.addSubview(email_field)

    submit_button = UIButton.buttonWithType(UIButtonTypeRoundedRect).tap do |b|
      b.frame = [[20, 250], [335, 35]]
      b.setTitle("Submit Form", forState:UIControlStateNormal)
      b.addTarget(self, action:"buttonPressed", forControlEvents:UIControlEventTouchDown)
    end
    self.view.addSubview(submit_button)
  end

end
