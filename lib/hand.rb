# frozen_string_literal: true

class Hand
  attr_accessor :sum_card, :cards_on_hand

  def initialize(cards_on_hand)
    @sum_card = 0
    @cards_on_hand = [cards_on_hand]
  end

  def sum
    @sum_card = 0
    @cards_on_hand.each do |c|
      @sum_card += Card::VALUE_MAPPING[c.suit[0]]
    end
  end

  def aces_recount
    @cards_on_hand.each do |f|
      ace_count = + f.suit.count(:ace)
      @sum_card = @sum_card - (11 * ace_count) + (2 * ace_count) if !ace_count.zero? && @sum_card > 21
    end
  end

  def show
    @cards_on_hand.each_with_object([]) do |cards, array|
      array <<  "#{cards.suit[1]}#{cards.value}"
    end
  end
end
