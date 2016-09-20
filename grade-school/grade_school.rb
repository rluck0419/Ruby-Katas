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
    grades = []
    return students if @students.empty?
    @students.each_value do |grade|
      grades << grade
    end
    grades = grades.sort.uniq
    grades.each do |grade|
      students << { grade: grade }
    end
    students.each do |grade_hash|
      grade_hash[:students] = []
      @students.each_key do |key|
        grade_hash[:students] << key.to_s if @students[key] == grade_hash[:grade]
      end
      grade_hash[:students].sort!
    end
    students
  end
end

module BookKeeping
  VERSION = 3
end
