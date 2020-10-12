require_relative 'object_journal'

class PlayingCardsDeck
  attr_accessor :cards_deck
  def initialize(cards_deck = [])
    @cards_deck = cards_deck
  end

  def new_cards_deck
    issued_card_player = ObjectJournal.new
    issued_card_player.issued_suits_card
    @cards_deck = issued_card_player.mix
  end

end