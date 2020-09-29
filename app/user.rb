require_relative '../model/card_distribution_model'
require_relative '../lib/playing_card_obj_type'
require_relative '../app/object_journal'

class User
  extended PlayingCardObjType

  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def issued_card
    issued_card_player = ObjectJournal.new
    issued_card_player.issued_suits_card
    issued_card_player.mix
  end

end
