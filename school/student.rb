class Student < Person
  def initialize(age, _name, _parent_permission, classroom: nil)
    super(age, name: 'Unknow', parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
