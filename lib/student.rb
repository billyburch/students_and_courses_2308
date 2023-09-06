class Student
attr_reader :name, :age, :scores
  
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @age = attributes.fetch(:age)
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade(score_array)
    score_array = @scores
    sum = 0
    score_array.each do |score|
      sum += score
    end
    grade = sum.to_f / score_array.length
    return grade
  end
end
