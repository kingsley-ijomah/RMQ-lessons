class User
  ATTRIBUTES = [:id, :name, :email]
  attr_accessor *ATTRIBUTES

  def initialize(attributes = {})
    attributes.each do |key, value|
      if ATTRIBUTES.member? key
        self.send("#{key}=", value)
      end
    end
  end
end
