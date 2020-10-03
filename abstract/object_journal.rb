
class ObjectJournal
  attr_accessor :issued_suits_card
  def initialize
    @issued_suits_card = []
  end

  def suit_card
    suit = { ace: [11, 'T'], king: [10, 'К'], gueen: [10, 'Q'], jack: [10, 'J'], ten: [10, '10'], nine: [9, '9'],
             eight: [8, '8'], seven: [7, '7'], six: [6, '6'], five: [5, '5'], four: [4, '4'], three: [3, '3'],
             two: [2, '2'] }
    return suit
  end

  def complect_type
    obj = {
      spades: '♠ ',
      diamonds: '♢ ',
      clubs: '♣ ',
      worms: '♡ '
    }
    return obj
  end

  def mix
    suit_card.each do |key|
      complect_type.each { |value| @issued_suits_card << [key => value] }
    end
    #return @issued_suits_card.to_a.shuffle!.take(4)
    return @issued_suits_card.to_a.shuffle!
  end
end
