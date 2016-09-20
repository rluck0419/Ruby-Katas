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
    return [] if @students.empty?
    students = []
    grades = []
    @students.each_value do |grade|
      grades << grade
    end
    grades.sort!.uniq!.each do |grade|
      students << { grade: grade }
    end
    students.each do |grade_hash|
      grade_hash[:students] = students(grade_hash[:grade]).sort!
    end
    students
  end
end

module BookKeeping
  VERSION = 3
end
