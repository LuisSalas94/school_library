require_relative "./person.rb"

class Student < Person
  def initialize(classroom)
    super(age, name = "Unknown", parent_permission = "true")
    @classroom = classroom
  end
  
  attr_accessor :classroom

  def play_hooky
    "¯\(ツ)/¯"
  end
  
end

