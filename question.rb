class Question
 attr_reader :sum, :num1, :num2

 def initialize()
  @num1 = rand(1...20)
  @num2 = rand(1...20)
  @sum = @num1 + @num2
 end

end

p = Question.new
puts p.num1
puts p.num2
puts p.sum