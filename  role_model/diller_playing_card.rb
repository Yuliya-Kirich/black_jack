require_relative 'player_playing_card'
class DillerPlayingCard < PlayerPlayingCard
  attr_accessor :card_set
  def initialize(card_set)
    super
    @sum_card = 0
    @user_card = nil
  end
end