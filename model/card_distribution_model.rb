# frozen_string_literal: true
require_relative '../lib/playing_card_obj_type'
require_relative '../app/object_journal'

class CardDistributionModel
  extend PlayingCardObjType
  attr_reader :h, :hh
  def initialize
    @deck_in_game = {}
    @isued_cards = PlayingCardObjType.constants.sample(4)

  end

  def playing
    @isued_cards.each { |card_in_game| @deck_in_game[card_in_game] = ObjectJournal.new.complect.values.sample(1)[0] }
    @deck_in_game
  end

end
