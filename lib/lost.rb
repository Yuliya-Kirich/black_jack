# frozen_string_literal: true

module Lost
  def user_lost(diller_counting_money,
                new_card_diller_user,
                new_card_user,
                user_counting_money)
    user_counting_money.money
    diller_counting_money.money += 20
    if new_card_user.winner < 21
      puts "Вы проиграли!
            У диллера больше очков, чем у Вас на #{new_card_diller_user.winner - new_card_user.winner}."
    else
      puts 'Вы проиграли!'
    end
  end
end
