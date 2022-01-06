require_relative 'deck.rb'

class Hand
  def initialize
    @cards = []
  end

  def add_card(card)
    cards << card
  end

  def score
    cards.map{ |card| card[:rank] }.sum
  end

  def description
    cards.map do |card|
      "#{Deck.RANKS[card[:rank]]} of #{card[:suit]}"
    end.join(" ")
  end

  private
  attr_accessor :cards
end

