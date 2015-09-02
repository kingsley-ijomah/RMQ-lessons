class User
  ATTRIBUTES = [:id, :name, :email]
  attr_accessor *ATTRIBUTES

  def initialize(attributes = {})
    attributes.each do |key, value|
      if ATTRIBUTES.member? key
        self.send("#{key}=", value)
      end
    end
    @defaults = NSUserDefaults.standardUserDefaults
  end

  def save(user)
    @defaults['User'] = NSArchiver.archivedDataWithRootObject(user)
  end

  def find
    @defaults['User']
  end

  def initWithCoder(decoder)
    self.init
    ATTRIBUTES.each do |key|
      self.send("#{key}=", decoder.decodeObjectForKey(key))
    end
    self
  end

  def encodeWithCoder(encoder)
    ATTRIBUTES.each do |attr|
      encoder.encodeObject(self.send(attr), forKey: attr)
    end
  end
end
