require_relative 'hand.rb'

class Deck
  SUITS = [ "hearts", "spades", "diamonds", "clubs" ].freeze
  RANKS = {
    1 => "Ace",
    2 => "2",
    3 => "3",
    4 => "4",
    5 => "5",
    6 => "6",
    7 => "7",
    8 => "8",
    9 => "9",
    10 => "10",
    11 => "Jack",
    12 => "Queen",
    13 => "King"
  }

  def initialize
    @deck_position = 0
    @cards = (0..51).to_a
  end

  def new_round
    reset
    shuffle
  end

  def deal(num_hands)
    hands = Array.new(num_hands).map { |h| Hand.new }
    2.times do
      hands.each do |hand|
        hand.add_card(draw_card)
      end
    end
    hands
  end

  def draw_card
    card = card_for(cards[deck_position])
    @deck_position += 1
    card
  end

  private
  attr_reader :cards, :deck_position

  def card_for(val)
    suit = SUITS[val / 13]
    rank = (val % 13) + 1
    {suit: suit, rank: rank}
  end

  def shuffle
    @cards = cards.shuffle
  end

  def reset
    @deck_position = 0
  end
end
