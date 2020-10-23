# frozen_string_literal: true

require_relative 'bot'

class ShowResult
  extend Bot

  def self.dillers_result(diller_input, new_card_diller_user)
    bot :diller_cards
    puts new_card_diller_user.show
    new_card_diller_user.sum
    new_card_diller_user.aces_recount
    points(diller_input.name, new_card_diller_user.sum_card)
  end

  def self.who_won(diller_input, new_card_diller_user, new_card_user, user_input)
    if ((new_card_user.sum_card > new_card_diller_user.sum_card) ||
        (new_card_diller_user.sum_card > 21)) && (new_card_user.sum_card < 22)
      user_input.money += 20
      diller_input.money
      if new_card_diller_user.sum_card < 21
        puts "Вы победили!
              У Вас больше очков, чем у диллера на #{new_card_user.sum_card - new_card_diller_user.sum_card}."
      else
        bot :won
      end
    elsif ((new_card_user.sum_card < new_card_diller_user.sum_card) ||
        (new_card_user.sum_card > 21)) && (new_card_diller_user.sum_card < 22)
      user_input.money
      diller_input.money += 20
      if new_card_user.sum_card < 21
        puts "Вы проиграли!
              У диллера больше очков, чем у Вас на #{new_card_diller_user.sum_card - new_card_user.sum_card}."
      else
        bot :lous
      end
    elsif new_card_user.sum_card == new_card_diller_user.sum_card ||
        (new_card_user.sum_card > 21 && new_card_diller_user.sum_card > 21)
      bot :draw
      user_input.money += 10
      diller_input.money += 10
    else
      bot :eror
    end
    puts "В банке у Вас #{user_input.money}$, у диллера #{diller_input.money}$. \n \n"
  end
end
