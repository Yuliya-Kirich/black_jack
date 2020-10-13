# frozen_string_literal: true
# Общая колода карт на всех игроков
# Перетасовывается каждый раунд

class ShuffledCardsDeck
  attr_accessor :issued_suits_card

  def initialize
    @issued_suits_card = []
  end

  def suit_card
    suit = { ace: [11, 'T'], king: [10, 'К'], gueen: [10, 'Q'], jack: [10, 'J'], ten: [10, '10'], nine: [9, '9'],
             eight: [8, '8'], seven: [7, '7'], six: [6, '6'], five: [5, '5'], four: [4, '4'], three: [3, '3'],
             two: [2, '2'] }
    suit
  end

  def complect_type
    obj = {
      spades: '♠ ',
      diamonds: '♢ ',
      clubs: '♣ ',
      worms: '♡ '
    }
    obj
  end

  def mix
    suit_card.each do |key| complect_type.each { |value| @issued_suits_card << [key => value] } end
    @issued_suits_card.to_a.shuffle!
  end
end
