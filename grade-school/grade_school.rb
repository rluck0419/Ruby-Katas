class School
  def initialize
    @students = {}
  end

  def add(student, grade)
    @students.merge!(student => grade)
  end

  def students(grade)
    students = []
    @students.map do |key, value|
      students << key if value.to_i == grade
    end
    students
  end
end
