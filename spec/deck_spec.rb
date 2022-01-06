require_relative '../deck.rb'

describe Deck do
  describe '#new_round' do
    it 'resets the order of the cards' do
      old_top_three = []
      shuffled_top_three = []

      old_top_three << subject.draw_card
      old_top_three << subject.draw_card
      old_top_three << subject.draw_card
      subject.new_round

      shuffled_top_three << subject.draw_card
      shuffled_top_three << subject.draw_card
      shuffled_top_three << subject.draw_card

      expect(old_top_three).to_not eq(shuffled_top_three)
    end
  end

  describe '#draw_card' do
    it 'returns a card with a valid suit and rank' do
      card = subject.draw_card

      expect(card[:suit]).to_not eq(nil)
      expect(Deck::SUITS).to include(card[:suit])

      expect(card[:rank]).to_not eq(nil)
      expect(Deck::RANKS.keys).to include(card[:rank])
    end
  end
end
