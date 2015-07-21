class MainController < UIViewController

  def viewDidLoad
    super
    self.title = 'Title Here'
    leftButton = UIBarButtonItem.alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemAction, 
                                                                   target: self, action: :nav_left_btn)
    rightButton = UIBarButtonItem.alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemRefresh,
                                                                    target: self, action: :nav_right_btn)
    self.navigationItem.tap do |nav|
      nav.leftBarButtonItem = leftButton
      nav.rightBarButtonItem = rightButton
    end 
  end

  def nav_left_btn
    rmq.view_controller.navigationController.pushViewController(UserController.new, animated: true)
  end

  def nav_right_btn
    puts 'clicked right button'
  end
end


__END__

# You don't have to reapply styles to all UIViews, if you want to optimize,
# another way to do it is tag the views you need to restyle in your stylesheet,
# then only reapply the tagged views, like so:
def logo(st)
  st.frame = {t: 10, w: 200, h: 96}
  st.centered = :horizontal
  st.image = image.resource('logo')
  st.tag(:reapply_style)
end

# Then in willAnimateRotationToInterfaceOrientation
rmq(:reapply_style).reapply_styles


