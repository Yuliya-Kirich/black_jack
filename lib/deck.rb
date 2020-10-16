# frozen_string_literal: true

require_relative 'card'

class Deck
  attr_accessor :issued_suits_card

  def initialize
    @issued_suits_card = []
  end

  def shuffle_cards
    ::Card::VALUE.each { |key| ::Card::SUIT.each { |suit_card| @issued_suits_card << [key => suit_card] } }
    @issued_suits_card.to_a.shuffle!
  end

  def select_card
    @issued_suits_card[0]
  end

  def give_card
    @issued_suits_card.delete(@issued_suits_card[0])
  end

  end


