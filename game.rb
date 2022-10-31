require "./player"
require "./question"

class Game
 attr_accessor :players, :player_turn

 def initialize(player1, player2)
  @players = [Player.new(player1), Player.new(player2)]
  @player_turn = @players[0]
 end

 def start
 puts "Welcome players"
 while players[0].score > 0 && players[1].score > 0 
 puts "player 1"
 players[0].turn
 score_update
 lose
 puts "player 2"
 players[1].turn
 score_update
 lose
 end
end

def lose
if players[0].score == 0
 abort("player 2 wins")
elsif players[1].score == 0
  abort("player 1 wins")
 end
end

def score_update
if players[0].score === 0
 puts "\t\t\t\t------ score ------ \n\t\t\t\t #{players[0].name}: #{players[0].score} 💔\n\t\t\t\t #{players[1].name}: #{players[1].score} ❤️\n\t\t\t\t ------------------"
elsif players[1].score === 0
 puts "\t\t\t\t------ score ------ \n\t\t\t\t #{players[0].name}: #{players[0].score} ❤️\n\t\t\t\t #{players[1].name}: #{players[1].score} 💔\n\t\t\t\t ------------------"
else
 puts "\t\t\t\t------ score ------ \n\t\t\t\t #{players[0].name}: #{players[0].score} ❤️\n\t\t\t\t #{players[1].name}: #{players[1].score} ❤️\n\t\t\t\t ------------------"
end
end

end
