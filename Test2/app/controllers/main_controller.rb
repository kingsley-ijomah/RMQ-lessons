class MainController < UIViewController
  def viewDidLoad
    super
    self.title = 'Main...'
    self.navigationItem.tap do |nav|
      nav.leftBarButtonItem = create_bar_button(UIBarButtonSystemItemSave, :left_btn)
      nav.rightBarButtonItem = create_bar_button(UIBarButtonSystemItemAdd, :right_btn)
    end
  end

  def left_btn
  
  end
end
