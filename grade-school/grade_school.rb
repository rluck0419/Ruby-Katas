class School
  def initialize
    @school = []
  end

  def add(student, grade)
    @school[grade] = { grade: grade, students: [] } if @school[grade].nil?
    @school[grade][:students] += [student]
    @school[grade][:students].sort!
  end

  def students(grade)
    return [] if @school[grade].nil?
    @school[grade][:students]
  end

  def students_by_grade
    return [] if @school.empty?
    @school.compact
  end
end

module BookKeeping
  VERSION = 3
end
