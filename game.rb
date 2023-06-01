require './player'

class Game

  attr_reader :game_status, :players, :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_index = 0
    @current_player = @players[@current_index]
  end

  def lose_a_life
    @current_player.lives -= 1
    if @current_player.lives == 0
      puts "Too bad, so sad, #{@current_player.name}, you lose!"
      puts "----- GAME OVER -----"
    end
  end

  def game_status
    puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
  end

  def next_turn
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end
end