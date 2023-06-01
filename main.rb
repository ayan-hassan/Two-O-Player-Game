require "./player"
require "./math_problems"
require './game'

# create players
print "Enter Player 1 name: "
name1 = gets.chomp.to_s
print "Enter Player 2 name: "
name2 = gets.chomp.to_s
player1 = Player.new(name1)
player2 = Player.new(name2)

# set current player
game = Game.new(player1, player2)

while game.players[0].lives > 0 and game.players[1].lives > 0 do
  # generate question and answer
  puts "--- NEW TURN ---"
  question = MathProblems.new
  print "#{game.current_player.name}: #{question.show_question}"
  answer = question.correct_answer

  # prompt for answer
  input = gets.chomp.to_i

  # check answer
  if (input != answer)
    game.lose_a_life
    puts "#{game.current_player.name}: uh...NOPE"
  else
    puts "#{game.current_player.name}: YESSIR"
  end

  game.game_status

  # change turn
  game.next_turn
end