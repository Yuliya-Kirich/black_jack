require_relative '../lib/bot'
require_relative '../abstract/user'
require_relative '../abstract/money'
require_relative '../model/card_distribution_model'
require_relative '../ role_model/player_role'
require_relative '../ role_model/diller_role'
require_relative '../ role_model/player_money'
require_relative '../ role_model/diller_money'
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

end
