class User
  ATTRIBUTES = [:id, :name, :email]
  attr_accessor *ATTRIBUTES

  def initialize(attributes = {})
    attributes.each do |key, val|
      if ATTRIBUTES.member? key 
        self.send("#{key}=", val)
      end
    end
  end
end
