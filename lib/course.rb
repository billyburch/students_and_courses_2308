class Course

  attr_reader :name, :capacity, :students
  def initialize(name, capacity = 0)
    @name = name
    @capacity = capacity
    @students = []
  end

  def enroll(student)
    @students << student
  end

  def full?
    if @students.count > 2
      return true
    end
  end
  
end
