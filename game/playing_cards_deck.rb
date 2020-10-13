# frozen_string_literal: true

require_relative 'shuffled_cards_deck'

class PlayingCardsDeck
  attr_accessor :cards_deck

  def initialize(cards_deck = [])
    @cards_deck = cards_deck
  end

  def new_cards_deck
    issued_card_player = ShuffledCardsDeck.new
    issued_card_player.issued_suits_card
    @cards_deck = issued_card_player.mix
  end
end
