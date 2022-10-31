class Player
attr_accessor :name, :score

 def initialize(name)
  @name = name
  @score = 3
 end

 def score_loss
  @score -= 1
 end

def turn
 question = Question.new
puts "#{question.question}?" 
print ">>> "
answer = gets.chomp.to_i
 if answer == question.sum
  puts "Great job, that's correct"
 else 
  puts "Sadly that is wrong"
  score_loss
 end
end

def end_turn
 puts "----- 🆕 NEW TURN 🆕 -----"
 player_turn
 change_player
end

end