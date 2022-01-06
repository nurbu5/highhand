require_relative 'hand.rb'

class Deck
  SUITS = [ "hearts", "spades", "diamonds", "clubs" ].freeze

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
      num_hands.times do
        Hand.add_card(draw_card)
      end
    end
    hands
  end

  def draw_card
    card = card_for(cards[deck_position])
    deck_position++
    card
  end

  private
  attr_accessor :cards, :deck_position

  def card_for(val)
    suit = SUITS[val / 13]
    rank = (val % 13) + 1
    {suit: suit, rank: rank}
  end

  def shuffle
    @cards.shuffle
  end

  def reset
    deck_position = 0
  end
end
