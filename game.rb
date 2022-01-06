require_relative 'deck.rb'
require_relative 'hand.rb'

class Game
  DEALER_HAND_INDEX = 0
  NUMBER_OF_HANDS = 6

  def initialize
    @deck = Deck.new
  end

  def new_round
    deck.new_round
    @hands = deck.deal(NUMBER_OF_HANDS)
  end

  def winner
    winning_index = hands.map(&:score).each_with_index.max[1]
    return "The dealer" if winning_index == DEALER_HAND_INDEX

    "Player ##{winning_index}"
  end

  def dealer_won?
    winning_index = hands.map(&:score).each_with_index.max[1]
    winning_index == 0
  end

  def winning_score
    hands.map(&:score).max
  end

  def hand_descriptions
    hands.each_with_index.map do |hand, i|
      player = i == 0 ? "Dealer" : "Player ##{i}"
      "#{player}: #{hand.description}"
    end.join("\n")
  end

  private
  attr_reader :deck, :hands
end
