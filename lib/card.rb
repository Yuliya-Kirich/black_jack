# frozen_string_literal: true

class Card
  attr_accessor :suit, :value
  #VALUE_MAPPING = %w[T K Q J 10 9 8 7 6 5 4 3 2].freeze

  VALUE = { ace: 'T', king: 'K', gueen: 'Q', jack: 'J', ten: 10, nine: 9, eight: 8, seven: 7, six: 6, five: 5,
            four: 4, three: 3, two: 2 }.freeze

  VALUE_MAPPING = { ace: 11, king: 10, gueen: 10, jack: 10, ten: 10, nine: 9, eight: 8, seven: 7, six: 6, five: 5,
                    four: 4, three: 3, two: 2 }.freeze

  SUIT = ['♠ ', '♢ ', '♣ ', '♡ '].freeze

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def suit
    @suit
  end

  def value
    @value
  end

end
