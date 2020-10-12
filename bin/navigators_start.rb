require_relative '../lib/bot'
require_relative '../abstract/user'
require_relative '../abstract/money'
require_relative '../model/card_distribution_model'
require_relative '../ role_model/player_role'
require_relative '../ role_model/diller_role'
require_relative '../ role_model/player_money'
require_relative '../ role_model/diller_money'
require_relative '../ role_model/player_playing_card'

module NavigatorsStart
  extend Bot

  bot :first
  user_input = PlayerRole.new(gets.chomp)
  smart_bot :second, user_input.name
  diller_input = DillerRole.new
  smart_bot :second, diller_input.name
  user_counting_money = PlayerMoney.new
  diller_counting_money = DillerMoney.new
  smart_bot_count_money :third, user_counting_money.money
  bot :fourth
  user_input.issued_card
  new_card_user = user_input.new_player
   new_card_user.view_first
   new_card_user.show_card
  new_card_user.notification_counter
  diller_input.issued_card
  new_card_diller_user = diller_input.new_player
  new_card_diller_user.view_first
  new_card_diller_user.show_card
  new_card_diller_user.notification_counter

  loop do
    bot :fifth
    d = gets.chomp.to_i
    if d == 1
      new_card_user.view_add_card
    else
      puts '  - Нет, спасибо.  '
      new_card_user.show_card
      new_card_user.notification_counter
      break
      end
  end

  loop do
    bot :six
    d = gets.chomp.to_i
    if d == 1
      new_card_diller_user.view_add_card
    else
      puts '  - Нет, спасибо.  '
      new_card_diller_user.show_card
      new_card_diller_user.notification_counter
      break
    end
  end
end
