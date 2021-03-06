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

  class << self 
    def defaults
      NSUserDefaults.standardUserDefaults
    end

    def write(user)
      defaults['User'] = NSKeyedArchiver.archivedDataWithRootObject(user)
    end

    def read
      NSKeyedUnarchiver.unarchiveObjectWithData(defaults['User'])
    end
  end
end
