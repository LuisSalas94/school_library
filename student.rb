require_relative './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name = 'Unkown', parent_permission = 'true', id = Random.rand(1..1000))
    super(age, name, parent_permission, id)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end
end
