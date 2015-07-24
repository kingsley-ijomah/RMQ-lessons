class AppDelegate
  def application(app, didFinishLaunchingWithOptions: launchOptions)
    @rect = UIScreen.mainScreen.bounds
    puts @rect.size
    puts @rect.origin
    puts @rect.size.width
    puts @rect.origin.y 
    true
  end
end
