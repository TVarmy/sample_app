class User
  #This creates getters and setters for the @name 
  #and @email attributes
  attr_accessor :name, :email
  
  #Initialize with a default value of a blank hash.
  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
  end
  
  def formatted_email
    "#{@name} <#{email}>"
  end
end