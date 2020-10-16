# frozen_string_literal: true

class Hand
  attr_accessor :sum_card, :cards_on_hand

  def initialize
    @sum_card = 0
    @cards_on_hand = []
  end

  def add_card(add)
    add.each { |set_value| @cards_on_hand << set_value.to_a }
    @cards_on_hand.flatten!
  end

  def sum
    @sum_card = 0
    @cards_on_hand.each_with_index do |c, key|
      @sum_card += c.to_i if (key == 1) || (key == 4) || (key == 7)
    end
  end

  def aces_recount
    ace_count = @cards_on_hand.count(:ace)
    @sum_card = @sum_card - (11 * ace_count) + (2 * ace_count) if !ace_count.zero? && @sum_card > 21
  end

  def show_card
    @cards_on_hand.each_with_index do |c, key|
      print ::Card::VALUE_MAPPING[c] if ::Card::VALUE_MAPPING.include?(c)
      print c if ((key + 1) % 3).zero? && key != 0
    end
  end
end
