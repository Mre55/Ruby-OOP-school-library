class Student < Person
  attr_reader :classroom

  def initialize(age, _name, _parent_permission, classroom: nil)
    super(age, name: 'Unknow', parent_permission: true)
    classroom.add_student(self) unless classroom.student.include?(self)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.add_student(self) unless classroom.students.include?(self)
  end
end
