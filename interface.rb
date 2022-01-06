
class Interface
  NEW_ROUND_INTRO = "Starting a new round\n"
  NEW_ROUND_REQUEST = "Would you like to play again? (y/n)\n"

  def initialize
    @continue_playing = true
    #@game = Game.new
  end

  def play_round
    puts NEW_ROUND_INTRO
    show_hands
    announce_winner
    request_new_round
  end

  def continue_playing?
    @continue_playing
  end

  private
  attr_reader :game

  def show_hands
    #game.show_hands
  end

  def announce_winner
    #game.announce_winner
  end

  def request_new_round
    puts NEW_ROUND_REQUEST
    input = gets.chomp
    @continue_playing = false if input == "n"
    return if input == "y" || input == "n"
    request_new_round
  end
end
