require_relative '../role_model/diller_money'
require_relative 'player_playing_card'

class DillerPlayingCard < PlayerPlayingCard
  attr_accessor :card_set, :sum_card
  def initialize(card_set)
    super
    @sum_card = 0
    @user_card = nil
  end
end
