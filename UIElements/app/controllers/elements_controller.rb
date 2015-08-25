class ElementsController < UIViewController
  def viewDidLoad
    super
    @countryNames = ['United States', 'France', 'India', 'China', 'Russia']
    add_label
    add_textfield
    add_slider
    add_button
    add_picker_view
    add_activity_indicator
    add_image_view
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

  def add_button
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect).tap do |b|
      b.frame = [[70, 300], [200, 35]]
      b.setTitle("Click Here", forState:UIControlStateNormal)
      b.setTitle("You have clicked here", forState:UIControlStateHighlighted)
      b.addTarget(self, action:'buttonIsPressed', forControlEvents:UIControlEventTouchDown)
    end
    self.view.addSubview(button)
  end

  def buttonIsPressed
    puts 'pressed'
  end

  def add_picker_view
    picker = UIPickerView.alloc.init.tap do |p|
      p.frame = [[80, 400], [220, 180]]
      p.showsSelectionIndicator = true
      p.dataSource = self
      p.delegate = self
    end
    self.view.addSubview(picker)
  end

  def numberOfComponentsInPickerView(pickerView)
    1
  end

  def pickerView(pickerView, numberOfRowsInComponent:component)
    @countryNames.count
  end

  def pickerView(pickerView, titleForRow:row, forComponent:component)
    @countryNames[row]
  end

  def pickerView(pickerView, didSelectRow:row, inComponent:component)
    puts "selected #{@countryNames[row]}"
  end

  def add_activity_indicator
    activity = UIActivityIndicatorView.alloc.initWithActivityIndicatorStyle(UIActivityIndicatorViewStyleGray).tap do |a|
      a.center = [60, 400]
      a.startAnimating
    end
    view.addSubview(activity)
  end

  def add_image_view
    image = UIImageView.alloc.initWithImage(UIImage.imageNamed('insect.jpg')).tap do |img|
      img.center = [300, 400]
    end
    self.view.addSubview(image)
  end


end






