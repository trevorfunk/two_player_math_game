class Question
 attr_reader :sum, :num1, :num2

 def initialize()
  @num1 = rand(1...20)
  @num2 = rand(1...20)
  @sum = @num1 + @num2
 end

 def question
  print "What is the sum of #{@num1} + #{@num2}"
 end

end
