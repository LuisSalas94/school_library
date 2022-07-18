class Person 
  def initialize(age, name = "Unknown", parent_permission = "true")
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id  

  def can_use_services?
    return true if is_of_age? || @parent_permission == "true"     
    false
  end

  private
  def is_of_age?
    @age >= 18 ? true : false
  end
end



