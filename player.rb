class Player
attr_accessor :name, :score

 def initialize(name, score)
  @name = name
  @score = score
 end

 def health_loss
  @score -= 1
 end
end

p = Player.new("Trevor", 3)
puts "health is now #{p.health_loss}"
puts "health is now #{p.health_loss}"
