require_relative '../hand.rb'

describe Hand do
  describe '#description' do
    it 'properly describes a hand with two cards' do
      hand = Hand.new

      hand.add_card({suit: "hearts", rank: 10})
      hand.add_card({suit: "spades", rank: 2})

      expect(hand.description).to eq("10 of hearts, 2 of spades")
    end

    it 'properly describes a hand containing an Ace and face card' do
      hand = Hand.new

      hand.add_card({suit: "diamonds", rank: 1})
      hand.add_card({suit: "clubs", rank: 13})

      expect(hand.description).to eq("Ace of diamonds, King of clubs")
    end
  end

  describe '#score' do
    it 'correctly calculates the score of a hand with two cards' do
      hand = Hand.new

      hand.add_card({suit: "hearts", rank: 10})
      hand.add_card({suit: "spades", rank: 2})

      expect(hand.score).to eq(12)
    end

    it 'correctly calculates the score of a hand containing an Ace and a face card' do
      hand = Hand.new

      hand.add_card({suit: "diamonds", rank: 1})
      hand.add_card({suit: "clubs", rank: 13})

      expect(hand.score).to eq(14)
    end
  end
end
