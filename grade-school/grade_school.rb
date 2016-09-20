class School
  def initialize
    @students = {}
  end

  def add(student, grade)
    @students.merge!(grade => student)
  end

  def students(grade)
    students = []
    @students.map do |key, value|
      students << value if key.to_i == grade
    end
    students
  end
end
