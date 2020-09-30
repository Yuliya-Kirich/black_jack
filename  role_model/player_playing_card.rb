class PlayerPlayingCard
  attr_accessor :card_set
  def initialize(card_set)
    @card_set = card_set
    view
  end

  private

  def view
    puts @card_set[0..1]
  end
end
