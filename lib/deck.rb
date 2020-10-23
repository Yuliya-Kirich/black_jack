# frozen_string_literal: true

require_relative 'card'

class Deck
  attr_accessor :cards

  def initialize
    @cards = generate_cards
  end

  def generate_cards
    Card::SUIT.each_with_object([]) do |suit, array|
      Card::VALUE.each do |value|
        array << Card.new(value, suit)
      end
    end.shuffle!
  end

  def select_card
    @cards[0]
  end

  def give_card
    @cards.delete(@cards[0])
  end
  end


