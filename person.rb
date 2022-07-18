class Person 
  def initialize(age, name = "Unknown", parent_permission: true)
    @id = Random.new.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  attr_reader :id  
  attr_accessor :name, :age, :parent_permission

  private
  def of_age?
    @age >= 18 ? true : false
  end

  def can_use_services?
    of_age? || @parent_permission
  end
end


