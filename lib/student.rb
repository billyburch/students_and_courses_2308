class Student
attr_reader :name, :age, :scores, :grade
  
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @age = attributes.fetch(:age)
    @scores = []
    @grade = nil
  end

  def log_score(score)
    @scores << score
  end

  def average(scores)
    scores = @scores
    sum = 0
    scores.each do |element|
      sum += element
    end
    average = sum.to_f / scores.length
    @grade = average
  end
  
end
