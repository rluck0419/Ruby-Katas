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
    students.sort
  end

  def students_by_grade
    students = []
    return students if @students.empty?
    student_hash = { grade: 0, students: []}
    @students.map do |key, value|
      student_hash.merge!(grade: value.to_i)
      student_hash[:students] << key
    end
    students << student_hash
  end
end
