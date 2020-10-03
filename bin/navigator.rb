# frozen_string_literal: true

require_relative 'navigators_start'

class Navigator
  extend NavigatorsStart

  def generate_activation_code(size = 6)
    charset = %w{ 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z}
    puts (0...size).map { charset.to_a[rand(charset.size)] }.join
  end
end
