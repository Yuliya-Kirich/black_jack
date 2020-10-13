# frozen_string_literal: true

module Won
  def user_won(diller_counting_money,
               new_card_diller_user,
               new_card_user,
               user_counting_money)
    user_counting_money.money += 20
    diller_counting_money.money
    if new_card_diller_user.winner < 21
      puts "Вы победили!
                  У Вас больше очков, чем у диллера на #{new_card_user.winner - new_card_diller_user.winner}."
    else
      puts 'Вы победили!'
    end
  end
end
