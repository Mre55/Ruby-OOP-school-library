require_relative 'classroom'

class Student < Person
  def initialize(age, _name, _parent_permission, classroom: nil)
    super(age, name: 'Unknow', parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.student.push(self) unless classroom.student.include?(self)
  end
end
