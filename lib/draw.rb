# frozen_string_literal: true

module Draw
  def draw(diller_counting_money,
           user_counting_money)
    puts 'Ничья'
    user_counting_money.money += 10
    diller_counting_money.money += 10
  end
end