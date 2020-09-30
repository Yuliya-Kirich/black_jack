class DillerPlayingCard
  attr_accessor :card_set
  def initialize(card_set)
    @card_set = card_set
    view
  end

  private
  def view
    return @card_set[2..4]
  end
end