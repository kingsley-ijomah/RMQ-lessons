class User
  ATTRIBUTES = [:id, :name, :email]
  attr_accessor *ATTRIBUTES

  def initialize(id, name, email)
    @id = id
    @name = name
    @email = email
  end
end
