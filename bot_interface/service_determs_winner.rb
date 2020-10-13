# frozen_string_literal: true

require_relative '../lib/draw'
require_relative '../lib/lost'
require_relative '../lib/won'

module ServiceDetermsWinner
  extend Draw
  extend Lost
  extend Won

  def determs_winner(diller_counting_money,
                     new_card_diller_user,
                     new_card_user,
                     user_counting_money)
    if ((new_card_user.winner > new_card_diller_user.winner) ||
          (new_card_diller_user.winner > 21)) && (new_card_user.winner < 22)
      user_won(diller_counting_money, new_card_diller_user, new_card_user, user_counting_money)
    elsif ((new_card_user.winner < new_card_diller_user.winner) ||
          (new_card_user.winner > 21)) && (new_card_diller_user.winner < 22)
      user_lost(diller_counting_money, new_card_diller_user, new_card_user, user_counting_money)
    elsif new_card_user.winner == new_card_diller_user.winner ||
          (new_card_user.winner > 21 && new_card_diller_user.winner > 21)
      draw(diller_counting_money, user_counting_money)
    else
      puts 'Ошибка'
    end
  end
end