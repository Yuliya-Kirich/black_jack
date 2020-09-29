require_relative '../model/card_distribution_model'
require_relative '../lib/playing_card_obj_type'
class User
  include PlayingCardObjType
  attr_accessor :name
  def initialize(name)
    @name = name
    @gf = []
  end

  def issued_card
    # issued_card_player = CardDistributionModel.new.playing.take(2)
    issued_card_player = CardDistributionModel.new.playing
    issued_card_player.keys[0]
  end

  def value_of_card
    ffd= "#{PlayingCardObjType}::#{issued_card}"
    puts ffd
  end

  #def value_of_card
  # issued_card.each do |x| @gf << "#{PlayingCardObjType}::#{x[0]}"
  # end
  # puts  @gf
  #end

  #def print_cost
  #  value_of_card.each {|dd| dq = dd.to_sym}
  # end

end
