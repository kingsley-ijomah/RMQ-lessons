class ElementsController < UIViewController
  def viewDidLoad
    super
    add_label
    add_textfield
  end

  def add_label
    label = UILabel.alloc.init.tap do |l|
      l.frame = [[50, 100], [300, 30]]
      l.backgroundColor = UIColor.clearColor
      l.textColor = UIColor.blueColor
      l.font = UIFont.fontWithName("HelveticaNeue-CondensedBold", size:18)
      l.text = "This is label text"
      l.sizeToFit
    end
    self.view.addSubview(label)
  end

  def add_textfield
    textfield = UITextField.alloc.init.tap do |tf|
      tf.frame = [[50, 200], [200, 35]]
      tf.borderStyle = UITextBorderStyleRoundedRect
      tf.placeholder = 'Enter Details..'
      tf.textAlignment = UITextAlignmentCenter
    end
    self.view.addSubview(textfield)
  end
end
