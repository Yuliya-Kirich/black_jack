# frozen_string_literal: true

class Card

  VALUE_MAPPING = {ace: 'T', king: 'K', gueen: 'Q', jack: 'J', ten: 10, nine: 9, eight: 8, seven: 7, six: 6, five: 5,
                   four: 4, three: 3, two: 2 }.freeze

  VALUE = { ace: 11, king: 10, gueen: 10, jack: 10, ten: 10, nine: 9, eight: 8, seven: 7, six: 6, five: 5, four: 4,
            three: 3, two: 2 }.freeze

  SUIT = ['♠ ', '♢ ', '♣ ', '♡ '].freeze
end
