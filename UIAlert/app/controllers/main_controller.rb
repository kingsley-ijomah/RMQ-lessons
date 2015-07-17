class MainController < UIViewController
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.redColor
    alert = UIAlertView.alloc.initWithTitle('Hello RubyMotion',
                               message: 'This is my first alert!',
                               delegate: nil,
                               cancelButtonTitle: 'OK',
                               otherButtonTitles: nil     
                              )
    alert.show
  end
end
