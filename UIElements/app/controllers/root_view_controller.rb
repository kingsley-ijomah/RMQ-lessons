class RootViewController < UIViewController
  def viewDidLoad
    super

    @appleProducts = ['MacBook', 'MacBook Air', 'MacBook Pro', 'iMac', 'iPad Air', 'iPad mini2']
  
    label = UILabel.alloc.init.tap do |l|
      l.frame = [[50, 100], [300, 35]]
      l.textColor = UIColor.blueColor
      l.font = UIFont.fontWithName("HelveticaNeue-CondensedBold", size: 18)
      l.text = "This is a label text"
      l.sizeToFit
    end
    self.view.addSubview(label)

    textfield = UITextField.alloc.init.tap do |tf|
      tf.frame = [[50, 200], [200, 35]]
      tf.borderStyle = UITextBorderStyleRoundedRect
      tf.placeholder = "Enter Details..."
      tf.textAlignment = UITextAlignmentCenter
    end
    self.view.addSubview(textfield)

    slider = UISlider.alloc.init.tap do |s|
      s.frame = [[60, 250], [200, 35]]
      s.minimumValue = 0
      s.maximumValue = 1000
      s.value = s.minimumValue / 2
      s.addTarget(self, action:"slideChange", forControlEvents:UIControlEventValueChanged)
    end
    self.view.addSubview(slider)

    button = UIButton.buttonWithType(UIButtonTypeRoundedRect).tap do |b|
      b.frame = [[70, 300], [200, 35]]
      b.setTitle("Click here", forState:UIControlStateNormal)
      b.setTitle("You have clicked me", forState:UIControlStateHighlighted)
      b.addTarget(self, action:"buttonPressed", forControlEvents:UIControlEventTouchDown)
    end
    self.view.addSubview(button)

    picker_view = UIPickerView.alloc.init.tap do |p|
      p.frame = [[80, 400], [220, 180]]
      p.showsSelectionIndicator = true
      p.dataSource = self
      p.delegate = self
    end
    self.view.addSubview(picker_view)

    activity_indicator = UIActivityIndicatorView.alloc.initWithActivityIndicatorStyle(UIActivityIndicatorViewStyleGray).tap do |a|
      a.center = [60, 400]
      a.startAnimating
    end
    view.addSubview(activity_indicator)

    image = UIImageView.alloc.initWithImage(UIImage.imageNamed('insect.jpg')).tap do |img|
      img.center = [300, 400]
    end
    self.view.addSubview(image)
  end

  def slideChange
    puts 'slide value changed'
  end

  def buttonPressed
    puts 'pressed'
  end

  def numberOfComponentsInPickerView(pickerView)
    1
  end

  def pickerView(pickerView, numberOfRowsInComponent:component)
    @appleProducts.count
  end

  def pickerView(pickerView, titleForRow:row, forComponent:component)
    @appleProducts[row]
  end

  def pickerView(pickerView, didSelectRow:row, inComponent:component)
    puts "selected #{@appleProducts[row]}"
  end

end










