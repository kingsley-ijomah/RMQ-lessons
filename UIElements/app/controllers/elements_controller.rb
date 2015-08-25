class ElementsController < UIViewController
  def viewDidLoad
    super
    add_label
    add_textfield
    add_slider
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

  def add_slider
    slider = UISlider.alloc.init.tap do |s|
      s.frame = [[60, 250], [200, 35]]
      s.minimumValue = 0
      s.maximumValue = 1000
      s.value = s.maximumValue / 2
      s.addTarget(self, action:'slideChange', forControlEvents:UIControlEventValueChanged)
    end
    view.addSubview(slider)
  end

  def slideChange
    puts 'clicked'
  end
end






