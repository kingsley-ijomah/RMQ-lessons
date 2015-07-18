class MainController < UIViewController
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.blueColor

    UIAlertView.alloc.initWithTitle('Hello RubyMotion',
                                    message: 'This is my very first alert',
                                    delegate: nil,
                                    cancelButtonTitle: 'OK',
                                    otherButtonTitles: nil
                                   ).show
  end
end
