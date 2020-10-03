require_relative '../lib/playing_card_obj_type'
require_relative '../abstract/object_journal'
require_relative '../ role_model/player_playing_card'
require_relative '../ role_model/diller_playing_card'

class User
  extended PlayingCardObjType

  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def issued_card
    issued_card_player = ObjectJournal.new
    issued_card_player.issued_suits_card
    variable = issued_card_player.mix
    return variable
  end

  def issued_card_diller(variable)
    DillerPlayingCard.new(variable)
    puts 'Карты Diller:  ** **'
  end

  def new_player
    df = PlayerPlayingCard.new(issued_card)
    issued_card_diller(issued_card) if self.class == PlayerRole
    return df
  end


end
