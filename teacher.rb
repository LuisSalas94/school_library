require_relative './person'

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  attr_accessor :specialization

  def can_use_services?
    true
  end
end
