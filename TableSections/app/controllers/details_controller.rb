class DetailsController < UIViewController
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor
  end

  def initWithLetter(letter)
    self.title = letter
    label = UILabel.alloc.initWithFrame(CGRectZero)
    label.text = "You clicked on: #{letter}"
    label.sizeToFit
    label.center = [self.view.frame.size.width/2, self.view.frame.size.height/2]

    self.view.addSubview(label)
    self
  end
end
